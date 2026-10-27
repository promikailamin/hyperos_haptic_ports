.class public final Lcom/android/server/am/ContentProviderConnection;
.super Landroid/os/Binder;
.source "ContentProviderConnection.java"


# instance fields
.field public association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field public final client:Lcom/android/server/am/ProcessRecord;

.field public final clientPackage:Ljava/lang/String;

.field public final createTime:J

.field public dead:Z

.field final mExpectedUserId:I

.field private final mLock:Ljava/lang/Object;

.field private mNumStableIncs:I

.field private mNumUnstableIncs:I

.field private mProcStatsLock:Ljava/lang/Object;

.field private mStableCount:I

.field private mUnstableCount:I

.field public final provider:Lcom/android/server/am/ContentProviderRecord;

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V
    .registers 7
    .param p1, "_provider"    # Lcom/android/server/am/ContentProviderRecord;
    .param p2, "_client"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "_clientPackage"    # Ljava/lang/String;
    .param p4, "_expectedUserId"    # I

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 69
    iput-object p2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 70
    iput-object p3, p0, Lcom/android/server/am/ContentProviderConnection;->clientPackage:Ljava/lang/String;

    .line 71
    iput p4, p0, Lcom/android/server/am/ContentProviderConnection;->mExpectedUserId:I

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    .line 73
    return-void
.end method


# virtual methods
.method public adjustCounts(II)V
    .registers 9
    .param p1, "stableIncrement"    # I
    .param p2, "unstableIncrement"    # I

    .line 244
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    if-lez p1, :cond_a

    .line 246
    :try_start_5
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 248
    :cond_a
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    add-int/2addr v1, p1

    .line 249
    .local v1, "stable":I
    if-ltz v1, :cond_63

    .line 252
    if-lez p2, :cond_16

    .line 253
    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 255
    :cond_16
    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr v2, p2

    .line 256
    .local v2, "unstable":I
    if-ltz v2, :cond_49

    .line 259
    add-int v3, v1, v2

    if-lez v3, :cond_25

    .line 263
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 264
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 265
    .end local v1    # "stable":I
    .end local v2    # "unstable":I
    monitor-exit v0

    .line 266
    return-void

    .line 260
    .restart local v1    # "stable":I
    .restart local v2    # "unstable":I
    :cond_25
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ref counts can\'t go to zero here: stable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " unstable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/am/ContentProviderConnection;
    .end local p1    # "stableIncrement":I
    .end local p2    # "unstableIncrement":I
    throw v3

    .line 257
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderConnection;
    .restart local p1    # "stableIncrement":I
    .restart local p2    # "unstableIncrement":I
    :cond_49
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unstableCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/am/ContentProviderConnection;
    .end local p1    # "stableIncrement":I
    .end local p2    # "unstableIncrement":I
    throw v3

    .line 250
    .end local v2    # "unstable":I
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderConnection;
    .restart local p1    # "stableIncrement":I
    .restart local p2    # "unstableIncrement":I
    :cond_63
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stableCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/am/ContentProviderConnection;
    .end local p1    # "stableIncrement":I
    .end local p2    # "unstableIncrement":I
    throw v2

    .line 265
    .end local v1    # "stable":I
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderConnection;
    .restart local p1    # "stableIncrement":I
    .restart local p2    # "unstableIncrement":I
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_5 .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method public decrementCount(Z)I
    .registers 7
    .param p1, "stable"    # Z

    .line 220
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    if-eqz v1, :cond_5b

    .line 222
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 223
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing provider requested by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 226
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uscnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_5b
    if-eqz p1, :cond_64

    .line 230
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    goto :goto_6a

    .line 232
    :cond_64
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 234
    :goto_6a
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 235
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public incrementCount(Z)I
    .registers 7
    .param p1, "stable"    # Z

    .line 195
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    if-eqz v1, :cond_5b

    .line 197
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 198
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding provider requested by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 201
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uscnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_5b
    if-eqz p1, :cond_6a

    .line 205
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 206
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    goto :goto_76

    .line 208
    :cond_6a
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 209
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 211
    :goto_76
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 212
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method public initializeCount(Z)V
    .registers 5
    .param p1, "stable"    # Z

    .line 175
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    .line 177
    :try_start_7
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 178
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 179
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 180
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    goto :goto_18

    .line 182
    :cond_10
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 183
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 184
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 185
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 187
    :goto_18
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public stableCount()I
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    monitor-exit v0

    return v1

    .line 274
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public startAssociationIfNeeded()V
    .registers 7

    .line 78
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v0, :cond_d0

    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 82
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 83
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->get(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v0

    .line 84
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    if-nez v0, :cond_6b

    .line 85
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package in referenced provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 86
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": proc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 87
    :cond_6b
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-nez v1, :cond_9e

    .line 88
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inactive holder in referenced provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 89
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": proc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 91
    :cond_9e
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    .line 92
    monitor-enter v1

    .line 93
    :try_start_ab
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 94
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->getAssociationStateLocked(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ContentProviderConnection;->clientPackage:Ljava/lang/String;

    .line 94
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/app/procstats/AssociationState;->startSource(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 96
    monitor-exit v1

    goto :goto_d0

    :catchall_cd
    move-exception v2

    monitor-exit v1
    :try_end_cf
    .catchall {:try_start_ab .. :try_end_cf} :catchall_cd

    throw v2

    .line 99
    .end local v0    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_d0
    :goto_d0
    return-void
.end method

.method public stopAssociation()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-eqz v0, :cond_14

    .line 114
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop()V

    .line 116
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    goto :goto_14

    .line 116
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1

    .line 119
    :cond_14
    :goto_14
    return-void
.end method

.method public toClientString()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 137
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toClientString(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 148
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_c
    const-string v1, " s"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, " u"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_58

    .line 159
    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v0, :cond_3e

    .line 160
    const-string v0, " WAITING"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_3e
    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    if-eqz v0, :cond_47

    .line 163
    const-string v0, " DEAD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 166
    .local v0, "nowReal":J
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-wide v2, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 168
    return-void

    .line 158
    .end local v0    # "nowReal":J
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toShortString(Ljava/lang/StringBuilder;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 142
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v0, "->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ContentProviderConnection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toShortString(Ljava/lang/StringBuilder;)V

    .line 125
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method totalRefCount()I
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 292
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public trackProcState(II)V
    .registers 7
    .param p1, "procState"    # I
    .param p2, "seq"    # I

    .line 105
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-eqz v0, :cond_15

    .line 106
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->trackProcState(IIJ)V

    .line 108
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 110
    :cond_15
    :goto_15
    return-void
.end method

.method public unstableCount()I
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    monitor-exit v0

    return v1

    .line 283
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
