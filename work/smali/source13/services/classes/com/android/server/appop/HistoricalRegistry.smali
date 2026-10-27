.class final Lcom/android/server/appop/HistoricalRegistry;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;,
        Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;,
        Lcom/android/server/appop/HistoricalRegistry$Persistence;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_COMPRESSION_STEP:J = 0xaL

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

.field private static final HISTORY_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final KEEP_WTF_LOG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_WRITE_PENDING_HISTORY:I = 0x1

.field private static final PARAMETER_ASSIGNMENT:Ljava/lang/String; = "="

.field private static final PARAMETER_DELIMITER:Ljava/lang/String; = ","

.field private static final PROPERTY_PERMISSIONS_HUB_ENABLED:Ljava/lang/String; = "permissions_hub_enabled"


# instance fields
.field private mBaseSnapshotInterval:J

.field private mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

.field private volatile mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

.field private final mInMemoryLock:Ljava/lang/Object;

.field private mIntervalCompressionMultiplier:J

.field private mMode:I

.field private mNextPersistDueTimeMillis:J

.field private final mOnDiskLock:Ljava/lang/Object;

.field private mPendingHistoryOffsetMillis:J

.field private mPendingWrites:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;


# direct methods
.method static bridge synthetic -$$Nest$mupdateParametersFromSetting(Lcom/android/server/appop/HistoricalRegistry;Landroid/content/ContentResolver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 135
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/appop/HistoricalRegistry;->KEEP_WTF_LOG:Z

    .line 137
    const-class v0, Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 160
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/appop/HistoricalRegistry;)V
    .registers 4
    .param p1, "other"    # Lcom/android/server/appop/HistoricalRegistry;

    .line 210
    iget-object v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Ljava/lang/Object;)V

    .line 211
    iget v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 212
    iget-wide v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 213
    iget-wide v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 214
    iget-object v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 215
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "lock"    # Ljava/lang/Object;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 170
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 177
    sget-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 185
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 205
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 206
    new-instance v0, Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {v0, p1}, Lcom/android/server/appop/DiscreteRegistry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 207
    return-void
.end method

.method private clearHistoryOnDiskDLocked()V
    .registers 4

    .line 692
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 695
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    const/4 v1, 0x0

    :try_start_c
    iput-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 698
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 699
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1e

    .line 700
    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked()V

    .line 701
    return-void

    .line 699
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 14
    .param p1, "now"    # J

    .line 704
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_54

    .line 705
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v3, p1

    .line 706
    .local v3, "remainingTimeMillis":J
    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_13

    .line 710
    sub-long v7, v3, v5

    iput-wide v7, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 712
    :cond_13
    sub-long/2addr v5, v3

    .line 713
    .local v5, "elapsedTimeMillis":J
    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setEndTime(J)V

    .line 714
    cmp-long v0, v3, v1

    if-lez v0, :cond_1e

    .line 718
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object v0

    .line 720
    :cond_1e
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 721
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 722
    iget-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 723
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object v0

    .line 726
    :cond_33
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v7, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 727
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginTime(J)V

    .line 729
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 730
    .local v7, "overdueTimeMillis":J
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 731
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {p0, v0}, Lcom/android/server/appop/HistoricalRegistry;->schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 734
    .end local v3    # "remainingTimeMillis":J
    .end local v5    # "elapsedTimeMillis":J
    .end local v7    # "overdueTimeMillis":J
    :cond_54
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 735
    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 739
    return-object v0
.end method

.method private static isApiEnabled()Z
    .registers 3

    .line 822
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1a

    .line 823
    const-string/jumbo v0, "privacy"

    const-string/jumbo v1, "permissions_hub_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v2, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    nop

    .line 822
    :goto_1b
    return v2
.end method

.method private isPersistenceInitializedMLocked()Z
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V
    .registers 7
    .param p0, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "nowMillis"    # J

    .line 803
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 804
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 803
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 805
    return-void
.end method

