.class public Lcom/android/server/pm/AppDataHelper;
.super Ljava/lang/Object;
.source "AppDataHelper.java"


# instance fields
.field public final mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$2BeLf97yLOm88wYtplb9WF4eyqo(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/PackageSetting;II)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->lambda$prepareAppDataAndMigrate$1(ZLcom/android/server/pm/PackageSetting;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$N1F5rhy9JgFGDtbMO68VR_ZDwUc(Lcom/android/server/pm/UserManagerInternal;ILcom/android/server/pm/PackageSetting;Lcom/android/server/StorageManagerInternal;)V
    .registers 4

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 159
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p0

    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 160
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p0}, Lcom/android/server/StorageManagerInternal;->prepareAppDataAfterInstall(Ljava/lang/String;I)V

    :cond_15
    return-void
.end method

.method public static synthetic $r8$lambda$RIGeEJyYe5suegXcEg9XBNKTFvo(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/CreateAppDataResult;Ljava/lang/Throwable;)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/pm/AppDataHelper;->lambda$prepareAppData$2(Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/CreateAppDataResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YFf7DSMx-MyHV4nCg6MSaBHl8TQ(Lcom/android/server/pm/AppDataHelper;Ljava/util/List;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppDataHelper;->lambda$fixAppsDataOnBoot$3(Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 79
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 80
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 81
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    return-void
.end method


# virtual methods
.method public final assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 470
    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 471
    const-string v0, "Package "

    if-eqz p1, :cond_91

    .line 475
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 481
    invoke-interface {p1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    .line 482
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p2

    if-eqz p2, :cond_23

    goto :goto_46

    .line 483
    :cond_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not installed for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or was deleted without DELETE_KEEP_DATA"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x9

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 488
    :cond_46
    :goto_46
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    if-eqz p0, :cond_4d

    return-void

    .line 489
    :cond_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " shouldn\'t have storage"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0xa

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 476
    :cond_68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " found on unknown volume "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected volume "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x8

    .line 476
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 472
    :cond_91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is unknown"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x7

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0
.end method

.method public clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_16

    .line 556
    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V

    const/high16 p2, 0x20000

    and-int/2addr p2, p3

    if-nez p2, :cond_16

    .line 559
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public clearAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 16

    .line 565
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 567
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 568
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object p3

    array-length v2, p3

    const/4 v0, 0x0

    move v3, v0

    :goto_13
    if-ge v3, v2, :cond_46

    aget v7, p3, v3

    if-eqz v1, :cond_23

    .line 570
    invoke-interface {v1, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v4

    :goto_21
    move-wide v9, v4

    goto :goto_26

    :cond_23
    const-wide/16 v4, 0x0

    goto :goto_21

    .line 572
    :goto_26
    :try_start_26
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_28
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_26 .. :try_end_28} :catch_32

    move-object v6, p1

    move-object v5, p2

    move v8, p4

    :try_start_2b
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/Installer;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_2e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_40

    :catch_2f
    move-exception v0

    :goto_30
    move-object p1, v0

    goto :goto_37

    :catch_32
    move-exception v0

    move-object v6, p1

    move-object v5, p2

    move v8, p4

    goto :goto_30

    .line 575
    :goto_37
    const-string p2, "PackageManager"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    add-int/lit8 v3, v3, 0x1

    move-object p2, v5

    move-object p1, v6

    move p4, v8

    goto :goto_13

    :cond_46
    return-void
.end method

.method public clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 3

    if-nez p1, :cond_f

    .line 582
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "PackageManager"

    const-string v0, "Package was null!"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 585
    :cond_f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLIF(Ljava/lang/String;)V

    return-void
.end method

.method public clearKeystoreData(II)V
    .registers 7

    if-gez p2, :cond_3

    goto :goto_1b

    .line 659
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, p1, :cond_1b

    aget v2, p0, v1

    .line 661
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    int-to-long v2, v2

    .line 660
    invoke-static {v0, v2, v3}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1b
    :goto_1b
    return-void
.end method

.method public destroyAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .registers 5

    if-nez p1, :cond_f

    .line 590
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "PackageManager"

    const-string p2, "Package was null!"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 593
    :cond_f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public final destroyAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 18

    move/from16 v1, p3

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 600
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 601
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v5, v0

    :goto_15
    if-ge v5, v4, :cond_48

    aget v9, v3, v5

    if-eqz v2, :cond_25

    .line 603
    invoke-interface {v2, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v6

    :goto_23
    move-wide v11, v6

    goto :goto_28

    :cond_25
    const-wide/16 v6, 0x0

    goto :goto_23

    .line 605
    :goto_28
    :try_start_28
    iget-object v6, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    move-object v8, p1

    move-object v7, p2

    move/from16 v10, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_31
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_28 .. :try_end_31} :catch_32

    goto :goto_3c

    :catch_32
    move-exception v0

    .line 608
    const-string v6, "PackageManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_3c
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->notifyPackageDataDestroyed(Ljava/lang/String;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_48
    return-void
.end method

.method public destroyAppProfilesLIF(Ljava/lang/String;)V
    .registers 3

    .line 618
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->artManagerLocalIsInitialized()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_24

    .line 628
    :cond_7
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    .line 630
    :try_start_f
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/art/ArtManagerLocal;->clearAppProfiles(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_16} :catch_19
    .catchall {:try_start_f .. :try_end_16} :catchall_17

    goto :goto_1f

    :catchall_17
    move-exception p1

    goto :goto_25

    :catch_19
    move-exception p1

    .line 633
    :try_start_1a
    const-string v0, "PackageManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_17

    :goto_1f
    if-eqz p0, :cond_24

    .line 635
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    :cond_24
    :goto_24
    return-void

    :goto_25
    if-eqz p0, :cond_2f

    .line 627
    :try_start_27
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    throw p1
.end method

.method public final executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V
    .registers 3

    .line 169
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 171
    const-string p1, "PackageManager"

    const-string v0, "Failed to execute pending operations"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public fixAppsDataOnBoot()Ljava/util/concurrent/Future;
    .registers 9

    .line 502
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    move v4, v0

    goto :goto_b

    :cond_9
    const/4 v0, 0x3

    goto :goto_7

    .line 508
    :goto_b
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v7

    .line 509
    :try_start_13
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_2f

    if-eqz v7, :cond_22

    .line 512
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 513
    :cond_22
    new-instance v0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, p0, v4}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/util/List;I)V

    const-string/jumbo p0, "prepareAppData"

    invoke-static {v0, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :catchall_2f
    move-exception v0

    move-object p0, v0

    if-eqz v7, :cond_3b

    .line 508
    :try_start_33
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw p0
.end method

.method public final getInstalledUsersForPackage(Lcom/android/server/pm/PackageSetting;)[I
    .registers 8

    .line 106
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    .line 108
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 110
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_16
    if-ge v0, v2, :cond_2e

    .line 111
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 112
    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    add-int/lit8 v5, v3, 0x1

    .line 113
    aput v4, v1, v3

    move v3, v5

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 116
    :cond_2e
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$fixAppsDataOnBoot$3(Ljava/util/List;I)V
    .registers 13

    .line 514
    const-string v1, "PackageManager"

    new-instance v2, Landroid/util/TimingsTraceLog;

    const-string v0, "SystemServerTimingAsync"

    const-wide/32 v3, 0x40000

    invoke-direct {v2, v0, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 516
    const-string v0, "AppDataFixup"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 518
    :try_start_11
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/Installer;->fixupAppData(Ljava/lang/String;I)V
    :try_end_19
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_11 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception v0

    .line 521
    const-string v3, "Trouble fixing GIDs"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    :goto_20
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 525
    const-string v0, "AppDataPrepare"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    if-eqz p1, :cond_aa

    .line 526
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    goto/16 :goto_aa

    .line 530
    :cond_32
    new-instance v4, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v4}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 531
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v9, v0

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 532
    iget-object v5, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 533
    invoke-interface {v5, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_69

    .line 536
    invoke-interface {v5, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 537
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_69

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move v7, p2

    .line 538
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/PackageStateInternal;IIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6b

    :cond_69
    move-object v3, p0

    move v7, p2

    :goto_6b
    move-object p0, v3

    move p2, v7

    goto :goto_3d

    :cond_6e
    move-object v3, p0

    .line 543
    iget-object p0, v3, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p0

    .line 544
    :try_start_77
    invoke-virtual {v3, v4}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_9c

    if-eqz p0, :cond_7f

    .line 545
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 546
    :cond_7f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 547
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Deferred reconcileAppsData finished "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packages"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_9c
    move-exception v0

    move-object p1, v0

    if-eqz p0, :cond_a9

    .line 543
    :try_start_a0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a4

    goto :goto_a9

    :catchall_a4
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a9
    :goto_a9
    throw p1

    :cond_aa
    :goto_aa
    return-void
.end method

.method public final synthetic lambda$prepareAppData$2(Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/CreateAppDataResult;Ljava/lang/Throwable;)V
    .registers 12

    if-eqz p9, :cond_34

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create app data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but trying to recover: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    const/4 v0, 0x5

    invoke-static {v0, p9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 250
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p1, 0x3

    .line 252
    :try_start_23
    iget-object p2, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2, p5}, Lcom/android/server/pm/Installer;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object p8

    .line 253
    const-string p2, "Recovery succeeded!"

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_2e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_34

    .line 255
    :catch_2f
    const-string p2, "Recovery failed!"

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 259
    :cond_34
    :goto_34
    iget-wide p1, p8, Landroid/os/CreateAppDataResult;->ceDataInode:J

    .line 260
    iget-wide p8, p8, Landroid/os/CreateAppDataResult;->deDataInode:J

    and-int/lit8 p5, p4, 0x2

    const-wide/16 v0, -0x1

    if-eqz p5, :cond_58

    cmp-long p5, p1, v0

    if-eqz p5, :cond_58

    .line 263
    iget-object p5, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p5, p5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p5

    .line 264
    :try_start_4a
    invoke-virtual {p6, p1, p2, p3}, Lcom/android/server/pm/PackageSetting;->setCeDataInode(JI)V

    .line 265
    monitor-exit p5
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_52

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_58

    :catchall_52
    move-exception p0

    :try_start_53
    monitor-exit p5
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_58
    :goto_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_76

    cmp-long p1, p8, v0

    if-eqz p1, :cond_76

    .line 268
    iget-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 269
    :try_start_68
    invoke-virtual {p6, p8, p9, p3}, Lcom/android/server/pm/PackageSetting;->setDeDataInode(JI)V

    .line 270
    monitor-exit p1
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_70

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_76

    :catchall_70
    move-exception p0

    :try_start_71
    monitor-exit p1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_76
    :goto_76
    if-eqz p7, :cond_7b

    .line 274
    invoke-virtual {p0, p7, p6, p3, p4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    :cond_7b
    return-void
.end method

.method public final synthetic lambda$prepareAppDataAndMigrate$1(ZLcom/android/server/pm/PackageSetting;II)V
    .registers 11

    if-eqz p1, :cond_18

    .line 194
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/AppDataHelper;->maybeMigrateAppDataLIF(Lcom/android/server/pm/PackageSetting;I)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 197
    new-instance v1, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v1}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    const/4 v3, -0x1

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 198
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    :cond_18
    return-void
.end method

.method public final maybeMigrateAppDataLIF(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 7

    .line 320
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 322
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    const/4 v0, 0x2

    .line 325
    :goto_16
    :try_start_16
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2, v0}, Lcom/android/server/pm/Installer;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_23
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_16 .. :try_end_23} :catch_24

    goto :goto_4a

    :catch_24
    move-exception p0

    .line 328
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to migrate "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    .line 328
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_4a
    return v1

    :cond_4b
    const/4 p0, 0x0

    return p0
.end method

.method public final prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;
    .registers 15

    .line 217
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 226
    :try_start_c
    invoke-virtual {p2, p4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/pkg/SELinuxUtil;->getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;

    move-result-object v0

    .line 227
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_67

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 229
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    .line 230
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    .line 233
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v6

    .line 238
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4b

    const/4 v0, 0x1

    :goto_46
    move v2, p4

    move v7, v0

    move-object v0, v3

    move v3, p5

    goto :goto_4d

    :cond_4b
    const/4 v0, 0x0

    goto :goto_46

    .line 239
    :goto_4d
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/Installer;->buildCreateAppDataArgs(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)Landroid/os/CreateAppDataArgs;

    move-result-object v6

    .line 241
    iput p3, v6, Landroid/os/CreateAppDataArgs;->previousAppId:I

    .line 243
    invoke-virtual {p1, v6}, Lcom/android/server/pm/Installer$Batch;->createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    move v5, v3

    move-object v3, v0

    new-instance v0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;

    move-object v7, p2

    move v4, v2

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :catchall_67
    move-exception v0

    move-object p0, v0

    .line 227
    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_67

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 99
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    .line 100
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_21

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->getInstalledUsersForPackage(Lcom/android/server/pm/PackageSetting;)[I

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;I[I)V

    return-void

    :catchall_21
    move-exception p0

    .line 100
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/PackageStateInternal;IIZ)V
    .registers 14

    if-eqz p2, :cond_5f

    .line 178
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_5f

    .line 182
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 183
    const-string p0, "PackageManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping preparing app data for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 187
    :cond_2a
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 188
    :try_start_32
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 189
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_58

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v5, -0x1

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    move v7, p4

    .line 190
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;

    move-object v3, v2

    move-object v5, v4

    move-object v2, p1

    move v4, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/PackageSetting;II)V

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :catchall_58
    move-exception v0

    move-object p0, v0

    .line 189
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_58

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 179
    :cond_5f
    :goto_5f
    const-string p0, "PackageManager"

    const-string p1, "Package was null!"

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public prepareAppDataContentsLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .registers 5

    if-nez p1, :cond_f

    .line 282
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "PackageManager"

    const-string p2, "Package was null!"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 285
    :cond_f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    return-void
.end method

.method public final prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .registers 7

    .line 290
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_54

    if-nez p2, :cond_13

    .line 298
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p2

    goto :goto_17

    :cond_13
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p2

    :goto_17
    if-eqz p2, :cond_54

    .line 299
    invoke-static {p2}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_54

    .line 300
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object p1

    .line 301
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2f

    goto :goto_54

    .line 305
    :cond_2f
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_34
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2f .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p0

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to link native for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    return-void
.end method

.method public prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;I[I)V
    .registers 14

    .line 126
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 127
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 128
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_86

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 132
    const-string p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping preparing app data for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_34
    new-instance v1, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v1}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v6

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Lcom/android/server/StorageManagerInternal;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/StorageManagerInternal;

    .line 140
    array-length v8, p3

    const/4 v0, 0x0

    move v9, v0

    :goto_4d
    if-ge v9, v8, :cond_81

    aget v4, p3, v9

    .line 142
    invoke-static {v4}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 143
    invoke-virtual {v7, v4}, Lcom/android/server/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x3

    :goto_5e
    move-object v2, p1

    move v3, p2

    move v5, v0

    move-object v0, p0

    goto :goto_6b

    .line 145
    :cond_63
    invoke-virtual {v6, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_78

    const/4 v0, 0x1

    goto :goto_5e

    .line 152
    :goto_6b
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1, v6, v4, v2, v7}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/UserManagerInternal;ILcom/android/server/pm/PackageSetting;Lcom/android/server/StorageManagerInternal;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_7b

    :cond_78
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    :goto_7b
    add-int/lit8 v9, v9, 0x1

    move-object p0, v0

    move-object p1, v2

    move p2, v3

    goto :goto_4d

    :cond_81
    move-object v0, p0

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    return-void

    :catchall_86
    move-exception v0

    move-object p0, v0

    .line 128
    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_86

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public reconcileAppsData(IIZ)V
    .registers 7

    .line 346
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 347
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 348
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v2

    .line 350
    :try_start_2a
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZ)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_33

    if-eqz v2, :cond_12

    .line 351
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    goto :goto_12

    :catchall_33
    move-exception p0

    if-eqz v2, :cond_3e

    .line 349
    :try_start_36
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw p0

    :cond_3f
    return-void
.end method

.method public final reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v9, p3

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reconcileAppsData for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " migrateAppData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v11, "PackageManager"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_46

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_44
    move-object v12, v0

    goto :goto_48

    :cond_46
    const/4 v0, 0x0

    goto :goto_44

    :goto_48
    const/4 v13, 0x5

    .line 380
    :try_start_49
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v3, v5, v9}, Lcom/android/server/pm/Installer;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    :try_end_4e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_49 .. :try_end_4e} :catch_4f

    goto :goto_64

    :catch_4f
    move-exception v0

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to cleanup deleted dirs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 385
    :goto_64
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 386
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v14

    .line 388
    iget-object v2, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v15

    and-int/lit8 v2, v9, 0x2

    .line 391
    const-string v4, "Failed to destroy: "

    const-string v6, " due to: "

    const-string v7, "Destroying "

    const/16 v16, 0x0

    if-eqz v2, :cond_126

    .line 392
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-static {v5}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_8b

    goto :goto_a7

    .line 393
    :cond_8b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yikes, someone asked us to reconcile CE storage while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was still locked; this would have caused massive data loss!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_a7
    :goto_a7
    invoke-static {v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 399
    array-length v8, v2

    move/from16 v13, v16

    :goto_ae
    if-ge v13, v8, :cond_126

    move-object/from16 v17, v2

    aget-object v2, v17, v13

    move-object/from16 v18, v4

    .line 400
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 402
    :try_start_ba
    invoke-virtual {v1, v15, v3, v4, v5}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_bd
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_ba .. :try_end_bd} :catch_c6

    move-object v10, v6

    move/from16 v19, v8

    move-object/from16 v9, v18

    move/from16 v18, v13

    move-object v13, v7

    goto :goto_117

    :catch_c6
    move-exception v0

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 406
    :try_start_e0
    iget-object v2, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_e2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_e0 .. :try_end_e2} :catch_f9

    move-object v3, v6

    const/4 v6, 0x2

    move-object/from16 v20, v7

    move/from16 v19, v8

    const-wide/16 v7, 0x0

    move-object v10, v3

    move-object/from16 v9, v18

    move-object/from16 v3, p1

    move/from16 v18, v13

    move-object/from16 v13, v20

    :try_start_f3
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_f6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_f3 .. :try_end_f6} :catch_f7

    goto :goto_117

    :catch_f7
    move-exception v0

    goto :goto_104

    :catch_f9
    move-exception v0

    move-object/from16 v3, p1

    move-object v10, v6

    move/from16 v19, v8

    move-object/from16 v9, v18

    move/from16 v18, v13

    move-object v13, v7

    .line 409
    :goto_104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_117
    add-int/lit8 v0, v18, 0x1

    move-object v4, v9

    move-object v6, v10

    move-object v7, v13

    move-object/from16 v2, v17

    move/from16 v8, v19

    move/from16 v9, p3

    move/from16 v10, p4

    move v13, v0

    goto :goto_ae

    :cond_126
    move-object v9, v4

    move-object v10, v6

    move-object v13, v7

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_18e

    .line 415
    invoke-static {v14}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v14

    .line 416
    array-length v2, v14

    move/from16 v4, v16

    :goto_134
    if-ge v4, v2, :cond_18e

    aget-object v6, v14, v4

    move v7, v4

    .line 417
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 419
    :try_start_13d
    invoke-virtual {v1, v15, v3, v4, v5}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_140
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_13d .. :try_end_140} :catch_146

    move/from16 v17, v2

    move/from16 v18, v7

    :goto_144
    const/4 v2, 0x5

    goto :goto_189

    :catch_146
    move-exception v0

    .line 421
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x5

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    move v6, v2

    .line 423
    :try_start_161
    iget-object v2, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_163
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_161 .. :try_end_163} :catch_171

    move v8, v6

    const/4 v6, 0x1

    move/from16 v18, v7

    move/from16 v17, v8

    const-wide/16 v7, 0x0

    :try_start_16b
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_16e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_16b .. :try_end_16e} :catch_16f

    goto :goto_144

    :catch_16f
    move-exception v0

    goto :goto_176

    :catch_171
    move-exception v0

    move/from16 v17, v6

    move/from16 v18, v7

    .line 426
    :goto_176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_189
    add-int/lit8 v4, v18, 0x1

    move/from16 v2, v17

    goto :goto_134

    .line 434
    :cond_18e
    const-string/jumbo v0, "prepareAppDataAndMigrate"

    const-wide/32 v7, 0x40000

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 435
    new-instance v2, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v2}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 436
    invoke-interface {v15, v3}, Lcom/android/server/pm/Computer;->getVolumePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 438
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v9, v16

    :goto_1a6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 439
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 440
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-nez v6, :cond_1d1

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Odd, missing scanned package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a6

    :cond_1d1
    if-eqz p5, :cond_1e1

    .line 447
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isCoreApp()Z

    move-result v6

    if-nez v6, :cond_1e1

    .line 448
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a6

    .line 452
    :cond_1e1
    invoke-interface {v3, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_1f5

    move/from16 v6, p4

    move v4, v5

    move/from16 v5, p3

    .line 453
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/PackageStateInternal;IIZ)V

    add-int/lit8 v9, v9, 0x1

    :cond_1f5
    move/from16 v5, p2

    goto :goto_1a6

    .line 457
    :cond_1f8
    invoke-virtual {v1, v2}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 458
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reconcileAppsData finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12
.end method

.method public reconcileAppsDataLI(Ljava/lang/String;IIZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 358
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;

    return-void
.end method

.method public final shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 4

    .line 642
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    .line 647
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProperties()Ljava/util/Map;

    move-result-object p0

    const-string v1, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager$Property;

    if-eqz p0, :cond_20

    .line 648
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    if-nez p0, :cond_27

    :cond_20
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    if-ltz p0, :cond_27

    return v0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method
