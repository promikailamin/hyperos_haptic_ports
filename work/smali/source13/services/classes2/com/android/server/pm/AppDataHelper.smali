.class final Lcom/android/server/pm/AppDataHelper;
.super Ljava/lang/Object;
.source "AppDataHelper.java"


# static fields
.field private static final DEBUG_APP_DATA:Z = false


# instance fields
.field private final mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

.field private final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 4
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 75
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 76
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 77
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 78
    return-void
.end method

.method private assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 474
    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 475
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-string v1, "Package "

    if-eqz v0, :cond_9b

    .line 477
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 481
    invoke-interface {v0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 484
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 485
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_4a

    .line 486
    :cond_2d
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " shouldn\'t have storage"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 489
    :cond_4a
    :goto_4a
    return-void

    .line 482
    :cond_4b
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not installed for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 478
    :cond_6c
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " found on unknown volume "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; expected volume "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 480
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 476
    :cond_9b
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is unknown"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private clearAppDataLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 16
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 560
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 561
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 562
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_5f

    .line 563
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_5e

    aget v11, v0, v3

    .line 565
    .local v11, "realUserId":I
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    if-eqz v4, :cond_37

    .line 566
    and-int/lit8 v4, p3, 0x10

    if-nez v4, :cond_37

    and-int/lit8 v4, p3, 0x20

    if-nez v4, :cond_37

    .line 568
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 569
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 568
    invoke-virtual {v4, v5, v11}, Lcom/android/server/pm/PackageInstallerService;->removeSpeedInstallExternalFilePathForPackage(Ljava/lang/String;I)V

    .line 573
    :cond_37
    if-eqz v1, :cond_3e

    invoke-virtual {v1, v11}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v4

    goto :goto_40

    :cond_3e
    const-wide/16 v4, 0x0

    :goto_40
    move-wide v9, v4

    .line 575
    .local v9, "ceDataInode":J
    :try_start_41
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move v7, v11

    move v8, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/Installer;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_50
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_41 .. :try_end_50} :catch_51

    .line 579
    goto :goto_5b

    .line 577
    :catch_51
    move-exception v4

    .line 578
    .local v4, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v5, "PackageManager"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    .end local v4    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v9    # "ceDataInode":J
    .end local v11    # "realUserId":I
    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 581
    :cond_5e
    return-void

    .line 562
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method private destroyAppProfilesLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->destroyAppProfiles(Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_9} :catch_a

    .line 633
    goto :goto_14

    .line 631
    :catch_a
    move-exception v0

    .line 632
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_14
    return-void
.end method

.method private executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V
    .registers 5
    .param p1, "batch"    # Lcom/android/server/pm/Installer$Batch;

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_5} :catch_6

    .line 151
    goto :goto_e

    .line 149
    :catch_6
    move-exception v0

    .line 150
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v1, "PackageManager"

    const-string v2, "Failed to execute pending operations"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_e
    return-void
.end method

.method static synthetic lambda$prepareAppDataPostCommitLIF$0(Lcom/android/server/pm/UserManagerInternal;Landroid/content/pm/UserInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/storage/StorageManagerInternal;)V
    .registers 6
    .param p0, "umInternal"    # Lcom/android/server/pm/UserManagerInternal;
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "smInternal"    # Landroid/os/storage/StorageManagerInternal;

    .line 134
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 137
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 138
    .local v0, "uid":I
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Landroid/os/storage/StorageManagerInternal;->prepareAppDataAfterInstall(Ljava/lang/String;I)V

    .line 140
    .end local v0    # "uid":I
    :cond_1d
    return-void
.end method

.method private maybeMigrateAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 321
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 323
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 324
    move v0, v1

    goto :goto_16

    :cond_15
    const/4 v0, 0x2

    .line 326
    .local v0, "storageTarget":I
    :goto_16
    :try_start_16
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/android/server/pm/Installer;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_23
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_16 .. :try_end_23} :catch_24

    .line 331
    goto :goto_4e

    .line 328
    :catch_24
    move-exception v2

    .line 329
    .local v2, "e":Lcom/android/server/pm/Installer$InstallerException;
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to migrate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 330
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 329
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 332
    .end local v2    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_4e
    return v1

    .line 334
    .end local v0    # "storageTarget":I
    :cond_4f
    const/4 v0, 0x0

    return v0
.end method

