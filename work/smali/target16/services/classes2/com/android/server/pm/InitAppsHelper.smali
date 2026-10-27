.class public final Lcom/android/server/pm/InitAppsHelper;
.super Ljava/lang/Object;
.source "InitAppsHelper.java"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public mCachedSystemApps:I

.field public final mDirsToScanAsSystem:Ljava/util/List;

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mExpectingBetter:Landroid/util/ArrayMap;

.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mIsDeviceUpgrading:Z

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

.field public final mScanFlags:I

.field public final mStubSystemApps:Ljava/util/List;

.field public mSystemPackagesCount:I

.field public final mSystemParseFlags:I

.field public final mSystemPartitions:Ljava/util/List;

.field public final mSystemScanFlags:I

.field public mSystemScanTime:J


# direct methods
.method public static synthetic $r8$lambda$VJZW-c31uI8Yaywv2gsqfy0KEng(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 5

    .line 193
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 195
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 196
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 195
    invoke-interface {p0, v0, p2, p1}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public static synthetic $r8$lambda$VWF6nFCGGoc9b6Gi7rkF04KUDnc(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InitAppsHelper;->lambda$initSystemApps$1(Landroid/util/ArrayMap;Lcom/android/internal/util/function/TriConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WUjG5T2nXa8xdZKlIPYCIIcrmg4(Ljava/nio/file/Path;)V
    .registers 3

    .line 239
    :try_start_0
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1f9

    invoke-static {p0, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 241
    const-string v0, "PackageManager"

    const-string v1, "Failed to fix an installed app dir mode"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V
    .registers 6

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    .line 102
    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 103
    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 104
    iput-object p3, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 105
    iput-object p4, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPartitions:Ljava/util/List;

    .line 106
    invoke-virtual {p0}, Lcom/android/server/pm/InitAppsHelper;->getSystemScanPartitions()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    .line 107
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-nez p2, :cond_3a

    .line 110
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result p2

    if-eqz p2, :cond_35

    goto :goto_3a

    :cond_35
    const/16 p2, 0x210

    .line 113
    iput p2, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    goto :goto_3e

    :cond_3a
    :goto_3a
    const/16 p2, 0x1210

    .line 111
    iput p2, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    .line 115
    :goto_3e
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    .line 116
    iget p1, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    const/high16 p2, 0x10000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    .line 117
    invoke-static {}, Lcom/android/server/pm/ParallelPackageParser;->makeExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static resolveApexToScanPartition(Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/ScanPartition;
    .registers 7

    .line 142
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_56

    .line 143
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ScanPartition;

    .line 144
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {v2}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    .line 146
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    invoke-virtual {v2}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_4e

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 148
    :cond_4e
    :goto_4e
    new-instance v0, Lcom/android/server/pm/ScanPartition;

    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/pm/ScanPartition;-><init>(Ljava/io/File;Lcom/android/server/pm/ScanPartition;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    return-object v0

    :cond_56
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final collectScanParams(Ljava/util/List;Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    .registers 8

    const/high16 p0, 0x800000

    and-int/2addr p0, p4

    if-eqz p0, :cond_a

    .line 349
    invoke-static {p2, p3, p4, p7}, Lcom/android/server/pm/InitAppsHelper$ScanParams;->forApkInApexScan(Ljava/io/File;IILcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/InitAppsHelper$ScanParams;

    move-result-object p0

    goto :goto_e

    .line 350
    :cond_a
    invoke-static {p2, p3, p4}, Lcom/android/server/pm/InitAppsHelper$ScanParams;->forApkPartitionScan(Ljava/io/File;II)Lcom/android/server/pm/InitAppsHelper$ScanParams;

    move-result-object p0

    .line 348
    :goto_e
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fixInstalledAppDirMode()V
    .registers 3

    .line 236
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getAppInstallDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_26

    .line 237
    :try_start_e
    new-instance v0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/nio/file/DirectoryStream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1a

    .line 244
    :try_start_16
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_26

    return-void

    :catchall_1a
    move-exception v0

    if-eqz p0, :cond_25

    .line 236
    :try_start_1d
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception p0

    :try_start_22
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    throw v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_26

    :catch_26
    move-exception p0

    .line 245
    const-string v0, "PackageManager"

    const-string v1, "Failed to walk the app install directory to fix the modes"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final fixSystemPackages([I)V
    .registers 6

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    iget v2, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/pm/InstallPackageHelper;->cleanupDisabledPackageSettings(Ljava/util/List;[II)V

    .line 284
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    iget v2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/pm/InstallPackageHelper;->checkExistingBetterPackages(Landroid/util/ArrayMap;Ljava/util/List;II)V

    .line 289
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    iget p0, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/InstallPackageHelper;->installSystemStubPackages(Ljava/util/List;I)V

    return-void
.end method

.method public final getApexScanPartitions()Ljava/util/List;
    .registers 4

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    .line 131
    :goto_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 132
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-static {v2}, Lcom/android/server/pm/InitAppsHelper;->resolveApexToScanPartition(Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/ScanPartition;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 134
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_24
    return-object v0
.end method

.method public getDirsToScanAsSystem()Ljava/util/List;
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    return-object p0
.end method

.method public getSystemScanFlags()I
    .registers 1

    .line 446
    iget p0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    return p0
.end method

.method public final getSystemScanPartitions()Ljava/util/List;
    .registers 3

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPartitions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-virtual {p0}, Lcom/android/server/pm/InitAppsHelper;->getApexScanPartitions()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directories scanned as system partitions: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PackageManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public initNonSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;[IJ)V
    .registers 13

    const/16 v0, 0xc08

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 255
    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 258
    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    .line 259
    invoke-virtual {p0}, Lcom/android/server/pm/InitAppsHelper;->fixInstalledAppDirMode()V

    .line 262
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getAppInstallDir()Ljava/io/File;

    move-result-object v2

    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    or-int/lit16 v4, v0, 0x80

    iget-object v6, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    .line 265
    iget-object p0, v1, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object p0

    .line 266
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 270
    invoke-virtual {v1, p2}, Lcom/android/server/pm/InitAppsHelper;->fixSystemPackages([I)V

    .line 271
    invoke-virtual {v1, p3, p4}, Lcom/android/server/pm/InitAppsHelper;->logNonSystemAppScanningTime(J)V

    .line 272
    iget-object p0, v1, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 273
    iget-object p0, v1, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->pruneRenamedPackagesLPw()V

    return-void

    .line 267
    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not all tasks finished before calling close: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/server/utils/WatchedArrayMap;[IJ)Lcom/android/internal/content/om/OverlayConfig;
    .registers 11

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InitAppsHelper;->scanApexPackagesTraced(Lcom/android/internal/pm/parsing/PackageParser2;)Ljava/util/List;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ApexManager;->notifyScanResult(Ljava/util/List;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/InitAppsHelper;->scanSystemDirs(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 182
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 183
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 184
    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v3, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    iget-object v3, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 187
    iget-object v4, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    invoke-virtual {p1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 190
    :cond_4d
    new-instance v0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;)V

    invoke-static {v0}, Lcom/android/internal/content/om/OverlayConfig;->initializeSystemInstance(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Lcom/android/internal/content/om/OverlayConfig;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InitAppsHelper;->updateStubSystemAppsList(Ljava/util/List;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, v1, v2, p3}, Lcom/android/server/pm/InstallPackageHelper;->prepareSystemPackageCleanUp(Lcom/android/server/utils/WatchedArrayMap;Ljava/util/List;Landroid/util/ArrayMap;[I)V

    .line 205
    invoke-virtual {p0, p4, p5}, Lcom/android/server/pm/InitAppsHelper;->logSystemAppsScanningTime(J)V

    return-object p1
.end method

.method public isExpectingBetter(Ljava/lang/String;)Z
    .registers 2

    .line 437
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$initSystemApps$1(Landroid/util/ArrayMap;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 5

    .line 191
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p1}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final logNonSystemAppScanningTime(J)V
    .registers 8

    .line 294
    sget-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    sub-int/2addr v0, v1

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    sub-long/2addr v1, v3

    sub-long/2addr v1, p1

    .line 298
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p1

    iget p2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    sub-int/2addr p1, p2

    .line 299
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished scanning non-system apps. Time: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms, packageCount: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , timePerPackage: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3b

    const-wide/16 v3, 0x0

    goto :goto_3e

    :cond_3b
    int-to-long v3, p1

    .line 302
    div-long v3, v1, v3

    :goto_3e
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , cached: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 299
    const-string v0, "PackageManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-boolean p0, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-eqz p0, :cond_61

    if-lez p1, :cond_61

    int-to-long p0, p1

    .line 306
    div-long/2addr v1, p0

    const/16 p0, 0xef

    const/16 p1, 0xe

    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_61
    return-void
.end method

.method public final logSystemAppsScanningTime(J)V
    .registers 7

    .line 211
    sget-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    .line 214
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->pruneSharedUsersLPw()V

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    .line 216
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Finished scanning system apps. Time: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms, packageCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , timePerPackage: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget p2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    if-nez p2, :cond_45

    const-wide/16 v0, 0x0

    goto :goto_49

    :cond_45
    iget-wide v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    int-to-long v2, p2

    div-long/2addr v0, v2

    :goto_49
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , cached: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    const-string p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-boolean p1, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-eqz p1, :cond_72

    iget p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    if-lez p1, :cond_72

    .line 224
    iget-wide v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    int-to-long p0, p1

    div-long/2addr v0, p0

    const/16 p0, 0xef

    const/16 p1, 0xf

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_72
    return-void
.end method

.method public final parallelScanDirTracedLI(Ljava/util/List;Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 7

    .line 427
    const-string/jumbo v0, "parallelScanDir"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 429
    :try_start_9
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->parallelInstallPackagesFromDirs(Ljava/util/List;Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 432
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 433
    throw p0
.end method

.method public final scanApexPackagesTraced(Lcom/android/internal/pm/parsing/PackageParser2;)Ljava/util/List;
    .registers 11

    .line 156
    const-string/jumbo v0, "scanApexPackages"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 159
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getAllApexInfos()[Landroid/apex/ApexInfo;

    move-result-object v4

    iget v5, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v6, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget-object v8, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->scanApexPackages([Landroid/apex/ApexInfo;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_20

    .line 162
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_20
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 163
    throw p0
.end method

.method public final scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    .registers 10

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scanDir ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 417
    :try_start_21
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesFromDir(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_2a

    .line 420
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2a
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 421
    throw p0
.end method

.method public final scanSystemDirs(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 14

    .line 358
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "framework"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 365
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ltz v0, :cond_45

    .line 366
    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ScanPartition;

    .line 367
    invoke-virtual {v1}, Landroid/content/pm/PackagePartitions$SystemPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2c

    move-object v3, p0

    move-object v8, p1

    move-object v9, p2

    goto :goto_3f

    .line 370
    :cond_2c
    invoke-virtual {v1}, Landroid/content/pm/PackagePartitions$SystemPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v5

    iget v6, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v7, v1, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v7, v3

    iget-object v10, v1, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    move-object v3, p0

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/InitAppsHelper;->collectScanParams(Ljava/util/List;Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    :goto_3f
    add-int/lit8 v0, v0, -0x1

    move-object p0, v3

    move-object p1, v8

    move-object p2, v9

    goto :goto_18

    :cond_45
    move-object v0, p0

    move-object v8, p1

    move-object v9, p2

    .line 374
    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget p0, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    const p1, 0x20001

    or-int/2addr p0, p1

    const/4 v7, 0x0

    move-object v1, v4

    move-object v5, v8

    move-object v6, v9

    move v4, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/InitAppsHelper;->collectScanParams(Ljava/util/List;Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    move-object v3, v0

    move-object v4, v1

    .line 378
    iget-object p0, v3, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_61
    if-ge p1, p0, :cond_99

    .line 379
    iget-object p2, v3, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/ScanPartition;

    .line 380
    invoke-virtual {p2}, Landroid/content/pm/PackagePartitions$SystemPartition;->getPrivAppFolder()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 381
    invoke-virtual {p2}, Landroid/content/pm/PackagePartitions$SystemPartition;->getPrivAppFolder()Ljava/io/File;

    move-result-object v5

    iget v6, v3, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v0, v3, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iget v1, p2, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v7, v0, v1

    iget-object v10, p2, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/InitAppsHelper;->collectScanParams(Ljava/util/List;Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    .line 386
    :cond_85
    invoke-virtual {p2}, Landroid/content/pm/PackagePartitions$SystemPartition;->getAppFolder()Ljava/io/File;

    move-result-object v5

    iget v6, v3, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v0, v3, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v1, p2, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v7, v0, v1

    iget-object v10, p2, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/InitAppsHelper;->collectScanParams(Ljava/util/List;Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_61

    .line 392
    :cond_99
    invoke-virtual {v3, v4, v8, v9}, Lcom/android/server/pm/InitAppsHelper;->parallelScanDirTracedLI(Ljava/util/List;Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 394
    iget-object p0, v3, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    const-string p1, "android"

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a9

    return-void

    .line 395
    :cond_a9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to load frameworks package; check log for warnings"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateStubSystemAppsList(Ljava/util/List;)V
    .registers 6

    .line 402
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_25

    .line 404
    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 405
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 406
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_25
    return-void
.end method
