.class public final Lcom/android/server/pm/MovePackageHelper;
.super Ljava/lang/Object;
.source "MovePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;
    }
.end annotation


# instance fields
.field final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static bridge synthetic -$$Nest$mlogAppMovedStorage(Lcom/android/server/pm/MovePackageHelper;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/MovePackageHelper;->logAppMovedStorage(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 74
    return-void
.end method

.method private getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "stats"    # Landroid/content/pm/PackageStats;

    .line 338
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 339
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 340
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 341
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find settings for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    monitor-exit v0

    return v2

    .line 344
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_76

    .line 346
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v2

    .line 347
    .local v5, "packageNames":[Ljava/lang/String;
    new-array v9, v0, [J

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v3

    aput-wide v3, v9, v2

    .line 348
    .local v9, "ceDataInodes":[J
    new-array v10, v0, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    .line 351
    .local v10, "codePaths":[Ljava/lang/String;
    :try_start_40
    iget-object v3, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    .line 352
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v8

    .line 351
    move v6, p2

    move-object v11, p3

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 355
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 356
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 357
    const-wide/16 v3, 0x0

    iput-wide v3, p3, Landroid/content/pm/PackageStats;->codeSize:J

    .line 361
    :cond_62
    iget-wide v3, p3, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v6, p3, Landroid/content/pm/PackageStats;->cacheSize:J

    sub-long/2addr v3, v6

    iput-wide v3, p3, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_69
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_40 .. :try_end_69} :catch_6b

    .line 366
    nop

    .line 368
    return v0

    .line 363
    :catch_6b
    move-exception v0

    .line 364
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v3, "PackageManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return v2

    .line 344
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "packageNames":[Ljava/lang/String;
    .end local v9    # "ceDataInodes":[J
    .end local v10    # "codePaths":[Ljava/lang/String;
    :catchall_76
    move-exception v1

    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v1
.end method

.method private logAppMovedStorage(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isPreviousLocationExternal"    # Z

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 308
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 309
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_55

    .line 310
    if-nez v1, :cond_13

    .line 311
    return-void

    .line 314
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 315
    .local v0, "storage":Landroid/os/storage/StorageManager;
    nop

    .line 316
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 317
    .local v2, "volume":Landroid/os/storage/VolumeInfo;
    nop

    .line 318
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v3

    .line 317
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageExternalStorageType(Landroid/os/storage/VolumeInfo;Z)I

    move-result v3

    .line 320
    .local v3, "packageExternalStorageType":I
    const/16 v4, 0xb7

    if-nez p2, :cond_48

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 322
    const/4 v5, 0x1

    invoke-static {v4, v3, v5, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    goto :goto_54

    .line 326
    :cond_48
    if-eqz p2, :cond_54

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v5

    if-nez v5, :cond_54

    .line 328
    const/4 v5, 0x2

    invoke-static {v4, v3, v5, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    .line 333
    :cond_54
    :goto_54
    return-void

    .line 309
    .end local v0    # "storage":Landroid/os/storage/StorageManager;
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "volume":Landroid/os/storage/VolumeInfo;
    .end local v3    # "packageExternalStorageType":I
    :catchall_55
    move-exception v1

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v1
.end method


# virtual methods
.method synthetic lambda$movePackageInternal$0$com-android-server-pm-MovePackageHelper(Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .registers 20
    .param p1, "installedLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "startFreeBytes"    # J
    .param p4, "measurePath"    # Ljava/io/File;
    .param p5, "sizeBytes"    # J
    .param p7, "moveId"    # I

    .line 269
    :goto_0
    const-wide/16 v0, 0x1

    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_4} :catch_10

    move-object v3, p1

    :try_start_5
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_9} :catch_e

    if-eqz v0, :cond_d

    .line 270
    nop

    .line 280
    return-void

    .line 273
    :cond_d
    goto :goto_12

    .line 272
    :catch_e
    move-exception v0

    goto :goto_12

    :catch_10
    move-exception v0

    move-object v3, p1

    .line 275
    :goto_12
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 276
    .local v0, "deltaFreeBytes":J
    const-wide/16 v4, 0x50

    mul-long/2addr v4, v0

    div-long v6, v4, p5

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x50

    invoke-static/range {v6 .. v11}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v4

    long-to-int v2, v4

    add-int/lit8 v2, v2, 0xa

    .line 278
    .local v2, "progress":I
    move-object v4, p0

    iget-object v5, v4, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    move/from16 v6, p7

    invoke-virtual {v5, v6, v2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 279
    .end local v0    # "deltaFreeBytes":J
    .end local v2    # "progress":I
    goto :goto_0
.end method

.method public movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .registers 63
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "moveId"    # I
    .param p4, "callingUid"    # I
    .param p5, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 79
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v11, p3

    iget-object v0, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/storage/StorageManager;

    .line 80
    .local v12, "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 82
    .local v10, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    .line 83
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v8, v15}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    .line 84
    .local v9, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v9, :cond_491

    .line 85
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_487

    .line 86
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move/from16 v7, p4

    invoke-interface {v8, v9, v7, v0}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_47d

    .line 89
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 90
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_474

    .line 95
    const-string/jumbo v0, "private"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .line 96
    .local v28, "isInternalStorage":Z
    iget-object v0, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    .line 98
    .local v29, "allow3rdPartyOnInternal":Z
    if-eqz v28, :cond_6a

    if-eqz v29, :cond_60

    goto :goto_6a

    .line 99
    :cond_60
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x9

    const-string v2, "3rd party apps are not allowed on internal storage"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 104
    :cond_6a
    :goto_6a
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVolumeUuid()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "currentVolumeUuid":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 107
    .local v2, "probe":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v30, v0

    .line 108
    .local v30, "probeOat":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_45c

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_45c

    .line 113
    invoke-static {v5, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43f

    .line 117
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 118
    invoke-virtual {v0, v8, v15}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a3

    goto :goto_ac

    .line 119
    :cond_a3
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x8

    const-string v3, "Device admin cannot be moved"

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 123
    :cond_ac
    :goto_ac
    invoke-interface {v8}, Lcom/android/server/pm/Computer;->getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_434

    .line 128
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v31

    .line 129
    .local v31, "isCurrentLocationExternal":Z
    new-instance v0, Ljava/io/File;

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v32, v0

    .line 130
    .local v32, "codeFile":Ljava/io/File;
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v33

    .line 131
    .local v33, "installSource":Lcom/android/server/pm/InstallSource;
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v34

    .line 132
    .local v34, "packageAbiOverride":Ljava/lang/String;
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v35

    .line 133
    .local v35, "appId":I
    invoke-static {v6, v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v36

    .line 134
    .local v36, "seinfo":Ljava/lang/String;
    nop

    .line 135
    invoke-static {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 134
    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "label":Ljava/lang/String;
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v37

    .line 137
    .local v37, "targetSdkVersion":I
    iget-object v0, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 138
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 137
    const/4 v3, 0x1

    invoke-static {v9, v0, v3}, Lcom/android/server/pm/pkg/PackageStateUtils;->queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[IZ)[I

    move-result-object v1

    .line 140
    .local v1, "installedUserIds":[I
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "~~"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 142
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v38, v0

    .local v0, "fromCodePath":Ljava/lang/String;
    goto :goto_119

    .line 144
    .end local v0    # "fromCodePath":Ljava/lang/String;
    :cond_113
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v38, v0

    .line 148
    .local v38, "fromCodePath":Ljava/lang/String;
    :goto_119
    iget-object v0, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    .line 149
    :try_start_11e
    iget-object v0, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;
    :try_end_120
    .catchall {:try_start_11e .. :try_end_120} :catchall_41b

    move-object/from16 v18, v2

    .end local v2    # "probe":Ljava/io/File;
    .local v18, "probe":Ljava/io/File;
    :try_start_122
    const-string/jumbo v2, "movePackageInternal"

    invoke-virtual {v0, v15, v2}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0
    :try_end_129
    .catchall {:try_start_122 .. :try_end_129} :catchall_405

    move-object v2, v3

    move-object/from16 v17, v5

    const/4 v5, 0x1

    .end local v5    # "currentVolumeUuid":Ljava/lang/String;
    .local v17, "currentVolumeUuid":Ljava/lang/String;
    move-object v3, v0

    .line 150
    .local v3, "freezer":Lcom/android/server/pm/PackageFreezer;
    :try_start_12e
    monitor-exit v2
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_3f0

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 153
    .local v2, "extras":Landroid/os/Bundle;
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v0, v11, v2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    .line 161
    const/16 v20, 0x10

    .line 162
    .local v20, "installFlags":I
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 163
    const/4 v0, 0x1

    .line 164
    .local v0, "moveCompleteApp":Z
    invoke-static/range {p2 .. p2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    move/from16 v39, v0

    move-object/from16 v56, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v56

    .local v19, "measurePath":Ljava/io/File;
    goto :goto_196

    .line 165
    .end local v0    # "moveCompleteApp":Z
    .end local v19    # "measurePath":Ljava/io/File;
    :cond_15e
    const-string/jumbo v0, "primary_physical"

    invoke-static {v0, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 166
    const/4 v0, 0x0

    .line 167
    .restart local v0    # "moveCompleteApp":Z
    invoke-virtual {v12}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v19

    move/from16 v39, v0

    move-object/from16 v56, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v56

    .restart local v19    # "measurePath":Ljava/io/File;
    goto :goto_196

    .line 169
    .end local v0    # "moveCompleteApp":Z
    .end local v19    # "measurePath":Ljava/io/File;
    :cond_179
    invoke-virtual {v12, v13}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 170
    .local v0, "volume":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_3cf

    move-object/from16 v19, v2

    .end local v2    # "extras":Landroid/os/Bundle;
    .local v19, "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-ne v2, v5, :cond_3b9

    .line 171
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v2

    if-eqz v2, :cond_3a3

    .line 177
    const/4 v2, 0x1

    .line 178
    .local v2, "moveCompleteApp":Z
    invoke-static/range {p2 .. p2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    move/from16 v39, v2

    move-object/from16 v2, v21

    .line 182
    .end local v0    # "volume":Landroid/os/storage/VolumeInfo;
    .local v2, "measurePath":Ljava/io/File;
    .local v39, "moveCompleteApp":Z
    :goto_196
    if-eqz v39, :cond_1eb

    .line 183
    array-length v0, v1

    const/4 v5, 0x0

    :goto_19a
    if-ge v5, v0, :cond_1e6

    move/from16 v23, v0

    aget v0, v1, v5

    .line 184
    .local v0, "userId":I
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v24

    if-eqz v24, :cond_1d9

    .line 185
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v24

    if-eqz v24, :cond_1b1

    move-object/from16 v24, v4

    move-object/from16 v25, v6

    goto :goto_1dd

    .line 186
    :cond_1b1
    invoke-virtual {v3}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 187
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    move-object/from16 v24, v4

    .end local v4    # "label":Ljava/lang/String;
    .local v24, "label":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v6

    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v25, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-string v6, "User "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " must be unlocked"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, -0xa

    invoke-direct {v5, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 184
    .end local v24    # "label":Ljava/lang/String;
    .end local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_1d9
    move-object/from16 v24, v4

    move-object/from16 v25, v6

    .line 183
    .end local v0    # "userId":I
    .end local v4    # "label":Ljava/lang/String;
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v24    # "label":Ljava/lang/String;
    .restart local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_1dd
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v23

    move-object/from16 v4, v24

    move-object/from16 v6, v25

    goto :goto_19a

    .end local v24    # "label":Ljava/lang/String;
    .end local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_1e6
    move-object/from16 v24, v4

    move-object/from16 v25, v6

    .end local v4    # "label":Ljava/lang/String;
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v24    # "label":Ljava/lang/String;
    .restart local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_1ef

    .line 182
    .end local v24    # "label":Ljava/lang/String;
    .end local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_1eb
    move-object/from16 v24, v4

    move-object/from16 v25, v6

    .line 193
    .end local v4    # "label":Ljava/lang/String;
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v24    # "label":Ljava/lang/String;
    .restart local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_1ef
    new-instance v0, Landroid/content/pm/PackageStats;

    const/4 v4, -0x1

    const/4 v6, 0x0

    invoke-direct {v0, v6, v4}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    move-object v5, v0

    .line 194
    .local v5, "stats":Landroid/content/pm/PackageStats;
    iget-object v0, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 195
    :try_start_1fc
    array-length v0, v1
    :try_end_1fd
    .catchall {:try_start_1fc .. :try_end_1fd} :catchall_385

    const/4 v6, 0x0

    :goto_1fe
    if-ge v6, v0, :cond_25b

    :try_start_200
    aget v26, v1, v6

    move/from16 v27, v26

    .line 196
    .local v27, "userId":I
    move/from16 v26, v0

    move/from16 v0, v27

    .end local v27    # "userId":I
    .restart local v0    # "userId":I
    invoke-direct {v14, v15, v0, v5}, Lcom/android/server/pm/MovePackageHelper;->getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    move-result v27

    if-eqz v27, :cond_213

    .line 195
    .end local v0    # "userId":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v26

    goto :goto_1fe

    .line 197
    .restart local v0    # "userId":I
    :cond_213
    invoke-virtual {v3}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 198
    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    move/from16 v26, v0

    .end local v0    # "userId":I
    .local v26, "userId":I
    const-string v0, "Failed to measure package size"
    :try_end_21c
    .catchall {:try_start_200 .. :try_end_21c} :catchall_23f

    move-object/from16 v27, v1

    const/4 v1, -0x6

    .end local v1    # "installedUserIds":[I
    .local v27, "installedUserIds":[I
    :try_start_21f
    invoke-direct {v6, v1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v2    # "measurePath":Ljava/io/File;
    .end local v3    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .end local v5    # "stats":Landroid/content/pm/PackageStats;
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .end local v17    # "currentVolumeUuid":Ljava/lang/String;
    .end local v18    # "probe":Ljava/io/File;
    .end local v19    # "extras":Landroid/os/Bundle;
    .end local v20    # "installFlags":I
    .end local v24    # "label":Ljava/lang/String;
    .end local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v27    # "installedUserIds":[I
    .end local v28    # "isInternalStorage":Z
    .end local v29    # "allow3rdPartyOnInternal":Z
    .end local v30    # "probeOat":Ljava/io/File;
    .end local v31    # "isCurrentLocationExternal":Z
    .end local v32    # "codeFile":Ljava/io/File;
    .end local v33    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v34    # "packageAbiOverride":Ljava/lang/String;
    .end local v35    # "appId":I
    .end local v36    # "seinfo":Ljava/lang/String;
    .end local v37    # "targetSdkVersion":I
    .end local v38    # "fromCodePath":Ljava/lang/String;
    .end local v39    # "moveCompleteApp":Z
    .end local p0    # "this":Lcom/android/server/pm/MovePackageHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "volumeUuid":Ljava/lang/String;
    .end local p3    # "moveId":I
    .end local p4    # "callingUid":I
    .end local p5    # "user":Landroid/os/UserHandle;
    throw v6
    :try_end_223
    .catchall {:try_start_21f .. :try_end_223} :catchall_223

    .line 202
    .end local v26    # "userId":I
    .restart local v2    # "measurePath":Ljava/io/File;
    .restart local v3    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local v5    # "stats":Landroid/content/pm/PackageStats;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v17    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v18    # "probe":Ljava/io/File;
    .restart local v19    # "extras":Landroid/os/Bundle;
    .restart local v20    # "installFlags":I
    .restart local v24    # "label":Ljava/lang/String;
    .restart local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v27    # "installedUserIds":[I
    .restart local v28    # "isInternalStorage":Z
    .restart local v29    # "allow3rdPartyOnInternal":Z
    .restart local v30    # "probeOat":Ljava/io/File;
    .restart local v31    # "isCurrentLocationExternal":Z
    .restart local v32    # "codeFile":Ljava/io/File;
    .restart local v33    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v34    # "packageAbiOverride":Ljava/lang/String;
    .restart local v35    # "appId":I
    .restart local v36    # "seinfo":Ljava/lang/String;
    .restart local v37    # "targetSdkVersion":I
    .restart local v38    # "fromCodePath":Ljava/lang/String;
    .restart local v39    # "moveCompleteApp":Z
    .restart local p0    # "this":Lcom/android/server/pm/MovePackageHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "volumeUuid":Ljava/lang/String;
    .restart local p3    # "moveId":I
    .restart local p4    # "callingUid":I
    .restart local p5    # "user":Landroid/os/UserHandle;
    :catchall_223
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v50, v5

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v2, v13

    move-object/from16 v49, v17

    move-object/from16 v46, v18

    move-object/from16 v47, v19

    move-object/from16 v44, v24

    move-object/from16 v51, v25

    move-object/from16 v45, v27

    goto/16 :goto_39f

    .end local v27    # "installedUserIds":[I
    .restart local v1    # "installedUserIds":[I
    :catchall_23f
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v48, v2

    move-object/from16 v50, v5

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v2, v13

    move-object/from16 v49, v17

    move-object/from16 v46, v18

    move-object/from16 v47, v19

    move-object/from16 v44, v24

    move-object/from16 v51, v25

    .end local v1    # "installedUserIds":[I
    .restart local v27    # "installedUserIds":[I
    goto/16 :goto_39f

    .end local v27    # "installedUserIds":[I
    .restart local v1    # "installedUserIds":[I
    :cond_25b
    move-object/from16 v27, v1

    .end local v1    # "installedUserIds":[I
    .restart local v27    # "installedUserIds":[I
    :try_start_25d
    monitor-exit v4
    :try_end_25e
    .catchall {:try_start_25d .. :try_end_25e} :catchall_36a

    .line 204
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_288

    .line 205
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Measured code size "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v5, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", data size "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v5, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_288
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v40

    .line 211
    .local v40, "startFreeBytes":J
    if-eqz v39, :cond_296

    .line 212
    iget-wide v0, v5, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v6, v5, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v6

    move-wide/from16 v42, v0

    .local v0, "sizeBytes":J
    goto :goto_29a

    .line 214
    .end local v0    # "sizeBytes":J
    :cond_296
    iget-wide v0, v5, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v42, v0

    .line 217
    .local v42, "sizeBytes":J
    :goto_29a
    invoke-virtual {v12, v2}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v0

    cmp-long v0, v42, v0

    if-gtz v0, :cond_35e

    .line 223
    iget-object v0, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    const/16 v1, 0xa

    invoke-virtual {v0, v11, v1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 225
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v44, v24

    .line 226
    .end local v24    # "label":Ljava/lang/String;
    .local v4, "installedLatch":Ljava/util/concurrent/CountDownLatch;
    .local v44, "label":Ljava/lang/String;
    new-instance v0, Lcom/android/server/pm/MovePackageHelper$1;

    move-object/from16 v45, v27

    .end local v27    # "installedUserIds":[I
    .local v45, "installedUserIds":[I
    move-object v1, v0

    move-object/from16 v48, v2

    move-object/from16 v46, v18

    move-object/from16 v47, v19

    .end local v2    # "measurePath":Ljava/io/File;
    .end local v18    # "probe":Ljava/io/File;
    .end local v19    # "extras":Landroid/os/Bundle;
    .local v46, "probe":Ljava/io/File;
    .local v47, "extras":Landroid/os/Bundle;
    .local v48, "measurePath":Ljava/io/File;
    move-object/from16 v2, p0

    move-object/from16 v50, v5

    move-object/from16 v49, v17

    .end local v5    # "stats":Landroid/content/pm/PackageStats;
    .end local v17    # "currentVolumeUuid":Ljava/lang/String;
    .local v49, "currentVolumeUuid":Ljava/lang/String;
    .local v50, "stats":Landroid/content/pm/PackageStats;
    move/from16 v5, p3

    move-object/from16 v51, v25

    const/16 v16, 0x0

    .end local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v51, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move-object/from16 v6, p1

    move/from16 v7, v31

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/MovePackageHelper$1;-><init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/PackageFreezer;Ljava/util/concurrent/CountDownLatch;ILjava/lang/String;Z)V

    move-object/from16 v19, v0

    .line 264
    .local v19, "installObserver":Landroid/content/pm/IPackageInstallObserver2;
    if-eqz v39, :cond_30e

    .line 266
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;

    move-object v5, v1

    move-object/from16 v6, p0

    move-object v7, v4

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v52, "snapshot":Lcom/android/server/pm/Computer;
    .local v53, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide/from16 v8, v40

    move-object/from16 v54, v10

    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .local v54, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v10, v48

    move-object/from16 v55, v12

    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .local v55, "storage":Landroid/os/storage/StorageManager;
    move-wide/from16 v11, v42

    move-object v2, v13

    move/from16 v13, p3

    invoke-direct/range {v5 .. v13}, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 280
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 282
    new-instance v0, Lcom/android/server/pm/MoveInfo;

    move-object v5, v0

    move/from16 v6, p3

    move-object/from16 v7, v49

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move/from16 v10, v35

    move-object/from16 v11, v36

    move/from16 v12, v37

    move-object/from16 v13, v38

    invoke-direct/range {v5 .. v13}, Lcom/android/server/pm/MoveInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .local v0, "move":Lcom/android/server/pm/MoveInfo;
    goto :goto_318

    .line 285
    .end local v0    # "move":Lcom/android/server/pm/MoveInfo;
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    :cond_30e
    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v2, v13

    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    const/4 v0, 0x0

    .line 288
    .restart local v0    # "move":Lcom/android/server/pm/MoveInfo;
    :goto_318
    or-int/lit8 v1, v20, 0x2

    .line 290
    .end local v20    # "installFlags":I
    .local v1, "installFlags":I
    invoke-static/range {v32 .. v32}, Lcom/android/server/pm/OriginInfo;->fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object v5

    .line 291
    .local v5, "origin":Lcom/android/server/pm/OriginInfo;
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v6

    .line 292
    .local v6, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    new-instance v7, Ljava/io/File;

    iget-object v8, v5, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 294
    .local v7, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_33d

    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/parsing/PackageLite;

    move-object/from16 v26, v8

    goto :goto_33f

    :cond_33d
    move-object/from16 v26, v16

    .line 295
    .local v26, "lite":Landroid/content/pm/parsing/PackageLite;
    :goto_33f
    new-instance v8, Lcom/android/server/pm/InstallParams;

    const/16 v25, 0x0

    iget-object v9, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v16, v8

    move-object/from16 v17, v5

    move-object/from16 v18, v0

    move/from16 v20, v1

    move-object/from16 v21, v33

    move-object/from16 v22, p2

    move-object/from16 v23, p5

    move-object/from16 v24, v34

    move-object/from16 v27, v9

    invoke-direct/range {v16 .. v27}, Lcom/android/server/pm/InstallParams;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V

    .line 298
    .local v8, "params":Lcom/android/server/pm/InstallParams;
    invoke-virtual {v8}, Lcom/android/server/pm/InstallParams;->movePackage()V

    .line 299
    return-void

    .line 218
    .end local v0    # "move":Lcom/android/server/pm/MoveInfo;
    .end local v1    # "installFlags":I
    .end local v4    # "installedLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v6    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v7    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    .end local v26    # "lite":Landroid/content/pm/parsing/PackageLite;
    .end local v44    # "label":Ljava/lang/String;
    .end local v45    # "installedUserIds":[I
    .end local v46    # "probe":Ljava/io/File;
    .end local v47    # "extras":Landroid/os/Bundle;
    .end local v48    # "measurePath":Ljava/io/File;
    .end local v49    # "currentVolumeUuid":Ljava/lang/String;
    .end local v50    # "stats":Landroid/content/pm/PackageStats;
    .end local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .restart local v2    # "measurePath":Ljava/io/File;
    .local v5, "stats":Landroid/content/pm/PackageStats;
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v17    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v18    # "probe":Ljava/io/File;
    .local v19, "extras":Landroid/os/Bundle;
    .restart local v20    # "installFlags":I
    .restart local v24    # "label":Ljava/lang/String;
    .restart local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v27    # "installedUserIds":[I
    :cond_35e
    invoke-virtual {v3}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 219
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Not enough free space to move"

    const/4 v4, -0x6

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 202
    .end local v40    # "startFreeBytes":J
    .end local v42    # "sizeBytes":J
    :catchall_36a
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v50, v5

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v2, v13

    move-object/from16 v49, v17

    move-object/from16 v46, v18

    move-object/from16 v47, v19

    move-object/from16 v44, v24

    move-object/from16 v51, v25

    move-object/from16 v45, v27

    .end local v2    # "measurePath":Ljava/io/File;
    .end local v5    # "stats":Landroid/content/pm/PackageStats;
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .end local v17    # "currentVolumeUuid":Ljava/lang/String;
    .end local v18    # "probe":Ljava/io/File;
    .end local v19    # "extras":Landroid/os/Bundle;
    .end local v24    # "label":Ljava/lang/String;
    .end local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v27    # "installedUserIds":[I
    .restart local v44    # "label":Ljava/lang/String;
    .restart local v45    # "installedUserIds":[I
    .restart local v46    # "probe":Ljava/io/File;
    .restart local v47    # "extras":Landroid/os/Bundle;
    .restart local v48    # "measurePath":Ljava/io/File;
    .restart local v49    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v50    # "stats":Landroid/content/pm/PackageStats;
    .restart local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    goto :goto_39f

    .end local v44    # "label":Ljava/lang/String;
    .end local v45    # "installedUserIds":[I
    .end local v46    # "probe":Ljava/io/File;
    .end local v47    # "extras":Landroid/os/Bundle;
    .end local v48    # "measurePath":Ljava/io/File;
    .end local v49    # "currentVolumeUuid":Ljava/lang/String;
    .end local v50    # "stats":Landroid/content/pm/PackageStats;
    .end local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .local v1, "installedUserIds":[I
    .restart local v2    # "measurePath":Ljava/io/File;
    .restart local v5    # "stats":Landroid/content/pm/PackageStats;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v17    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v18    # "probe":Ljava/io/File;
    .restart local v19    # "extras":Landroid/os/Bundle;
    .restart local v24    # "label":Ljava/lang/String;
    .restart local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_385
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v48, v2

    move-object/from16 v50, v5

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v2, v13

    move-object/from16 v49, v17

    move-object/from16 v46, v18

    move-object/from16 v47, v19

    move-object/from16 v44, v24

    move-object/from16 v51, v25

    .end local v1    # "installedUserIds":[I
    .end local v2    # "measurePath":Ljava/io/File;
    .end local v5    # "stats":Landroid/content/pm/PackageStats;
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .end local v17    # "currentVolumeUuid":Ljava/lang/String;
    .end local v18    # "probe":Ljava/io/File;
    .end local v19    # "extras":Landroid/os/Bundle;
    .end local v24    # "label":Ljava/lang/String;
    .end local v25    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v44    # "label":Ljava/lang/String;
    .restart local v45    # "installedUserIds":[I
    .restart local v46    # "probe":Ljava/io/File;
    .restart local v47    # "extras":Landroid/os/Bundle;
    .restart local v48    # "measurePath":Ljava/io/File;
    .restart local v49    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v50    # "stats":Landroid/content/pm/PackageStats;
    .restart local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    :goto_39f
    :try_start_39f
    monitor-exit v4
    :try_end_3a0
    .catchall {:try_start_39f .. :try_end_3a0} :catchall_3a1

    throw v0

    :catchall_3a1
    move-exception v0

    goto :goto_39f

    .line 171
    .end local v39    # "moveCompleteApp":Z
    .end local v44    # "label":Ljava/lang/String;
    .end local v45    # "installedUserIds":[I
    .end local v46    # "probe":Ljava/io/File;
    .end local v47    # "extras":Landroid/os/Bundle;
    .end local v48    # "measurePath":Ljava/io/File;
    .end local v49    # "currentVolumeUuid":Ljava/lang/String;
    .end local v50    # "stats":Landroid/content/pm/PackageStats;
    .end local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .local v0, "volume":Landroid/os/storage/VolumeInfo;
    .restart local v1    # "installedUserIds":[I
    .local v4, "label":Ljava/lang/String;
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v17    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v18    # "probe":Ljava/io/File;
    .restart local v19    # "extras":Landroid/os/Bundle;
    :cond_3a3
    move-object/from16 v45, v1

    move-object/from16 v44, v4

    move-object/from16 v51, v6

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v2, v13

    move-object/from16 v49, v17

    move-object/from16 v46, v18

    move-object/from16 v47, v19

    .end local v1    # "installedUserIds":[I
    .end local v4    # "label":Ljava/lang/String;
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .end local v17    # "currentVolumeUuid":Ljava/lang/String;
    .end local v18    # "probe":Ljava/io/File;
    .end local v19    # "extras":Landroid/os/Bundle;
    .restart local v44    # "label":Ljava/lang/String;
    .restart local v45    # "installedUserIds":[I
    .restart local v46    # "probe":Ljava/io/File;
    .restart local v47    # "extras":Landroid/os/Bundle;
    .restart local v49    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    goto :goto_3e4

    .line 170
    .end local v44    # "label":Ljava/lang/String;
    .end local v45    # "installedUserIds":[I
    .end local v46    # "probe":Ljava/io/File;
    .end local v47    # "extras":Landroid/os/Bundle;
    .end local v49    # "currentVolumeUuid":Ljava/lang/String;
    .end local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .restart local v1    # "installedUserIds":[I
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v17    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v18    # "probe":Ljava/io/File;
    .restart local v19    # "extras":Landroid/os/Bundle;
    :cond_3b9
    move-object/from16 v45, v1

    move-object/from16 v44, v4

    move-object/from16 v51, v6

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v2, v13

    move-object/from16 v49, v17

    move-object/from16 v46, v18

    move-object/from16 v47, v19

    .end local v1    # "installedUserIds":[I
    .end local v4    # "label":Ljava/lang/String;
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .end local v17    # "currentVolumeUuid":Ljava/lang/String;
    .end local v18    # "probe":Ljava/io/File;
    .end local v19    # "extras":Landroid/os/Bundle;
    .restart local v44    # "label":Ljava/lang/String;
    .restart local v45    # "installedUserIds":[I
    .restart local v46    # "probe":Ljava/io/File;
    .restart local v47    # "extras":Landroid/os/Bundle;
    .restart local v49    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    goto :goto_3e4

    .end local v44    # "label":Ljava/lang/String;
    .end local v45    # "installedUserIds":[I
    .end local v46    # "probe":Ljava/io/File;
    .end local v47    # "extras":Landroid/os/Bundle;
    .end local v49    # "currentVolumeUuid":Ljava/lang/String;
    .end local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .restart local v1    # "installedUserIds":[I
    .local v2, "extras":Landroid/os/Bundle;
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v17    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v18    # "probe":Ljava/io/File;
    :cond_3cf
    move-object/from16 v45, v1

    move-object/from16 v47, v2

    move-object/from16 v44, v4

    move-object/from16 v51, v6

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v2, v13

    move-object/from16 v49, v17

    move-object/from16 v46, v18

    .line 172
    .end local v1    # "installedUserIds":[I
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v4    # "label":Ljava/lang/String;
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .end local v17    # "currentVolumeUuid":Ljava/lang/String;
    .end local v18    # "probe":Ljava/io/File;
    .restart local v44    # "label":Ljava/lang/String;
    .restart local v45    # "installedUserIds":[I
    .restart local v46    # "probe":Ljava/io/File;
    .restart local v47    # "extras":Landroid/os/Bundle;
    .restart local v49    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    :goto_3e4
    invoke-virtual {v3}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 173
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Move location not mounted private volume"

    const/4 v5, -0x6

    invoke-direct {v1, v5, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 150
    .end local v0    # "volume":Landroid/os/storage/VolumeInfo;
    .end local v3    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .end local v20    # "installFlags":I
    .end local v44    # "label":Ljava/lang/String;
    .end local v45    # "installedUserIds":[I
    .end local v46    # "probe":Ljava/io/File;
    .end local v47    # "extras":Landroid/os/Bundle;
    .end local v49    # "currentVolumeUuid":Ljava/lang/String;
    .end local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .restart local v1    # "installedUserIds":[I
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v17    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v18    # "probe":Ljava/io/File;
    :catchall_3f0
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v44, v4

    move-object/from16 v51, v6

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v1, v13

    move-object/from16 v49, v17

    move-object/from16 v46, v18

    .end local v1    # "installedUserIds":[I
    .end local v4    # "label":Ljava/lang/String;
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .end local v17    # "currentVolumeUuid":Ljava/lang/String;
    .end local v18    # "probe":Ljava/io/File;
    .restart local v44    # "label":Ljava/lang/String;
    .restart local v45    # "installedUserIds":[I
    .restart local v46    # "probe":Ljava/io/File;
    .restart local v49    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    goto :goto_430

    .end local v44    # "label":Ljava/lang/String;
    .end local v45    # "installedUserIds":[I
    .end local v46    # "probe":Ljava/io/File;
    .end local v49    # "currentVolumeUuid":Ljava/lang/String;
    .end local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .restart local v1    # "installedUserIds":[I
    .restart local v4    # "label":Ljava/lang/String;
    .local v5, "currentVolumeUuid":Ljava/lang/String;
    .restart local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "probe":Ljava/io/File;
    :catchall_405
    move-exception v0

    move-object/from16 v45, v1

    move-object v2, v3

    move-object/from16 v44, v4

    move-object/from16 v49, v5

    move-object/from16 v51, v6

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v1, v13

    move-object/from16 v46, v18

    .end local v1    # "installedUserIds":[I
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "currentVolumeUuid":Ljava/lang/String;
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .end local v18    # "probe":Ljava/io/File;
    .restart local v44    # "label":Ljava/lang/String;
    .restart local v45    # "installedUserIds":[I
    .restart local v46    # "probe":Ljava/io/File;
    .restart local v49    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    goto :goto_430

    .end local v44    # "label":Ljava/lang/String;
    .end local v45    # "installedUserIds":[I
    .end local v46    # "probe":Ljava/io/File;
    .end local v49    # "currentVolumeUuid":Ljava/lang/String;
    .end local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .restart local v1    # "installedUserIds":[I
    .local v2, "probe":Ljava/io/File;
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v5    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    :catchall_41b
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v46, v2

    move-object v2, v3

    move-object/from16 v44, v4

    move-object/from16 v49, v5

    move-object/from16 v51, v6

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v1, v13

    .end local v1    # "installedUserIds":[I
    .end local v2    # "probe":Ljava/io/File;
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "currentVolumeUuid":Ljava/lang/String;
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v44    # "label":Ljava/lang/String;
    .restart local v45    # "installedUserIds":[I
    .restart local v46    # "probe":Ljava/io/File;
    .restart local v49    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    :goto_430
    :try_start_430
    monitor-exit v2
    :try_end_431
    .catchall {:try_start_430 .. :try_end_431} :catchall_432

    throw v0

    :catchall_432
    move-exception v0

    goto :goto_430

    .line 124
    .end local v31    # "isCurrentLocationExternal":Z
    .end local v32    # "codeFile":Ljava/io/File;
    .end local v33    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v34    # "packageAbiOverride":Ljava/lang/String;
    .end local v35    # "appId":I
    .end local v36    # "seinfo":Ljava/lang/String;
    .end local v37    # "targetSdkVersion":I
    .end local v38    # "fromCodePath":Ljava/lang/String;
    .end local v44    # "label":Ljava/lang/String;
    .end local v45    # "installedUserIds":[I
    .end local v46    # "probe":Ljava/io/File;
    .end local v49    # "currentVolumeUuid":Ljava/lang/String;
    .end local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .restart local v2    # "probe":Ljava/io/File;
    .restart local v5    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    :cond_434
    move-object/from16 v46, v2

    .end local v2    # "probe":Ljava/io/File;
    .restart local v46    # "probe":Ljava/io/File;
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x7

    const-string v3, "Failed to move already frozen package"

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 114
    .end local v46    # "probe":Ljava/io/File;
    .restart local v2    # "probe":Ljava/io/File;
    :cond_43f
    move-object/from16 v46, v2

    move-object v1, v13

    .end local v2    # "probe":Ljava/io/File;
    .restart local v46    # "probe":Ljava/io/File;
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package already moved to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x6

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 108
    .end local v46    # "probe":Ljava/io/File;
    .restart local v2    # "probe":Ljava/io/File;
    :cond_45c
    move-object/from16 v46, v2

    move-object/from16 v49, v5

    move-object/from16 v51, v6

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v1, v13

    const/4 v3, -0x6

    .line 109
    .end local v2    # "probe":Ljava/io/File;
    .end local v5    # "currentVolumeUuid":Ljava/lang/String;
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v46    # "probe":Ljava/io/File;
    .restart local v49    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Move only supported for modern cluster style installs"

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 91
    .end local v28    # "isInternalStorage":Z
    .end local v29    # "allow3rdPartyOnInternal":Z
    .end local v30    # "probeOat":Ljava/io/File;
    .end local v46    # "probe":Ljava/io/File;
    .end local v49    # "currentVolumeUuid":Ljava/lang/String;
    .end local v51    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .restart local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    :cond_474
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x3

    const-string v3, "Cannot move system application"

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 86
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_47d
    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v1, v13

    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    goto :goto_49a

    .line 85
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    :cond_487
    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v1, v13

    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    goto :goto_49a

    .line 84
    .end local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v54    # "pm":Landroid/content/pm/PackageManager;
    .end local v55    # "storage":Landroid/os/storage/StorageManager;
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "storage":Landroid/os/storage/StorageManager;
    :cond_491
    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v55, v12

    move-object v1, v13

    .line 87
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .restart local v52    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v53    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v54    # "pm":Landroid/content/pm/PackageManager;
    .restart local v55    # "storage":Landroid/os/storage/StorageManager;
    :goto_49a
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x2

    const-string v3, "Missing package"

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
