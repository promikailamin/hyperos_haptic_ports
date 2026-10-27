.class public Lcom/android/server/pm/OtaDexoptService;
.super Landroid/content/pm/IOtaDexopt$Stub;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
    }
.end annotation


# static fields
.field private static final BULK_DELETE_THRESHOLD:J = 0x40000000L

.field private static final DEBUG_DEXOPT:Z = true

.field private static final TAG:Ljava/lang/String; = "OTADexopt"


# instance fields
.field private availableSpaceAfterBulkDelete:J

.field private availableSpaceAfterDexopt:J

.field private availableSpaceBefore:J

.field private completeSize:I

.field private dexoptCommandCountExecuted:I

.field private dexoptCommandCountTotal:I

.field private importantPackageCount:I

.field private final mContext:Landroid/content/Context;

.field private mDexoptCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private final metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private otaDexoptTimeStart:J

.field private otherPackageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    .line 100
    invoke-direct {p0}, Landroid/content/pm/IOtaDexopt$Stub;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 103
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 104
    return-void
.end method

.method private declared-synchronized generatePackageDexopts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/util/List;
    .registers 13
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "compilationReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 283
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/pm/OtaDexoptService$1;

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/pm/OtaDexoptService$1;-><init>(Lcom/android/server/pm/OtaDexoptService;Landroid/content/Context;ZLjava/util/List;)V

    .line 351
    .local v1, "collectingInstaller":Lcom/android/server/pm/Installer;
    new-instance v2, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;)V

    .line 354
    .local v2, "optimizer":Lcom/android/server/pm/PackageDexOptimizer;
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 357
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v3

    .line 358
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-virtual {v3, v4}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v7

    new-instance v8, Lcom/android/server/pm/dex/DexoptOptions;

    .line 359
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v8, v3, p3, v4}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 354
    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 362
    monitor-exit p0

    return-object v0

    .line 282
    .end local v0    # "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "collectingInstaller":Lcom/android/server/pm/Installer;
    .end local v2    # "optimizer":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p3    # "compilationReason":I
    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getAvailableSpace()J
    .registers 8

    .line 269
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getMainLowSpaceThreshold()J

    move-result-wide v0

    .line 271
    .local v0, "lowThreshold":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 272
    .local v2, "dataDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    .line 274
    .local v3, "usableSpace":J
    sub-long v5, v3, v0

    return-wide v5
.end method

.method private getMainLowSpaceThreshold()J
    .registers 6

    .line 253
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 255
    .local v0, "dataDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v1

    .line 256
    .local v1, "lowThreshold":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_15

    .line 259
    return-wide v1

    .line 257
    :cond_15
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid low memory threshold"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static inMegabytes(J)I
    .registers 6
    .param p0, "value"    # J

    .line 454
    const-wide/32 v0, 0x100000

    div-long v0, p0, v0

    .line 455
    .local v0, "in_mega_bytes":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB of free space, overflowing range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OTADexopt"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const v2, 0x7fffffff

    return v2

    .line 459
    :cond_2e
    long-to-int v2, v0

    return v2
.end method

