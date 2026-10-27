.class public final Lcom/android/server/am/ContentProviderConnection;
.super Landroid/os/Binder;
.source "ContentProviderConnection.java"

# interfaces
.implements Lcom/android/server/am/psc/ContentProviderConnectionInternal;


# instance fields
.field public association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field public final client:Lcom/android/server/am/ProcessRecord;

.field public final clientPackage:Ljava/lang/String;

.field public final createTime:J

.field public dead:Z

.field public final mExpectedUserId:I

.field public final mLock:Ljava/lang/Object;

.field public mNumStableIncs:I

.field public mNumUnstableIncs:I

.field public volatile mProcStatsLock:Ljava/lang/Object;

.field public mStableCount:I

.field public mUnstableCount:I

.field public final provider:Lcom/android/server/am/ContentProviderRecord;

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V
    .registers 6

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 71
    iput-object p2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 72
    iput-object p3, p0, Lcom/android/server/am/ContentProviderConnection;->clientPackage:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/android/server/am/ContentProviderConnection;->mExpectedUserId:I

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    return-void
.end method


# virtual methods
.method public adjustCounts(II)V
    .registers 6

    .line 263
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-lez p1, :cond_d

    .line 265
    :try_start_5
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_78

    .line 267
    :cond_d
    :goto_d
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    add-int/2addr v1, p1

    if-ltz v1, :cond_60

    if-lez p2, :cond_19

    .line 272
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 274
    :cond_19
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr p1, p2

    if-ltz p1, :cond_48

    add-int p2, v1, p1

    if-lez p2, :cond_28

    .line 282
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 283
    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 284
    monitor-exit v0

    return-void

    .line 279
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ref counts can\'t go to zero here: stable="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " unstable="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 276
    :cond_48
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unstableCount < 0: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "stableCount < 0: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 284
    :goto_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_5 .. :try_end_79} :catchall_b

    throw p0
.end method

.method public decrementCount(Z)I
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_e

    .line 249
    :try_start_5
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    goto :goto_14

    :catchall_c
    move-exception p0

    goto :goto_1b

    .line 251
    :cond_e
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 253
    :goto_14
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr p1, p0

    monitor-exit v0

    return p1

    .line 254
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_c

    throw p0
.end method

.method public getClient()Lcom/android/server/am/ProcessRecord;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public bridge synthetic getClient()Lcom/android/server/am/psc/ProcessRecordInternal;
    .registers 1

    .line 36
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderConnection;->getClient()Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/android/server/am/ContentProviderRecord;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    return-object p0
.end method

.method public bridge synthetic getProvider()Lcom/android/server/am/psc/ContentProviderRecordInternal;
    .registers 1

    .line 36
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderConnection;->getProvider()Lcom/android/server/am/ContentProviderRecord;

    move-result-object p0

    return-object p0
.end method

.method public incrementCount(Z)I
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_14

    .line 224
    :try_start_5
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 225
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    goto :goto_20

    :catchall_12
    move-exception p0

    goto :goto_27

    .line 227
    :cond_14
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 228
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 230
    :goto_20
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr p1, p0

    monitor-exit v0

    return p1

    .line 231
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_12

    throw p0
.end method

.method public initializeCount(Z)V
    .registers 5

    .line 194
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_12

    .line 196
    :try_start_7
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 197
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 198
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 199
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    goto :goto_1a

    :catchall_10
    move-exception p0

    goto :goto_1c

    .line 201
    :cond_12
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 202
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 203
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 204
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 206
    :goto_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_10

    throw p0
.end method

.method public stableCount()I
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 293
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public startAssociationIfNeeded()V
    .registers 6

    .line 80
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v0, :cond_c2

    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c2

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne v1, v3, :cond_20

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v1, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 84
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    .line 85
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->get(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v0

    if-nez v0, :cond_61

    .line 87
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package in referenced provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    .line 88
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_61
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-nez v1, :cond_90

    .line 90
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inactive holder in referenced provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    .line 91
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_90
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_9f
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    .line 96
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->getAssociationStateLocked(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v2, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ContentProviderConnection;->clientPackage:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v3, v2, v4}, Lcom/android/internal/app/procstats/AssociationState;->startSource(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 98
    monitor-exit v1

    return-void

    :catchall_bf
    move-exception p0

    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_9f .. :try_end_c1} :catchall_bf

    throw p0

    :cond_c2
    return-void
.end method

.method public stopAssociation()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v0, :cond_5

    return-void

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-eqz v1, :cond_15

    .line 134
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop()V

    const/4 v1, 0x0

    .line 135
    iput-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_17

    .line 137
    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_13

    throw p0
.end method

.method public toClientString()Ljava/lang/String;
    .registers 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toClientString(Ljava/lang/StringBuilder;)V
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_c
    const-string v1, " s"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, " u"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_57

    .line 178
    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v0, :cond_3e

    .line 179
    const-string v0, " WAITING"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_3e
    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    if-eqz v0, :cond_47

    .line 182
    const-string v0, " DEAD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 185
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-wide v2, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    return-void

    :catchall_57
    move-exception p0

    .line 177
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toShortString(Ljava/lang/StringBuilder;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v0, "->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 142
    const-string v1, "ContentProviderConnection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toShortString(Ljava/lang/StringBuilder;)V

    const/16 p0, 0x7d

    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public totalRefCount()I
    .registers 3

    .line 309
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_a
    move-exception p0

    .line 311
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public trackProcState(II)V
    .registers 6

    .line 108
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v0, :cond_5

    return-void

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_8
    iget-object p0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-eqz p0, :cond_16

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->trackProcState(IIJ)V

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_18

    .line 115
    :cond_16
    :goto_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_14

    throw p0
.end method

.method public unstableCount()I
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 302
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
