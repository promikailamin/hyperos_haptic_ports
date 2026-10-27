.class final Lcom/android/server/pm/InitAppsHelper;
.super Ljava/lang/Object;
.source "InitAppsHelper.java"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private mCachedSystemApps:I

.field private final mDirsToScanAsSystem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mExpectingBetter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field private final mIsDeviceUpgrading:Z

.field private final mIsOnlyCoreApps:Z

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanFlags:I

.field private final mStubSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemPackagesCount:I

.field private final mSystemParseFlags:I

.field private final mSystemPartitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemScanFlags:I

.field private mSystemScanTime:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V
    .registers 8
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "apexManager"    # Lcom/android/server/pm/ApexManager;
    .param p3, "installPackageHelper"    # Lcom/android/server/pm/InstallPackageHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/ApexManager;",
            "Lcom/android/server/pm/InstallPackageHelper;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p4, "systemPartitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ScanPartition;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    .line 104
    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 105
    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 106
    iput-object p3, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 107
    iput-object p4, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPartitions:Ljava/util/List;

    .line 108
    invoke-direct {p0}, Lcom/android/server/pm/InitAppsHelper;->getSystemScanPartitions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    .line 109
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    .line 110
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/InitAppsHelper;->mIsOnlyCoreApps:Z

    .line 112
    const/16 v1, 0x210

    .line 113
    .local v1, "scanFlags":I
    if-nez v0, :cond_40

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_40

    .line 116
    :cond_3d
    iput v1, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    goto :goto_44

    .line 114
    :cond_40
    :goto_40
    or-int/lit16 v0, v1, 0x1000

    iput v0, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    .line 118
    :goto_44
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    .line 119
    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    .line 120
    invoke-static {}, Lcom/android/server/pm/ParallelPackageParser;->makeExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 121
    return-void
.end method

