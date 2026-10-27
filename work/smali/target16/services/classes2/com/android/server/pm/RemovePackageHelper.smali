.class public final Lcom/android/server/pm/RemovePackageHelper;
.super Ljava/lang/Object;
.source "RemovePackageHelper.java"


# instance fields
.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;


# direct methods
.method public static synthetic $r8$lambda$1W3ehgD8MEpq955kSQ4lXmg6q64(Lcom/android/server/pm/RemovePackageHelper;Landroid/util/SparseBooleanArray;Lcom/android/server/pm/PreferredActivityHelper;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/RemovePackageHelper;->lambda$clearPackageStateForUserLIF$0(Landroid/util/SparseBooleanArray;Lcom/android/server/pm/PreferredActivityHelper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZTspOFFzqQnnQ7fAaVtXNVGEwRE(Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/PackageSetting;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/RemovePackageHelper;->lambda$clearPackageStateForUserLIF$1(Lcom/android/server/pm/PackageSetting;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/BroadcastHelper;)V
    .registers 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 81
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIncrementalManager()Landroid/os/incremental/IncrementalManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 82
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 83
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 84
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 85
    iput-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 86
    iput-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    return-void
.end method

.method public static shouldDeletePackageSetting(Lcom/android/server/pm/PackageSetting;I[II)Z
    .registers 6

    const/4 v0, 0x1

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    return v1

    :cond_6
    const/4 p3, -0x1

    if-ne p1, p3, :cond_a

    return v0

    .line 504
    :cond_a
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PackageSetting;->hasDataOnAnyOtherUser([II)Z

    move-result p0

    if-eqz p0, :cond_11

    return v1

    :cond_11
    return v0
.end method


# virtual methods
.method public final cleanPackageDataStructuresLILPw(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)V
    .registers 8

    .line 179
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/resolution/ComponentResolver;->removeAllComponents(Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 180
    iget-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p3, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 181
    iget-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->getPackageProperty()Lcom/android/server/pm/PackageProperty;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/server/pm/PackageProperty;->removeAllProperties(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 183
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_1f
    if-ge v1, p3, :cond_3b

    .line 187
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 188
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getInstrumentation()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_3b
    if-eqz p2, :cond_5b

    .line 205
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_45
    if-ge v0, p2, :cond_5b

    .line 207
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p3, v2, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->removeSharedLibrary(Ljava/lang/String;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 224
    :cond_5b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6f

    .line 225
    iget-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 226
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v0

    int-to-long v0, v0

    .line 225
    invoke-virtual {p2, p3, v0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->removeSharedLibrary(Ljava/lang/String;J)Z

    .line 237
    :cond_6f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_82

    .line 238
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object p2

    .line 239
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v0

    .line 238
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->removeSharedLibrary(Ljava/lang/String;J)Z

    :cond_82
    return-void
.end method

.method public cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    .line 551
    new-instance v0, Ljava/io/File;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 552
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v10

    .line 555
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v11

    .line 565
    :try_start_44
    array-length v12, v10

    const/4 v0, 0x0

    move v13, v0

    :goto_47
    if-ge v13, v12, :cond_69

    aget v6, v10, v13
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_59

    .line 567
    :try_start_4b
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const v7, 0x20003

    const-wide/16 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_58
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4b .. :try_end_58} :catch_5c
    .catchall {:try_start_4b .. :try_end_58} :catchall_59

    goto :goto_64

    :catchall_59
    move-exception v0

    move-object p0, v0

    goto :goto_72

    :catch_5c
    move-exception v0

    .line 570
    :try_start_5d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, p2

    goto :goto_47

    .line 573
    :cond_69
    invoke-virtual {p0, v1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_59

    if-eqz v11, :cond_71

    .line 574
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_71
    return-void

    :goto_72
    if-eqz v11, :cond_7c

    .line 555
    :try_start_74
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7c
    :goto_7c
    throw p0
.end method

.method public cleanUpResources(Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0

    .line 516
    :try_start_8
    invoke-virtual {p0, p2}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResourcesLI(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_35

    if-eqz v0, :cond_10

    .line 517
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_10
    if-nez p1, :cond_13

    return-void

    .line 521
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 522
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 524
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->removeOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_30

    .line 526
    :cond_2b
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_29

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_30
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_29

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :catchall_35
    move-exception p0

    if-eqz v0, :cond_40

    .line 515
    :try_start_38
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_40
    :goto_40
    throw p0
.end method

.method public final cleanUpResourcesLI(Ljava/io/File;)V
    .registers 4

    .line 533
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz p1, :cond_26

    .line 534
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 535
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    const/4 v1, 0x0

    .line 536
    invoke-static {v0, p1, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 538
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 540
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    .line 544
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    return-void
.end method

.method public clearPackageStateForUserLIF(Lcom/android/server/pm/PackageSetting;II)V
    .registers 11

    .line 265
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/high16 v0, 0x20000

    and-int/2addr v0, p3

    if-nez v0, :cond_e

    .line 268
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLIF(Ljava/lang/String;)V

    .line 272
    :cond_e
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 273
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 274
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    .line 275
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_119

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v4, :cond_31

    move-object v2, v4

    goto :goto_39

    .line 283
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->buildFakeForDeletion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    :goto_39
    or-int/lit8 v5, v0, 0x7

    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_52

    and-int/lit8 p1, p3, 0x10

    if-eqz p1, :cond_107

    .line 291
    iget-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    or-int/lit8 p3, v0, 0x17

    invoke-virtual {p1, v2, p2, p3}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 293
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    or-int/lit8 p1, v0, 0x27

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    return-void

    .line 300
    :cond_52
    iget-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {p3, v2, p2, v5}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    const/4 p3, -0x1

    if-eq p2, p3, :cond_76

    .line 302
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    const-wide/16 v5, -0x1

    .line 303
    :try_start_64
    invoke-virtual {p1, v5, v6, p2}, Lcom/android/server/pm/PackageSetting;->setCeDataInode(JI)V

    .line 304
    invoke-virtual {p1, v5, v6, p2}, Lcom/android/server/pm/PackageSetting;->setDeDataInode(JI)V

    .line 305
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_6f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_76

    :catchall_6f
    move-exception v0

    move-object p0, v0

    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_6f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 308
    :cond_76
    :goto_76
    new-instance v0, Lcom/android/server/pm/PreferredActivityHelper;

    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/RemovePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-direct {v0, v2, v5}, Lcom/android/server/pm/PreferredActivityHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BroadcastHelper;)V

    if-ne p2, p3, :cond_df

    .line 315
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearPackage(Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 318
    :try_start_90
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    .line 320
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUpdateOwnershipHelper()Lcom/android/server/pm/UpdateOwnershipHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/pm/UpdateOwnershipHelper;->removeUpdateOwnerDenyList(Ljava/lang/String;)V

    .line 322
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 323
    iget-object v4, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 324
    invoke-interface {v3, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 323
    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/AppsFilterImpl;->removePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    .line 326
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 327
    iget-object v4, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v1, v3, p3}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 329
    iget-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v1, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/RemovePackageHelper;Landroid/util/SparseBooleanArray;Lcom/android/server/pm/PreferredActivityHelper;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    monitor-exit v2
    :try_end_d2
    .catchall {:try_start_90 .. :try_end_d2} :catchall_d8

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    move-object v3, p1

    move v6, p2

    goto :goto_ff

    :catchall_d8
    move-exception v0

    move-object p0, v0

    :try_start_da
    monitor-exit v2
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d8

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 344
    :cond_df
    iget-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {p3, v1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearPackageForUser(Ljava/lang/String;I)V

    .line 346
    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(Ljava/lang/String;I)V

    if-eqz v3, :cond_f1

    .line 349
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object p3

    :goto_ef
    move-object v5, p3

    goto :goto_f4

    :cond_f1
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_ef

    .line 350
    :goto_f4
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    move-object v3, p1

    move v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V

    .line 355
    :goto_ff
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_108

    :cond_107
    return-void

    .line 358
    :cond_108
    iget-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v3, v6}, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/PackageSetting;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_119
    move-exception v0

    move-object p0, v0

    .line 275
    :try_start_11b
    monitor-exit v2
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_119

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$clearPackageStateForUserLIF$0(Landroid/util/SparseBooleanArray;Lcom/android/server/pm/PreferredActivityHelper;)V
    .registers 4

    .line 330
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 331
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V

    .line 333
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    :cond_15
    return-void
.end method

.method public final synthetic lambda$clearPackageStateForUserLIF$1(Lcom/android/server/pm/PackageSetting;I)V
    .registers 7

    const-wide/32 v0, 0x40000

    .line 360
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearKeystoreData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 362
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/AppDataHelper;->clearKeystoreData(II)V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_30

    .line 364
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_30
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 365
    throw p0
.end method

.method public final removeCachedResult(Ljava/io/File;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 133
    :cond_9
    new-instance v0, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;)V

    .line 135
    invoke-virtual {v0, p1}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    return-void
.end method

.method public removeCodePath(Ljava/io/File;)V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0

    .line 91
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    if-eqz v0, :cond_10

    .line 92
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_10
    return-void

    :catchall_11
    move-exception p0

    if-eqz v0, :cond_1c

    .line 90
    :try_start_14
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    throw p0
.end method

.method public final removeCodePathLI(Ljava/io/File;)V
    .registers 6

    if-eqz p1, :cond_61

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_61

    .line 100
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "~~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 104
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v2, :cond_39

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    if-eqz v1, :cond_34

    .line 108
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v2, v0}, Landroid/os/incremental/IncrementalManager;->rmPackageDir(Ljava/io/File;)V

    goto :goto_39

    .line 110
    :cond_34
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v2, p1}, Landroid/os/incremental/IncrementalManager;->rmPackageDir(Ljava/io/File;)V

    .line 114
    :cond_39
    :goto_39
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_61

    .line 117
    iget-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCachedResult(Ljava/io/File;)V
    :try_end_54
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1e .. :try_end_54} :catch_55

    goto :goto_61

    :catch_55
    move-exception p0

    .line 121
    const-string p1, "PackageManager"

    const-string v0, "Failed to remove code path"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 124
    :cond_5e
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_61
    :goto_61
    return-void
.end method

.method public removePackage(Lcom/android/server/pm/pkg/AndroidPackage;Z)V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0

    .line 141
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Lcom/android/server/pm/pkg/AndroidPackage;Z)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    if-eqz v0, :cond_10

    .line 142
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_10
    return-void

    :catchall_11
    move-exception p0

    if-eqz v0, :cond_1c

    .line 140
    :try_start_14
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    throw p0
.end method

.method public removePackageData(Lcom/android/server/pm/PackageSetting;[I)V
    .registers 12

    .line 371
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    .line 372
    :try_start_8
    new-instance v6, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v6}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/RemovePackageHelper;->removePackageDataLIF(Lcom/android/server/pm/PackageSetting;I[ILcom/android/server/pm/PackageRemovedInfo;IZ)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1c

    if-eqz v1, :cond_1b

    .line 374
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_1b
    return-void

    :catchall_1c
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_29

    .line 371
    :try_start_20
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_29

    :catchall_24
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_29
    :goto_29
    throw p0
.end method

.method public removePackageDataLIF(Lcom/android/server/pm/PackageSetting;I[ILcom/android/server/pm/PackageRemovedInfo;IZ)V
    .registers 16

    .line 389
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/RemovePackageHelper;->shouldDeletePackageSetting(Lcom/android/server/pm/PackageSetting;I[II)Z

    move-result v0

    .line 394
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v0, :cond_f

    const/4 p2, -0x1

    .line 397
    :cond_f
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/pm/RemovePackageHelper;->clearPackageStateForUserLIF(Lcom/android/server/pm/PackageSetting;II)V

    const/high16 p2, -0x80000000

    and-int/2addr p2, p5

    const/4 p5, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_1b

    move p2, p5

    goto :goto_1c

    :cond_1b
    move p2, v7

    .line 401
    :goto_1c
    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Ljava/lang/String;Z)V

    .line 402
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result p2

    if-nez p2, :cond_29

    const/4 p2, 0x0

    .line 407
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;

    :cond_29
    if-eqz v0, :cond_8d

    .line 412
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 413
    iget-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 414
    :try_start_38
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->removePackageAndAppIdLPw(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p4, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    .line 415
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 416
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v8

    if-eqz v8, :cond_5f

    .line 420
    invoke-virtual {v8}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v0

    :goto_5a
    move-object v5, v0

    goto :goto_62

    :catchall_5c
    move-exception v0

    move-object p0, v0

    goto :goto_88

    :cond_5f
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_5a

    .line 421
    :goto_62
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    const/4 v6, -0x1

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V

    if-eqz v8, :cond_78

    .line 425
    iget-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1, v8}, Lcom/android/server/pm/Settings;->checkAndConvertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V

    goto :goto_78

    :cond_77
    move-object v3, p1

    .line 428
    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/Settings;->removeRenamedPackageLPw(Ljava/lang/String;)V

    .line 429
    monitor-exit p2
    :try_end_84
    .catchall {:try_start_38 .. :try_end_84} :catchall_5c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_de

    :goto_88
    :try_start_88
    monitor-exit p2
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_5c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_8d
    move-object v3, p1

    .line 430
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result p1

    if-nez p1, :cond_de

    iget-boolean p1, p4, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    if-nez p1, :cond_de

    iget-object p1, p4, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    if-eqz p1, :cond_de

    .line 431
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result p1

    if-nez p1, :cond_de

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 440
    iget-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 441
    :try_start_ad
    iget-object p2, p4, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    array-length v0, p2

    move v1, v7

    :goto_b1
    if-ge v1, v0, :cond_be

    aget v2, p2, v1

    .line 446
    invoke-virtual {v3, v7, v2}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b1

    :catchall_bb
    move-exception v0

    move-object p0, v0

    goto :goto_d9

    :cond_be
    if-eqz v4, :cond_d4

    .line 451
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d4

    .line 452
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageSetting;->setSplitNames([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 453
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageSetting;->setSplitRevisionCodes([I)Lcom/android/server/pm/PackageSetting;

    .line 455
    :cond_d4
    monitor-exit p1
    :try_end_d5
    .catchall {:try_start_ad .. :try_end_d5} :catchall_bb

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_de

    :goto_d9
    :try_start_d9
    monitor-exit p1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_bb

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 461
    :cond_de
    :goto_de
    iget-object p1, p4, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    if-eqz p1, :cond_11e

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_11e

    .line 465
    iget-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 466
    :try_start_f0
    array-length p2, p3

    move v0, v7

    move v1, v0

    :goto_f3
    if-ge v0, p2, :cond_113

    aget v2, p3, v0

    .line 467
    iget-object v4, p4, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    invoke-static {v4, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    .line 471
    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-eq v4, v5, :cond_104

    move v1, p5

    .line 474
    :cond_104
    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    if-eqz v4, :cond_110

    .line 476
    invoke-virtual {v3, v7, v2}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    goto :goto_110

    :catchall_10d
    move-exception v0

    move-object p0, v0

    goto :goto_119

    :cond_110
    :goto_110
    add-int/lit8 v0, v0, 0x1

    goto :goto_f3

    .line 479
    :cond_113
    monitor-exit p1
    :try_end_114
    .catchall {:try_start_f0 .. :try_end_114} :catchall_10d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    move v7, v1

    goto :goto_11e

    :goto_119
    :try_start_119
    monitor-exit p1
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_10d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 481
    :cond_11e
    :goto_11e
    iget-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-static {p1}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object p1

    .line 482
    iget-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    if-eqz p6, :cond_139

    .line 486
    :try_start_130
    iget-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3, p1}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;)V

    goto :goto_139

    :catchall_136
    move-exception v0

    move-object p0, v0

    goto :goto_147

    :cond_139
    :goto_139
    if-eqz v7, :cond_142

    .line 489
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 491
    :cond_142
    monitor-exit p2
    :try_end_143
    .catchall {:try_start_130 .. :try_end_143} :catchall_136

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_147
    :try_start_147
    monitor-exit p2
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_136

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final removePackageLI(Lcom/android/server/pm/pkg/AndroidPackage;Z)V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 149
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 151
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Ljava/lang/String;Z)V

    :cond_17
    return-void
.end method

.method public final removePackageLI(Ljava/lang/String;Z)V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 167
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz p1, :cond_1e

    .line 171
    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    .line 170
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/pm/RemovePackageHelper;->cleanPackageDataStructuresLILPw(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)V

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_23

    .line 173
    :cond_1e
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_1c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method