.method static synthetic lambda$prepare$0(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 3
    .param p0, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 132
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$prepare$1(Lcom/android/server/pm/pkg/PackageStateInternal;)J
    .registers 3
    .param p0, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 180
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 180
    return-wide v0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    .line 108
    new-instance v0, Lcom/android/server/pm/OtaDexoptService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/OtaDexoptService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 109
    .local v0, "ota":Lcom/android/server/pm/OtaDexoptService;
    const-string/jumbo v1, "otadexopt"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 112
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-direct {v0, v1}, Lcom/android/server/pm/OtaDexoptService;->moveAbArtifacts(Lcom/android/server/pm/Installer;)V

    .line 114
    return-object v0
.end method

.method private moveAbArtifacts(Lcom/android/server/pm/Installer;)V
    .registers 21
    .param p1, "installer"    # Lcom/android/server/pm/Installer;

    .line 371
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-nez v0, :cond_15b

    .line 375
    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    const-string v2, "OTADexopt"

    if-nez v0, :cond_16

    .line 376
    const-string v0, "No upgrade, skipping A/B artifacts check."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 381
    :cond_16
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 382
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v3

    .line 383
    .local v3, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v0, 0x0

    .line 384
    .local v0, "packagePaths":I
    const/4 v4, 0x0

    .line 385
    .local v4, "pathsSuccessful":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_25
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_138

    .line 386
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 387
    .local v6, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 388
    .local v7, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v7, :cond_3d

    .line 389
    move-object/from16 v6, p1

    move-object/from16 v16, v3

    goto/16 :goto_130

    .line 393
    :cond_3d
    iget-object v8, v1, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v8

    if-nez v8, :cond_4d

    .line 394
    move-object/from16 v6, p1

    move-object/from16 v16, v3

    goto/16 :goto_130

    .line 396
    :cond_4d
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_75

    .line 397
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " can be optimized but has null codePath"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    move-object/from16 v6, p1

    move-object/from16 v16, v3

    goto/16 :goto_130

    .line 403
    :cond_75
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/system"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12a

    .line 404
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/vendor"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_123

    .line 405
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/product"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11c

    .line 406
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/system_ext"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 407
    move-object/from16 v6, p1

    move-object/from16 v16, v3

    goto/16 :goto_130

    .line 410
    :cond_ab
    nop

    .line 411
    invoke-static {v7, v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v8

    .line 412
    invoke-static {v7, v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v9

    .line 410
    invoke-static {v8, v9}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 413
    .local v8, "instructionSets":[Ljava/lang/String;
    nop

    .line 414
    invoke-static {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePathsExcludingResourceOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v9

    .line 415
    .local v9, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v8}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 416
    .local v10, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 417
    .local v11, "packageName":Ljava/lang/String;
    array-length v12, v10

    const/4 v13, 0x0

    :goto_c7
    if-ge v13, v12, :cond_115

    aget-object v14, v10, v13

    .line 418
    .local v14, "dexCodeInstructionSet":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_cf
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_108

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    .line 419
    .local v1, "path":Ljava/lang/String;
    move-object/from16 v16, v3

    .end local v3    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v16, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v3, Ljava/io/File;

    .line 420
    move-object/from16 v17, v6

    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v17, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-static {v3}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 420
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "oatDir":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    .line 426
    .end local v0    # "packagePaths":I
    .local v6, "packagePaths":I
    move/from16 v18, v6

    move-object/from16 v6, p1

    .end local v6    # "packagePaths":I
    .local v18, "packagePaths":I
    :try_start_f8
    invoke-virtual {v6, v11, v1, v14, v3}, Lcom/android/server/pm/Installer;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_f8 .. :try_end_fb} :catch_fe

    .line 427
    add-int/lit8 v4, v4, 0x1

    .line 429
    goto :goto_ff

    .line 428
    :catch_fe
    move-exception v0

    .line 430
    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "oatDir":Ljava/lang/String;
    :goto_ff
    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move/from16 v0, v18

    goto :goto_cf

    .line 418
    .end local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v18    # "packagePaths":I
    .restart local v0    # "packagePaths":I
    .local v3, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v6, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_108
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    .line 417
    .end local v3    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v14    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, v17

    goto :goto_c7

    .end local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v3    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_115
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    .end local v3    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_130

    .line 405
    .end local v8    # "instructionSets":[Ljava/lang/String;
    .end local v9    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v3    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_11c
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    .end local v3    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_130

    .line 404
    .end local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v3    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_123
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    .end local v3    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_130

    .line 403
    .end local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v3    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_12a
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    .line 385
    .end local v3    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_130
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v16

    goto/16 :goto_25

    .end local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v3    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_138
    move-object/from16 v16, v3

    .line 433
    .end local v3    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v5    # "index":I
    .restart local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 372
    .end local v0    # "packagePaths":I
    .end local v4    # "pathsSuccessful":I
    .end local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_15b
    move-object/from16 v6, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be ota-dexopting when trying to move."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performMetricsLogging()V
    .registers 6

    .line 463
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 465
    .local v0, "finalTime":J
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 466
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    .line 465
    const-string/jumbo v4, "ota_dexopt_available_space_before_mb"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 467
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 468
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    .line 467
    const-string/jumbo v4, "ota_dexopt_available_space_after_bulk_delete_mb"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 469
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 470
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    .line 469
    const-string/jumbo v4, "ota_dexopt_available_space_after_dexopt_mb"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 472
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    const-string/jumbo v4, "ota_dexopt_num_important_packages"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 473
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    const-string/jumbo v4, "ota_dexopt_num_other_packages"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 475
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    const-string/jumbo v4, "ota_dexopt_num_commands"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 476
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    const-string/jumbo v4, "ota_dexopt_num_commands_executed"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 478
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    sub-long v3, v0, v3

    .line 479
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v2, v2

    .line 480
    .local v2, "elapsedTimeSeconds":I
    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v4, "ota_dexopt_time_s"

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 481
    return-void
.end method

.method private prepareMetricsLogging(IIJJ)V
    .registers 9
    .param p1, "important"    # I
    .param p2, "others"    # I
    .param p3, "spaceBegin"    # J
    .param p5, "spaceBulk"    # J

    .line 440
    iput-wide p3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 441
    iput-wide p5, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 442
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 444
    iput p1, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    .line 445
    iput p2, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    .line 447
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 450
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    .line 451
    return-void
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 198
    :try_start_1
    const-string v0, "OTADexopt"

    const-string v1, "Cleaning up OTA Dexopt state."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 201
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 203
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->performMetricsLogging()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 204
    monitor-exit p0

    return-void

    .line 197
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dexoptNextPackage()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 367
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    .line 367
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 218
    :try_start_1
    iget v0, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v0, :cond_9

    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    monitor-exit p0

    return v0

    .line 221
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 222
    .local v0, "commandsLeft":I
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_18

    sub-int v2, v1, v0

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    monitor-exit p0

    return v2

    .line 217
    .end local v0    # "commandsLeft":I
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 208
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 212
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    monitor-exit p0

    return v0

    .line 209
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "done() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    .line 207
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextDexoptCommand()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-eqz v0, :cond_71

    .line 231
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 232
    const-string v0, "(all done)"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_79

    monitor-exit p0

    return-object v0

    .line 235
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, "next":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_42

    .line 238
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 240
    const-string v1, "OTADexopt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_79

    .line 241
    monitor-exit p0

    return-object v0

    .line 244
    :cond_42
    :try_start_42
    const-string v1, "OTADexopt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space for OTA dexopt, stopping with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 245
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " commands left."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 248
    const-string v1, "(no free space)"
    :try_end_6f
    .catchall {:try_start_42 .. :try_end_6f} :catchall_79

    monitor-exit p0

    return-object v1

    .line 228
    .end local v0    # "next":Ljava/lang/String;
    :cond_71
    :try_start_71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dexoptNextPackage() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_79
    .catchall {:try_start_71 .. :try_end_79} :catchall_79

    .line 226
    :catchall_79
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 120
    new-instance v0, Lcom/android/server/pm/OtaDexoptShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/pm/OtaDexoptShellCommand;-><init>(Lcom/android/server/pm/OtaDexoptService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/OtaDexoptShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 122
    return-void
.end method

.method public declared-synchronized prepare()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    monitor-enter p0

    .line 126
    :try_start_3
    iget-object v0, v8, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-nez v0, :cond_17c

    .line 131
    new-instance v0, Lcom/android/server/pm/OtaDexoptService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/OtaDexoptService$$ExternalSyntheticLambda0;-><init>()V

    move-object v9, v0

    .line 134
    .local v9, "isPlatformPackage":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    iget-object v0, v8, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    move-object v10, v0

    .line 135
    .local v10, "snapshot":Lcom/android/server/pm/Computer;
    nop

    .line 136
    invoke-interface {v10}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    move-object v11, v0

    .line 137
    .local v11, "allPackageStates":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    iget-object v0, v8, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x1

    invoke-static {v11, v0, v1}, Lcom/android/server/pm/DexOptHelper;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    .line 140
    .local v12, "important":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {v12, v9}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v13, v0

    .line 143
    .local v13, "others":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {v13, v12}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 144
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    invoke-interface {v13, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 145
    invoke-interface {v13, v9}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v8, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 150
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 151
    .local v1, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v2, v8, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v8, v3, v1, v4}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    nop

    .end local v1    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_4d

    .line 154
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :cond_6a
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 156
    .restart local v1    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCoreApp()Z

    move-result v2

    if-nez v2, :cond_94

    .line 159
    iget-object v2, v8, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v8, v3, v1, v4}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    nop

    .end local v1    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_6e

    .line 157
    .restart local v1    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Found a core app that\'s not important"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    .end local v1    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_9c
    iget-object v0, v8, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v8, Lcom/android/server/pm/OtaDexoptService;->completeSize:I

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v0

    move-wide v14, v0

    .line 165
    .local v14, "spaceAvailable":J
    const-wide/32 v0, 0x40000000

    cmp-long v0, v14, v0

    if-gez v0, :cond_e7

    .line 166
    const-string v0, "OTADexopt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Low on space, deleting oat files in an attempt to free up space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    invoke-static {v13}, Lcom/android/server/pm/DexOptHelper;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 169
    .local v1, "pkg":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v2, v8, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    .line 170
    nop

    .end local v1    # "pkg":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_d0

    .line 172
    :cond_e7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v6

    .line 174
    .local v6, "spaceAvailableNow":J
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v1, p0

    move-wide v4, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/OtaDexoptService;->prepareMetricsLogging(IIJJ)V
    :try_end_f9
    .catchall {:try_start_3 .. :try_end_f9} :catchall_184

    .line 179
    :try_start_f9
    new-instance v0, Lcom/android/server/pm/OtaDexoptService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/OtaDexoptService$$ExternalSyntheticLambda1;-><init>()V

    .line 180
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 179
    invoke-static {v12, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 182
    .local v0, "lastUsed":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-string v1, "OTADexopt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A/B OTA: lastUsed time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 183
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v1, "OTADexopt"

    const-string v2, "A/B OTA: deprioritized packages:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_133
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_176

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 186
    .local v2, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-string v3, "OTADexopt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 187
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v5

    .line 188
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "lastUsed":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v16, "lastUsed":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_171} :catch_179
    .catchall {:try_start_f9 .. :try_end_171} :catchall_184

    .line 189
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    .end local v2    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_133

    .line 185
    .end local v16    # "lastUsed":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v0    # "lastUsed":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_176
    move-object/from16 v16, v0

    .line 191
    .end local v0    # "lastUsed":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_17a

    .line 190
    :catch_179
    move-exception v0

    .line 193
    :goto_17a
    monitor-exit p0

    return-void

    .line 127
    .end local v6    # "spaceAvailableNow":J
    .end local v9    # "isPlatformPackage":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v10    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v11    # "allPackageStates":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v12    # "important":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v13    # "others":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v14    # "spaceAvailable":J
    :cond_17c
    :try_start_17c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already called prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_184
    .catchall {:try_start_17c .. :try_end_184} :catchall_184

    .line 125
    :catchall_184
    move-exception v0

    monitor-exit p0

    throw v0
.end method