.method private fixSystemPackages([I)V
    .registers 7
    .param p1, "userIds"    # [I

    .line 275
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    iget v2, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/pm/InstallPackageHelper;->cleanupDisabledPackageSettings(Ljava/util/List;[II)V

    .line 277
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    iget v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v4, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/InstallPackageHelper;->checkExistingBetterPackages(Landroid/util/ArrayMap;Ljava/util/List;II)V

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    iget v2, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->installSystemStubPackages(Ljava/util/List;I)V

    .line 283
    return-void
.end method

.method private getApexScanPartitions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "scanPartitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ScanPartition;>;"
    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v1

    .line 157
    .local v1, "activeApexInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexManager$ActiveApexInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 158
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-static {v3}, Lcom/android/server/pm/InitAppsHelper;->resolveApexToScanPartition(Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/ScanPartition;

    move-result-object v3

    .line 159
    .local v3, "scanPartition":Lcom/android/server/pm/ScanPartition;
    if-eqz v3, :cond_21

    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v3    # "scanPartition":Lcom/android/server/pm/ScanPartition;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 163
    .end local v2    # "i":I
    :cond_24
    return-object v0
.end method

.method private getFrameworkResApkSplitFiles()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 124
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "scanFrameworkResApkSplits"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 126
    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v2, "splits":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v3, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 128
    invoke-virtual {v3}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v3

    .line 129
    .local v3, "activeApexInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexManager$ActiveApexInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4b

    .line 130
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 131
    .local v5, "apexInfo":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    new-instance v6, Ljava/io/File;

    iget-object v7, v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    const-string v8, "etc/splits"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .local v6, "splitsFolder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 133
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_38
    if-ge v9, v8, :cond_48

    aget-object v10, v7, v9

    .line 134
    .local v10, "file":Ljava/io/File;
    invoke-static {v10}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_45

    .line 135
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_50

    .line 133
    .end local v10    # "file":Ljava/io/File;
    :cond_45
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    .line 129
    .end local v5    # "apexInfo":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    .end local v6    # "splitsFolder":Ljava/io/File;
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 140
    .end local v4    # "i":I
    :cond_4b
    nop

    .line 142
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 140
    return-object v2

    .line 142
    .end local v2    # "splits":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v3    # "activeApexInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexManager$ActiveApexInfo;>;"
    :catchall_50
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 143
    throw v2
.end method

.method private getSystemScanPartitions()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "scanPartitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ScanPartition;>;"
    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPartitions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    invoke-direct {p0}, Lcom/android/server/pm/InitAppsHelper;->getApexScanPartitions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directories scanned as system partitions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-object v0
.end method

.method static synthetic lambda$initSystemApps$0(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5
    .param p0, "consumer"    # Lcom/android/internal/util/function/TriConsumer;
    .param p1, "apkInApexPreInstalledPaths"    # Landroid/util/ArrayMap;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 206
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 207
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 206
    invoke-interface {p0, p2, v0, v1}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private logNonSystemAppScanningTime(J)V
    .registers 11
    .param p1, "startTime"    # J

    .line 287
    sget-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    sub-int/2addr v0, v1

    .line 290
    .local v0, "cachedNonSystemApps":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    sub-long/2addr v1, v3

    sub-long/2addr v1, p1

    .line 291
    .local v1, "dataScanTime":J
    iget-object v3, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v3

    iget v4, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    sub-int/2addr v3, v4

    .line 292
    .local v3, "dataPackagesCount":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished scanning non-system apps. Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, packageCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , timePerPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 295
    if-nez v3, :cond_40

    const-wide/16 v5, 0x0

    goto :goto_43

    :cond_40
    int-to-long v5, v3

    div-long v5, v1, v5

    :goto_43
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , cached: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-boolean v4, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-eqz v4, :cond_6a

    if-lez v3, :cond_6a

    .line 299
    const/16 v4, 0xef

    const/16 v5, 0xe

    int-to-long v6, v3

    div-long v6, v1, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 305
    :cond_6a
    return-void
.end method

.method private logSystemAppsScanningTime(J)V
    .registers 10
    .param p1, "startTime"    # J

    .line 222
    sget-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->pruneSharedUsersLPw()V

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished scanning system apps. Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms, packageCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , timePerPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    iget v1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    if-nez v1, :cond_4a

    const-wide/16 v1, 0x0

    goto :goto_4f

    :cond_4a
    iget-wide v2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    int-to-long v4, v1

    div-long v1, v2, v4

    :goto_4f
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , cached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v0, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-eqz v0, :cond_7b

    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    if-lez v0, :cond_7b

    .line 235
    const/16 v1, 0xef

    const/16 v2, 0xf

    iget-wide v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    int-to-long v5, v0

    div-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 240
    :cond_7b
    return-void
.end method

.method private static resolveApexToScanPartition(Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/ScanPartition;
    .registers 7
    .param p0, "apexInfo"    # Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_61

    .line 169
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ScanPartition;

    .line 170
    .local v2, "sp":Lcom/android/server/pm/ScanPartition;
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v2}, Lcom/android/server/pm/ScanPartition;->getFolder()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    .line 172
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-virtual {v2}, Lcom/android/server/pm/ScanPartition;->getFolder()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    goto :goto_50

    .line 168
    .end local v2    # "sp":Lcom/android/server/pm/ScanPartition;
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 174
    .restart local v2    # "sp":Lcom/android/server/pm/ScanPartition;
    :cond_50
    :goto_50
    const/high16 v3, 0x800000

    .line 175
    .local v3, "flags":I
    iget-boolean v4, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    if-eqz v4, :cond_59

    .line 176
    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    .line 178
    :cond_59
    new-instance v4, Lcom/android/server/pm/ScanPartition;

    iget-object v5, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-direct {v4, v5, v2, v3}, Lcom/android/server/pm/ScanPartition;-><init>(Ljava/io/File;Lcom/android/server/pm/ScanPartition;I)V

    return-object v4

    .line 181
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "sp":Lcom/android/server/pm/ScanPartition;
    .end local v3    # "flags":I
    :cond_61
    const/4 v0, 0x0

    return-object v0
.end method

.method private scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 19
    .param p1, "scanDir"    # Ljava/io/File;
    .param p3, "parseFlags"    # I
    .param p4, "scanFlags"    # I
    .param p5, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p6, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;II",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 376
    .local p2, "frameworkSplits":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scanDir ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 378
    const/high16 v0, 0x800000

    and-int v0, p4, v0

    if-eqz v0, :cond_2f

    .line 380
    move v0, p3

    or-int/lit16 v0, v0, 0x200

    move v10, v0

    .end local p3    # "parseFlags":I
    .local v0, "parseFlags":I
    goto :goto_31

    .line 378
    .end local v0    # "parseFlags":I
    .restart local p3    # "parseFlags":I
    :cond_2f
    move v0, p3

    move v10, v0

    .line 382
    .end local p3    # "parseFlags":I
    .local v10, "parseFlags":I
    :goto_31
    move-object v11, p0

    :try_start_32
    iget-object v3, v11, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    move-object v4, p1

    move-object v5, p2

    move v6, v10

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesFromDir(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_45

    .line 385
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 386
    nop

    .line 387
    return-void

    .line 385
    :catchall_45
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 386
    throw v0
.end method

.method private scanSystemDirs(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 20
    .param p1, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 312
    move-object/from16 v15, p0

    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "framework"

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    .local v8, "frameworkDir":Ljava/io/File;
    iget-object v0, v15, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    .local v7, "i":I
    :goto_16
    if-ltz v7, :cond_40

    .line 319
    iget-object v0, v15, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/pm/ScanPartition;

    .line 320
    .local v9, "partition":Lcom/android/server/pm/ScanPartition;
    invoke-virtual {v9}, Lcom/android/server/pm/ScanPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_28

    .line 321
    goto :goto_3d

    .line 323
    :cond_28
    invoke-virtual {v9}, Lcom/android/server/pm/ScanPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, v15, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v0, v15, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v4, v9, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v4, v0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 318
    .end local v9    # "partition":Lcom/android/server/pm/ScanPartition;
    :goto_3d
    add-int/lit8 v7, v7, -0x1

    goto :goto_16

    .line 328
    .end local v7    # "i":I
    :cond_40
    const/4 v9, 0x0

    iget v10, v15, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v0, v15, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    or-int/lit8 v0, v0, 0x1

    const/high16 v16, 0x20000

    or-int v11, v0, v16

    move-object/from16 v7, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v7 .. v13}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 334
    new-instance v1, Ljava/io/File;

    const-string v0, "/system_ext/framework/framework-ext-res"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v1, "systemExtFrameworkDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 336
    const/4 v2, 0x0

    iget v3, v15, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v0, v15, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    or-int/lit8 v0, v0, 0x1

    or-int v0, v0, v16

    const/high16 v4, 0x200000

    or-int/2addr v4, v0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 342
    :cond_76
    iget-object v0, v15, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    const-string v2, "android"

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, v15, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_89
    if-ge v0, v2, :cond_ce

    .line 348
    iget-object v3, v15, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ScanPartition;

    .line 349
    .local v3, "partition":Lcom/android/server/pm/ScanPartition;
    invoke-virtual {v3}, Lcom/android/server/pm/ScanPartition;->getPrivAppFolder()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_b3

    .line 350
    invoke-virtual {v3}, Lcom/android/server/pm/ScanPartition;->getPrivAppFolder()Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x0

    iget v12, v15, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v4, v15, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    or-int v4, v4, v16

    iget v5, v3, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v13, v4, v5

    move-object/from16 v9, p0

    move-object/from16 v14, p1

    move-object v4, v15

    move-object/from16 v15, p2

    invoke-direct/range {v9 .. v15}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_b4

    .line 349
    :cond_b3
    move-object v4, v15

    .line 355
    :goto_b4
    invoke-virtual {v3}, Lcom/android/server/pm/ScanPartition;->getAppFolder()Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x0

    iget v12, v4, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v5, v4, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v6, v3, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v13, v5, v6

    move-object/from16 v9, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v9 .. v15}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 347
    .end local v3    # "partition":Lcom/android/server/pm/ScanPartition;
    add-int/lit8 v0, v0, 0x1

    move-object v15, v4

    goto :goto_89

    :cond_ce
    move-object v4, v15

    .line 359
    .end local v0    # "i":I
    .end local v2    # "size":I
    return-void

    .line 343
    :cond_d0
    move-object v4, v15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to load frameworks package; check log for warnings"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStubSystemAppsList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 363
    .local p1, "stubSystemApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    .line 364
    .local v0, "numPackages":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_9
    if-ge v1, v0, :cond_25

    .line 365
    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 366
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStub()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 367
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 370
    .end local v1    # "index":I
    :cond_25
    return-void
.end method


# virtual methods
.method public getDirsToScanAsSystem()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    return-object v0
.end method

.method public initNonSystemApps(Lcom/android/server/pm/parsing/PackageParser2;[IJ)V
    .registers 13
    .param p1, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p2, "userIds"    # [I
    .param p3, "startTime"    # J

    .line 248
    iget-boolean v0, p0, Lcom/android/server/pm/InitAppsHelper;->mIsOnlyCoreApps:Z

    if-nez v0, :cond_20

    .line 249
    const/16 v0, 0xc08

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 249
    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 251
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getAppInstallDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    or-int/lit16 v5, v0, 0x80

    iget-object v7, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 256
    :cond_20
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    .line 257
    .local v0, "unfinishedTasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 261
    iget-boolean v1, p0, Lcom/android/server/pm/InitAppsHelper;->mIsOnlyCoreApps:Z

    if-nez v1, :cond_36

    .line 262
    invoke-direct {p0, p2}, Lcom/android/server/pm/InitAppsHelper;->fixSystemPackages([I)V

    .line 263
    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/InitAppsHelper;->logNonSystemAppScanningTime(J)V

    .line 265
    :cond_36
    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 266
    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->pruneRenamedPackagesLPw()V

    .line 267
    return-void

    .line 258
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not all tasks finished before calling close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initSystemApps(Lcom/android/server/pm/parsing/PackageParser2;Lcom/android/server/utils/WatchedArrayMap;[IJ)Lcom/android/internal/content/om/OverlayConfig;
    .registers 12
    .param p1, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p3, "userIds"    # [I
    .param p4, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[IJ)",
            "Lcom/android/internal/content/om/OverlayConfig;"
        }
    .end annotation

    .line 193
    .local p2, "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ApexManager;->scanApexPackagesTraced(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/InitAppsHelper;->scanSystemDirs(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 198
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 199
    .local v0, "apkInApexPreInstalledPaths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/io/File;>;"
    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 200
    .local v2, "apexInfo":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    iget-object v3, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v4, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 201
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_33

    .line 203
    .end local v2    # "apexInfo":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    :cond_45
    goto :goto_1b

    .line 204
    :cond_46
    new-instance v1, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;)V

    invoke-static {v1}, Lcom/android/internal/content/om/OverlayConfig;->initializeSystemInstance(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v1

    .line 209
    .local v1, "overlayConfig":Lcom/android/internal/content/om/OverlayConfig;
    iget-boolean v2, p0, Lcom/android/server/pm/InitAppsHelper;->mIsOnlyCoreApps:Z

    if-nez v2, :cond_61

    .line 211
    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/pm/InitAppsHelper;->updateStubSystemAppsList(Ljava/util/List;)V

    .line 212
    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v3, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v3, v4, p3}, Lcom/android/server/pm/InstallPackageHelper;->prepareSystemPackageCleanUp(Lcom/android/server/utils/WatchedArrayMap;Ljava/util/List;Landroid/util/ArrayMap;[I)V

    .line 216
    :cond_61
    invoke-direct {p0, p4, p5}, Lcom/android/server/pm/InitAppsHelper;->logSystemAppsScanningTime(J)V

    .line 217
    return-object v1
.end method

.method public isExpectingBetter(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$initSystemApps$1$com-android-server-pm-InitAppsHelper(Landroid/util/ArrayMap;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 6
    .param p1, "apkInApexPreInstalledPaths"    # Landroid/util/ArrayMap;
    .param p2, "consumer"    # Lcom/android/internal/util/function/TriConsumer;

    .line 205
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p1}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->forEachPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    return-void
.end method