.method private prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;III)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .param p1, "batch"    # Lcom/android/server/pm/Installer$Batch;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "previousAppId"    # I
    .param p4, "userId"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Installer$Batch;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "III)",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    const-string v1, "PackageManager"

    if-nez p2, :cond_14

    .line 169
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "Package was null!"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 172
    :cond_14
    invoke-direct {p0, p2}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping preparing app data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 176
    :cond_39
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataLeaf(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IIZ)V
    .registers 14
    .param p1, "batch"    # Lcom/android/server/pm/Installer$Batch;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "maybeMigrateAppData"    # Z

    .line 182
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v7, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move v3, p5

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    .line 194
    return-void
.end method

.method private prepareAppDataContentsLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .registers 12
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "userId"    # I
    .param p4, "flags"    # I

    .line 292
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "volumeUuid":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "packageName":Ljava/lang/String;
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_51

    .line 299
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "primaryCpuAbi":Ljava/lang/String;
    if-eqz v2, :cond_51

    invoke-static {v2}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 301
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "nativeLibPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    .line 303
    return-void

    .line 306
    :cond_28
    :try_start_28
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v0, v1, v3, p3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 310
    goto :goto_51

    .line 308
    :catch_2e
    move-exception v4

    .line 309
    .local v4, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to link native for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v2    # "primaryCpuAbi":Ljava/lang/String;
    .end local v3    # "nativeLibPath":Ljava/lang/String;
    .end local v4    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_51
    :goto_51
    return-void
.end method

.method private prepareAppDataLeaf(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;III)Ljava/util/concurrent/CompletableFuture;
    .registers 29
    .param p1, "batch"    # Lcom/android/server/pm/Installer$Batch;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "previousAppId"    # I
    .param p4, "userId"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Installer$Batch;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "III)",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    .line 205
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 206
    :try_start_7
    iget-object v0, v9, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 207
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    move/from16 v8, p4

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/pkg/SELinuxUtil;->getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 208
    .local v7, "seInfoUser":Ljava/lang/String;
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_8d

    .line 209
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v18

    .line 210
    .local v18, "volumeUuid":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 212
    .local v19, "packageName":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v20

    .line 214
    .local v20, "appId":I
    move-object/from16 v6, p2

    invoke-static {v6, v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "pkgSeInfo":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 219
    .local v21, "seInfo":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v22

    .line 220
    .local v22, "targetSdkVersion":I
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v17, v1, 0x1

    .line 221
    .local v17, "usesSdk":Z
    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, v20

    move-object/from16 v15, v21

    move/from16 v16, v22

    invoke-static/range {v10 .. v17}, Lcom/android/server/pm/Installer;->buildCreateAppDataArgs(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)Landroid/os/CreateAppDataArgs;

    move-result-object v10

    .line 223
    .local v10, "args":Landroid/os/CreateAppDataArgs;
    move/from16 v11, p3

    iput v11, v10, Landroid/os/CreateAppDataArgs;->previousAppId:I

    .line 225
    move-object/from16 v12, p1

    invoke-virtual {v12, v10}, Lcom/android/server/pm/Installer$Batch;->createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v13

    new-instance v14, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object v15, v5

    .end local v5    # "pkgSeInfo":Ljava/lang/String;
    .local v15, "pkgSeInfo":Ljava/lang/String;
    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v16, v7

    .end local v7    # "seInfoUser":Ljava/lang/String;
    .local v16, "seInfoUser":Ljava/lang/String;
    move-object v7, v10

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;)V

    invoke-virtual {v13, v14}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    .line 208
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "args":Landroid/os/CreateAppDataArgs;
    .end local v15    # "pkgSeInfo":Ljava/lang/String;
    .end local v16    # "seInfoUser":Ljava/lang/String;
    .end local v17    # "usesSdk":Z
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "appId":I
    .end local v21    # "seInfo":Ljava/lang/String;
    .end local v22    # "targetSdkVersion":I
    :catchall_8d
    move-exception v0

    move-object/from16 v12, p1

    move/from16 v11, p3

    :goto_92
    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_94

    throw v0

    :catchall_94
    move-exception v0

    goto :goto_92
.end method

