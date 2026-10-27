.class public final Lcom/android/server/job/controllers/ConnectivityController;
.super Lcom/android/server/job/controllers/RestrictingController;
.source "ConnectivityController.java"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;,
        Lcom/android/server/job/controllers/ConnectivityController$UidStats;,
        Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;,
        Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_NETWORK_CALLBACKS:I = 0x7d

.field private static final MIN_ADJUST_CALLBACK_INTERVAL_MS:J = 0x3e8L

.field private static final MIN_STATS_UPDATE_INTERVAL_MS:J = 0x7530L

.field private static final MSG_ADJUST_CALLBACKS:I = 0x0

.field private static final MSG_UPDATE_ALL_TRACKED_JOBS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Connectivity"

.field private static final UNBYPASSABLE_BG_BLOCKED_REASONS:I = -0x1

.field private static final UNBYPASSABLE_EJ_BLOCKED_REASONS:I = -0x8

.field private static final UNBYPASSABLE_FOREGROUND_BLOCKED_REASONS:I = -0x30008


# instance fields
.field private final mAvailableNetworks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnManager:Landroid/net/ConnectivityManager;

.field private final mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastAllJobUpdateTimeElapsed:J

.field private mLastCallbackAdjustmentTimeElapsed:J

.field private final mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mRequestedWhitelistJobs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSignalStrengths:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSortedStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/ConnectivityController$UidStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedJobs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/job/controllers/ConnectivityController$UidStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidStatsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/job/controllers/ConnectivityController$UidStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentDefaultNetworkCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSignalStrengths(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmaybeAdjustRegisteredCallbacksLocked(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/controllers/ConnectivityController;->maybeAdjustRegisteredCallbacksLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAllTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateAllTrackedJobsLocked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(ILandroid/net/Network;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 82
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 83
    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/RestrictingController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 125
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 130
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$1;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStatsComparator:Ljava/util/Comparator;

    .line 213
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 214
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x7d

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 223
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    .line 1180
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 236
    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    .line 238
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 239
    const-class v2, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 243
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 244
    .local v2, "request":Landroid/net/NetworkRequest;
    invoke-virtual {v1, v2, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 245
    return-void
.end method

.method private static copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;
    .registers 7
    .param p0, "request"    # Landroid/net/NetworkRequest;

    .line 739
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 740
    .local v0, "builder":Landroid/net/NetworkCapabilities$Builder;
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_16

    aget v5, v1, v4

    .local v5, "transport":I
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    .end local v5    # "transport":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 741
    :cond_16
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getCapabilities()[I

    move-result-object v1

    array-length v2, v1

    :goto_1b
    if-ge v3, v2, :cond_25

    aget v4, v1, v3

    .local v4, "capability":I
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .end local v4    # "capability":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 742
    :cond_25
    return-object v0
.end method

.method private getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 992
    if-nez p1, :cond_4

    .line 993
    const/4 v0, 0x0

    return-object v0

    .line 995
    :cond_4
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_7
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    monitor-exit v0

    return-object v1

    .line 1001
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1007
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 1008
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 1009
    .local v0, "defaultNetworkCallback":Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1010
    return-object v1

    .line 1013
    :cond_10
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 1018
    .local v2, "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    iget v3, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    const/16 v4, 0x1e

    const-string v5, "JobScheduler.Connectivity"

    if-ge v3, v4, :cond_78

    .line 1019
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2d

    goto :goto_78

    .line 1024
    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    if-nez v3, :cond_58

    iget-boolean v3, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v3, :cond_38

    goto :goto_58

    .line 1030
    :cond_38
    sget-boolean v3, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v3, :cond_56

    .line 1031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using BG bypass for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_56
    const/4 v3, -0x1

    .local v3, "unbypassableBlockedReasons":I
    goto :goto_99

    .line 1025
    .end local v3    # "unbypassableBlockedReasons":I
    :cond_58
    :goto_58
    sget-boolean v3, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v3, :cond_76

    .line 1026
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using EJ bypass for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_76
    const/4 v3, -0x8

    .restart local v3    # "unbypassableBlockedReasons":I
    goto :goto_99

    .line 1020
    .end local v3    # "unbypassableBlockedReasons":I
    :cond_78
    :goto_78
    sget-boolean v3, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v3, :cond_96

    .line 1021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using FG bypass for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_96
    const v3, -0x30008

    .line 1036
    .restart local v3    # "unbypassableBlockedReasons":I
    :goto_99
    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$fgetmBlockedReasons(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)I

    move-result v4

    and-int/2addr v4, v3

    if-nez v4, :cond_a5

    .line 1037
    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$fgetmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)Landroid/net/Network;

    move-result-object v1

    goto :goto_a6

    :cond_a5
    nop

    .line 1036
    :goto_a6
    return-object v1
.end method

.method private getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shouldExist"    # Z

    .line 326
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 327
    .local v0, "us":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    if-nez v0, :cond_36

    .line 328
    if-eqz p3, :cond_2a

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UidStats was null after job for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Connectivity"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_2a
    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/job/controllers/ConnectivityController$UidStats;-><init>(ILcom/android/server/job/controllers/ConnectivityController$UidStats-IA;)V

    move-object v0, v1

    .line 340
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 342
    :cond_36
    return-object v0
.end method

.method private static isCongestionDelayed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 7
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 654
    const/16 v0, 0x14

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 655
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result v0

    iget v2, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    .line 657
    :cond_15
    return v1
.end method

.method private isInsane(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 34
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p4, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/job/controllers/ConnectivityController;->mService:Lcom/android/server/job/JobSchedulerService;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v3

    .line 565
    .local v3, "maxJobExecutionTimeMs":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getMinimumNetworkChunkBytes()J

    move-result-wide v5

    .line 566
    .local v5, "minimumChunkBytes":J
    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    const-string/jumbo v11, "ms to run; that\'s insane!"

    const-string/jumbo v12, "ms and job has "

    const-string v13, " kbps network would take "

    const-string v14, "JobScheduler.Connectivity"

    const-wide/16 v15, 0x8

    const-wide/16 v17, 0x3e8

    const-wide/16 v19, 0x0

    if-eqz v1, :cond_c6

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v1

    int-to-long v7, v1

    .line 570
    .local v7, "bandwidthDown":J
    cmp-long v1, v7, v19

    const-string v9, " bytes over "

    const-string v10, "Minimum chunk "

    if-lez v1, :cond_73

    .line 572
    mul-long v21, v5, v17

    sget-object v1, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    .line 573
    invoke-virtual {v1, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v23

    div-long v23, v23, v15

    div-long v1, v21, v23

    .line 574
    .local v1, "estimatedMillis":J
    cmp-long v21, v1, v3

    if-lez v21, :cond_73

    .line 576
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v9, 0x1

    return v9

    .line 583
    .end local v1    # "estimatedMillis":J
    :cond_73
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v1

    int-to-long v1, v1

    .line 585
    .local v1, "bandwidthUp":J
    cmp-long v19, v1, v19

    if-lez v19, :cond_c2

    .line 587
    mul-long v17, v17, v5

    sget-object v15, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    .line 588
    invoke-virtual {v15, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v15

    const-wide/16 v19, 0x8

    div-long v15, v15, v19

    move-wide/from16 v21, v7

    .end local v7    # "bandwidthDown":J
    .local v21, "bandwidthDown":J
    div-long v7, v17, v15

    .line 589
    .local v7, "estimatedMillis":J
    cmp-long v15, v7, v3

    if-lez v15, :cond_c4

    .line 591
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v9, 0x1

    return v9

    .line 585
    .end local v21    # "bandwidthDown":J
    .local v7, "bandwidthDown":J
    :cond_c2
    move-wide/from16 v21, v7

    .line 597
    .end local v7    # "bandwidthDown":J
    .restart local v21    # "bandwidthDown":J
    :cond_c4
    const/4 v9, 0x0

    return v9

    .line 602
    .end local v1    # "bandwidthUp":J
    .end local v21    # "bandwidthDown":J
    :cond_c6
    const/4 v9, 0x0

    const/16 v1, 0xb

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_da

    iget-object v1, v0, Lcom/android/server/job/controllers/ConnectivityController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 603
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 607
    return v9

    .line 611
    :cond_da
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v9

    .line 612
    .local v9, "downloadBytes":J
    cmp-long v1, v9, v7

    const-string v15, "Estimated "

    if-eqz v1, :cond_133

    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v1

    int-to-long v7, v1

    .line 615
    .local v7, "bandwidth":J
    cmp-long v1, v7, v19

    if-lez v1, :cond_133

    .line 617
    mul-long v25, v9, v17

    sget-object v1, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    .line 618
    invoke-virtual {v1, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v27

    const-wide/16 v21, 0x8

    div-long v27, v27, v21

    div-long v0, v25, v27

    .line 619
    .local v0, "estimatedMillis":J
    cmp-long v16, v0, v3

    if-lez v16, :cond_133

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " download bytes over "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v2, 0x1

    return v2

    .line 629
    .end local v0    # "estimatedMillis":J
    .end local v7    # "bandwidth":J
    :cond_133
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    .line 630
    .local v0, "uploadBytes":J
    const-wide/16 v7, -0x1

    cmp-long v2, v0, v7

    if-eqz v2, :cond_191

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v2

    int-to-long v7, v2

    .line 633
    .restart local v7    # "bandwidth":J
    cmp-long v2, v7, v19

    if-lez v2, :cond_18e

    .line 635
    mul-long v17, v17, v0

    sget-object v2, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    .line 636
    invoke-virtual {v2, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v19

    const-wide/16 v21, 0x8

    div-long v19, v19, v21

    move-wide/from16 v21, v5

    .end local v5    # "minimumChunkBytes":J
    .local v21, "minimumChunkBytes":J
    div-long v5, v17, v19

    .line 637
    .local v5, "estimatedMillis":J
    cmp-long v2, v5, v3

    if-lez v2, :cond_193

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " upload bytes over "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v2, 0x1

    return v2

    .line 633
    .end local v21    # "minimumChunkBytes":J
    .local v5, "minimumChunkBytes":J
    :cond_18e
    move-wide/from16 v21, v5

    .end local v5    # "minimumChunkBytes":J
    .restart local v21    # "minimumChunkBytes":J
    goto :goto_193

    .line 630
    .end local v7    # "bandwidth":J
    .end local v21    # "minimumChunkBytes":J
    .restart local v5    # "minimumChunkBytes":J
    :cond_191
    move-wide/from16 v21, v5

    .line 647
    .end local v5    # "minimumChunkBytes":J
    .restart local v21    # "minimumChunkBytes":J
    :cond_193
    :goto_193
    const/4 v2, 0x0

    return v2
.end method

.method private isRelaxedSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 23
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p4, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 763
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1c

    move-object/from16 v6, p0

    move-object/from16 v11, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    goto/16 :goto_84

    .line 766
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v2

    .line 767
    .local v2, "estDownloadBytes":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_27

    .line 769
    return v1

    .line 773
    :cond_27
    nop

    .line 774
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController;->copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 775
    .local v0, "builder":Landroid/net/NetworkCapabilities$Builder;
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 776
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v6

    move-object/from16 v7, p3

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 777
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result v6

    move-object/from16 v8, p4

    iget v9, v8, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_70

    .line 778
    move-object/from16 v6, p0

    iget-object v9, v6, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 779
    const/4 v10, 0x1

    move-object/from16 v11, p2

    invoke-virtual {v9, v11, v10}, Lcom/android/server/net/NetworkPolicyManagerInternal;->getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J

    move-result-wide v12

    .line 781
    .local v12, "opportunisticQuotaBytes":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v14

    .line 782
    .local v14, "estUploadBytes":J
    nop

    .line 783
    const-wide/16 v16, -0x1

    cmp-long v9, v14, v16

    if-nez v9, :cond_68

    goto :goto_69

    :cond_68
    move-wide v4, v14

    :goto_69
    add-long/2addr v4, v2

    .line 784
    .local v4, "estimatedBytes":J
    cmp-long v9, v12, v4

    if-ltz v9, :cond_6f

    move v1, v10

    :cond_6f
    return v1

    .line 777
    .end local v4    # "estimatedBytes":J
    .end local v12    # "opportunisticQuotaBytes":J
    .end local v14    # "estUploadBytes":J
    :cond_70
    move-object/from16 v6, p0

    move-object/from16 v11, p2

    goto :goto_7b

    .line 776
    :cond_75
    move-object/from16 v6, p0

    move-object/from16 v11, p2

    move-object/from16 v8, p4

    .line 787
    :goto_7b
    return v1

    .line 763
    .end local v0    # "builder":Landroid/net/NetworkCapabilities$Builder;
    .end local v2    # "estDownloadBytes":J
    :cond_7c
    move-object/from16 v6, p0

    move-object/from16 v11, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 764
    :goto_84
    return v1
.end method

.method private static isStrictSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 6
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 748
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_32

    const/high16 v0, 0x1000000

    .line 749
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v0

    if-eqz v0, :cond_17

    const/high16 v0, 0x8000000

    .line 750
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 751
    :cond_17
    nop

    .line 752
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController;->copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 753
    .local v0, "builder":Landroid/net/NetworkCapabilities$Builder;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 754
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    return v1

    .line 756
    .end local v0    # "builder":Landroid/net/NetworkCapabilities$Builder;
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method private isStrongEnough(Lcom/android/server/job/controllers/JobStatus;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 15
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 664
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    .line 665
    .local v0, "priority":I
    const/4 v1, 0x1

    const/16 v2, 0x190

    if-lt v0, v2, :cond_a

    .line 666
    return v1

    .line 668
    :cond_a
    iget-boolean v2, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    if-nez v2, :cond_f

    .line 669
    return v1

    .line 671
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 672
    return v1

    .line 674
    :cond_17
    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 681
    return v1

    .line 690
    :cond_1f
    const/4 v3, 0x0

    .line 692
    .local v3, "signalStrength":I
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v4

    .line 693
    .local v4, "subscriptionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "JobScheduler.Connectivity"

    if-eqz v6, :cond_68

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 694
    .local v6, "subId":I
    iget-object v8, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    .line 695
    .local v8, "callback":Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;
    if-eqz v8, :cond_4b

    .line 696
    iget v7, v8, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_67

    .line 698
    :cond_4b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Subscription ID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t have a registered callback"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .end local v6    # "subId":I
    .end local v8    # "callback":Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;
    :goto_67
    goto :goto_28

    .line 702
    :cond_68
    sget-boolean v5, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v5, :cond_82

    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cell signal strength for job="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_82
    if-gt v3, v1, :cond_a9

    .line 710
    const/16 v5, 0x12c

    if-le v0, v5, :cond_89

    .line 711
    return v1

    .line 713
    :cond_89
    if-ge v0, v5, :cond_8c

    .line 714
    return v2

    .line 717
    :cond_8c
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v5

    if-eqz v5, :cond_9c

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v5

    if-nez v5, :cond_a6

    .line 718
    :cond_9c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result v5

    iget v6, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a7

    :cond_a6
    goto :goto_a8

    :cond_a7
    move v1, v2

    .line 717
    :goto_a8
    return v1

    .line 720
    :cond_a9
    const/4 v2, 0x2

    if-gt v3, v2, :cond_d6

    .line 723
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_b1

    .line 724
    return v1

    .line 727
    :cond_b1
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v2

    if-eqz v2, :cond_c2

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 728
    return v1

    .line 730
    :cond_c2
    nop

    .line 731
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    .line 730
    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v1

    .line 732
    .local v1, "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    iget-object v2, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 734
    .end local v1    # "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    :cond_d6
    return v1
.end method

.method private isUsable(Landroid/net/NetworkCapabilities;)Z
    .registers 3
    .param p1, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 548
    if-eqz p1, :cond_c

    const/16 v0, 0x15

    .line 549
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 548
    :goto_d
    return v0
.end method

.method private maybeAdjustRegisteredCallbacksLocked()V
    .registers 14

    .line 870
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 872
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 873
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v0, v2, :cond_15

    .line 876
    return-void

    .line 879
    :cond_15
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 880
    .local v2, "nowElapsed":J
    iget-wide v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastCallbackAdjustmentTimeElapsed:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_29

    .line 881
    invoke-direct {p0, v6, v7}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks(J)V

    .line 882
    return-void

    .line 885
    :cond_29
    iput-wide v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastCallbackAdjustmentTimeElapsed:J

    .line 886
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 888
    const/4 v4, 0x0

    .local v4, "u":I
    :goto_31
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_e1

    .line 889
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 890
    .local v5, "us":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    iget v7, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 891
    .local v6, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v6, :cond_d7

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-nez v7, :cond_55

    goto/16 :goto_d7

    .line 897
    :cond_55
    iget-wide v7, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    const-wide/16 v9, 0x7530

    add-long/2addr v7, v9

    cmp-long v7, v7, v2

    if-gez v7, :cond_d1

    .line 898
    const-wide v7, 0x7fffffffffffffffL

    iput-wide v7, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    .line 899
    iput-wide v7, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    .line 900
    iput v1, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 901
    iput v1, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    .line 902
    iput v1, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    .line 903
    iput v1, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    .line 905
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_70
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_cf

    .line 906
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 907
    .local v8, "job":Lcom/android/server/job/controllers/JobStatus;
    const/high16 v9, 0x10000000

    invoke-virtual {p0, v8, v9}, Lcom/android/server/job/controllers/ConnectivityController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 908
    iget v9, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 909
    invoke-virtual {p0, v8}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 910
    iget v9, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    .line 916
    :cond_96
    iget-wide v9, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    iget-wide v11, v8, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iput-wide v9, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    .line 917
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v9

    if-nez v9, :cond_aa

    iget-boolean v9, v8, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v9, :cond_b4

    .line 918
    :cond_aa
    iget-wide v9, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v11, v8, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 919
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iput-wide v9, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    .line 922
    :cond_b4
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v9

    if-nez v9, :cond_c6

    iget-boolean v9, v8, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v9, :cond_bf

    goto :goto_c6

    .line 925
    :cond_bf
    iget v9, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    goto :goto_cc

    .line 923
    :cond_c6
    :goto_c6
    iget v9, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    .line 905
    .end local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    :goto_cc
    add-int/lit8 v7, v7, 0x1

    goto :goto_70

    .line 929
    .end local v7    # "j":I
    :cond_cf
    iput-wide v2, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    .line 931
    :cond_d1
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dd

    .line 892
    :cond_d7
    :goto_d7
    iget v7, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-direct {p0, v7, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    .line 893
    nop

    .line 888
    .end local v5    # "us":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    .end local v6    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_dd
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_31

    .line 934
    .end local v4    # "u":I
    :cond_e1
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStatsComparator:Ljava/util/Comparator;

    invoke-interface {v1, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 936
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 938
    .local v1, "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_f5
    if-ltz v4, :cond_14f

    .line 939
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 940
    .restart local v5    # "us":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    const/16 v6, 0x7d

    if-lt v4, v6, :cond_119

    .line 941
    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-direct {p0, v6, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    move-result v6

    if-eqz v6, :cond_14c

    .line 942
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    iget v7, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_14c

    .line 945
    :cond_119
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v7, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 946
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 947
    .local v6, "defaultNetworkCallback":Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
    if-nez v6, :cond_14c

    .line 949
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    invoke-interface {v7}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 950
    if-nez v6, :cond_137

    .line 951
    new-instance v7, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback-IA;)V

    move-object v6, v7

    .line 953
    :cond_137
    iget v7, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v6, v7}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$msetUid(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;I)V

    .line 954
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v8, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 955
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget v8, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    iget-object v9, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v6, v9}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallbackForUid(ILandroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 938
    .end local v5    # "us":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    .end local v6    # "defaultNetworkCallback":Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
    :cond_14c
    :goto_14c
    add-int/lit8 v4, v4, -0x1

    goto :goto_f5

    .line 960
    .end local v4    # "i":I
    :cond_14f
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_15a

    .line 961
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v4, v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 963
    :cond_15a
    return-void
.end method

.method private maybeRegisterDefaultNetworkCallbackLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 817
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 818
    .local v0, "sourceUid":I
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 819
    return-void

    .line 821
    :cond_d
    nop

    .line 822
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v1

    .line 823
    .local v1, "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 824
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_28
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, 0x7d

    if-lt v2, v3, :cond_36

    .line 827
    invoke-direct {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    .line 828
    return-void

    .line 830
    :cond_36
    invoke-direct {p0}, Lcom/android/server/job/controllers/ConnectivityController;->registerPendingUidCallbacksLocked()V

    .line 831
    return-void
.end method

.method private postAdjustCallbacks()V
    .registers 3

    .line 861
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks(J)V

    .line 862
    return-void
.end method

.method private postAdjustCallbacks(J)V
    .registers 5
    .param p1, "delayMs"    # J

    .line 865
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 866
    return-void
.end method

.method private registerPendingUidCallbacksLocked()V
    .registers 9

    .line 841
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 842
    .local v0, "numCallbacks":I
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 843
    .local v1, "numPending":I
    if-ge v1, v0, :cond_30

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There are more registered callbacks than sorted UIDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler.Connectivity"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_30
    move v2, v0

    .local v2, "i":I
    :goto_31
    if-ge v2, v1, :cond_68

    const/16 v3, 0x7d

    if-ge v2, v3, :cond_68

    .line 849
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 850
    .local v3, "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    invoke-interface {v4}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 851
    .local v4, "callback":Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
    if-nez v4, :cond_50

    .line 852
    new-instance v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback-IA;)V

    move-object v4, v5

    .line 854
    :cond_50
    iget v5, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v4, v5}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$msetUid(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;I)V

    .line 855
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v6, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 856
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget v6, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v4, v7}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallbackForUid(ILandroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 848
    .end local v3    # "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    .end local v4    # "callback":Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 858
    .end local v2    # "i":I
    :cond_68
    return-void
.end method

.method private revokeStandbyExceptionLocked(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 496
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoking standby exception for UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_1c
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setAppIdleWhitelist(IZ)V

    .line 498
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 499
    return-void
.end method

.method private unregisterDefaultNetworkCallbackLocked(IJ)Z
    .registers 15
    .param p1, "uid"    # I
    .param p2, "nowElapsed"    # J

    .line 967
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 968
    .local v0, "defaultNetworkCallback":Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
    if-nez v0, :cond_c

    .line 969
    const/4 v1, 0x0

    return v1

    .line 971
    :cond_c
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 972
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 973
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 974
    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$mclear(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)V

    .line 976
    const/4 v1, 0x0

    .line 977
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 978
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v2, :cond_45

    .line 982
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_2f
    if-ltz v3, :cond_45

    .line 983
    nop

    .line 984
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 983
    move-object v5, p0

    move-wide v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 982
    add-int/lit8 v3, v3, -0x1

    goto :goto_2f

    .line 987
    .end local v3    # "j":I
    :cond_45
    return v1
.end method

.method private updateAllTrackedJobsLocked(Z)V
    .registers 7
    .param p1, "allowThrottle"    # Z

    .line 1076
    const/4 v0, 0x1

    if-eqz p1, :cond_24

    .line 1077
    iget-wide v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastAllJobUpdateTimeElapsed:J

    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    add-long/2addr v1, v3

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1079
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1080
    .local v1, "throttleTimeLeftMs":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_24

    .line 1081
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1082
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1083
    return-void

    .line 1087
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "throttleTimeLeftMs":J
    :cond_24
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1088
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(ILandroid/net/Network;)V

    .line 1089
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastAllJobUpdateTimeElapsed:J

    .line 1090
    return-void
.end method

.method private updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 13
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1041
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 1042
    .local v7, "nowElapsed":J
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 1043
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 1044
    .local v0, "defaultNetworkCallback":Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
    if-nez v0, :cond_21

    .line 1045
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRegisterDefaultNetworkCallbackLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1046
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v1

    return v1

    .line 1048
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;

    move-result-object v9

    .line 1049
    .local v9, "network":Landroid/net/Network;
    invoke-direct {p0, v9}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    .line 1050
    .local v10, "capabilities":Landroid/net/NetworkCapabilities;
    move-object v1, p0

    move-object v2, p1

    move-wide v3, v7

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v1

    return v1
.end method

.method private updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Landroid/net/NetworkCapabilities;)Z
    .registers 10
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsed"    # J
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 1057
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {p0, p1, p4, p5, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v0

    .line 1059
    .local v0, "satisfied":Z
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/job/controllers/JobStatus;->setConnectivityConstraintSatisfied(JZ)Z

    move-result v1

    .line 1064
    .local v1, "changed":Z
    iput-object p4, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 1066
    sget-boolean v2, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v2, :cond_52

    .line 1067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connectivity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_20

    const-string v3, "CHANGED"

    goto :goto_23

    :cond_20
    const-string/jumbo v3, "unchanged"

    :goto_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": usable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1068
    invoke-direct {p0, p5}, Lcom/android/server/job/controllers/ConnectivityController;->isUsable(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " satisfied="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1067
    const-string v3, "JobScheduler.Connectivity"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_52
    return v1
.end method

.method private updateTrackedJobsLocked(ILandroid/net/Network;)V
    .registers 6
    .param p1, "filterUid"    # I
    .param p2, "filterNetwork"    # Landroid/net/Network;

    .line 1103
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2f

    .line 1104
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1105
    .local v0, "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_2e

    .line 1106
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-direct {p0, v2, p2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1107
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1105
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .end local v1    # "i":I
    :cond_2e
    goto :goto_47

    .line 1111
    .end local v0    # "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_2f
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-direct {p0, v0, p2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1112
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .restart local v0    # "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    goto :goto_47

    .line 1114
    .end local v0    # "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_46
    const/4 v0, 0x0

    .line 1117
    .restart local v0    # "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_47
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_54

    .line 1118
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1, v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 1120
    :cond_54
    return-void
.end method

.method private updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z
    .registers 23
    .param p2, "filterNetwork"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;",
            "Landroid/net/Network;",
            ")Z"
        }
    .end annotation

    .line 1125
    .local p1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v9, 0x0

    if-eqz v7, :cond_73

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_73

    .line 1129
    :cond_11
    iget-object v0, v6, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 1130
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 1131
    .local v10, "defaultNetworkCallback":Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
    if-nez v10, :cond_27

    .line 1136
    return v9

    .line 1139
    :cond_27
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 1140
    .local v11, "nowElapsed":J
    const/4 v0, 0x0

    .line 1141
    .local v0, "changed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    move v14, v0

    move v15, v1

    .end local v0    # "changed":Z
    .local v14, "changed":Z
    .local v15, "i":I
    :goto_36
    if-ltz v15, :cond_72

    .line 1142
    invoke-virtual {v7, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 1144
    .local v5, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {v6, v5}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;

    move-result-object v4

    .line 1145
    .local v4, "net":Landroid/net/Network;
    invoke-direct {v6, v4}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v16

    .line 1146
    .local v16, "netCap":Landroid/net/NetworkCapabilities;
    if-eqz v8, :cond_52

    .line 1147
    invoke-static {v8, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    goto :goto_52

    :cond_50
    move v0, v9

    goto :goto_53

    :cond_52
    :goto_52
    move v0, v13

    :goto_53
    move/from16 v17, v0

    .line 1152
    .local v17, "match":Z
    if-nez v17, :cond_5f

    iget-object v0, v5, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1153
    :cond_5f
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v11

    move-object/from16 v18, v4

    .end local v4    # "net":Landroid/net/Network;
    .local v18, "net":Landroid/net/Network;
    move-object/from16 v19, v5

    .end local v5    # "js":Lcom/android/server/job/controllers/JobStatus;
    .local v19, "js":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    or-int/2addr v0, v14

    move v14, v0

    .line 1141
    .end local v16    # "netCap":Landroid/net/NetworkCapabilities;
    .end local v17    # "match":Z
    .end local v18    # "net":Landroid/net/Network;
    .end local v19    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_6f
    add-int/lit8 v15, v15, -0x1

    goto :goto_36

    .line 1156
    .end local v15    # "i":I
    :cond_72
    return v14

    .line 1126
    .end local v10    # "defaultNetworkCallback":Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
    .end local v11    # "nowElapsed":J
    .end local v14    # "changed":Z
    :cond_73
    :goto_73
    return v9
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 11
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1477
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1479
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_49

    .line 1480
    const-string v2, "Requested standby exceptions:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1481
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 1482
    const-string v3, " "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1483
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1484
    const-string v3, " ("

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1485
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1486
    const-string v3, " jobs)"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1481
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1488
    .end local v2    # "i":I
    :cond_46
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1490
    :cond_49
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const-string v3, ": "

    if-lez v2, :cond_80

    .line 1491
    const-string v2, "Available networks:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1493
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5c
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_7c

    .line 1494
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 1495
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1493
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 1498
    .end local v2    # "i":I
    :cond_7c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_85

    .line 1500
    :cond_80
    const-string v2, "No available networks"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    :goto_85
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1504
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_c1

    .line 1505
    const-string v2, "Subscription ID signal strengths:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1507
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_99
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_bd

    .line 1508
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1509
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1510
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1507
    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    .line 1512
    .end local v2    # "i":I
    :cond_bd
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_c6

    .line 1514
    :cond_c1
    const-string v2, "No cached signal strengths"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    :goto_c6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1518
    const-string v2, "Current default network callbacks:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1520
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_d2
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_e8

    .line 1521
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    invoke-static {v4, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$mdumpLocked(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;Landroid/util/IndentingPrintWriter;)V

    .line 1520
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    .line 1523
    .end local v2    # "i":I
    :cond_e8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1524
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1526
    const-string v2, "UID Pecking Order:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1528
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_f7
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_113

    .line 1529
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1530
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1531
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    invoke-static {v4, p1, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->-$$Nest$mdumpLocked(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Landroid/util/IndentingPrintWriter;J)V

    .line 1528
    add-int/lit8 v2, v2, 0x1

    goto :goto_f7

    .line 1533
    .end local v2    # "i":I
    :cond_113
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1534
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1536
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_11a
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_169

    .line 1537
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1538
    .local v4, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_12b
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_166

    .line 1539
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 1540
    .local v6, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13e

    .line 1541
    goto :goto_163

    .line 1543
    :cond_13e
    const-string v7, "#"

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v6, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 1545
    const-string v7, " from "

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1546
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    invoke-static {p1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1547
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 1549
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1538
    .end local v6    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_163
    add-int/lit8 v5, v5, 0x1

    goto :goto_12b

    .line 1536
    .end local v4    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v5    # "j":I
    :cond_166
    add-int/lit8 v2, v2, 0x1

    goto :goto_11a

    .line 1552
    .end local v2    # "i":I
    :cond_169
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 21
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1558
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1559
    .local v2, "token":J
    const-wide v4, 0x10b00000003L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1561
    .local v4, "mToken":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_12
    iget-object v7, v0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2b

    .line 1562
    const-wide v7, 0x20500000003L

    iget-object v9, v0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 1564
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1562
    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1561
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 1566
    .end local v6    # "i":I
    :cond_2b
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2c
    iget-object v7, v0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_7a

    .line 1567
    iget-object v7, v0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 1568
    .local v7, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3d
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_75

    .line 1569
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 1570
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v10, p4

    invoke-interface {v10, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_52

    .line 1571
    goto :goto_72

    .line 1573
    :cond_52
    const-wide v11, 0x20b00000002L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1575
    .local v11, "jsToken":J
    const-wide v13, 0x10b00000001L

    invoke-virtual {v9, v1, v13, v14}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1577
    const-wide v13, 0x10500000002L

    .line 1578
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v15

    .line 1577
    invoke-virtual {v1, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1579
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1568
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v11    # "jsToken":J
    :goto_72
    add-int/lit8 v8, v8, 0x1

    goto :goto_3d

    :cond_75
    move-object/from16 v10, p4

    .line 1566
    .end local v7    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v8    # "j":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_7a
    move-object/from16 v10, p4

    .line 1583
    .end local v6    # "i":I
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1584
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1585
    return-void
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 407
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_7

    .line 408
    return-void

    .line 411
    :cond_7
    nop

    .line 412
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    .line 414
    .local v0, "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    const/high16 v3, 0x10000000

    if-eqz v1, :cond_27

    .line 415
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v1

    if-nez v1, :cond_36

    .line 420
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_36

    .line 424
    :cond_27
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 425
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 428
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 432
    :cond_36
    :goto_36
    invoke-virtual {p0, p1, v3}, Lcom/android/server/job/controllers/ConnectivityController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v1

    const-string v3, "evaluateStateLocked finds job "

    const-string v4, "JobScheduler.Connectivity"

    if-eqz v1, :cond_6d

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 434
    sget-boolean v1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v1, :cond_64

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " would be ready."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_64
    iget v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_8e

    .line 440
    :cond_6d
    sget-boolean v1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v1, :cond_8b

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " would not be ready."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_8b
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 448
    :goto_8e
    return-void
.end method

.method public isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 10
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 350
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_65

    .line 352
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 353
    .local v2, "network":Landroid/net/Network;
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkCapabilities;

    .line 354
    .local v3, "capabilities":Landroid/net/NetworkCapabilities;
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v4

    .line 355
    .local v4, "satisfied":Z
    sget-boolean v5, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v5, :cond_5d

    .line 356
    const-string v5, "JobScheduler.Connectivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isNetworkAvailable("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") with network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and capabilities "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Satisfied="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_5d
    if-eqz v4, :cond_62

    .line 360
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 351
    .end local v2    # "network":Landroid/net/Network;
    .end local v3    # "capabilities":Landroid/net/NetworkCapabilities;
    .end local v4    # "satisfied":Z
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 363
    .end local v1    # "i":I
    :cond_65
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 364
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_4 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p4, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 794
    const/4 v0, 0x0

    if-eqz p2, :cond_32

    if-nez p3, :cond_6

    goto :goto_32

    .line 796
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isUsable(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    .line 799
    :cond_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isInsane(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v0

    .line 802
    :cond_14
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isCongestionDelayed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v0

    .line 804
    :cond_1b
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isStrongEnough(Lcom/android/server/job/controllers/JobStatus;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-nez v1, :cond_22

    return v0

    .line 807
    :cond_22
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isStrictSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    return v2

    .line 810
    :cond_2a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isRelaxedSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_31

    return v2

    .line 812
    :cond_31
    return v0

    .line 794
    :cond_32
    :goto_32
    return v0
.end method

.method isStandbyExceptionRequestedLocked(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 396
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 397
    .local v0, "jobs":Landroid/util/ArraySet;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 467
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 468
    .local v0, "uid":I
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 469
    return-void

    .line 471
    :cond_b
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 472
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const-string v2, "JobScheduler.Connectivity"

    if-nez v1, :cond_1e

    .line 473
    const-string/jumbo v3, "maybeRevokeStandbyExceptionLocked found null jobs array even though a standby exception has been requested."

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void

    .line 478
    :cond_1e
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_2b

    goto :goto_2f

    .line 487
    :cond_2b
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->revokeStandbyExceptionLocked(I)V

    .line 488
    return-void

    .line 479
    :cond_2f
    :goto_2f
    sget-boolean v3, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v3, :cond_54

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maybeRevokeStandbyExceptionLocked not revoking because there are still "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 482
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " jobs left."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_54
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 250
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 251
    nop

    .line 252
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    .line 253
    .local v0, "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    const/high16 v1, 0x10000000

    invoke-virtual {p0, p1, v1}, Lcom/android/server/job/controllers/ConnectivityController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 254
    iget v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 256
    :cond_22
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 257
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v1, :cond_3f

    .line 258
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 259
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    :cond_3f
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 262
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 263
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 265
    .end local v0    # "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_49
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 292
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 293
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 294
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v0, :cond_18

    .line 295
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 297
    :cond_18
    nop

    .line 298
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v1

    .line 299
    .local v1, "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    iget v2, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 300
    iget-object v2, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 302
    invoke-direct {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    .line 304
    .end local v0    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v1    # "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    :cond_36
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 504
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_26

    .line 507
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 508
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 509
    .local v0, "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    .line 510
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 511
    invoke-direct {p0}, Lcom/android/server/job/controllers/ConnectivityController;->registerPendingUidCallbacksLocked()V

    .line 513
    .end local v0    # "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    :cond_26
    return-void
.end method

.method public onBatteryStateChangedLocked()V
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 545
    return-void
.end method

.method public onNetworkActive()V
    .registers 9

    .line 1164
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_56

    .line 1166
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1167
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1b
    if-ltz v3, :cond_53

    .line 1168
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1169
    .local v4, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1170
    sget-boolean v5, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v5, :cond_4b

    .line 1171
    const-string v5, "JobScheduler.Connectivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Running "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " due to network activity."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_4b
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v5, v4}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1167
    .end local v4    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_50
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 1165
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "j":I
    :cond_53
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1177
    .end local v1    # "i":I
    :cond_56
    monitor-exit v0

    .line 1178
    return-void

    .line 1177
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public onUidBiasChangedLocked(III)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "prevBias"    # I
    .param p3, "newBias"    # I

    .line 533
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 534
    .local v0, "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    if-eqz v0, :cond_13

    iget v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    if-eq v1, p3, :cond_13

    .line 535
    iput p3, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    .line 536
    invoke-direct {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    .line 538
    :cond_13
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 518
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 519
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "u":I
    :goto_e
    if-ltz v2, :cond_32

    .line 520
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 521
    .local v3, "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    iget v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_2f

    .line 522
    iget v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-direct {p0, v4, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    .line 523
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 524
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 519
    .end local v3    # "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 527
    .end local v2    # "u":I
    :cond_32
    invoke-direct {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    .line 528
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 270
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 271
    nop

    .line 272
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    .line 273
    .local v0, "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    iget-object v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v0    # "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    :cond_19
    return-void
.end method

.method public reevaluateStateLocked(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 454
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 455
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v0, :cond_b

    .line 456
    return-void

    .line 458
    :cond_b
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_1f

    .line 459
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 458
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 461
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 374
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 376
    .local v0, "uid":I
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    move-result v1

    .line 377
    .local v1, "isExceptionRequested":Z
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 378
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v2, :cond_1d

    .line 379
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 380
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    :cond_1d
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "JobScheduler.Connectivity"

    if-eqz v3, :cond_49

    if-eqz v1, :cond_28

    goto :goto_49

    .line 388
    :cond_28
    sget-boolean v3, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting standby exception for UID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_42
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setAppIdleWhitelist(IZ)V

    .line 390
    return-void

    .line 383
    :cond_49
    :goto_49
    sget-boolean v3, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v3, :cond_53

    .line 384
    const-string/jumbo v3, "requestStandbyExceptionLocked found exception already requested."

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_53
    return-void
.end method

.method public startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 310
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 313
    :cond_9
    return-void
.end method

.method public stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 319
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 322
    :cond_9
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 280
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 281
    nop

    .line 282
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    .line 283
    .local v0, "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    iget-object v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 284
    invoke-direct {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    .line 286
    .end local v0    # "uidStats":Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    :cond_1c
    return-void
.end method
