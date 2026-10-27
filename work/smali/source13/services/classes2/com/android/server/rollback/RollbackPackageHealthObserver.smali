.class final Lcom/android/server/rollback/RollbackPackageHealthObserver;
.super Ljava/lang/Object;
.source "RollbackPackageHealthObserver.java"

# interfaces
.implements Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# static fields
.field private static final NAME:Ljava/lang/String; = "rollback-observer"

.field private static final TAG:Ljava/lang/String; = "RollbackPackageHealthObserver"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLastStagedRollbackIdsFile:Ljava/io/File;

.field private final mPendingStagedRollbackIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTwoPhaseRollbackEnabled:Z

.field private final mTwoPhaseRollbackEnabledFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    .line 81
    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RollbackPackageHealthObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "rollback-observer"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .local v1, "dataDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 87
    new-instance v2, Ljava/io/File;

    const-string v3, "last-staged-rollback-ids"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    .line 88
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "two-phase-rollback-enabled"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabledFile:Ljava/io/File;

    .line 89
    invoke-static {p1}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 90
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 92
    const-string/jumbo v3, "sys.boot_completed"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 94
    invoke-static {v2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->readBoolean(Ljava/io/File;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabled:Z

    goto :goto_66

    .line 98
    :cond_61
    iput-boolean v4, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabled:Z

    .line 99
    invoke-static {v2, v4}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->writeBoolean(Ljava/io/File;Z)V

    .line 101
    :goto_66
    return-void
.end method

.method private assertInWorkerThread()V
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 146
    return-void
.end method

.method private getAvailableRollback(Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;
    .registers 9
    .param p1, "failedPackage"    # Landroid/content/pm/VersionedPackage;

    .line 210
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 211
    .local v0, "rollbackManager":Landroid/content/rollback/RollbackManager;
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/RollbackInfo;

    .line 212
    .local v2, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    .line 213
    .local v4, "packageRollback":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/VersionedPackage;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 214
    return-object v2

    .line 228
    :cond_3d
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 229
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 230
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 231
    return-object v2

    .line 233
    .end local v4    # "packageRollback":Landroid/content/rollback/PackageRollbackInfo;
    :cond_56
    goto :goto_26

    .line 234
    .end local v2    # "rollback":Landroid/content/rollback/RollbackInfo;
    :cond_57
    goto :goto_12

    .line 235
    :cond_58
    const/4 v1, 0x0

    return-object v1
.end method

.method private isModule(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "apexPackageName":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 340
    move-object p1, v0

    .line 343
    :cond_9
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 345
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v3
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_14} :catch_18

    if-eqz v3, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2

    .line 346
    :catch_18
    move-exception v3

    .line 347
    .local v3, "ignore":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method

.method private isPendingStagedSessionsEmpty()Z
    .registers 2

    .line 254
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 255
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private static isRebootlessApex(Landroid/content/rollback/RollbackInfo;)Z
    .registers 4
    .param p0, "rollback"    # Landroid/content/rollback/RollbackInfo;

    .line 172
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v0

    if-nez v0, :cond_23

    .line 173
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 174
    .local v1, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 175
    const/4 v0, 0x1

    return v0

    .line 177
    .end local v1    # "info":Landroid/content/rollback/PackageRollbackInfo;
    :cond_22
    goto :goto_e

    .line 179
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$rollbackPackage$5(Ljava/util/function/Consumer;Landroid/content/Intent;)V
    .registers 2
    .param p0, "onResult"    # Ljava/util/function/Consumer;
    .param p1, "result"    # Landroid/content/Intent;

    .line 415
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private markStagedSessionHandled(I)Z
    .registers 4
    .param p1, "rollbackId"    # I

    .line 244
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 245
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onBootCompleted()V
    .registers 8

    .line 192
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 194
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 195
    .local v0, "rollbackManager":Landroid/content/rollback/RollbackManager;
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 197
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog;->scheduleCheckAndMitigateNativeCrashes()V

    .line 200
    :cond_20
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->popLastStagedRollbackIds()Landroid/util/SparseArray;

    move-result-object v1

    .line 201
    .local v1, "rollbackIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 202
    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 204
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v6

    .line 202
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logRollbackStatusOnBoot(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 206
    .end local v2    # "i":I
    :cond_41
    return-void
.end method

.method private popLastStagedRollbackIds()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 302
    :try_start_3
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->readStagedRollbackIds(Ljava/io/File;)Landroid/util/SparseArray;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 304
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 302
    return-object v0

    .line 304
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 305
    throw v0
.end method

.method private static readBoolean(Ljava/io/File;)Z
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .line 259
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1d

    .line 260
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_13

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    move v3, v0

    .line 261
    :goto_f
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_1d

    .line 260
    return v3

    .line 259
    :catchall_13
    move-exception v2

    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v3

    :try_start_19
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "file":Ljava/io/File;
    :goto_1c
    throw v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    .line 261
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catch_1d
    move-exception v1

    .line 262
    .local v1, "ignore":Ljava/io/IOException;
    return v0
.end method

.method static readStagedRollbackIds(Ljava/io/File;)Landroid/util/SparseArray;
    .registers 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 312
    .local v0, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 313
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_34

    .line 315
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "values":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 317
    .local v4, "rollbackId":Ljava/lang/String;
    const-string v5, ""

    .line 318
    .local v5, "logPackageName":Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x1

    if-le v6, v7, :cond_2c

    .line 319
    aget-object v6, v2, v7

    move-object v5, v6

    .line 321
    :cond_2c
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_36

    .line 322
    .end local v2    # "values":[Ljava/lang/String;
    .end local v4    # "rollbackId":Ljava/lang/String;
    .end local v5    # "logPackageName":Ljava/lang/String;
    goto :goto_f

    .line 325
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :cond_34
    nop

    .line 326
    return-object v0

    .line 323
    :catch_36
    move-exception v1

    .line 324
    .local v1, "ignore":Ljava/lang/Exception;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2
.end method

.method private rollbackAll()V
    .registers 7

    .line 452
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 453
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 454
    .local v0, "rollbackManager":Landroid/content/rollback/RollbackManager;
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v1

    .line 455
    .local v1, "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    invoke-direct {p0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->useTwoPhaseRollback(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 456
    return-void

    .line 459
    :cond_18
    const-string v2, "RollbackPackageHealthObserver"

    const-string v3, "Rolling back all available rollbacks"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/RollbackInfo;

    .line 463
    .local v3, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 464
    iget-object v4, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v3    # "rollback":Landroid/content/rollback/RollbackInfo;
    :cond_42
    goto :goto_23

    .line 468
    :cond_43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/RollbackInfo;

    .line 469
    .restart local v3    # "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    .line 470
    .local v4, "sample":Landroid/content/pm/VersionedPackage;
    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    .line 471
    .end local v3    # "rollback":Landroid/content/rollback/RollbackInfo;
    .end local v4    # "sample":Landroid/content/pm/VersionedPackage;
    goto :goto_47

    .line 472
    :cond_67
    return-void
.end method

.method private rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V
    .registers 16
    .param p1, "rollback"    # Landroid/content/rollback/RollbackInfo;
    .param p2, "failedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p3, "rollbackReason"    # I

    .line 360
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 361
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 362
    .local v0, "rollbackManager":Landroid/content/rollback/RollbackManager;
    invoke-static {p3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->mapFailureReasonToMetric(I)I

    move-result v7

    .line 364
    .local v7, "reasonToLog":I
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1f

    .line 365
    const-string/jumbo v2, "sys.init.updatable_crashing_process_name"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .local v2, "failedPackageToLog":Ljava/lang/String;
    goto :goto_24

    .line 368
    .end local v2    # "failedPackageToLog":Ljava/lang/String;
    :cond_1f
    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 370
    .local v8, "failedPackageToLog":Ljava/lang/String;
    :goto_24
    const/4 v2, 0x0

    .line 371
    .local v2, "logPackageTemp":Landroid/content/pm/VersionedPackage;
    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->isModule(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 372
    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;

    move-result-object v2

    move-object v9, v2

    goto :goto_38

    .line 371
    :cond_37
    move-object v9, v2

    .line 375
    .end local v2    # "logPackageTemp":Landroid/content/pm/VersionedPackage;
    .local v9, "logPackageTemp":Landroid/content/pm/VersionedPackage;
    :goto_38
    move-object v10, v9

    .line 376
    .local v10, "logPackage":Landroid/content/pm/VersionedPackage;
    invoke-static {v10, v1, v7, v8}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 380
    new-instance v11, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, v10

    move v5, v7

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;ILjava/lang/String;)V

    .line 414
    .local v1, "onResult":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Intent;>;"
    new-instance v2, Lcom/android/server/rollback/LocalIntentReceiver;

    new-instance v3, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Ljava/util/function/Consumer;)V

    invoke-direct {v2, v3}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 418
    .local v2, "rollbackReceiver":Lcom/android/server/rollback/LocalIntentReceiver;
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    .line 419
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    .line 418
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/rollback/RollbackManager;->commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V

    .line 420
    return-void
.end method

.method private saveStagedRollbackId(ILandroid/content/pm/VersionedPackage;)V
    .registers 4
    .param p1, "stagedRollbackId"    # I
    .param p2, "logPackage"    # Landroid/content/pm/VersionedPackage;

    .line 277
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 278
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    invoke-static {v0, p1, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->writeStagedRollbackId(Ljava/io/File;ILandroid/content/pm/VersionedPackage;)V

    .line 279
    return-void
.end method

.method private useTwoPhaseRollback(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;)Z"
        }
    .end annotation

    .line 433
    .local p1, "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 434
    iget-boolean v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 435
    return v1

    .line 438
    :cond_9
    const-string v0, "RollbackPackageHealthObserver"

    const-string v2, "Rolling back all rebootless APEX rollbacks"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "found":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/RollbackInfo;

    .line 441
    .local v3, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-static {v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->isRebootlessApex(Landroid/content/rollback/RollbackInfo;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 442
    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    .line 443
    .local v4, "sample":Landroid/content/pm/VersionedPackage;
    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    .line 444
    const/4 v0, 0x1

    .line 446
    .end local v3    # "rollback":Landroid/content/rollback/RollbackInfo;
    .end local v4    # "sample":Landroid/content/pm/VersionedPackage;
    :cond_3a
    goto :goto_15

    .line 447
    :cond_3b
    return v0
.end method

.method private static writeBoolean(Ljava/io/File;Z)V
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "value"    # Z

    .line 267
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_21

    .line 268
    .local v0, "fos":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    :try_start_a
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 269
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 270
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    .line 271
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_21

    .line 272
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_22

    .line 267
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_17
    move-exception v1

    :try_start_18
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    :try_start_1d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "value":Z
    :goto_20
    throw v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_21

    .line 271
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "value":Z
    :catch_21
    move-exception v0

    .line 273
    :goto_22
    return-void
.end method

.method static writeStagedRollbackId(Ljava/io/File;ILandroid/content/pm/VersionedPackage;)V
    .registers 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "stagedRollbackId"    # I
    .param p2, "logPackage"    # Landroid/content/pm/VersionedPackage;

    .line 284
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 285
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 286
    .local v1, "pw":Ljava/io/PrintWriter;
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_12
    const-string v2, ""

    .line 287
    .local v2, "logPackageName":Ljava/lang/String;
    :goto_14
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 288
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 289
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 290
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 291
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_32

    .line 295
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v2    # "logPackageName":Ljava/lang/String;
    goto :goto_3d

    .line 292
    :catch_32
    move-exception v0

    .line 293
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "RollbackPackageHealthObserver"

    const-string v2, "Failed to save last staged rollback id"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 296
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3d
    return-void
.end method


# virtual methods
.method public execute(Landroid/content/pm/VersionedPackage;II)Z
    .registers 8
    .param p1, "failedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "rollbackReason"    # I
    .param p3, "mitigationCount"    # I

    .line 124
    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    .line 125
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return v0

    .line 129
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v1

    .line 130
    .local v1, "rollback":Landroid/content/rollback/RollbackInfo;
    if-nez v1, :cond_2e

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected rollback but no valid rollback found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RollbackPackageHealthObserver"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_2e
    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 141
    const-string/jumbo v0, "rollback-observer"

    return-object v0
.end method

.method synthetic lambda$execute$0$com-android-server-rollback-RollbackPackageHealthObserver()V
    .registers 1

    .line 125
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackAll()V

    return-void
.end method

.method synthetic lambda$execute$1$com-android-server-rollback-RollbackPackageHealthObserver(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V
    .registers 4
    .param p1, "rollback"    # Landroid/content/rollback/RollbackInfo;
    .param p2, "failedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p3, "rollbackReason"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    return-void
.end method

.method synthetic lambda$notifyRollbackAvailable$2$com-android-server-rollback-RollbackPackageHealthObserver(Landroid/content/rollback/RollbackInfo;)V
    .registers 4
    .param p1, "rollback"    # Landroid/content/rollback/RollbackInfo;

    .line 164
    invoke-static {p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->isRebootlessApex(Landroid/content/rollback/RollbackInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabled:Z

    .line 166
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabledFile:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->writeBoolean(Ljava/io/File;Z)V

    .line 168
    :cond_e
    return-void
.end method

.method synthetic lambda$onBootCompletedAsync$3$com-android-server-rollback-RollbackPackageHealthObserver()V
    .registers 1

    .line 187
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->onBootCompleted()V

    return-void
.end method

.method synthetic lambda$rollbackPackage$4$com-android-server-rollback-RollbackPackageHealthObserver(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;ILjava/lang/String;Landroid/content/Intent;)V
    .registers 9
    .param p1, "rollback"    # Landroid/content/rollback/RollbackInfo;
    .param p2, "logPackage"    # Landroid/content/pm/VersionedPackage;
    .param p3, "reasonToLog"    # I
    .param p4, "failedPackageToLog"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/content/Intent;

    .line 381
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 382
    const-string v0, "android.content.rollback.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p5, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 384
    .local v0, "status":I
    if-nez v0, :cond_23

    .line 385
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 386
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    .line 387
    .local v1, "rollbackId":I
    invoke-direct {p0, v1, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->saveStagedRollbackId(ILandroid/content/pm/VersionedPackage;)V

    .line 388
    const/4 v2, 0x4

    invoke-static {p2, v2, p3, p4}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 393
    .end local v1    # "rollbackId":I
    goto :goto_27

    .line 394
    :cond_1e
    const/4 v1, 0x2

    invoke-static {p2, v1, p3, p4}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_27

    .line 400
    :cond_23
    const/4 v1, 0x3

    invoke-static {p2, v1, p3, p4}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 405
    :goto_27
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 406
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->markStagedSessionHandled(I)Z

    .line 408
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->isPendingStagedSessionsEmpty()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 409
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "Rollback staged install"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 412
    :cond_49
    return-void
.end method

.method synthetic lambda$rollbackPackage$6$com-android-server-rollback-RollbackPackageHealthObserver(Ljava/util/function/Consumer;Landroid/content/Intent;)V
    .registers 5
    .param p1, "onResult"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/content/Intent;

    .line 415
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method

.method notifyRollbackAvailable(Landroid/content/rollback/RollbackInfo;)V
    .registers 4
    .param p1, "rollback"    # Landroid/content/rollback/RollbackInfo;

    .line 159
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method onBootCompletedAsync()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method

.method public onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I
    .registers 7
    .param p1, "failedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "failureReason"    # I
    .param p3, "mitigationCount"    # I

    .line 107
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v2, Landroid/content/rollback/RollbackManager;

    .line 108
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/RollbackManager;

    .line 109
    invoke-virtual {v1}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 110
    return v0

    .line 112
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v1

    if-nez v1, :cond_21

    .line 114
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_21
    return v0
.end method

.method startObservingHealth(Ljava/util/List;J)V
    .registers 5
    .param p2, "durationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 154
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    .line 155
    return-void
.end method