.method private persistPendingHistory(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 769
    .local p1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_3
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 774
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 775
    monitor-exit v0

    return-void

    .line 777
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 780
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v1, :cond_34

    .line 781
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 782
    .local v3, "current":Landroid/app/AppOpsManager$HistoricalOps;
    if-lez v2, :cond_31

    .line 783
    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 784
    .local v4, "previous":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 780
    .end local v3    # "current":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "previous":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 787
    .end local v2    # "i":I
    :cond_34
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v2, p1}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 788
    .end local v1    # "opCount":I
    monitor-exit v0

    .line 789
    return-void

    .line 788
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private pruneFutureOps(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 808
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 809
    .local v0, "opCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_3a

    .line 810
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 811
    .local v2, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1c

    .line 812
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_37

    .line 813
    :cond_1c
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_37

    .line 814
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    .line 815
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    .line 816
    .local v3, "filterScale":D
    invoke-static {v2, v3, v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->-$$Nest$smspliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    .line 809
    .end local v2    # "op":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v3    # "filterScale":D
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 819
    .end local v1    # "i":I
    :cond_3a
    return-void
.end method

.method private resampleHistoryOnDiskInMemoryDMLocked(J)V
    .registers 8
    .param p1, "offsetMillis"    # J

    .line 628
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 629
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 630
    return-void
.end method

.method private schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 4
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 792
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 794
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 796
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 799
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 800
    return-void
.end method

.method private updateParametersFromSetting(Landroid/content/ContentResolver;)V
    .registers 18
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 263
    const-string v0, "appop_history_parameters"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "setting":Ljava/lang/String;
    if-nez v2, :cond_b

    .line 266
    return-void

    .line 268
    :cond_b
    const/4 v0, 0x0

    .line 269
    .local v0, "modeValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 270
    .local v3, "baseSnapshotIntervalValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 271
    .local v4, "intervalMultiplierValue":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "parameters":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x0

    move-object v8, v4

    move-object v4, v3

    move-object v3, v0

    move v0, v7

    .end local v0    # "modeValue":Ljava/lang/String;
    .local v3, "modeValue":Ljava/lang/String;
    .local v4, "baseSnapshotIntervalValue":Ljava/lang/String;
    .local v8, "intervalMultiplierValue":Ljava/lang/String;
    :goto_1a
    if-ge v0, v6, :cond_8b

    aget-object v9, v5, v0

    .line 273
    .local v9, "parameter":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 274
    .local v10, "parts":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_88

    .line 275
    aget-object v11, v10, v7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 276
    .local v11, "key":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x1

    sparse-switch v14, :sswitch_data_c4

    :cond_37
    goto :goto_57

    :sswitch_38
    const-string v12, "baseIntervalMillis"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    move v12, v15

    goto :goto_58

    :sswitch_42
    const-string/jumbo v12, "mode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    move v12, v7

    goto :goto_58

    :sswitch_4d
    const-string/jumbo v14, "intervalMultiplier"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_37

    goto :goto_58

    :goto_57
    move v12, v13

    :goto_58
    packed-switch v12, :pswitch_data_d2

    .line 287
    sget-object v12, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown parameter: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 284
    :pswitch_74
    aget-object v12, v10, v15

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 285
    goto :goto_88

    .line 281
    :pswitch_7b
    aget-object v12, v10, v15

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 282
    goto :goto_88

    .line 278
    :pswitch_82
    aget-object v12, v10, v15

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 272
    .end local v9    # "parameter":Ljava/lang/String;
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    :cond_88
    :goto_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 292
    :cond_8b
    if-eqz v3, :cond_a5

    if-eqz v4, :cond_a5

    if-eqz v8, :cond_a5

    .line 295
    :try_start_91
    invoke-static {v3}, Landroid/app/AppOpsManager;->parseHistoricalMode(Ljava/lang/String;)I

    move-result v10

    .line 296
    .local v10, "mode":I
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 297
    .local v11, "baseSnapshotInterval":J
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 298
    .local v0, "intervalCompressionMultiplier":I
    int-to-long v13, v0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V
    :try_end_a3
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_a3} :catch_a4

    .line 299
    return-void

    .line 300
    .end local v0    # "intervalCompressionMultiplier":I
    .end local v10    # "mode":I
    .end local v11    # "baseSnapshotInterval":J
    :catch_a4
    move-exception v0

    .line 302
    :cond_a5
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad value forappop_history_parameters="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resetting!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void

    :sswitch_data_c4
    .sparse-switch
        -0xb56339a -> :sswitch_4d
        0x3339a3 -> :sswitch_42
        0xea4149c -> :sswitch_38
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7b
        :pswitch_74
    .end packed-switch
.end method

.method private static wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .registers 8
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "storage"    # Ljava/io/File;

    .line 1972
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1973
    sget-boolean v0, Lcom/android/server/appop/HistoricalRegistry;->KEEP_WTF_LOG:Z

    if-eqz v0, :cond_90

    .line 1975
    :try_start_9
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wtf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1977
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1978
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_40} :catch_8f

    .line 1979
    .local v1, "writer":Ljava/io/PrintWriter;
    const/16 v2, 0xa

    if-eqz p1, :cond_4f

    .line 1980
    :try_start_44
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1982
    :cond_4f
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1983
    if-eqz p2, :cond_7b

    .line 1984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nfiles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_80

    .line 1986
    :cond_7b
    const-string v2, "\nfiles: none"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_80
    .catchall {:try_start_44 .. :try_end_80} :catchall_84

    .line 1988
    :goto_80
    :try_start_80
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_8f

    goto :goto_8e

    .line 1978
    :catchall_84
    move-exception v2

    :try_start_85
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8d

    :catchall_89
    move-exception v3

    :try_start_8a
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "message":Ljava/lang/String;
    .end local p1    # "t":Ljava/lang/Throwable;
    .end local p2    # "storage":Ljava/io/File;
    :goto_8d
    throw v2
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8e} :catch_8f

    .line 1992
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "writer":Ljava/io/PrintWriter;
    .restart local p0    # "message":Ljava/lang/String;
    .restart local p1    # "t":Ljava/lang/Throwable;
    .restart local p2    # "storage":Ljava/io/File;
    :cond_8e
    :goto_8e
    goto :goto_90

    .line 1990
    :catch_8f
    move-exception v0

    .line 1994
    :cond_90
    :goto_90
    return-void