.method private reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;
    .registers 35
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "migrateAppData"    # Z
    .param p5, "onlyCoreApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move/from16 v6, p2

    move/from16 v5, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reconcileAppsData for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " migrateAppData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v4, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eqz p5, :cond_4d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    move-object v2, v0

    .line 381
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x5

    :try_start_50
    iget-object v0, v7, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v15, v6, v5}, Lcom/android/server/pm/Installer;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    :try_end_55
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_50 .. :try_end_55} :catch_56

    .line 384
    goto :goto_6d

    .line 382
    :catch_56
    move-exception v0

    .line 383
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to cleanup deleted dirs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 386
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_6d
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v16

    .line 387
    .local v16, "ceDir":Ljava/io/File;
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v17

    .line 389
    .local v17, "deDir":Ljava/io/File;
    iget-object v0, v7, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v13

    .line 392
    .local v13, "snapshot":Lcom/android/server/pm/Computer;
    and-int/lit8 v0, v5, 0x2

    const-string v14, "Failed to destroy: "

    const/16 v18, 0x0

    if-eqz v0, :cond_120

    .line 393
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 394
    invoke-static/range {p2 .. p2}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_af

    .line 395
    :cond_90
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Yikes, someone asked us to reconcile CE storage while "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " was still locked; this would have caused massive data loss!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_af
    :goto_af
    invoke-static/range {v16 .. v16}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v12

    .line 401
    .local v12, "files":[Ljava/io/File;
    array-length v11, v12

    move/from16 v10, v18

    :goto_b6
    if-ge v10, v11, :cond_11a

    aget-object v19, v12, v10

    .line 402
    .local v19, "file":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 404
    .local v9, "packageName":Ljava/lang/String;
    :try_start_be
    invoke-direct {v7, v13, v15, v9, v6}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_be .. :try_end_c1} :catch_cb

    .line 414
    move/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object v1, v14

    goto :goto_10f

    .line 405
    :catch_cb
    move-exception v0

    move-object v8, v0

    move-object/from16 v20, v8

    .line 409
    .local v20, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_cf
    iget-object v8, v7, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_d1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_cf .. :try_end_d1} :catch_ee

    const/4 v0, 0x2

    const-wide/16 v21, 0x0

    move-object/from16 v23, v9

    .end local v9    # "packageName":Ljava/lang/String;
    .local v23, "packageName":Ljava/lang/String;
    move-object/from16 v9, p1

    move/from16 v24, v10

    move-object/from16 v10, v23

    move/from16 v25, v11

    move/from16 v11, p2

    move-object/from16 v26, v12

    .end local v12    # "files":[Ljava/io/File;
    .local v26, "files":[Ljava/io/File;
    move v12, v0

    move-object/from16 v27, v13

    move-object v1, v14

    .end local v13    # "snapshot":Lcom/android/server/pm/Computer;
    .local v27, "snapshot":Lcom/android/server/pm/Computer;
    move-wide/from16 v13, v21

    :try_start_e8
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_eb
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_e8 .. :try_end_eb} :catch_ec

    .line 413
    goto :goto_10f

    .line 411
    :catch_ec
    move-exception v0

    goto :goto_fa

    .end local v23    # "packageName":Ljava/lang/String;
    .end local v26    # "files":[Ljava/io/File;
    .end local v27    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v12    # "files":[Ljava/io/File;
    .restart local v13    # "snapshot":Lcom/android/server/pm/Computer;
    :catch_ee
    move-exception v0

    move-object/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object v1, v14

    .line 412
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "files":[Ljava/io/File;
    .end local v13    # "snapshot":Lcom/android/server/pm/Computer;
    .local v0, "e2":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v26    # "files":[Ljava/io/File;
    .restart local v27    # "snapshot":Lcom/android/server/pm/Computer;
    :goto_fa
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-static {v9, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 401
    .end local v0    # "e2":Lcom/android/server/pm/Installer$InstallerException;
    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v23    # "packageName":Ljava/lang/String;
    :goto_10f
    add-int/lit8 v10, v24, 0x1

    move-object v14, v1

    move/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    const/4 v1, 0x5

    goto :goto_b6

    .end local v26    # "files":[Ljava/io/File;
    .end local v27    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v12    # "files":[Ljava/io/File;
    .restart local v13    # "snapshot":Lcom/android/server/pm/Computer;
    :cond_11a
    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object v1, v14

    .end local v12    # "files":[Ljava/io/File;
    .end local v13    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v26    # "files":[Ljava/io/File;
    .restart local v27    # "snapshot":Lcom/android/server/pm/Computer;
    goto :goto_123

    .line 392
    .end local v26    # "files":[Ljava/io/File;
    .end local v27    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v13    # "snapshot":Lcom/android/server/pm/Computer;
    :cond_120
    move-object/from16 v27, v13

    move-object v1, v14

    .line 417
    .end local v13    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v27    # "snapshot":Lcom/android/server/pm/Computer;
    :goto_123
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_195

    .line 418
    invoke-static/range {v17 .. v17}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v13

    .line 419
    .local v13, "files":[Ljava/io/File;
    array-length v14, v13

    move/from16 v12, v18

    :goto_12e
    if-ge v12, v14, :cond_190

    aget-object v18, v13, v12

    .line 420
    .local v18, "file":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 422
    .local v11, "packageName":Ljava/lang/String;
    move-object/from16 v10, v27

    .end local v27    # "snapshot":Lcom/android/server/pm/Computer;
    .local v10, "snapshot":Lcom/android/server/pm/Computer;
    :try_start_138
    invoke-direct {v7, v10, v15, v11, v6}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_13b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_138 .. :try_end_13b} :catch_145

    .line 432
    move-object/from16 v28, v10

    move/from16 v23, v12

    move-object/from16 v24, v13

    move/from16 v25, v14

    const/4 v9, 0x5

    goto :goto_187

    .line 423
    :catch_145
    move-exception v0

    move-object v8, v0

    move-object/from16 v19, v8

    .line 427
    .local v19, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_149
    iget-object v8, v7, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_14b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_149 .. :try_end_14b} :catch_167

    const/4 v0, 0x1

    const-wide/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v28, v10

    .end local v10    # "snapshot":Lcom/android/server/pm/Computer;
    .local v28, "snapshot":Lcom/android/server/pm/Computer;
    move-object v10, v11

    move-object/from16 v22, v11

    .end local v11    # "packageName":Ljava/lang/String;
    .local v22, "packageName":Ljava/lang/String;
    move/from16 v11, p2

    move/from16 v23, v12

    move v12, v0

    move-object/from16 v24, v13

    move/from16 v25, v14

    .end local v13    # "files":[Ljava/io/File;
    .local v24, "files":[Ljava/io/File;
    move-wide/from16 v13, v20

    :try_start_160
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_163
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_160 .. :try_end_163} :catch_165

    .line 431
    const/4 v9, 0x5

    goto :goto_187

    .line 429
    :catch_165
    move-exception v0

    goto :goto_172

    .end local v22    # "packageName":Ljava/lang/String;
    .end local v24    # "files":[Ljava/io/File;
    .end local v28    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v10    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v13    # "files":[Ljava/io/File;
    :catch_167
    move-exception v0

    move-object/from16 v28, v10

    move-object/from16 v22, v11

    move/from16 v23, v12

    move-object/from16 v24, v13

    move/from16 v25, v14

    .line 430
    .end local v10    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "files":[Ljava/io/File;
    .restart local v0    # "e2":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v24    # "files":[Ljava/io/File;
    .restart local v28    # "snapshot":Lcom/android/server/pm/Computer;
    :goto_172
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-static {v9, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 419
    .end local v0    # "e2":Lcom/android/server/pm/Installer$InstallerException;
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v22    # "packageName":Ljava/lang/String;
    :goto_187
    add-int/lit8 v12, v23, 0x1

    move-object/from16 v13, v24

    move/from16 v14, v25

    move-object/from16 v27, v28

    goto :goto_12e

    .end local v24    # "files":[Ljava/io/File;
    .end local v28    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v13    # "files":[Ljava/io/File;
    .restart local v27    # "snapshot":Lcom/android/server/pm/Computer;
    :cond_190
    move-object/from16 v24, v13

    move-object/from16 v28, v27

    .end local v13    # "files":[Ljava/io/File;
    .end local v27    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v24    # "files":[Ljava/io/File;
    .restart local v28    # "snapshot":Lcom/android/server/pm/Computer;
    goto :goto_197

    .line 417
    .end local v24    # "files":[Ljava/io/File;
    .end local v28    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v27    # "snapshot":Lcom/android/server/pm/Computer;
    :cond_195
    move-object/from16 v28, v27

    .line 438
    .end local v27    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v28    # "snapshot":Lcom/android/server/pm/Computer;
    :goto_197
    const-wide/32 v8, 0x40000

    const-string/jumbo v0, "prepareAppDataAndMigrate"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 439
    new-instance v0, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 440
    .local v0, "batch":Lcom/android/server/pm/Installer$Batch;
    move-object/from16 v10, v28

    .end local v28    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v10    # "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v10, v15}, Lcom/android/server/pm/Computer;->getVolumePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 441
    .local v11, "packages":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v1, 0x0

    .line 442
    .local v1, "preparedCount":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v1

    .end local v1    # "preparedCount":I
    .local v13, "preparedCount":I
    :goto_1b1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_229

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 443
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v18

    if-nez v18, :cond_1df

    .line 445
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Odd, missing scanned package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    goto :goto_1ef

    .line 451
    :cond_1df
    if-eqz p5, :cond_1f3

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCoreApp()Z

    move-result v8

    if-nez v8, :cond_1f3

    .line 452
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    nop

    .line 442
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_1ef
    const-wide/32 v8, 0x40000

    goto :goto_1b1

    .line 456
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_1f3
    invoke-interface {v14, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v8

    if-eqz v8, :cond_217

    .line 457
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    move-object v9, v1

    .end local v1    # "packageName":Ljava/lang/String;
    .restart local v9    # "packageName":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v20, v2

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v0

    move-object/from16 v21, v9

    move-object v9, v3

    .end local v9    # "packageName":Ljava/lang/String;
    .local v21, "packageName":Ljava/lang/String;
    move-object v3, v8

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IIZ)V

    .line 458
    add-int/lit8 v13, v13, 0x1

    goto :goto_21c

    .line 456
    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "packageName":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_217
    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move-object v9, v3

    .line 460
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_21c
    move/from16 v6, p2

    move/from16 v5, p3

    move/from16 v4, p4

    move-object v3, v9

    move-object/from16 v2, v20

    const-wide/32 v8, 0x40000

    goto :goto_1b1

    .line 461
    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_229
    move-object/from16 v20, v2

    move-object v9, v3

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7, v0}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 462
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reconcileAppsData finished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-object v20
.end method

.method private shouldHaveAppStorage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 640
    nop

    .line 641
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager$Property;

    .line 642
    .local v0, "noAppDataProp":Landroid/content/pm/PackageManager$Property;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    return v1
.end method


# virtual methods
.method clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 548
    if-nez p1, :cond_3

    .line 549
    return-void

    .line 551
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 553
    const/high16 v0, 0x20000

    and-int/2addr v0, p3

    if-nez v0, :cond_e

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 556
    :cond_e
    return-void
.end method

.method clearAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 584
    if-nez p1, :cond_f

    .line 585
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "PackageManager"

    const-string v2, "Package was null!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    return-void

    .line 588
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->clearAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 589
    return-void
.end method

.method public clearKeystoreData(II)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "appId"    # I

    .line 649
    if-gez p2, :cond_3

    .line 650
    return-void

    .line 653
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_1c

    aget v4, v0, v3

    .line 654
    .local v4, "realUserId":I
    nop

    .line 655
    invoke-static {v4, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    int-to-long v5, v5

    .line 654
    invoke-static {v2, v5, v6}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    .line 653
    .end local v4    # "realUserId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 657
    :cond_1c
    return-void
.end method

.method public destroyAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 592
    if-nez p1, :cond_f

    .line 593
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "PackageManager"

    const-string v2, "Package was null!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    return-void

    .line 596
    :cond_f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 597
    return-void
.end method

.method public destroyAppDataLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 16
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 601
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 602
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 603
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_64

    .line 604
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_63

    aget v11, v0, v3

    .line 605
    .local v11, "realUserId":I
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    if-eqz v4, :cond_2f

    .line 606
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Lcom/android/server/pm/PackageInstallerService;->removeSpeedInstallExternalFilePathForPackage(Ljava/lang/String;I)V

    .line 609
    :cond_2f
    if-eqz v1, :cond_36

    invoke-virtual {v1, v11}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v4

    goto :goto_38

    :cond_36
    const-wide/16 v4, 0x0

    :goto_38
    move-wide v9, v4

    .line 611
    .local v9, "ceDataInode":J
    :try_start_39
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move v7, v11

    move v8, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_48
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_39 .. :try_end_48} :catch_49

    .line 615
    goto :goto_53

    .line 613
    :catch_49
    move-exception v4

    .line 614
    .local v4, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v5, "PackageManager"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .end local v4    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_53
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/android/server/pm/dex/DexManager;->notifyPackageDataDestroyed(Ljava/lang/String;I)V

    .line 604
    .end local v9    # "ceDataInode":J
    .end local v11    # "realUserId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 618
    :cond_63
    return-void

    .line 603
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1
.end method

.method public destroyAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 621
    if-nez p1, :cond_f

    .line 622
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "PackageManager"

    const-string v2, "Package was null!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    return-void

    .line 625
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 626
    return-void
.end method

.method public fixAppsDataOnBoot()Ljava/util/concurrent/Future;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 498
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 499
    const/4 v0, 0x1

    .local v0, "storageFlags":I
    goto :goto_9

    .line 501
    .end local v0    # "storageFlags":I
    :cond_8
    const/4 v0, 0x3

    .line 503
    .restart local v0    # "storageFlags":I
    :goto_9
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;

    move-result-object v1

    .line 506
    .local v1, "deferPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/util/List;I)V

    const-string/jumbo v3, "prepareAppData"

    invoke-static {v2, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 544
    .local v2, "prepareAppDataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    return-object v2
.end method

.method synthetic lambda$fixAppsDataOnBoot$3$com-android-server-pm-AppDataHelper(Ljava/util/List;I)V
    .registers 15
    .param p1, "deferPackages"    # Ljava/util/List;
    .param p2, "storageFlags"    # I

    .line 507
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x40000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 509
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "AppDataFixup"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 511
    :try_start_f
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/Installer;->fixupAppData(Ljava/lang/String;I)V
    :try_end_17
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_f .. :try_end_17} :catch_18

    .line 515
    goto :goto_20

    .line 513
    :catch_18
    move-exception v1

    .line 514
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageManager"

    const-string v3, "Trouble fixing GIDs"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_20
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 518
    const-string v1, "AppDataPrepare"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 519
    if-eqz p1, :cond_ab

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    goto/16 :goto_ab

    .line 522
    :cond_32
    const/4 v1, 0x0

    .line 523
    .local v1, "count":I
    new-instance v2, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v2}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 524
    .local v2, "batch":Lcom/android/server/pm/Installer$Batch;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    .line 525
    .local v10, "pkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 526
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4

    .line 527
    :try_start_4f
    iget-object v5, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v10}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 528
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_67

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 529
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6
    :try_end_64
    .catchall {:try_start_4f .. :try_end_64} :catchall_7a

    move-object v3, v6

    move-object v11, v3

    goto :goto_68

    .line 531
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_67
    move-object v11, v3

    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v11, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_68
    :try_start_68
    monitor-exit v4
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_77

    .line 532
    if-eqz v11, :cond_76

    .line 533
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v2

    move-object v5, v11

    move v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IIZ)V

    .line 535
    add-int/lit8 v1, v1, 0x1

    .line 537
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_76
    goto :goto_3c

    .line 531
    .restart local v10    # "pkgName":Ljava/lang/String;
    .restart local v11    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_77
    move-exception v5

    move-object v3, v11

    goto :goto_7b

    .end local v11    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_7a
    move-exception v5

    :goto_7b
    :try_start_7b
    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v5

    .line 538
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_7d
    iget-object v3, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 539
    :try_start_82
    invoke-direct {p0, v2}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 540
    monitor-exit v3
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_a8

    .line 541
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 542
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deferred reconcileAppsData finished "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packages"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 540
    :catchall_a8
    move-exception v4

    :try_start_a9
    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v4

    .line 520
    .end local v1    # "count":I
    .end local v2    # "batch":Lcom/android/server/pm/Installer$Batch;
    :cond_ab
    :goto_ab
    return-void
