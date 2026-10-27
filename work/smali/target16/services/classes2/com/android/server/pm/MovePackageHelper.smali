.class public final Lcom/android/server/pm/MovePackageHelper;
.super Ljava/lang/Object;
.source "MovePackageHelper.java"


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$hO6Xq9gpW5zc9gxy7Z4mO-vs088(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/MovePackageHelper;->lambda$movePackageInternal$0(Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogAppMovedStorage(Lcom/android/server/pm/MovePackageHelper;Ljava/lang/String;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/MovePackageHelper;->logAppMovedStorage(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z
    .registers 16

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 361
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    const/4 v1, 0x0

    .line 362
    const-string v2, "PackageManager"

    if-nez v0, :cond_24

    .line 363
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to find settings for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 367
    :cond_24
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v3

    const/4 p1, 0x1

    new-array v9, p1, [J

    aput-wide v3, v9, v1

    .line 370
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPathString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v10

    .line 373
    :try_start_3d
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    const/4 v7, 0x0

    move v6, p2

    move-object v11, p3

    .line 373
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 377
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    if-eqz p0, :cond_63

    .line 378
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUpdatedSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    if-nez p0, :cond_63

    const-wide/16 p2, 0x0

    .line 379
    iput-wide p2, v11, Landroid/content/pm/PackageStats;->codeSize:J

    goto :goto_63

    :catch_60
    move-exception v0

    move-object p0, v0

    goto :goto_6b

    .line 383
    :cond_63
    :goto_63
    iget-wide p2, v11, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, v11, Landroid/content/pm/PackageStats;->cacheSize:J

    sub-long/2addr p2, v3

    iput-wide p2, v11, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_6a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3d .. :try_end_6a} :catch_60

    return p1

    .line 386
    :goto_6b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final synthetic lambda$movePackageInternal$0(Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .registers 16

    .line 292
    :goto_0
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_b

    if-eqz v0, :cond_b

    return-void

    .line 298
    :catch_b
    :cond_b
    invoke-virtual {p4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    .line 299
    div-long v2, v0, p5

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x50

    invoke-static/range {v2 .. v7}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0xa

    .line 301
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v1, p7, v0}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    goto :goto_0
.end method

.method public final logAppMovedStorage(Ljava/lang/String;Z)V
    .registers 6

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 331
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_4c

    .line 336
    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 338
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    .line 340
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v1

    .line 339
    invoke-static {p0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageExternalStorageType(Landroid/os/storage/VolumeInfo;Z)I

    move-result p0

    const/16 v1, 0xb7

    if-nez p2, :cond_40

    .line 342
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 p2, 0x1

    .line 344
    invoke-static {v1, p0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    return-void

    :cond_40
    if-eqz p2, :cond_4c

    .line 348
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result p2

    if-nez p2, :cond_4c

    const/4 p2, 0x2

    .line 350
    invoke-static {v1, p0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move/from16 v8, p3

    move/from16 v0, p4

    .line 83
    iget-object v2, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/os/storage/StorageManager;

    .line 84
    iget-object v2, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 86
    iget-object v4, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    .line 88
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 87
    invoke-interface {v4, v3, v0, v5}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    const/4 v6, -0x2

    if-eqz v5, :cond_321

    .line 89
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    if-eqz v7, :cond_321

    .line 92
    iget-object v7, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 93
    invoke-virtual {v7}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v7

    const/4 v11, 0x1

    .line 92
    invoke-static {v5, v7, v11}, Lcom/android/server/pm/pkg/PackageStateUtils;->queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[IZ)[I

    move-result-object v12

    .line 95
    array-length v7, v12

    if-lez v7, :cond_319

    const/4 v13, 0x0

    .line 96
    aget v7, v12, v13

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    .line 101
    array-length v7, v12

    move v15, v13

    :goto_4f
    if-ge v15, v7, :cond_65

    aget v13, v12, v15

    .line 102
    invoke-interface {v4, v5, v0, v13}, Lcom/android/server/pm/Computer;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v13

    if-nez v13, :cond_5d

    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x0

    goto :goto_4f

    .line 104
    :cond_5d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Missing package"

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 107
    :cond_65
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    .line 108
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v6

    if-nez v6, :cond_310

    .line 113
    const-string/jumbo v6, "private"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 114
    iget-object v7, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v13, 0x1110017

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v6, :cond_94

    if-eqz v7, :cond_8a

    goto :goto_94

    .line 117
    :cond_8a
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x9

    const-string v2, "3rd party apps are not allowed on internal storage"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 121
    :cond_94
    :goto_94
    new-instance v6, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    const/4 v13, -0x6

    if-eqz v6, :cond_307

    .line 127
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v15

    .line 128
    invoke-static {v15, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2ee

    .line 132
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v6

    if-nez v6, :cond_c6

    iget-object v6, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 133
    invoke-virtual {v6, v4, v3}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_bd

    goto :goto_c6

    .line 134
    :cond_bd
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x8

    const-string v2, "Device admin cannot be moved"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 138
    :cond_c6
    :goto_c6
    invoke-interface {v4}, Lcom/android/server/pm/Computer;->getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e5

    .line 143
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v16

    .line 144
    new-instance v4, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v17

    .line 146
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v18

    .line 147
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v19

    .line 148
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    move-result-object v20

    .line 150
    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 149
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v21

    .line 153
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "~~"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 155
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_11a
    move-object/from16 v22, v0

    goto :goto_122

    .line 157
    :cond_11d
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_11a

    .line 161
    :goto_122
    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    move-object v0, v2

    .line 162
    :try_start_12b
    iget-object v2, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;
    :try_end_12d
    .catchall {:try_start_12b .. :try_end_12d} :catchall_2dd

    move-object v6, v5

    :try_start_12e
    const-string/jumbo v5, "movePackageInternal"
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_2d9

    move-object v7, v6

    const/16 v6, 0xa

    move-object/from16 v23, v7

    const/4 v7, 0x0

    move-object/from16 v24, v4

    const/4 v4, -0x1

    :try_start_13a
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v2

    .line 165
    monitor-exit v23
    :try_end_13f
    .catchall {:try_start_13a .. :try_end_13f} :catchall_2d7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 167
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v0, v8, v4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    .line 177
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 179
    invoke-static {v9}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_164
    move-object v7, v0

    move/from16 v23, v11

    goto :goto_194

    .line 180
    :cond_168
    const-string/jumbo v0, "primary_physical"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 182
    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    move-object v7, v0

    const/16 v23, 0x0

    goto :goto_194

    .line 184
    :cond_17d
    invoke-virtual {v10, v9}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_2cb

    .line 185
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-ne v4, v11, :cond_2cb

    .line 186
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v0

    if-eqz v0, :cond_2cb

    .line 193
    invoke-static {v9}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_164

    :goto_194
    if-eqz v23, :cond_1cd

    .line 198
    array-length v0, v12

    const/4 v4, 0x0

    :goto_198
    if-ge v4, v0, :cond_1cd

    aget v5, v12, v4

    .line 199
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v6

    if-eqz v6, :cond_1ca

    .line 200
    invoke-static {v5}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v6

    if-eqz v6, :cond_1a9

    goto :goto_1ca

    .line 201
    :cond_1a9
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 202
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be unlocked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0xa

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1ca
    :goto_1ca
    add-int/lit8 v4, v4, 0x1

    goto :goto_198

    .line 208
    :cond_1cd
    new-instance v0, Landroid/content/pm/PackageStats;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v0, v5, v4}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 209
    iget-object v4, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v4

    .line 210
    :try_start_1dc
    array-length v6, v12

    const/4 v5, 0x0

    :goto_1de
    if-ge v5, v6, :cond_1fb

    aget v11, v12, v5

    .line 211
    invoke-virtual {v1, v3, v11, v0}, Lcom/android/server/pm/MovePackageHelper;->getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    move-result v11

    if-eqz v11, :cond_1ec

    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x1

    goto :goto_1de

    .line 212
    :cond_1ec
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 213
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Failed to measure package size"

    invoke-direct {v0, v13, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1f7
    .catchall {:try_start_1dc .. :try_end_1f7} :catchall_1f7

    :catchall_1f7
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2c0

    :cond_1fb
    if-eqz v4, :cond_200

    .line 217
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 224
    :cond_200
    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v25

    if-eqz v23, :cond_20e

    .line 227
    iget-wide v4, v0, Landroid/content/pm/PackageStats;->codeSize:J

    move-object v11, v14

    iget-wide v13, v0, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v4, v13

    :goto_20c
    move-wide v13, v4

    goto :goto_212

    :cond_20e
    move-object v11, v14

    .line 229
    iget-wide v4, v0, Landroid/content/pm/PackageStats;->codeSize:J

    goto :goto_20c

    .line 232
    :goto_212
    invoke-virtual {v10, v7}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v0, v13, v4

    if-gtz v0, :cond_2b4

    .line 239
    :try_start_21a
    invoke-virtual {v1, v15, v9, v12}, Lcom/android/server/pm/MovePackageHelper;->prepareUserStorageForMove(Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_21d
    .catch Ljava/lang/RuntimeException; {:try_start_21a .. :try_end_21d} :catch_2a8

    .line 246
    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    const/16 v4, 0xa

    invoke-virtual {v0, v8, v4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 248
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 249
    new-instance v0, Lcom/android/server/pm/MovePackageHelper$1;

    move-object/from16 v5, p1

    move v4, v8

    move/from16 v6, v16

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/MovePackageHelper$1;-><init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/PackageFreezer;Ljava/util/concurrent/CountDownLatch;ILjava/lang/String;Z)V

    move-object v12, v0

    move-object v2, v3

    if-eqz v23, :cond_268

    .line 289
    new-instance v0, Ljava/lang/Thread;

    move-object v1, v0

    new-instance v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;

    move/from16 v8, p3

    move-object v5, v7

    move-wide v6, v13

    move-wide/from16 v3, v25

    move-object v13, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V

    move-object v14, v1

    invoke-direct {v13, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 303
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 305
    new-instance v0, Lcom/android/server/pm/MoveInfo;

    move-object/from16 v4, p1

    move/from16 v1, p3

    move-object v3, v9

    move-object v2, v15

    move/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/MoveInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    move-object v2, v0

    goto :goto_26b

    :cond_268
    move-object/from16 v14, p0

    move-object v2, v10

    .line 313
    :goto_26b
    invoke-static/range {v24 .. v24}, Lcom/android/server/pm/OriginInfo;->fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object v1

    .line 314
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 315
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_28d

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/parsing/PackageLite;

    goto :goto_28e

    :cond_28d
    move-object v5, v10

    .line 318
    :goto_28e
    new-instance v0, Lcom/android/server/pm/InstallingSession;

    const/4 v10, 0x0

    iget-object v3, v14, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/16 v4, 0x12

    move-object v8, v11

    move-object v11, v5

    const/4 v5, 0x0

    move-object v6, v12

    move-object v12, v3

    move-object v3, v6

    move-object/from16 v7, p2

    move-object/from16 v6, v17

    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v12}, Lcom/android/server/pm/InstallingSession;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;IILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V

    .line 322
    invoke-virtual {v0}, Lcom/android/server/pm/InstallingSession;->movePackage()V

    return-void

    .line 241
    :catch_2a8
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 242
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Failed to prepare user storage while moving app"

    const/4 v6, -0x6

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2b4
    const/4 v6, -0x6

    .line 233
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 234
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Not enough free space to move"

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_2c0
    if-eqz v4, :cond_2ca

    .line 209
    :try_start_2c2
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2c5
    .catchall {:try_start_2c2 .. :try_end_2c5} :catchall_2c6

    goto :goto_2ca

    :catchall_2c6
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2ca
    :goto_2ca
    throw v1

    .line 187
    :cond_2cb
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 188
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Move location not mounted private volume"

    const/4 v6, -0x6

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_2d7
    move-exception v0

    goto :goto_2e0

    :catchall_2d9
    move-exception v0

    move-object/from16 v23, v6

    goto :goto_2e0

    :catchall_2dd
    move-exception v0

    move-object/from16 v23, v5

    .line 165
    :goto_2e0
    :try_start_2e0
    monitor-exit v23
    :try_end_2e1
    .catchall {:try_start_2e0 .. :try_end_2e1} :catchall_2d7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 139
    :cond_2e5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x7

    const-string v2, "Failed to move already frozen package"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2ee
    move-object v3, v9

    .line 129
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package already moved to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, -0x6

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_307
    move v6, v13

    .line 123
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Move only supported for modern cluster style installs"

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 109
    :cond_310
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x3

    const-string v2, "Cannot move system application"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 98
    :cond_319
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Package is not installed for any user"

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 90
    :cond_321
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Missing package"

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final prepareUserStorageForMove(Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 10

    .line 399
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/android/server/StorageManagerInternal;

    .line 400
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerInternal;

    .line 401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    array-length v2, p3

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_25

    aget v4, p3, v3

    .line 403
    iget-object v5, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 404
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 406
    :cond_25
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/StorageManagerInternal;->prepareUserStorageForMove(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