.end method


# virtual methods
.method addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 5
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 613
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v1

    if-nez v1, :cond_12

    .line 615
    sget-object v1, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    monitor-exit v0

    return-void

    .line 619
    :cond_12
    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {p1, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 620
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 621
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 622
    .local v1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 623
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2d

    .line 624
    invoke-direct {p0, v1}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 625
    return-void

    .line 623
    .end local v1    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method clearAllHistory()V
    .registers 2

    .line 671
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoricalRegistry()V

    .line 672
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteRegistry;->clearHistory()V

    .line 673
    return-void
.end method

.method clearHistoricalRegistry()V
    .registers 5

    .line 676
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_28

    .line 678
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_16

    .line 679
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_25

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_28

    return-void

    .line 682
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoryOnDiskDLocked()V

    .line 683
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 684
    iput-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 685
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 686
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_25

    .line 687
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_28

    .line 688
    return-void

    .line 686
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    :try_start_27
    throw v2

    .line 687
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method clearHistory(ILjava/lang/String;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 643
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_50

    .line 645
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_16

    .line 646
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_4d

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_50

    return-void

    .line 649
    :cond_16
    :try_start_16
    iget v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    .line 650
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_4d

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_50

    return-void

    .line 653
    :cond_1e
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 654
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 657
    .end local v2    # "index":I
    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 658
    invoke-virtual {v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 660
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked(ILjava/lang/String;)V

    .line 661
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_4d

    .line 662
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_50

    .line 663
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/DiscreteRegistry;->clearHistory(ILjava/lang/String;)V

    .line 664
    return-void

    .line 661
    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_4f
    throw v2

    .line 662
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_50

    throw v1
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 23
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "filterUid"    # I
    .param p4, "filterPackage"    # Ljava/lang/String;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOp"    # I
    .param p7, "filter"    # I

    .line 309
    move-object v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry;->isApiEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 310
    return-void

    .line 313
    :cond_c
    iget-object v13, v10, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v13

    .line 314
    :try_start_f
    iget-object v14, v10, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_a2

    .line 315
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 316
    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    const-string v0, "History:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    const-string v0, "  mode="

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    iget v0, v10, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;-><init>(Lcom/android/server/appop/HistoricalRegistry;Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V

    .line 324
    .local v0, "visitor":Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 327
    .local v1, "nowMillis":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v3

    .line 329
    .local v3, "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {v3, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 330
    invoke-virtual {v3, v0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 332
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v4

    if-nez v4, :cond_6f

    .line 333
    sget-object v4, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Interaction before persistence initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    monitor-exit v14
    :try_end_6d
    .catchall {:try_start_12 .. :try_end_6d} :catchall_9f

    :try_start_6d
    monitor-exit v13
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_a2

    return-void

    .line 337
    :cond_6f
    :try_start_6f
    iget-object v4, v10, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v4

    .line 338
    .local v4, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v4, :cond_97

    .line 340
    iget-wide v5, v10, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v5, v1

    iget-wide v7, v10, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v5, v7

    .line 342
    .local v5, "remainingToFillBatchMillis":J
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 343
    .local v7, "opCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_82
    if-ge v8, v7, :cond_96

    .line 344
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$HistoricalOps;

    .line 345
    .local v9, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v9, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 346
    invoke-static {v9, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 347
    invoke-virtual {v9, v0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 343
    .end local v9    # "op":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v8, v8, 0x1

    goto :goto_82

    .line 349
    .end local v5    # "remainingToFillBatchMillis":J
    .end local v7    # "opCount":I
    .end local v8    # "i":I
    :cond_96
    goto :goto_9c

    .line 350
    :cond_97
    const-string v5, "  Empty"

    invoke-virtual {v12, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    .end local v0    # "visitor":Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;
    .end local v1    # "nowMillis":J
    .end local v3    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_9c
    monitor-exit v14
    :try_end_9d
    .catchall {:try_start_6f .. :try_end_9d} :catchall_9f

    .line 353
    :try_start_9d
    monitor-exit v13
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_a2

    .line 354
    return-void

    .line 352
    :catchall_9f
    move-exception v0

    :try_start_a0
    monitor-exit v14
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "filterUid":I
    .end local p4    # "filterPackage":Ljava/lang/String;
    .end local p5    # "filterAttributionTag":Ljava/lang/String;
    .end local p6    # "filterOp":I
    .end local p7    # "filter":I
    :try_start_a1
    throw v0

    .line 353
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "prefix":Ljava/lang/String;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "filterUid":I
    .restart local p4    # "filterPackage":Ljava/lang/String;
    .restart local p5    # "filterAttributionTag":Ljava/lang/String;
    .restart local p6    # "filterOp":I
    .restart local p7    # "filter":I
    :catchall_a2
    move-exception v0

    monitor-exit v13
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a2

    throw v0
.end method

.method dumpDiscreteData(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .registers 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uidFilter"    # I
    .param p3, "packageNameFilter"    # Ljava/lang/String;
    .param p4, "attributionTagFilter"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "dumpOp"    # I
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p8, "date"    # Ljava/util/Date;
    .param p9, "prefix"    # Ljava/lang/String;
    .param p10, "nDiscreteOps"    # I

    .line 361
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/DiscreteRegistry;->dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    .line 363
    return-void
.end method

.method getHistoricalOps(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 48
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "opNames"    # [Ljava/lang/String;
    .param p5, "historyFlags"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J
    .param p11, "flags"    # I
    .param p12, "attributionExemptPkgs"    # [Ljava/lang/String;
    .param p13, "callback"    # Landroid/os/RemoteCallback;

    .line 414
    move-object/from16 v1, p0

    move-wide/from16 v14, p7

    move-object/from16 v13, p13

    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry;->isApiEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 415
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v13, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 416
    return-void

    .line 419
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 420
    .local v11, "currentTimeMillis":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, p9, v2

    if-nez v0, :cond_25

    .line 421
    move-wide v2, v11

    move-wide v9, v2

    .end local p9    # "endTimeMillis":J
    .local v2, "endTimeMillis":J
    goto :goto_27

    .line 420
    .end local v2    # "endTimeMillis":J
    .restart local p9    # "endTimeMillis":J
    :cond_25
    move-wide/from16 v9, p9

    .line 424
    .end local p9    # "endTimeMillis":J
    .local v9, "endTimeMillis":J
    :goto_27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 428
    .local v8, "payload":Landroid/os/Bundle;
    sub-long v2, v11, v9

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 429
    .local v4, "inMemoryAdjBeginTimeMillis":J
    sub-long v2, v11, v14

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 430
    .local v2, "inMemoryAdjEndTimeMillis":J
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v4, v5, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object/from16 p9, v0

    .line 433
    .local p9, "result":Landroid/app/AppOpsManager$HistoricalOps;
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_70

    .line 434
    iget-object v0, v1, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    new-instance v14, Landroid/util/ArraySet;

    move-object/from16 v15, p12

    invoke-direct {v14, v15}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    move-wide/from16 v25, v2

    .end local v2    # "inMemoryAdjEndTimeMillis":J
    .local v25, "inMemoryAdjEndTimeMillis":J
    move-object v2, v0

    move-object/from16 v3, p9

    move-wide/from16 v27, v4

    .end local v4    # "inMemoryAdjBeginTimeMillis":J
    .local v27, "inMemoryAdjBeginTimeMillis":J
    move-wide/from16 v4, p7

    move-wide v6, v9

    move-object/from16 v29, v8

    .end local v8    # "payload":Landroid/os/Bundle;
    .local v29, "payload":Landroid/os/Bundle;
    move/from16 v8, p6

    move-wide/from16 v30, v9

    .end local v9    # "endTimeMillis":J
    .local v30, "endTimeMillis":J
    move/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v32, v11

    .end local v11    # "currentTimeMillis":J
    .local v32, "currentTimeMillis":J
    move-object/from16 v11, p4

    move-object/from16 v12, p3

    move-object v15, v13

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/appop/DiscreteRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    goto :goto_7b

    .line 433
    .end local v25    # "inMemoryAdjEndTimeMillis":J
    .end local v27    # "inMemoryAdjBeginTimeMillis":J
    .end local v29    # "payload":Landroid/os/Bundle;
    .end local v30    # "endTimeMillis":J
    .end local v32    # "currentTimeMillis":J
    .restart local v2    # "inMemoryAdjEndTimeMillis":J
    .restart local v4    # "inMemoryAdjBeginTimeMillis":J
    .restart local v8    # "payload":Landroid/os/Bundle;
    .restart local v9    # "endTimeMillis":J
    .restart local v11    # "currentTimeMillis":J
    :cond_70
    move-wide/from16 v25, v2

    move-wide/from16 v27, v4

    move-object/from16 v29, v8

    move-wide/from16 v30, v9

    move-wide/from16 v32, v11

    move-object v15, v13

    .line 439
    .end local v2    # "inMemoryAdjEndTimeMillis":J
    .end local v4    # "inMemoryAdjBeginTimeMillis":J
    .end local v8    # "payload":Landroid/os/Bundle;
    .end local v9    # "endTimeMillis":J
    .end local v11    # "currentTimeMillis":J
    .restart local v25    # "inMemoryAdjEndTimeMillis":J
    .restart local v27    # "inMemoryAdjBeginTimeMillis":J
    .restart local v29    # "payload":Landroid/os/Bundle;
    .restart local v30    # "endTimeMillis":J
    .restart local v32    # "currentTimeMillis":J
    :goto_7b
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_16f

    .line 440
    iget-object v14, v1, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v14

    .line 445
    :try_start_82
    iget-object v13, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_166

    .line 446
    :try_start_85
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_15d

    if-nez v0, :cond_ab

    .line 447
    :try_start_8b
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v15, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 449
    monitor-exit v13
    :try_end_9b
    .catchall {:try_start_8b .. :try_end_9b} :catchall_a4

    :try_start_9b
    monitor-exit v14
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9d

    return-void

    .line 483
    :catchall_9d
    move-exception v0

    move-object/from16 v2, p9

    move-object v5, v14

    move-object v6, v15

    goto/16 :goto_16b

    .line 465
    :catchall_a4
    move-exception v0

    move-object/from16 v2, p9

    move-object v5, v14

    move-object v6, v15

    goto/16 :goto_162

    .line 452
    :cond_ab
    move-wide/from16 v11, v32

    .end local v32    # "currentTimeMillis":J
    .restart local v11    # "currentTimeMillis":J
    :try_start_ad
    invoke-direct {v1, v11, v12}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 453
    .local v0, "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2
    :try_end_b5
    .catchall {:try_start_ad .. :try_end_b5} :catchall_155

    cmp-long v2, v27, v2

    if-gez v2, :cond_fa

    .line 454
    :try_start_b9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    cmp-long v2, v25, v2

    if-lez v2, :cond_eb

    .line 456
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v2, v0}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_c6
    .catchall {:try_start_b9 .. :try_end_c6} :catchall_f0

    move-object v9, v2

    .line 457
    .local v9, "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v15, v9

    .end local v9    # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    .local v15, "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    move-wide/from16 v9, v27

    move-wide/from16 v32, v11

    .end local v11    # "currentTimeMillis":J
    .restart local v32    # "currentTimeMillis":J
    move-wide/from16 v11, v25

    :try_start_da
    invoke-virtual/range {v2 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->filter(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJ)V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_e3

    .line 460
    move-object/from16 v2, p9

    .end local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v2, "result":Landroid/app/AppOpsManager$HistoricalOps;
    :try_start_df
    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    goto :goto_fe

    .line 465
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v15    # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_e3
    move-exception v0

    move-object/from16 v2, p9

    move-object/from16 v6, p13

    move-object v5, v14

    goto/16 :goto_162

    .line 454
    .end local v32    # "currentTimeMillis":J
    .restart local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v11    # "currentTimeMillis":J
    :cond_eb
    move-object/from16 v2, p9

    move-wide/from16 v32, v11

    .end local v11    # "currentTimeMillis":J
    .end local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v32    # "currentTimeMillis":J
    goto :goto_fe

    .line 465
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v32    # "currentTimeMillis":J
    .restart local v11    # "currentTimeMillis":J
    .restart local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_f0
    move-exception v0

    move-object/from16 v2, p9

    move-wide/from16 v32, v11

    move-object/from16 v6, p13

    move-object v5, v14

    goto/16 :goto_15c

    .line 453
    .restart local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_fa
    move-object/from16 v2, p9

    move-wide/from16 v32, v11

    .line 462
    .end local v11    # "currentTimeMillis":J
    .end local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v32    # "currentTimeMillis":J
    :goto_fe
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 463
    .local v3, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v4, v1, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 464
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    cmp-long v4, v25, v4

    if-lez v4, :cond_114

    const/4 v4, 0x1

    goto :goto_115

    :cond_114
    const/4 v4, 0x0

    .line 465
    .local v4, "collectOpsFromDisk":Z
    :goto_115
    monitor-exit v13
    :try_end_116
    .catchall {:try_start_df .. :try_end_116} :catchall_150

    .line 468
    if-eqz v4, :cond_14b

    .line 470
    :try_start_118
    invoke-direct {v1, v3}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 472
    iget-wide v5, v1, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long v11, v32, v5

    iget-wide v5, v1, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v11, v5

    .line 474
    .local v11, "onDiskAndInMemoryOffsetMillis":J
    sub-long v5, v27, v11

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 476
    .local v20, "onDiskAdjBeginTimeMillis":J
    sub-long v5, v25, v11

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    .line 478
    .local v22, "onDiskAdjEndTimeMillis":J
    iget-object v13, v1, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;
    :try_end_132
    .catchall {:try_start_118 .. :try_end_132} :catchall_146

    move-object v5, v14

    move-object v14, v2

    move-object/from16 v6, p13

    move/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move/from16 v19, p6

    move/from16 v24, p11

    :try_start_142
    invoke-static/range {v13 .. v24}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->-$$Nest$mcollectHistoricalOpsDLocked(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V

    goto :goto_14e

    .line 483
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v3    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v4    # "collectOpsFromDisk":Z
    .end local v11    # "onDiskAndInMemoryOffsetMillis":J
    .end local v20    # "onDiskAdjBeginTimeMillis":J
    .end local v22    # "onDiskAdjEndTimeMillis":J
    :catchall_146
    move-exception v0

    move-object/from16 v6, p13

    move-object v5, v14

    goto :goto_16b

    .line 468
    .restart local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v3    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v4    # "collectOpsFromDisk":Z
    :cond_14b
    move-object/from16 v6, p13

    move-object v5, v14

    .line 483
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v3    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v4    # "collectOpsFromDisk":Z
    :goto_14e
    monitor-exit v5
    :try_end_14f
    .catchall {:try_start_142 .. :try_end_14f} :catchall_16d

    goto :goto_172

    .line 465
    :catchall_150
    move-exception v0

    move-object/from16 v6, p13

    move-object v5, v14

    goto :goto_162

    .end local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v32    # "currentTimeMillis":J
    .local v11, "currentTimeMillis":J
    .restart local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_155
    move-exception v0

    move-object/from16 v2, p9

    move-wide/from16 v32, v11

    move-object v5, v14

    move-object v6, v15

    .end local v11    # "currentTimeMillis":J
    .end local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v32    # "currentTimeMillis":J
    :goto_15c
    goto :goto_162

    .end local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_15d
    move-exception v0

    move-object/from16 v2, p9

    move-object v5, v14

    move-object v6, v15

    .end local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_162
    :try_start_162
    monitor-exit v13
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_164

    .end local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v25    # "inMemoryAdjEndTimeMillis":J
    .end local v27    # "inMemoryAdjBeginTimeMillis":J
    .end local v29    # "payload":Landroid/os/Bundle;
    .end local v30    # "endTimeMillis":J
    .end local v32    # "currentTimeMillis":J
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "opNames":[Ljava/lang/String;
    .end local p5    # "historyFlags":I
    .end local p6    # "filter":I
    .end local p7    # "beginTimeMillis":J
    .end local p11    # "flags":I
    .end local p12    # "attributionExemptPkgs":[Ljava/lang/String;
    .end local p13    # "callback":Landroid/os/RemoteCallback;
    :try_start_163
    throw v0

    .restart local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v25    # "inMemoryAdjEndTimeMillis":J
    .restart local v27    # "inMemoryAdjBeginTimeMillis":J
    .restart local v29    # "payload":Landroid/os/Bundle;
    .restart local v30    # "endTimeMillis":J
    .restart local v32    # "currentTimeMillis":J
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "opNames":[Ljava/lang/String;
    .restart local p5    # "historyFlags":I
    .restart local p6    # "filter":I
    .restart local p7    # "beginTimeMillis":J
    .restart local p11    # "flags":I
    .restart local p12    # "attributionExemptPkgs":[Ljava/lang/String;
    .restart local p13    # "callback":Landroid/os/RemoteCallback;
    :catchall_164
    move-exception v0

    goto :goto_162

    .line 483
    .end local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_166
    move-exception v0

    move-object/from16 v2, p9

    move-object v5, v14

    move-object v6, v15

    .end local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_16b
    monitor-exit v5
    :try_end_16c
    .catchall {:try_start_163 .. :try_end_16c} :catchall_16d

    throw v0

    :catchall_16d
    move-exception v0

    goto :goto_16b

    .line 439
    .end local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_16f
    move-object/from16 v2, p9

    move-object v6, v15

    .line 486
    .end local p9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_172
    move-wide/from16 v3, p7

    move-wide/from16 v7, v30

    .end local v30    # "endTimeMillis":J
    .local v7, "endTimeMillis":J
    invoke-virtual {v2, v3, v4, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 489
    const-string/jumbo v0, "historical_ops"

    move-object/from16 v5, v29

    .end local v29    # "payload":Landroid/os/Bundle;
    .local v5, "payload":Landroid/os/Bundle;
    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 490
    invoke-virtual {v6, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 491
    return-void
.end method

.method getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 32
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "opNames"    # [Ljava/lang/String;
    .param p5, "historyFlags"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J
    .param p11, "flags"    # I
    .param p12, "attributionExemptedPackages"    # [Ljava/lang/String;
    .param p13, "callback"    # Landroid/os/RemoteCallback;

    .line 376
    move-object/from16 v1, p0

    move-object/from16 v2, p13

    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry;->isApiEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 377
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 378
    return-void

    .line 381
    :cond_13
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v14, p7

    move-wide/from16 v12, p9

    invoke-direct {v0, v14, v15, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v10, v0

    .line 383
    .local v10, "result":Landroid/app/AppOpsManager$HistoricalOps;
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_7a

    .line 384
    iget-object v11, v1, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v11

    .line 385
    :try_start_24
    iget-object v3, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_71

    .line 386
    :try_start_27
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_68

    if-nez v0, :cond_4b

    .line 387
    :try_start_2d
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Interaction before persistence initialized"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 389
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_45

    :try_start_3d
    monitor-exit v11
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3f

    return-void

    .line 395
    :catchall_3f
    move-exception v0

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    goto :goto_76

    .line 391
    :catchall_45
    move-exception v0

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    goto :goto_6d

    :cond_4b
    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_68

    .line 392
    :try_start_4c
    iget-object v3, v1, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_71

    move-object v4, v10

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .end local v10    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v16, "result":Landroid/app/AppOpsManager$HistoricalOps;
    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p11

    :try_start_63
    invoke-static/range {v3 .. v14}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->-$$Nest$mcollectHistoricalOpsDLocked(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V

    .line 395
    monitor-exit v17
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_78

    goto :goto_7c

    .line 391
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v10    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_68
    move-exception v0

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .end local v10    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_6d
    :try_start_6d
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6f

    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "opNames":[Ljava/lang/String;
    .end local p5    # "historyFlags":I
    .end local p6    # "filter":I
    .end local p7    # "beginTimeMillis":J
    .end local p9    # "endTimeMillis":J
    .end local p11    # "flags":I
    .end local p12    # "attributionExemptedPackages":[Ljava/lang/String;
    .end local p13    # "callback":Landroid/os/RemoteCallback;
    :try_start_6e
    throw v0

    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "opNames":[Ljava/lang/String;
    .restart local p5    # "historyFlags":I
    .restart local p6    # "filter":I
    .restart local p7    # "beginTimeMillis":J
    .restart local p9    # "endTimeMillis":J
    .restart local p11    # "flags":I
    .restart local p12    # "attributionExemptedPackages":[Ljava/lang/String;
    .restart local p13    # "callback":Landroid/os/RemoteCallback;
    :catchall_6f
    move-exception v0

    goto :goto_6d

    .line 395
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v10    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_71
    move-exception v0

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .end local v10    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_76
    monitor-exit v17
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_78

    throw v0

    :catchall_78
    move-exception v0

    goto :goto_76

    .line 383
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v10    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_7a
    move-object/from16 v16, v10

    .line 398
    .end local v10    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_7c
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_9e

    .line 399
    iget-object v3, v1, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    new-instance v15, Landroid/util/ArraySet;

    move-object/from16 v14, p12

    invoke-direct {v15, v14}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    move-object/from16 v4, v16

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move/from16 v9, p6

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p3

    move/from16 v14, p11

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/appop/DiscreteRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 404
    :cond_9e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    .local v0, "payload":Landroid/os/Bundle;
    const-string/jumbo v3, "historical_ops"

    move-object/from16 v4, v16

    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v4, "result":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 406
    invoke-virtual {v2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 407
    return-void
.end method

.method getMode()I
    .registers 3

    .line 366
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_3
    iget v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    monitor-exit v0

    return v1

    .line 368
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJJII)V
    .registers 32
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I
    .param p7, "eventStartTime"    # J
    .param p9, "increment"    # J
    .param p11, "attributionFlags"    # I
    .param p12, "attributionChainId"    # I

    .line 532
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 533
    :try_start_5
    iget v0, v1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4c

    .line 534
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_19

    .line 535
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    monitor-exit v2

    return-void

    .line 538
    :cond_19
    nop

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 538
    invoke-direct {v1, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v5

    .line 539
    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p9

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 541
    iget-object v6, v1, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p1

    move-object/from16 v10, p4

    move/from16 v11, p6

    move/from16 v12, p5

    move-wide/from16 v13, p7

    move-wide/from16 v15, p9

    move/from16 v17, p11

    move/from16 v18, p12

    invoke-virtual/range {v6 .. v18}, Lcom/android/server/appop/DiscreteRegistry;->recordDiscreteAccess(ILjava/lang/String;ILjava/lang/String;IIJJII)V

    .line 545
    :cond_4c
    monitor-exit v2

    .line 546
    return-void

    .line 545
    :catchall_4e
    move-exception v0

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V
    .registers 38
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I
    .param p7, "accessTime"    # J
    .param p9, "attributionFlags"    # I
    .param p10, "attributionChainId"    # I

    .line 497
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 498
    :try_start_5
    iget v0, v1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4c

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_19

    .line 500
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    monitor-exit v2

    return-void

    .line 503
    :cond_19
    nop

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 503
    invoke-direct {v1, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v5

    const-wide/16 v12, 0x1

    .line 504
    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 507
    iget-object v14, v1, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    const-wide/16 v23, -0x1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, p1

    move-object/from16 v18, p4

    move/from16 v19, p6

    move/from16 v20, p5

    move-wide/from16 v21, p7

    move/from16 v25, p9

    move/from16 v26, p10

    invoke-virtual/range {v14 .. v26}, Lcom/android/server/appop/DiscreteRegistry;->recordDiscreteAccess(ILjava/lang/String;ILjava/lang/String;IIJJII)V

    .line 510
    :cond_4c
    monitor-exit v2

    .line 511
    return-void

    .line 510
    :catchall_4e
    move-exception v0

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method incrementOpRejected(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 21
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I

    .line 515
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 516
    :try_start_4
    iget v0, v1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_31

    .line 517
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_18

    .line 518
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    monitor-exit v2

    return-void

    .line 521
    :cond_18
    nop

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 521
    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v5

    const-wide/16 v12, 0x1

    .line 522
    move v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 525
    :cond_31
    monitor-exit v2

    .line 526
    return-void

    .line 525
    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw v0
.end method

.method offsetDiscreteHistory(J)V
    .registers 4
    .param p1, "offsetMillis"    # J

    .line 608
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/DiscreteRegistry;->offsetHistory(J)V

    .line 609
    return-void
.end method

.method offsetHistory(J)V
    .registers 8
    .param p1, "offsetMillis"    # J

    .line 584
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_48

    .line 586
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_16

    .line 587
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_45

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_48

    return-void

    .line 590
    :cond_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_45

    .line 591
    :try_start_17
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v1}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v1

    .line 592
    .local v1, "history":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoricalRegistry()V

    .line 593
    if-eqz v1, :cond_43

    .line 594
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 595
    .local v2, "historySize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    if-ge v3, v2, :cond_35

    .line 596
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 597
    .local v4, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 595
    .end local v4    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 599
    .end local v3    # "i":I
    :cond_35
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_3e

    .line 600
    invoke-direct {p0, v1}, Lcom/android/server/appop/HistoricalRegistry;->pruneFutureOps(Ljava/util/List;)V

    .line 602
    :cond_3e
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v3, v1}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 604
    .end local v1    # "history":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v2    # "historySize":I
    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_17 .. :try_end_44} :catchall_48

    .line 605
    return-void

    .line 590
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "offsetMillis":J
    :try_start_47
    throw v2

    .line 604
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "offsetMillis":J
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method persistPendingHistory()V
    .registers 9

    .line 754
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2d

    .line 756
    :try_start_6
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 757
    .local v2, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 758
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1f

    .line 759
    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->resampleHistoryOnDiskInMemoryDMLocked(J)V

    .line 760
    iput-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 762
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_2a

    .line 763
    :try_start_20
    invoke-direct {p0, v2}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 764
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_2d

    .line 765
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteRegistry;->writeAndClearAccessHistory()V

    .line 766
    return-void

    .line 762
    .end local v2    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :catchall_2a
    move-exception v2

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    :try_start_2c
    throw v2

    .line 764
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method resetHistoryParameters()V
    .registers 9

    .line 633
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_e

    .line 634
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interaction before persistence initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 637
    :cond_e
    const/4 v3, 0x1

    sget-wide v4, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    const-wide/16 v6, 0xa

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 639
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/appop/DiscreteRegistry;->setDebugMode(Z)V

    .line 640
    return-void
.end method

.method setHistoryParameters(IJJ)V
    .registers 12
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "intervalCompressionMultiplier"    # J

    .line 550
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6c

    .line 554
    const/4 v2, 0x0

    .line 555
    .local v2, "resampleHistory":Z
    :try_start_7
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New history parameters: mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 556
    invoke-static {p1}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " baseSnapshotInterval:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intervalCompressionMultiplier:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 555
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    if-eq v3, p1, :cond_4d

    .line 560
    iput p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 561
    if-nez p1, :cond_42

    .line 562
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoryOnDiskDLocked()V

    .line 564
    :cond_42
    iget v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4d

    .line 565
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/appop/DiscreteRegistry;->setDebugMode(Z)V

    .line 568
    :cond_4d
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, p2

    if-eqz v3, :cond_56

    .line 569
    iput-wide p2, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 570
    const/4 v2, 0x1

    .line 572
    :cond_56
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    cmp-long v3, v3, p4

    if-eqz v3, :cond_5f

    .line 573
    iput-wide p4, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 574
    const/4 v2, 0x1

    .line 576
    :cond_5f
    if-eqz v2, :cond_66

    .line 577
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->resampleHistoryOnDiskInMemoryDMLocked(J)V

    .line 579
    .end local v2    # "resampleHistory":Z
    :cond_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_69

    .line 580
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_6c

    .line 581
    return-void

    .line 579
    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "mode":I
    .end local p2    # "baseSnapshotInterval":J
    .end local p4    # "intervalCompressionMultiplier":J
    :try_start_6b
    throw v2

    .line 580
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "mode":I
    .restart local p2    # "baseSnapshotInterval":J
    .restart local p4    # "intervalCompressionMultiplier":J
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method shutdown()V
    .registers 3

    .line 743
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 744
    :try_start_3
    iget v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    if-nez v1, :cond_9

    .line 745
    monitor-exit v0

    return-void

    .line 747
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 749
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory()V

    .line 750
    return-void

    .line 747
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method systemReady(Landroid/content/ContentResolver;)V
    .registers 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 218
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteRegistry;->systemReady()V

    .line 219
    const-string v0, "appop_history_parameters"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 220
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/appop/HistoricalRegistry$1;

    .line 221
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/appop/HistoricalRegistry$1;-><init>(Lcom/android/server/appop/HistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 220
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    .line 230
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_4f

    .line 232
    :try_start_21
    iget v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    if-eqz v3, :cond_49

    .line 234
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v3

    if-nez v3, :cond_36

    .line 235
    new-instance v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v6, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/appop/HistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 240
    :cond_36
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 241
    invoke-virtual {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getLastPersistTimeMillisDLocked()J

    move-result-wide v3

    .line 243
    .local v3, "lastPersistTimeMills":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_49

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 254
    .end local v3    # "lastPersistTimeMills":J
    :cond_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_21 .. :try_end_4a} :catchall_4c

    .line 255
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4f

    .line 256
    return-void

    .line 254
    :catchall_4c
    move-exception v3

    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    .end local v0    # "uri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "resolver":Landroid/content/ContentResolver;
    :try_start_4e
    throw v3

    .line 255
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "resolver":Landroid/content/ContentResolver;
    :catchall_4f
    move-exception v2

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_4f

    throw v2
.end method

.method writeAndClearDiscreteHistory()V
    .registers 2

    .line 667
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteRegistry;->writeAndClearAccessHistory()V

    .line 668
    return-void
.end method
