.class public Lcom/android/server/AppStateTrackerImpl;
.super Ljava/lang/Object;
.source "AppStateTrackerImpl.java"

# interfaces
.implements Lcom/android/server/AppStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppStateTrackerImpl$MyHandler;,
        Lcom/android/server/AppStateTrackerImpl$StandbyTracker;,
        Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;,
        Lcom/android/server/AppStateTrackerImpl$UidObserver;,
        Lcom/android/server/AppStateTrackerImpl$Listener;,
        Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;,
        Lcom/android/server/AppStateTrackerImpl$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final TARGET_OP:I = 0x46


# instance fields
.field final mActiveUids:Landroid/util/SparseBooleanArray;

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppBackgroundRestrictionListener:Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field volatile mBackgroundRestrictedUidPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatterySaverEnabled:Z

.field private final mContext:Landroid/content/Context;

.field final mExemptedBucketPackages:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

.field mForceAllAppStandbyForSmallBattery:Z

.field mForceAllAppsStandby:Z

.field mForcedAppStandbyEnabled:Z

.field private final mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

.field mIActivityManager:Landroid/app/IActivityManager;

.field mIsPluggedIn:Z

.field final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppStateTrackerImpl$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPowerExemptAllAppIds:[I

.field private mPowerExemptUserAppIds:[I

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field final mRunAnyRestrictedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mStandbyTracker:Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

.field mStarted:Z

.field private final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field private mTempExemptAppIds:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/AppStateTrackerImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl;->cloneListeners()[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateBackgroundRestrictedUidPackagesLocked(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateForceAllAppStandbyState(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smaddUidToArray(Landroid/util/SparseBooleanArray;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->addUidToArray(Landroid/util/SparseBooleanArray;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smremoveUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 108
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 114
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 120
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 123
    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 129
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 133
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 209
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    const-string v1, "UID_FG_STATE_CHANGED"

    const-string v2, "UID_ACTIVE_STATE_CHANGED"

    const-string v3, "RUN_ANY_CHANGED"

    const-string v4, "ALL_UNEXEMPTED"

    const-string v5, "ALL_EXEMPTION_LIST_CHANGED"

    const-string v6, "TEMP_EXEMPTION_LIST_CHANGED"

    const-string v7, "EXEMPTED_BUCKET_CHANGED"

    const-string v8, "FORCE_ALL_CHANGED"

    const-string v9, "FORCE_APP_STANDBY_FEATURE_FLAG_CHANGED"

    const-string v10, "IS_UID_ACTIVE_CACHED"

    const-string v11, "IS_UID_ACTIVE_RAW"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 284
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppStateTrackerImpl$2;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mAppBackgroundRestrictionListener:Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    .line 465
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/AppStateTrackerImpl$3;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 461
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    .line 462
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;-><init>(Lcom/android/server/AppStateTrackerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 463
    return-void
.end method

.method private static addUidToArray(Landroid/util/SparseBooleanArray;I)Z
    .registers 4
    .param p0, "array"    # Landroid/util/SparseBooleanArray;
    .param p1, "uid"    # I

    .line 722
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 723
    return v1

    .line 725
    :cond_8
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 726
    return v1

    .line 728
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 729
    return v0
.end method

.method private cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V
    .registers 6
    .param p1, "array"    # Landroid/util/SparseBooleanArray;
    .param p2, "removedUserId"    # I

    .line 1064
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 1065
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 1066
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1068
    .local v2, "userId":I
    if-ne v2, p2, :cond_15

    .line 1069
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 1064
    .end local v1    # "uid":I
    .end local v2    # "userId":I
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1072
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method private cloneListeners()[Lcom/android/server/AppStateTrackerImpl$Listener;
    .registers 4

    .line 817
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/AppStateTrackerImpl$Listener;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/AppStateTrackerImpl$Listener;

    monitor-exit v0

    return-object v1

    .line 819
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "array"    # Landroid/util/SparseBooleanArray;

    .line 1383
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1385
    const-string v0, ""

    .line 1386
    .local v0, "sep":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 1387
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1388
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1390
    const-string v0, " "

    .line 1386
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1393
    .end local v1    # "i":I
    :cond_27
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    return-void
.end method

.method private findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 680
    .local v0, "size":I
    const/16 v1, 0x8

    if-le v0, v1, :cond_19

    .line 681
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 683
    :cond_19
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v0, :cond_3a

    .line 684
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 686
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_37

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 687
    return v1

    .line 683
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 690
    .end local v1    # "i":I
    :cond_3a
    const/4 v1, -0x1

    return v1
.end method

.method static isAnyAppIdUnexempt([I[I)Z
    .registers 9
    .param p0, "prevArray"    # [I
    .param p1, "newArray"    # [I

    .line 1108
    const/4 v0, 0x0

    .line 1109
    .local v0, "i1":I
    const/4 v1, 0x0

    .line 1114
    .local v1, "i2":I
    :goto_2
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_9

    move v2, v4

    goto :goto_a

    :cond_9
    move v2, v3

    .line 1115
    .local v2, "prevFinished":Z
    :goto_a
    array-length v5, p1

    if-lt v1, v5, :cond_f

    move v5, v4

    goto :goto_10

    :cond_f
    move v5, v3

    .line 1116
    .local v5, "newFinished":Z
    :goto_10
    if-nez v2, :cond_27

    if-eqz v5, :cond_15

    .line 1117
    goto :goto_27

    .line 1119
    :cond_15
    aget v3, p0, v0

    .line 1120
    .local v3, "a1":I
    aget v6, p1, v1

    .line 1122
    .local v6, "a2":I
    if-ne v3, v6, :cond_20

    .line 1123
    add-int/lit8 v0, v0, 0x1

    .line 1124
    add-int/lit8 v1, v1, 0x1

    .line 1125
    goto :goto_2

    .line 1127
    :cond_20
    if-ge v3, v6, :cond_23

    .line 1129
    return v4

    .line 1131
    :cond_23
    nop

    .end local v3    # "a1":I
    .end local v6    # "a2":I
    add-int/lit8 v1, v1, 0x1

    .line 1132
    goto :goto_2

    .line 1133
    :cond_27
    :goto_27
    if-eqz v2, :cond_2a

    .line 1134
    return v3

    .line 1136
    :cond_2a
    return v5
.end method

.method private refreshForcedAppStandbyUidPackagesLocked()V
    .registers 12

    .line 611
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 612
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x46

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 615
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v0, :cond_16

    .line 616
    return-void

    .line 618
    :cond_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 619
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_62

    .line 620
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 621
    .local v4, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    .line 623
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5f

    .line 624
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    .line 625
    .local v7, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    if-eq v8, v3, :cond_41

    .line 626
    goto :goto_5c

    .line 628
    :cond_41
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-eqz v8, :cond_5c

    .line 629
    iget-object v8, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 630
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 629
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 623
    .end local v7    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_5c
    :goto_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 619
    .end local v4    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v5    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v6    # "j":I
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 634
    .end local v2    # "i":I
    :cond_62
    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    .line 635
    return-void
.end method

.method private static removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    .registers 5
    .param p0, "array"    # Landroid/util/SparseBooleanArray;
    .param p1, "uid"    # I
    .param p2, "remove"    # Z

    .line 733
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 734
    return v1

    .line 736
    :cond_8
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 737
    return v1

    .line 739
    :cond_f
    if-eqz p2, :cond_15

    .line 740
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_18

    .line 742
    :cond_15
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 744
    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method private toggleForceAllAppsStandbyLocked(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 669
    iget-boolean v0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    if-ne p1, v0, :cond_5

    .line 670
    return-void

    .line 672
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 674
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyForceAllAppsStandbyChanged()V

    .line 675
    return-void
.end method

.method private updateBackgroundRestrictedUidPackagesLocked()V
    .registers 5

    .line 643
    iget-boolean v0, p0, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    if-nez v0, :cond_b

    .line 644
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 645
    return-void

    .line 647
    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 648
    .local v0, "fasUidPkgs":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .local v2, "size":I
    :goto_17
    if-ge v1, v2, :cond_27

    .line 649
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 648
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 651
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 652
    return-void
.end method

.method private updateForceAllAppStandbyState()V
    .registers 3

    .line 655
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 657
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-direct {p0, v1}, Lcom/android/server/AppStateTrackerImpl;->toggleForceAllAppsStandbyLocked(Z)V

    goto :goto_1d

    .line 659
    :cond_18
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    invoke-direct {p0, v1}, Lcom/android/server/AppStateTrackerImpl;->toggleForceAllAppsStandbyLocked(Z)V

    .line 661
    :goto_1d
    monitor-exit v0

    .line 662
    return-void

    .line 661
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method public addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    .line 179
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppStateTrackerImpl$1;-><init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    .line 186
    return-void
.end method

.method public addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 1145
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1146
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1147
    monitor-exit v0

    .line 1148
    return-void

    .line 1147
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public areAlarmsRestricted(ILjava/lang/String;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1156
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1157
    return v1

    .line 1159
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1160
    :try_start_b
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1161
    .local v2, "appId":I
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1162
    monitor-exit v0

    return v1

    .line 1167
    :cond_19
    iget-boolean v3, p0, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1168
    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 1169
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    nop

    :goto_2e
    monitor-exit v0

    .line 1167
    return v1

    .line 1170
    .end local v2    # "appId":I
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_30

    throw v1
.end method

.method public areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1177
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1178
    return v1

    .line 1180
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1181
    :try_start_b
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1182
    .local v2, "appId":I
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1183
    monitor-exit v0

    return v1

    .line 1185
    :cond_19
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1186
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 1187
    invoke-virtual {v4, v3, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1188
    monitor-exit v0

    return v1

    .line 1190
    :cond_37
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v0

    return v1

    .line 1191
    .end local v2    # "appId":I
    .end local v3    # "userId":I
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public areJobsRestricted(ILjava/lang/String;Z)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hasForegroundExemption"    # Z

    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1202
    return v1

    .line 1204
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1205
    :try_start_b
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1206
    .local v2, "appId":I
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_5b

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 1207
    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_5b

    .line 1213
    :cond_20
    iget-boolean v3, p0, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1214
    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v3

    if-nez v3, :cond_35

    .line 1215
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1216
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1218
    :cond_35
    if-eqz p3, :cond_39

    .line 1219
    monitor-exit v0

    return v1

    .line 1221
    :cond_39
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1222
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result v4

    if-eqz v4, :cond_57

    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result v4

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 1223
    invoke-virtual {v4, v3, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1224
    monitor-exit v0

    return v1

    .line 1226
    :cond_57
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v0

    return v1

    .line 1208
    .end local v3    # "userId":I
    :cond_5b
    :goto_5b
    monitor-exit v0

    return v1

    .line 1227
    .end local v2    # "appId":I
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_b .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 1320
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1321
    :try_start_3
    const-string v1, "Current AppStateTracker State:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forced App Standby Feature enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    const-string v1, "Force all apps standby: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isForceAllAppsStandbyEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1329
    const-string v1, "Small Battery Device: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1332
    const-string v1, "Force all apps standby for small battery device: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1333
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1335
    const-string v1, "Plugged In: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1338
    const-string v1, "Active uids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1339
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p1, v1}, Lcom/android/server/AppStateTrackerImpl;->dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    .line 1341
    const-string v1, "Except-idle + user exemption list appids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1344
    const-string v1, "User exemption list appids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1345
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    const-string v1, "Temp exemption list appids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1348
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    const-string v1, "Exempted bucket packages:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1352
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8c
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_c8

    .line 1353
    const-string v2, "User "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1354
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1355
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1357
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1358
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a9
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v3

    if-ge v2, v3, :cond_c2

    .line 1359
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1358
    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    .line 1362
    .end local v2    # "j":I
    :cond_c2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1352
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 1364
    .end local v1    # "i":I
    :cond_c8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1365
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1367
    const-string v1, "Restricted packages:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1369
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_dc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1370
    .local v2, "uidAndPackage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1371
    const-string v3, " "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1372
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1374
    .end local v2    # "uidAndPackage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_dc

    .line 1375
    :cond_107
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1377
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1378
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1379
    monitor-exit v0

    .line 1380
    return-void

    .line 1379
    :catchall_114
    move-exception v1

    monitor-exit v0
    :try_end_116
    .catchall {:try_start_3 .. :try_end_116} :catchall_114

    throw v1
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1400
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1401
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1403
    .local v1, "token":J
    const-wide v3, 0x1080000000dL

    iget-boolean v5, p0, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1405
    const-wide v3, 0x10800000001L

    .line 1406
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isForceAllAppsStandbyEnabled()Z

    move-result v5

    .line 1405
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1407
    const-wide v3, 0x10800000006L

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1408
    const-wide v3, 0x10800000007L

    iget-boolean v5, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1410
    const-wide v3, 0x10800000008L

    iget-boolean v5, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1412
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3e
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5f

    .line 1413
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1414
    const-wide v4, 0x20500000002L

    iget-object v6, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1412
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 1418
    .end local v3    # "i":I
    :cond_5f
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_64
    if-ge v6, v4, :cond_73

    aget v7, v3, v6

    .line 1419
    .local v7, "appId":I
    const-wide v8, 0x20500000003L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1418
    .end local v7    # "appId":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 1422
    :cond_73
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    array-length v4, v3

    move v6, v5

    :goto_77
    if-ge v6, v4, :cond_86

    aget v7, v3, v6

    .line 1423
    .restart local v7    # "appId":I
    const-wide v8, 0x2050000000cL

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1422
    .end local v7    # "appId":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    .line 1426
    :cond_86
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    array-length v4, v3

    :goto_89
    if-ge v5, v4, :cond_98

    aget v6, v3, v5

    .line 1427
    .local v6, "appId":I
    const-wide v7, 0x20500000004L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1426
    .end local v6    # "appId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    .line 1430
    :cond_98
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_99
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    move-result v4

    const-wide v5, 0x10900000002L

    const-wide v7, 0x10500000001L

    if-ge v3, v4, :cond_da

    .line 1431
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_ac
    iget-object v9, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v9

    if-ge v4, v9, :cond_d7

    .line 1432
    const-wide v9, 0x20b0000000aL

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 1434
    .local v9, "token2":J
    iget-object v11, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v11

    invoke-virtual {p1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1435
    iget-object v11, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 1436
    invoke-virtual {v11, v3, v4}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1435
    invoke-virtual {p1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1438
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1431
    .end local v9    # "token2":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_ac

    .line 1430
    .end local v4    # "j":I
    :cond_d7
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 1442
    .end local v3    # "i":I
    :cond_da
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1443
    .local v4, "uidAndPackage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-wide v9, 0x20b00000005L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 1445
    .restart local v9    # "token2":J
    iget-object v11, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1446
    iget-object v11, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1448
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1449
    .end local v4    # "uidAndPackage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9    # "token2":J
    goto :goto_e0

    .line 1451
    :cond_10b
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const-wide v4, 0x10b00000009L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1453
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1454
    .end local v1    # "token":J
    monitor-exit v0

    .line 1455
    return-void

    .line 1454
    :catchall_11a
    move-exception v1

    monitor-exit v0
    :try_end_11c
    .catchall {:try_start_3 .. :try_end_11c} :catchall_11a

    throw v1
.end method

.method handleUserRemoved(I)V
    .registers 8
    .param p1, "removedUserId"    # I

    .line 1047
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_2b

    .line 1049
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1050
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1051
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1053
    .local v4, "userId":I
    if-ne v4, p1, :cond_28

    .line 1054
    iget-object v5, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 1048
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "uid":I
    .end local v4    # "userId":I
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1057
    .end local v1    # "i":I
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    .line 1058
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AppStateTrackerImpl;->cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V

    .line 1059
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1060
    monitor-exit v0

    .line 1061
    return-void

    .line 1060
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 2

    .line 583
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method injectAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 567
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    return-object v0
.end method

.method injectAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;
    .registers 2

    .line 593
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    return-object v0
.end method

.method injectGetGlobalSettingInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 603
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method injectIActivityManager()Landroid/app/IActivityManager;
    .registers 2

    .line 578
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .registers 2

    .line 572
    nop

    .line 573
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 572
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    return-object v0
.end method

.method injectPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .registers 2

    .line 588
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method public isAppBackgroundRestricted(ILjava/lang/String;)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 191
    .local v0, "bgRestrictedUidPkgs":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isForceAllAppsStandbyEnabled()Z
    .registers 3

    .line 1267
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1268
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v0

    return v1

    .line 1269
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1278
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1279
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 1280
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method isRunAnyRestrictedLocked(ILjava/lang/String;)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 698
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isSmallBatteryDevice()Z
    .registers 2

    .line 598
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v0

    return v0
.end method

.method public isUidActive(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 1238
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1239
    const/4 v0, 0x1

    return v0

    .line 1241
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1242
    :try_start_b
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1243
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1
.end method

.method public isUidActiveSynced(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 1252
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1253
    const/4 v0, 0x1

    return v0

    .line 1255
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 1257
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result v2

    .line 1258
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 1260
    return v2
.end method

.method public isUidPowerSaveExempt(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1289
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1290
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1291
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isUidPowerSaveUserExempt(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1299
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1301
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isUidTempPowerSaveExempt(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1310
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1311
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1312
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method synthetic lambda$onSystemServicesReady$0$com-android-server-AppStateTrackerImpl(Landroid/os/PowerSaveState;)V
    .registers 4
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 552
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_3
    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    .line 554
    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 555
    monitor-exit v0

    .line 556
    return-void

    .line 555
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onSystemServicesReady()V
    .registers 7

    .line 503
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    if-eqz v1, :cond_9

    .line 505
    monitor-exit v0

    return-void

    .line 507
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    .line 509
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectIActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIActivityManager:Landroid/app/IActivityManager;

    .line 510
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 511
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 512
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsService;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 513
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 514
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 516
    new-instance v1, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    .line 517
    invoke-virtual {v1}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->register()V

    .line 518
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    invoke-virtual {v1}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->isForcedAppStandbyEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    .line 519
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    .line 520
    invoke-virtual {v1}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    .line 521
    new-instance v1, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStandbyTracker:Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

    .line 522
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 523
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppBackgroundRestrictionListener:Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_e6

    .line 527
    :try_start_81
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Lcom/android/server/AppStateTrackerImpl$UidObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AppStateTrackerImpl$UidObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl$UidObserver-IA;)V

    const/16 v4, 0xe

    const/4 v5, -0x1

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 532
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v2, 0x46

    new-instance v4, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;

    invoke-direct {v4, p0, v3}, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher-IA;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_9b} :catch_9c
    .catchall {:try_start_81 .. :try_end_9b} :catchall_e6

    .line 536
    goto :goto_9d

    .line 534
    :catch_9c
    move-exception v1

    .line 538
    :goto_9d
    :try_start_9d
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 539
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 543
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 544
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 545
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 547
    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl;->refreshForcedAppStandbyUidPackagesLocked()V

    .line 549
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 558
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2, v4}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    iget-boolean v2, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    .line 561
    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 562
    .end local v1    # "filter":Landroid/content/IntentFilter;
    monitor-exit v0

    .line 563
    return-void

    .line 562
    :catchall_e6
    move-exception v1

    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_9d .. :try_end_e8} :catchall_e6

    throw v1
.end method

.method public setPowerSaveExemptionListAppIds([I[I[I)V
    .registers 8
    .param p1, "powerSaveExemptionListExceptIdleAppIdArray"    # [I
    .param p2, "powerSaveExemptionListUserAppIdArray"    # [I
    .param p3, "tempExemptionListAppIdArray"    # [I

    .line 1081
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 1083
    .local v1, "previousExemptionList":[I
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 1085
    .local v2, "previousTempExemptionList":[I
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 1086
    iput-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 1087
    iput-object p2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 1089
    invoke-static {v1, p1}, Lcom/android/server/AppStateTrackerImpl;->isAnyAppIdUnexempt([I[I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1090
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyAllUnexempted()V

    goto :goto_26

    .line 1091
    :cond_19
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1092
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyAllExemptionListChanged()V

    .line 1095
    :cond_26
    :goto_26
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_33

    .line 1096
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyTempExemptionListChanged()V

    .line 1099
    .end local v1    # "previousExemptionList":[I
    .end local v2    # "previousTempExemptionList":[I
    :cond_33
    monitor-exit v0

    .line 1100
    return-void

    .line 1099
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method updateForcedAppStandbyUidPackageLocked(ILjava/lang/String;Z)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "restricted"    # Z

    .line 707
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result v0

    .line 708
    .local v0, "index":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    .line 709
    .local v3, "wasRestricted":Z
    :goto_b
    if-ne v3, p3, :cond_e

    .line 710
    return v2

    .line 712
    :cond_e
    if-eqz p3, :cond_1e

    .line 713
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 715
    :cond_1e
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 717
    :goto_23
    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    .line 718
    return v1
.end method