.end method

.method synthetic lambda$prepareAppDataAndMigrate$1$com-android-server-pm-AppDataHelper(ZLcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 12
    .param p1, "maybeMigrateAppData"    # Z
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "userId"    # I
    .param p4, "flags"    # I

    .line 186
    if-eqz p1, :cond_19

    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/AppDataHelper;->maybeMigrateAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 189
    new-instance v0, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 190
    .local v0, "batchInner":Lcom/android/server/pm/Installer$Batch;
    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;III)Ljava/util/concurrent/CompletableFuture;

    .line 191
    invoke-direct {p0, v0}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 193
    .end local v0    # "batchInner":Lcom/android/server/pm/Installer$Batch;
    :cond_19
    return-void
.end method

.method synthetic lambda$prepareAppDataLeaf$2$com-android-server-pm-AppDataHelper(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Ljava/lang/Long;Ljava/lang/Throwable;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "args"    # Landroid/os/CreateAppDataArgs;
    .param p6, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p7, "ceDataInode"    # Ljava/lang/Long;
    .param p8, "e"    # Ljava/lang/Throwable;

    .line 229
    if-eqz p8, :cond_40

    .line 230
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create app data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but trying to recover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 232
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 234
    const/4 v0, 0x3

    :try_start_27
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/Installer;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v1

    iget-wide v1, v1, Landroid/os/CreateAppDataResult;->ceDataInode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object p7, v1

    .line 235
    const-string v1, "Recovery succeeded!"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_39
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_27 .. :try_end_39} :catch_3a

    .line 238
    goto :goto_40

    .line 236
    :catch_3a
    move-exception v1

    .line 237
    .local v1, "e2":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "Recovery failed!"

    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 264
    .end local v1    # "e2":Lcom/android/server/pm/Installer$InstallerException;
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_52

    if-eqz p3, :cond_58

    .line 266
    :cond_52
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/server/pm/dex/ArtManagerService;->prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V

    .line 270
    :cond_58
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_77

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_77

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 273
    :try_start_6b
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p6, v1, v2, p3}, Lcom/android/server/pm/PackageSetting;->setCeDataInode(JI)V

    .line 274
    monitor-exit v0

    goto :goto_77

    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_74

    throw v1

    .line 277
    :cond_77
    :goto_77
    invoke-direct {p0, p2, p6, p3, p4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    .line 278
    return-void
.end method

.method public prepareAppDataAfterInstallLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 93
    return-void
.end method

.method public prepareAppDataContentsLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .registers 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "userId"    # I
    .param p4, "flags"    # I

    .line 283
    if-nez p1, :cond_f

    .line 284
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "PackageManager"

    const-string v2, "Package was null!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    return-void

    .line 287
    :cond_f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    .line 288
    return-void
.end method

.method public prepareAppDataPostCommitLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 16
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "previousAppId"    # I

    .line 102
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 103
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 104
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 105
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_a5

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 109
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping preparing app data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 113
    :cond_3c
    new-instance v0, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 114
    .local v0, "batch":Lcom/android/server/pm/Installer$Batch;
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v8

    .line 115
    .local v8, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v3, Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/os/storage/StorageManagerInternal;

    .line 117
    .local v9, "smInternal":Landroid/os/storage/StorageManagerInternal;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5b
    :goto_5b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 119
    .local v11, "user":Landroid/content/pm/UserInfo;
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_7b

    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    .line 120
    invoke-virtual {v9, v2}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 121
    const/4 v2, 0x3

    move v12, v2

    .local v2, "flags":I
    goto :goto_85

    .line 122
    .end local v2    # "flags":I
    :cond_7b
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 123
    const/4 v2, 0x1

    move v12, v2

    .line 128
    .local v12, "flags":I
    :goto_85
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 130
    iget v6, v11, Landroid/content/pm/UserInfo;->id:I

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;

    invoke-direct {v3, v8, v11, p1, v9}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/UserManagerInternal;Landroid/content/pm/UserInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/storage/StorageManagerInternal;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    .line 142
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "flags":I
    :cond_a0
    goto :goto_5b

    .line 143
    :cond_a1
    invoke-direct {p0, v0}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 144
    return-void

    .line 105
    .end local v0    # "batch":Lcom/android/server/pm/Installer$Batch;
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v9    # "smInternal":Landroid/os/storage/StorageManagerInternal;
    :catchall_a5
    move-exception v1

    :try_start_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v1
.end method

.method public reconcileAppsData(IIZ)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "flags"    # I
    .param p3, "migrateAppsData"    # Z

    .line 347
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 348
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 349
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "volumeUuid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 351
    :try_start_27
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZ)V

    .line 352
    monitor-exit v4

    .line 353
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v3    # "volumeUuid":Ljava/lang/String;
    goto :goto_12

    .line 352
    .restart local v2    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v3    # "volumeUuid":Ljava/lang/String;
    :catchall_2c
    move-exception v1

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2c

    throw v1

    .line 354
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v3    # "volumeUuid":Ljava/lang/String;
    :cond_2f
    return-void
.end method

.method reconcileAppsDataLI(Ljava/lang/String;IIZ)V
    .registers 11
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "migrateAppData"    # Z

    .line 359
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;

    .line 360
    return-void
.end method
