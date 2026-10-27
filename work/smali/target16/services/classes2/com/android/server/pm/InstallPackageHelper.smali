.class public final Lcom/android/server/pm/InstallPackageHelper;
.super Ljava/lang/Object;
.source "InstallPackageHelper.java"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstallingPackages:Ljava/util/Set;

.field public mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mInternalLock:Ljava/lang/Object;

.field public final mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field public final mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;


# direct methods
.method public static synthetic $r8$lambda$0mR6hZ7RAv-HW6b5LelB2kIPkw4(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/String;ILandroid/content/IntentSender;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->lambda$installExistingPackageAsUser$1(Ljava/lang/String;ILandroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2mhA691Pd83-AXeC_cKJ3qReGOo(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->lambda$prepPerformDexoptIfNeeded$5(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5L4gieL_nGl58G96mjB5V2oXyg4(Lcom/android/server/pm/InstallPackageHelper;Lcom/android/server/pm/PackageSetting;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->lambda$commitReconciledScanResultLocked$0(Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CxEDaVqfT0-n9_uc6UJZ6O6zw_U([ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 8

    .line 3479
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1c

    aget v2, p0, v1

    .line 3480
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v3

    .line 3481
    invoke-interface {v3, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v3

    .line 3482
    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    return-void
.end method

.method public static synthetic $r8$lambda$Nvd3mg3KF2nCNWvp0cl-vZ7qZPk(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/InstallPackageHelper;->lambda$installPackagesTraced$3(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q3GnjlzvbT0QUr93RPwbCWFRz3E(I)[Ljava/util/concurrent/CompletableFuture;
    .registers 1

    .line 1231
    new-array p0, p0, [Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static synthetic $r8$lambda$jJ7CS5F4oa02fYdRyiJoC-dzXVg(Lcom/android/server/pm/InstallPackageHelper;ZLcom/android/server/pm/InstallRequest;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->lambda$restoreAndPostInstall$2(ZLcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uOh7A8ukYx2V2I_2P3ZigZgDzO8(Landroid/util/ArrayMap;Lcom/android/server/pm/ParallelPackageParser$ParseResult;Lcom/android/server/pm/ParallelPackageParser$ParseResult;)I
    .registers 3

    .line 3775
    iget-object p1, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/apex/ApexInfo;

    .line 3776
    iget-object p2, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/apex/ApexInfo;

    .line 3777
    iget-boolean p0, p0, Landroid/apex/ApexInfo;->isFactory:Z

    iget-boolean p1, p1, Landroid/apex/ApexInfo;->isFactory:Z

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V
    .registers 7

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInternalLock:Ljava/lang/Object;

    .line 244
    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 245
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 246
    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 247
    iput-object p5, p0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 248
    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 249
    iput-object p4, p0, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 250
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIncrementalManager()Landroid/os/incremental/IncrementalManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 251
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getApexManager()Lcom/android/server/pm/ApexManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 252
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 253
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    .line 254
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 255
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUpdateOwnershipHelper()Lcom/android/server/pm/UpdateOwnershipHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    .line 256
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingPackages:Ljava/util/Set;

    return-void
.end method

.method public static cannotInstallWithBadPermissionGroups(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z
    .registers 2

    .line 2373
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result p0

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static hasLauncherEntry(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z
    .registers 7

    .line 4615
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4616
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4617
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getActivities()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 4618
    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 4619
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 4620
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_4b

    .line 4623
    :cond_29
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v3

    move v4, v1

    .line 4624
    :goto_2e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4b

    .line 4625
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    if-eqz v5, :cond_48

    .line 4626
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_48

    const/4 p0, 0x1

    return p0

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_4b
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_4e
    return v1
.end method

.method public static onInstallComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V
    .registers 11

    .line 807
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 808
    const-string v0, "android.content.pm.extra.STATUS"

    .line 809
    invoke-static {p0}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result p0

    .line 808
    invoke-virtual {v3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 811
    :try_start_e
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 v0, 0x0

    .line 812
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 814
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v0, p2

    .line 813
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_23
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_e .. :try_end_23} :catch_23

    :catch_23
    return-void
.end method

.method public static updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V
    .registers 4

    .line 2431
    new-instance v0, Ljava/security/DigestInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 2434
    :goto_a
    :try_start_a
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->read()I

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_16

    const/4 p1, -0x1

    if-eq p0, p1, :cond_12

    goto :goto_a

    .line 2437
    :cond_12
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    return-void

    :catchall_16
    move-exception p0

    .line 2431
    :try_start_17
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0
.end method


# virtual methods
.method public final acquireWakeLock(I)J
    .registers 7

    .line 1113
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isSystemReady()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_b

    return-wide v1

    .line 1116
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInternalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1117
    :try_start_e
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_33

    .line 1118
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    if-eqz v3, :cond_2a

    .line 1120
    const-string v1, "installer:packages"

    const/4 v2, 0x1

    invoke-virtual {v3, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_33

    :catchall_28
    move-exception p0

    goto :goto_43

    .line 1123
    :cond_2a
    const-string p0, "PackageManager"

    const-string p1, "Unable to obtain power manager while obtaining wake lock"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    monitor-exit v0

    return-wide v1

    .line 1128
    :cond_33
    :goto_33
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xa1220

    int-to-long v3, p1

    mul-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 1130
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_e .. :try_end_44} :catchall_28

    throw p0
.end method

.method public final addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    .line 4081
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    if-nez v0, :cond_1b

    .line 4083
    :try_start_e
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 4084
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_1b

    :catchall_18
    move-exception v0

    goto/16 :goto_18b

    .line 4086
    :cond_1b
    :goto_1b
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4087
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    if-eqz v0, :cond_30

    if-eqz v8, :cond_30

    .line 4099
    iget-object v3, v0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/android/server/pm/PackageSetting;->setApexModuleName(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4101
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_18

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4103
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Landroid/util/Pair;

    move-result-object v2

    .line 4105
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Lcom/android/server/pm/ScanResult;

    .line 4106
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 4107
    new-instance v2, Lcom/android/server/pm/InstallRequest;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ScanResult;Lcom/android/server/pm/PackageSetting;)V

    .line 4111
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 4112
    :try_start_5a
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_71

    .line 4114
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    move-result-object v5

    goto :goto_72

    :catchall_6e
    move-exception v0

    goto/16 :goto_186

    :cond_71
    move-object v5, v6

    .line 4116
    :goto_72
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_5a .. :try_end_73} :catchall_6e

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v0, :cond_7e

    .line 4119
    iget-object v0, v0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    goto :goto_8d

    :cond_7e
    if-eqz v8, :cond_88

    .line 4122
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    goto :goto_8d

    :cond_88
    if-eqz v5, :cond_8d

    .line 4124
    invoke-virtual {v2, v5}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    .line 4128
    :cond_8d
    :goto_8d
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    const/4 v4, 0x0

    .line 4131
    :try_start_96
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4134
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4136
    invoke-virtual {v8, v3}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v8

    .line 4135
    invoke-static {v0, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4137
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v14

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 4138
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v16

    .line 4133
    invoke-static/range {v10 .. v16}, Lcom/android/server/pm/ReconcilePackageUtils;->reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;

    move-result-object v0

    const/high16 v8, 0x4000000

    and-int v8, p3, v8

    if-nez v8, :cond_d5

    .line 4140
    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z

    move-result v8

    goto :goto_da

    :catchall_cf
    move-exception v0

    goto/16 :goto_181

    :catch_d2
    move-exception v0

    goto/16 :goto_17b

    :cond_d5
    const/4 v8, -0x1

    .line 4142
    invoke-virtual {v2, v8}, Lcom/android/server/pm/InstallRequest;->setScannedPackageSettingAppId(I)V
    :try_end_d9
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_96 .. :try_end_d9} :catch_d2
    .catchall {:try_start_96 .. :try_end_d9} :catchall_cf

    move v8, v4

    .line 4144
    :goto_da
    :try_start_da
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ReconciledPackage;

    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4145
    invoke-virtual {v10}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v10

    .line 4144
    invoke-virtual {v1, v0, v10}, Lcom/android/server/pm/InstallPackageHelper;->commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_eb
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_da .. :try_end_eb} :catch_179
    .catchall {:try_start_da .. :try_end_eb} :catchall_cf

    .line 4152
    :try_start_eb
    monitor-exit v5
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_cf

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v0, 0x1

    if-eqz v9, :cond_110

    .line 4155
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4156
    :try_start_fa
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v0}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;Z)Z

    .line 4157
    monitor-exit v2
    :try_end_106
    .catchall {:try_start_fa .. :try_end_106} :catchall_10a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_110

    :catchall_10a
    move-exception v0

    :try_start_10b
    monitor-exit v2
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4160
    :cond_110
    :goto_110
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v2, :cond_13c

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 4161
    iget-object v2, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_13c

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 4163
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/android/server/pm/IncrementalProgressListener;

    .line 4164
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v8, v9, v10}, Lcom/android/server/pm/IncrementalProgressListener;-><init>(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    .line 4163
    invoke-virtual {v2, v5, v8}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    .line 4168
    :cond_13c
    iget-object v2, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 4169
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getAppMetadataSource()I

    move-result v2

    if-ne v2, v0, :cond_172

    .line 4170
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 4171
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 4172
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    .line 4170
    invoke-static {v3, v0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->extractAppMetadataFromApk(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_172

    .line 4173
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 4174
    :try_start_15e
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4175
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    .line 4176
    monitor-exit v1
    :try_end_168
    .catchall {:try_start_15e .. :try_end_168} :catchall_16c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_172

    :catchall_16c
    move-exception v0

    :try_start_16d
    monitor-exit v1
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4179
    :cond_172
    :goto_172
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    return-object v0

    :catch_179
    move-exception v0

    move v4, v8

    :goto_17b
    if-eqz v4, :cond_180

    .line 4148
    :try_start_17d
    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    .line 4150
    :cond_180
    throw v0

    .line 4152
    :goto_181
    monitor-exit v5
    :try_end_182
    .catchall {:try_start_17d .. :try_end_182} :catchall_cf

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4116
    :goto_186
    :try_start_186
    monitor-exit v4
    :try_end_187
    .catchall {:try_start_186 .. :try_end_187} :catchall_6e

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4101
    :goto_18b
    :try_start_18b
    monitor-exit v2
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_18

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final adjustScanFlags(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;Lcom/android/server/pm/pkg/AndroidPackage;)I
    .registers 8

    .line 5027
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/pm/ScanPackageUtils;->adjustScanFlagsWithPackageSetting(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;)I

    move-result p1

    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_14

    .line 5032
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result p2

    const/16 p4, 0x1c

    if-ge p2, p4, :cond_14

    const/4 p2, 0x1

    goto :goto_15

    :cond_14
    move p2, p3

    :goto_15
    const/high16 p4, 0x20000

    and-int v0, p1, p4

    if-nez v0, :cond_72

    .line 5034
    invoke-static {p5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 5035
    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    if-nez p2, :cond_72

    .line 5037
    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result p2

    if-nez p2, :cond_72

    .line 5039
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 5041
    :try_start_37
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p3, p3}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p3
    :try_end_43
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_37 .. :try_end_43} :catch_46
    .catchall {:try_start_37 .. :try_end_43} :catchall_44

    goto :goto_47

    :catchall_44
    move-exception p0

    goto :goto_6d

    :catch_46
    const/4 p3, 0x0

    :goto_47
    if-eqz p3, :cond_68

    .line 5045
    :try_start_49
    invoke-virtual {p3}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result p3

    if-eqz p3, :cond_68

    .line 5050
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string p3, "android"

    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 5051
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 5052
    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p3

    .line 5051
    invoke-static {p0, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p0

    if-eqz p0, :cond_68

    or-int/2addr p1, p4

    .line 5056
    :cond_68
    monitor-exit p2
    :try_end_69
    .catchall {:try_start_49 .. :try_end_69} :catchall_44

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p1

    :goto_6d
    :try_start_6d
    monitor-exit p2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_44

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_72
    return p1
.end method

.method public final assertOverlayIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .registers 5

    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_a3

    and-int/lit8 p2, p2, 0x10

    if-nez p2, :cond_38

    .line 4909
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->isOverlayMutable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto/16 :goto_1a8

    .line 4910
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Overlay "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4911
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is static and cannot be upgraded."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0xf

    .line 4910
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_38
    const/high16 p0, 0x480000

    and-int/2addr p0, p3

    if-eqz p0, :cond_73

    .line 4917
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result p2

    if-ge p0, p2, :cond_1a8

    .line 4918
    const-string p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "System overlay "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targets an SDK below the required SDK level of vendor overlays ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4921
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). This will become an install error in a future release"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4918
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4925
    :cond_73
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, p2, :cond_1a8

    .line 4926
    const-string p0, "PackageManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "System overlay "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targets an SDK below the required SDK level of system overlays ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). This will become an install error in a future release"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4936
    :cond_a3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p2

    const/16 p3, 0x1d

    if-ge p2, p3, :cond_f3

    .line 4938
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 4939
    :try_start_b3
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v0, "android"

    invoke-virtual {p3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p3

    .line 4940
    monitor-exit p2
    :try_end_be
    .catchall {:try_start_b3 .. :try_end_be} :catchall_ed

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4941
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p2

    if-eqz p2, :cond_cc

    goto :goto_f3

    .line 4942
    :cond_cc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Overlay "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4943
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must target Q or later, or be signed with the platform certificate"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x10

    .line 4942
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :catchall_ed
    move-exception p0

    .line 4940
    :try_start_ee
    monitor-exit p2
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 4957
    :cond_f3
    :goto_f3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1a8

    .line 4959
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 4960
    :try_start_101
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p3

    .line 4961
    monitor-exit p2
    :try_end_10e
    .catchall {:try_start_101 .. :try_end_10e} :catchall_1a2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz p3, :cond_1a8

    .line 4963
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p2

    if-nez p2, :cond_1a8

    .line 4965
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p2, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    if-eqz p3, :cond_175

    .line 4974
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 4975
    :try_start_129
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 4977
    monitor-exit p2
    :try_end_134
    .catchall {:try_start_129 .. :try_end_134} :catchall_16f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4978
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_142

    goto :goto_1a8

    .line 4979
    :cond_142
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Overlay "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4980
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " signed with a different certificate than both the reference package and target "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4982
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", and the overlay lacks <overlay android:targetName>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x12

    .line 4979
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :catchall_16f
    move-exception p0

    .line 4977
    :try_start_170
    monitor-exit p2
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_16f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 4966
    :cond_175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Overlay "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4967
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and target "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4968
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signed with different certificates, and the overlay lacks <overlay android:targetName>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x11

    .line 4966
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :catchall_1a2
    move-exception p0

    .line 4961
    :try_start_1a3
    monitor-exit p2
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_1a8
    :goto_1a8
    return-void
.end method

.method public final assertPackageIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .registers 9

    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_7

    .line 4744
    invoke-static {p1}, Lcom/android/server/pm/ScanPackageUtils;->assertCodePolicy(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4747
    :cond_7
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1db

    and-int/lit8 v0, p3, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    and-int/lit16 v3, p3, 0x1000

    if-eqz v3, :cond_1c

    move v3, v2

    goto :goto_1d

    :cond_1c
    move v3, v1

    :goto_1d
    const/high16 v4, 0x4000000

    and-int/2addr v4, p3

    if-eqz v4, :cond_23

    move v1, v2

    :cond_23
    const/4 v2, -0x5

    if-nez v0, :cond_28

    if-eqz v3, :cond_56

    .line 4760
    :cond_28
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4761
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    if-eqz v1, :cond_3b

    goto :goto_56

    .line 4763
    :cond_3b
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4764
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is an APEX package and can\'t be installed as an APK."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 4769
    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v0

    .line 4770
    invoke-virtual {v0, p1}, Lcom/android/server/pm/KeySetManagerService;->assertScannedPackageValid(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4772
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4774
    :try_start_69
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 4775
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getCoreAndroidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_7e

    goto :goto_b8

    .line 4776
    :cond_7e
    const-string p0, "PackageManager"

    const-string p2, "*************************************************"

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    const-string p0, "PackageManager"

    const-string p2, "Core android package being redefined.  Skipping."

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4778
    const-string p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " codePath="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    const-string p0, "PackageManager"

    const-string p1, "*************************************************"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4780
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Core android package being redefined.  Skipping."

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_b5
    move-exception p0

    goto/16 :goto_1d6

    :cond_b8
    :goto_b8
    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_eb

    .line 4786
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4787
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cb

    goto :goto_eb

    .line 4788
    :cond_cb
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4789
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already installed.  Skipping duplicate."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 4793
    :cond_eb
    :goto_eb
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v2

    if-eqz v2, :cond_111

    if-nez v1, :cond_10b

    .line 4796
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4797
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_102

    goto :goto_10b

    .line 4798
    :cond_102
    const-string p0, "Duplicate static shared lib provider package"

    const/16 p1, -0xd

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 4802
    :cond_10b
    :goto_10b
    invoke-static {p1, p3}, Lcom/android/server/pm/ScanPackageUtils;->assertStaticSharedLibraryIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 4803
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->assertStaticSharedLibraryVersionCodeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_111
    and-int/lit16 v2, p3, 0x80

    if-eqz v2, :cond_1b6

    .line 4815
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService;->isExpectingBetter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 4816
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relax SCAN_REQUIRE_KNOWN requirement for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4817
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4816
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b6

    .line 4819
    :cond_13d
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_194

    .line 4825
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15a

    goto :goto_1b6

    .line 4826
    :cond_15a
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4827
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " found at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4828
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but expected at "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4829
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x17

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 4833
    :cond_194
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4834
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found; ignoring."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x13

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1b6
    :goto_1b6
    if-eqz v1, :cond_1bf

    .line 4845
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/resolution/ComponentResolver;->assertProvidersNotDefined(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4850
    :cond_1bf
    invoke-static {p1}, Lcom/android/server/pm/ScanPackageUtils;->assertProcessesAreValid(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4853
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->assertPackageWithSharedUserIdIsPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4856
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1ce

    .line 4857
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->assertOverlayIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 4862
    :cond_1ce
    invoke-static {p1, p2}, Lcom/android/server/pm/ScanPackageUtils;->assertMinSignatureSchemeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 4863
    monitor-exit v0
    :try_end_1d2
    .catchall {:try_start_69 .. :try_end_1d2} :catchall_b5

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_1d6
    :try_start_1d6
    monitor-exit v0
    :try_end_1d7
    .catchall {:try_start_1d6 .. :try_end_1d7} :catchall_b5

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 4749
    :cond_1db
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 p1, -0x2

    const-string p2, "Code and resource paths haven\'t been set correctly"

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final assertPackageWithSharedUserIdIsPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 7

    .line 4994
    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 4995
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 4996
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result v0

    if-nez v0, :cond_8f

    const/4 v0, 0x0

    .line 4999
    :try_start_13
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1
    :try_end_1b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_13 .. :try_end_1b} :catch_33

    .line 5000
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    .line 5002
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_2c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_29 .. :try_end_2c} :catch_33

    goto :goto_33

    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
    :try_end_33
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2f .. :try_end_33} :catch_33

    :catch_33
    :goto_33
    if-eqz v0, :cond_8f

    .line 5005
    invoke-virtual {v0}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 5008
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 5009
    :try_start_43
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v1, "android"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 5010
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_89

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 5011
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_5c

    goto :goto_8f

    .line 5012
    :cond_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Apps that share a user with a privileged app must themselves be marked as privileged. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5014
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " shares privileged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5015
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x13

    .line 5012
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :catchall_89
    move-exception p0

    .line 5010
    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_8f
    :goto_8f
    return-void
.end method

.method public final assertStaticSharedLibraryVersionCodeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 19

    move-object/from16 v0, p0

    .line 4872
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 4873
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v0, :cond_54

    .line 4875
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_54

    .line 4877
    invoke-virtual {v0, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    .line 4878
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v8

    .line 4879
    invoke-virtual {v8}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v8

    .line 4880
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v12

    cmp-long v10, v10, v12

    const-wide/16 v11, 0x1

    if-gez v10, :cond_3e

    add-long/2addr v8, v11

    .line 4881
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_4f

    .line 4882
    :cond_3e
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v13

    .line 4883
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v15

    cmp-long v7, v13, v15

    if-lez v7, :cond_52

    sub-long/2addr v8, v11

    .line 4884
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_52
    move-wide v1, v8

    move-wide v3, v1

    .line 4891
    :cond_54
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-ltz v0, :cond_65

    .line 4892
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_65

    return-void

    .line 4893
    :cond_65
    const-string v0, "Static shared lib version codes must be ordered as lib versions"

    const/16 v1, -0xe

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0
.end method

.method public checkExistingBetterPackages(Landroid/util/ArrayMap;Ljava/util/List;II)V
    .registers 12

    const/4 v0, 0x0

    .line 3987
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_b6

    .line 3988
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3989
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_b2

    .line 3992
    :cond_19
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 3994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected better "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but never showed up; reverting to system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 3997
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3998
    invoke-virtual {v3, v2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageRescanFlagsAndReparseFlags(Ljava/io/File;II)Landroid/util/Pair;

    move-result-object v3

    .line 4000
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4001
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4003
    const-string v5, "PackageManager"

    if-nez v4, :cond_68

    .line 4004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unexpected fallback path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    .line 4007
    :cond_68
    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v1}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4009
    :try_start_6f
    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v6
    :try_end_77
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6f .. :try_end_77} :catch_8d

    .line 4010
    :try_start_77
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    .line 4013
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 4014
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catchall {:try_start_77 .. :try_end_84} :catchall_85

    goto :goto_87

    :catchall_85
    move-exception v1

    goto :goto_8f

    :cond_87
    :goto_87
    if-eqz v6, :cond_b2

    .line 4016
    :try_start_89
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_8c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_b2

    :catch_8d
    move-exception v1

    goto :goto_9a

    :goto_8f
    if-eqz v6, :cond_99

    .line 4009
    :try_start_91
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception v2

    :try_start_96
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_99
    :goto_99
    throw v1
    :try_end_9a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_96 .. :try_end_9a} :catch_8d

    .line 4017
    :goto_9a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse original system package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4018
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4017
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    :goto_b2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_b6
    return-void
.end method

.method public final checkNoAppStorageIsConsistent(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 4

    const/4 p0, 0x1

    if-nez p1, :cond_4

    return p0

    .line 1476
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object p1

    const-string v0, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    .line 1478
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManager$Property;

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 1479
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_2e

    :cond_24
    if-eqz p2, :cond_2d

    .line 1482
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p1

    if-eqz p1, :cond_2d

    return p0

    :cond_2d
    return v0

    :cond_2e
    :goto_2e
    if-eqz p2, :cond_38

    .line 1480
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_38

    :cond_37
    return v0

    :cond_38
    :goto_38
    return p0
.end method

.method public final cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V
    .registers 3

    .line 4209
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 4210
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    if-lez v0, :cond_32

    .line 4211
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4212
    :try_start_18
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 4213
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_32
    return-void
.end method

.method public cleanupDisabledPackageSettings(Ljava/util/List;[II)V
    .registers 11

    .line 3685
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_c7

    .line 3686
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3687
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3692
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->removeDisabledSystemPackageLPw(Ljava/lang/String;)V

    .line 3694
    const-string v4, "Updated system package "

    if-nez v3, :cond_38

    .line 3696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " no longer exists; removing its data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a6

    .line 3702
    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " no longer exists; rescanning package on data"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3711
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v5, v3, v1}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 3712
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_63

    .line 3714
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 3716
    :cond_63
    new-instance v5, Ljava/io/File;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3717
    :try_start_6c
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3
    :try_end_74
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6c .. :try_end_74} :catch_7d

    .line 3718
    :try_start_74
    invoke-virtual {p0, v5, v6, p3}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_7f

    if-eqz v3, :cond_a5

    .line 3719
    :try_start_79
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_7c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_a5

    :catch_7d
    move-exception v3

    goto :goto_8b

    :catchall_7f
    move-exception v5

    if-eqz v3, :cond_8a

    .line 3717
    :try_start_82
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception v3

    :try_start_87
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8a
    :goto_8a
    throw v5
    :try_end_8b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_87 .. :try_end_8b} :catch_7d

    .line 3720
    :goto_8b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse updated, ex-system package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3721
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3720
    const-string v5, "PackageManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    :goto_a5
    move-object v3, v4

    .line 3729
    :goto_a6
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-eqz v4, :cond_bf

    .line 3730
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_bf

    .line 3731
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v2, v4, p2}, Lcom/android/server/pm/RemovePackageHelper;->removePackageData(Lcom/android/server/pm/PackageSetting;[I)V

    :cond_bf
    const/4 v2, 0x5

    .line 3733
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :cond_c7
    return-void
.end method

.method public final commitInstallPackages(Ljava/util/List;)Z
    .registers 12

    .line 1389
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    .line 1391
    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ReconciledPackage;

    .line 1392
    iget-object v9, v2, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 1393
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1395
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v6

    const-string v7, "installPackageLI"

    const/16 v8, 0x10

    const/4 v5, -0x1

    move-object v3, p0

    .line 1394
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->freezePackageForInstall(Ljava/lang/String;IILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    .line 1398
    invoke-virtual {v9, p0}, Lcom/android/server/pm/InstallRequest;->setFreezer(Lcom/android/server/pm/PackageFreezer;)V

    move-object p0, v3

    goto :goto_c

    :catchall_35
    move-exception v0

    move-object p0, v0

    goto :goto_73

    :cond_38
    move-object v3, p0

    .line 1400
    iget-object p0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p0
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_35

    const-wide/32 v4, 0x40000

    .line 1402
    :try_start_44
    const-string v0, "commitPackages"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1403
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lcom/android/server/pm/InstallPackageHelper;->commitPackagesLocked(Ljava/util/List;[I)V
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_68

    .line 1405
    :try_start_54
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1407
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_65

    :try_start_58
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1408
    invoke-virtual {v3, p1}, Lcom/android/server/pm/InstallPackageHelper;->executePostCommitStepsLIF(Ljava/util/List;)V
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_35

    if-eqz v1, :cond_63

    .line 1409
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_63
    const/4 p0, 0x1

    return p0

    :catchall_65
    move-exception v0

    move-object p1, v0

    goto :goto_6e

    :catchall_68
    move-exception v0

    move-object p1, v0

    .line 1405
    :try_start_6a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1406
    throw p1

    .line 1407
    :goto_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_65

    :try_start_6f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_35

    :goto_73
    if-eqz v1, :cond_7e

    .line 1389
    :try_start_75
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7e

    :catchall_79
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7e
    :goto_7e
    throw p0
.end method

.method public final commitPackageSettings(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/ReconciledPackage;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move-object/from16 v1, p4

    .line 499
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 500
    iget-object v9, v1, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 501
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getScanRequestOldPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    .line 502
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v6

    .line 503
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getParseFlags()I

    move-result v4

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v4, :cond_25

    move v13, v12

    goto :goto_26

    :cond_25
    move v13, v11

    .line 504
    :goto_26
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_3f

    .line 505
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 506
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setUpCustomResolverActivity(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    :cond_3f
    const/4 v14, 0x0

    if-eqz v7, :cond_54

    .line 511
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v15

    cmp-long v4, v4, v15

    if-gez v4, :cond_54

    .line 512
    invoke-virtual {v3, v14}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 513
    invoke-virtual {v3, v11}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    .line 518
    :cond_54
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b6

    .line 519
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectoryPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/app-metadata/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 523
    :cond_80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "app.metadata"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 524
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->hasAppMetadataFile()Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 525
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    const/4 v4, 0x2

    .line 527
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    goto :goto_b6

    .line 530
    :cond_a4
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v5

    .line 531
    const-string v15, "android.content.PROPERTY_ANDROID_SAFETY_LABEL"

    invoke-interface {v5, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 533
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 534
    invoke-virtual {v3, v12}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    .line 539
    :cond_b6
    :goto_b6
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 540
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPlatformPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    .line 544
    :cond_c7
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    move-object v5, v4

    iget-object v4, v1, Lcom/android/server/pm/ReconciledPackage;->mAllowedSharedLibraryInfos:Ljava/util/List;

    .line 547
    invoke-virtual {v1}, Lcom/android/server/pm/ReconciledPackage;->getCombinedAvailablePackages()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v17, v5

    move-object v5, v1

    move-object/from16 v1, v17

    .line 545
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/SharedLibrariesImpl;->commitSharedLibraryChanges(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/List;Ljava/util/Map;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 549
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallRequest;->setLibraryConsumers(Ljava/util/ArrayList;)V

    and-int/lit8 v4, v6, 0x10

    if-eqz v4, :cond_e1

    goto :goto_f4

    :cond_e1
    and-int/lit16 v4, v6, 0x400

    if-eqz v4, :cond_e6

    goto :goto_f4

    :cond_e6
    and-int/lit16 v4, v6, 0x800

    if-eqz v4, :cond_eb

    goto :goto_f4

    .line 561
    :cond_eb
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-interface {v4, v8}, Lcom/android/server/pm/Computer;->checkPackageFrozen(Ljava/lang/String;)V

    .line 564
    :goto_f4
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result v4

    if-eqz v1, :cond_127

    .line 568
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_102

    if-eqz v4, :cond_127

    :cond_102
    move v5, v11

    .line 569
    :goto_103
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_127

    .line 570
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 571
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 572
    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 573
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v8

    const-string/jumbo v12, "update lib"

    const/16 v14, 0xc

    .line 572
    invoke-virtual {v11, v15, v8, v12, v14}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    goto :goto_103

    .line 580
    :cond_127
    const-string/jumbo v1, "updateSettings"

    const-wide/32 v11, 0x40000

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 582
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 585
    :try_start_138
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/pm/Settings;->insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 587
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x800000

    and-int/2addr v5, v6

    if-eqz v5, :cond_158

    .line 589
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/ApexManager;->registerApkInApex(Lcom/android/server/pm/pkg/AndroidPackage;)V

    goto :goto_158

    :catchall_155
    move-exception v0

    goto/16 :goto_246

    .line 592
    :cond_158
    :goto_158
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v5

    if-eqz v5, :cond_166

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-nez v5, :cond_168

    :cond_166
    if-eqz v4, :cond_17c

    .line 593
    :cond_168
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    array-length v8, v5

    const/4 v14, 0x0

    :goto_172
    if-ge v14, v8, :cond_17c

    aget v15, v5, v14

    .line 594
    invoke-virtual {v3, v15}, Lcom/android/server/pm/PackageSetting;->restoreComponentSettings(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_172

    :cond_17c
    const/high16 v5, 0x4000000

    and-int/2addr v5, v6

    if-nez v5, :cond_18c

    .line 602
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v5

    .line 603
    invoke-virtual {v5, v2}, Lcom/android/server/pm/KeySetManagerService;->addScannedPackageLPw(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 606
    :cond_18c
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 607
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v8, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    invoke-virtual {v14, v2, v13, v8, v5}, Lcom/android/server/pm/resolution/ComponentResolver;->addAllComponents(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/Computer;)V

    .line 608
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    and-int/lit16 v14, v6, 0x400

    if-eqz v14, :cond_1a5

    const/4 v14, 0x1

    goto :goto_1a6

    :cond_1a5
    const/4 v14, 0x0

    :goto_1a6
    invoke-virtual {v8, v5, v3, v4, v14}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    .line 610
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageManagerService;->addAllPackageProperties(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 614
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->isArchived()Z

    move-result v4

    if-nez v4, :cond_1d4

    if-eqz v7, :cond_1c9

    .line 615
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-nez v4, :cond_1bd

    goto :goto_1c9

    .line 619
    :cond_1bd
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 620
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;

    move-result-object v5

    .line 619
    invoke-interface {v4, v7, v3, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->migrateState(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/verify/domain/DomainSet;)V

    goto :goto_1d4

    .line 616
    :cond_1c9
    :goto_1c9
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 617
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;

    move-result-object v5

    .line 616
    invoke-interface {v4, v3, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->addPackage(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/verify/domain/DomainSet;)V

    .line 624
    :cond_1d4
    :goto_1d4
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_1de
    if-ge v5, v4, :cond_215

    .line 628
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 629
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 630
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/android/server/pm/PackageManagerService;->addInstrumentation(Landroid/content/ComponentName;Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)V

    if-eqz v13, :cond_212

    if-nez v14, :cond_206

    .line 633
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_20b

    :cond_206
    const/16 v8, 0x20

    .line 635
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    :goto_20b
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_212
    add-int/lit8 v5, v5, 0x1

    goto :goto_1de

    .line 644
    :cond_215
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    .line 645
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_230

    .line 646
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    monitor-enter v4
    :try_end_224
    .catchall {:try_start_138 .. :try_end_224} :catchall_155

    .line 647
    :try_start_224
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 648
    monitor-exit v4

    goto :goto_230

    :catchall_22d
    move-exception v0

    monitor-exit v4
    :try_end_22f
    .catchall {:try_start_224 .. :try_end_22f} :catchall_22d

    :try_start_22f
    throw v0

    .line 651
    :cond_230
    :goto_230
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    and-int/lit16 v2, v6, 0x2000

    if-eqz v2, :cond_23a

    const/4 v2, 0x1

    goto :goto_23b

    :cond_23a
    const/4 v2, 0x0

    :goto_23b
    invoke-interface {v0, v3, v2, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V

    .line 653
    monitor-exit v1
    :try_end_23f
    .catchall {:try_start_22f .. :try_end_23f} :catchall_155

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 655
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 653
    :goto_246
    :try_start_246
    monitor-exit v1
    :try_end_247
    .catchall {:try_start_246 .. :try_end_247} :catchall_155

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final commitPackagesLocked(Ljava/util/List;[I)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 2445
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/ReconciledPackage;

    .line 2446
    iget-object v11, v10, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 2447
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v12

    .line 2448
    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2450
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->onCommitStarted()V

    .line 2451
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_dd

    .line 2452
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v4}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2455
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 2456
    invoke-interface {v2, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 2459
    invoke-virtual {v11, v2, v6}, Lcom/android/server/pm/InstallRequest;->setScannedPackageSettingFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)V

    .line 2461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2462
    invoke-virtual {v11, v2, v3}, Lcom/android/server/pm/InstallRequest;->setScannedPackageSettingLastUpdateTime(J)V

    .line 2463
    invoke-virtual {v11, v2, v3}, Lcom/android/server/pm/InstallRequest;->setScannedPackageSettingFirstInstallTime(J)V

    .line 2465
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 2466
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 2467
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2468
    invoke-virtual {v8}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    .line 2466
    invoke-virtual {v5, v3, v7, v6, v8}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 2469
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v2

    if-eqz v2, :cond_94

    if-eqz v0, :cond_94

    .line 2471
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v2, v0, v15}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 2472
    invoke-virtual {v1, v0}, Lcom/android/server/pm/InstallPackageHelper;->disableSystemPackageLPw(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 2476
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/CleanUpArgs;

    .line 2477
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/server/pm/CleanUpArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    goto :goto_dd

    .line 2479
    :cond_8d
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v0

    iput-object v14, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    goto :goto_dd

    .line 2484
    :cond_94
    :try_start_94
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iget-object v3, v10, Lcom/android/server/pm/ReconciledPackage;->mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

    .line 2486
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->isKeepArtProfile()Z

    move-result v8

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2484
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackage(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    :try_end_a1
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_94 .. :try_end_a1} :catch_a2

    goto :goto_a9

    :catch_a2
    move-exception v0

    .line 2488
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-nez v2, :cond_d5

    .line 2494
    :goto_a9
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v0

    if-ne v0, v15, :cond_dd

    .line 2495
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2496
    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2495
    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_dd

    .line 2498
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2499
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d1

    move v0, v15

    goto :goto_d2

    :cond_d1
    move v0, v13

    :goto_d2
    iput-boolean v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    goto :goto_dd

    .line 2489
    :cond_d5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2505
    :cond_dd
    :goto_dd
    invoke-virtual {v1, v10, v6}, Lcom/android/server/pm/InstallPackageHelper;->commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 2506
    invoke-virtual {v1, v0, v6, v11}, Lcom/android/server/pm/InstallPackageHelper;->updateSettingsLI(Lcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallRequest;)V

    .line 2508
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_f8

    .line 2511
    invoke-virtual {v0, v6, v15}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v2

    .line 2510
    invoke-virtual {v11, v2}, Lcom/android/server/pm/InstallRequest;->setNewUsers([I)V

    .line 2512
    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageSetting;->setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;

    .line 2514
    :cond_f8
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v2

    if-ne v2, v15, :cond_12a

    .line 2519
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2520
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v3

    .line 2521
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getResponsibleInstallerTitles()Landroid/util/SparseArray;

    move-result-object v5

    .line 2522
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v7

    .line 2519
    invoke-virtual {v2, v0, v3, v5, v7}, Lcom/android/server/pm/PackageManagerService;->markPackageAsArchivedIfNeeded(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/ArchivedPackageParcel;Landroid/util/SparseArray;[I)V

    .line 2523
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 2524
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageSetting;->setSplitNames([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2530
    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageSetting;->setSplitRevisionCodes([I)Lcom/android/server/pm/PackageSetting;

    .line 2534
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getDeveloperVerificationStatus()Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v2

    .line 2533
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setDeveloperVerificationStatusInternal(Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;)V

    .line 2536
    :cond_12a
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->onCommitFinished()V

    goto/16 :goto_8

    :cond_12f
    const/4 v0, 0x3

    .line 2538
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->invalidateGetPackagesForUidCache(I)V

    .line 2540
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateCheckPackageCache()V

    return-void
.end method

.method public final commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 269
    iget-object v2, v1, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 271
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_26

    .line 272
    const-string v5, "android"

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 274
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->getSdkVersion()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v5

    .line 275
    invoke-interface {v5, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 278
    :cond_26
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v5

    .line 279
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestOldPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 280
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 281
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getRealPackageName()Ljava/lang/String;

    move-result-object v8

    .line 283
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    if-eqz v9, :cond_6e

    .line 284
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 285
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    .line 284
    invoke-virtual {v9, v10}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9

    .line 286
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 287
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    .line 286
    invoke-virtual {v10, v11}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v10

    if-eqz v9, :cond_6e

    if-eq v9, v10, :cond_6e

    .line 291
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    .line 293
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v9, v4}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    move-result v10

    if-eqz v10, :cond_6e

    .line 295
    iget v9, v9, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v2, v9}, Lcom/android/server/pm/InstallRequest;->setRemovedAppId(I)V

    .line 299
    :cond_6e
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->isExistingSettingCopied()Z

    move-result v9

    if-eqz v9, :cond_81

    .line 300
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 301
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/pm/PackageSetting;->updateFrom(Lcom/android/server/pm/PackageSetting;)V

    move-object v13, v7

    goto :goto_b2

    .line 303
    :cond_81
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    if-eqz v7, :cond_a6

    .line 305
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 307
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v11

    .line 306
    invoke-static {v3, v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v11

    .line 308
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 305
    invoke-virtual {v10, v11, v12}, Lcom/android/server/pm/Settings;->addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 311
    :cond_a6
    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/pm/Settings;->removeRenamedPackageLPw(Ljava/lang/String;)V

    :goto_b1
    move-object v13, v9

    .line 314
    :goto_b2
    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v13}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    if-eqz v7, :cond_d9

    .line 316
    invoke-virtual {v7, v13}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 317
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v9

    if-eqz v9, :cond_d9

    const/4 v9, 0x2

    .line 318
    invoke-static {v9}, Lcom/android/server/pm/SharedUidMigration;->applyStrategy(I)Z

    move-result v9

    if-eqz v9, :cond_d9

    .line 319
    invoke-virtual {v7}, Lcom/android/server/pm/SharedUserSetting;->isSingleUser()Z

    move-result v9

    if-eqz v9, :cond_d9

    .line 321
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9, v7}, Lcom/android/server/pm/Settings;->convertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V

    .line 324
    :cond_d9
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->isForceQueryableOverride()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_e3

    .line 325
    invoke-virtual {v13, v10}, Lcom/android/server/pm/PackageSetting;->setForceQueryableOverride(Z)Lcom/android/server/pm/PackageSetting;

    .line 328
    :cond_e3
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v9

    const/high16 v11, 0x4000000

    and-int/2addr v11, v5

    if-eqz v11, :cond_ee

    move v11, v10

    goto :goto_ef

    :cond_ee
    move v11, v4

    :goto_ef
    if-eqz v6, :cond_f3

    move v12, v10

    goto :goto_f4

    :cond_f3
    move v12, v4

    :goto_f4
    if-eqz v12, :cond_fd

    .line 332
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    goto :goto_fe

    :cond_fd
    const/4 v15, 0x0

    :goto_fe
    if-nez v11, :cond_106

    .line 333
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v16

    if-nez v16, :cond_109

    :cond_106
    move/from16 v17, v10

    goto :goto_116

    .line 334
    :cond_109
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v17, v10

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService;->getSystemAppUpdateOwnerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_117

    :goto_116
    const/4 v4, 0x0

    .line 335
    :goto_117
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    .line 336
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/android/server/pm/UpdateOwnershipHelper;->isUpdateOwnershipDenylisted(Ljava/lang/String;)Z

    move-result v10

    if-eqz v15, :cond_126

    move/from16 v14, v17

    goto :goto_127

    :cond_126
    const/4 v14, 0x0

    :goto_127
    const/high16 v18, 0x2000000

    if-eqz v9, :cond_1bf

    .line 343
    iget-object v4, v9, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14a

    .line 344
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v19, v2

    iget-object v2, v9, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_14c

    .line 348
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v2

    .line 347
    invoke-virtual {v9, v2}, Lcom/android/server/pm/InstallSource;->setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v9

    goto :goto_14c

    :cond_14a
    move-object/from16 v19, v2

    :cond_14c
    :goto_14c
    if-nez v11, :cond_1bb

    .line 356
    iget v2, v9, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_158

    .line 357
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    goto :goto_15c

    .line 358
    :cond_158
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v2

    :goto_15c
    if-eqz v12, :cond_175

    if-ltz v2, :cond_167

    .line 363
    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_175

    goto :goto_172

    .line 366
    :cond_167
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v2

    array-length v2, v2

    .line 367
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v4

    if-gt v2, v4, :cond_175

    :goto_172
    move/from16 v2, v17

    goto :goto_176

    :cond_175
    const/4 v2, 0x0

    .line 368
    :goto_176
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    and-int v4, v4, v18

    if-eqz v4, :cond_181

    move/from16 v4, v17

    goto :goto_182

    :cond_181
    const/4 v4, 0x0

    .line 370
    :goto_182
    iget-object v11, v9, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 371
    invoke-static {v15, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    .line 372
    iget-object v15, v0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    move/from16 v20, v2

    iget-object v2, v9, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 373
    invoke-virtual {v15, v2}, Lcom/android/server/pm/UpdateOwnershipHelper;->isUpdateOwnershipDenyListProvider(Ljava/lang/String;)Z

    move-result v2

    if-nez v20, :cond_1b2

    if-eqz v4, :cond_19a

    if-nez v10, :cond_19a

    if-eqz v2, :cond_19c

    :cond_19a
    const/4 v2, 0x0

    goto :goto_1ad

    :cond_19c
    if-nez v14, :cond_1a3

    if-nez v12, :cond_1a1

    goto :goto_1a3

    :cond_1a1
    :goto_1a1
    const/4 v2, 0x0

    goto :goto_1a8

    :cond_1a3
    :goto_1a3
    if-eqz v14, :cond_1bb

    if-nez v11, :cond_1bb

    goto :goto_1a1

    .line 388
    :goto_1a8
    invoke-virtual {v9, v2}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v9

    goto :goto_1bb

    .line 385
    :goto_1ad
    invoke-virtual {v9, v2}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v9

    goto :goto_1bb

    :cond_1b2
    const/4 v2, 0x0

    if-eqz v11, :cond_1b7

    if-nez v14, :cond_1bb

    .line 392
    :cond_1b7
    invoke-virtual {v9, v2}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v9

    .line 396
    :cond_1bb
    :goto_1bb
    invoke-virtual {v13, v9}, Lcom/android/server/pm/PackageSetting;->setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;

    goto :goto_1e0

    :cond_1bf
    move-object/from16 v19, v2

    .line 398
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_1e0

    if-eqz v14, :cond_1d2

    .line 401
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d2

    move/from16 v2, v17

    goto :goto_1d3

    :cond_1d2
    const/4 v2, 0x0

    :goto_1d3
    if-eqz v12, :cond_1dd

    if-eqz v2, :cond_1d8

    goto :goto_1dd

    :cond_1d8
    const/4 v2, 0x0

    .line 411
    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    goto :goto_1e0

    .line 409
    :cond_1dd
    :goto_1dd
    invoke-virtual {v13, v4}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    :cond_1e0
    :goto_1e0
    const/high16 v2, 0x800000

    and-int/2addr v2, v5

    if-eqz v2, :cond_1f6

    and-int v2, v5, v18

    if-eqz v2, :cond_1ec

    move/from16 v4, v17

    goto :goto_1ed

    :cond_1ec
    const/4 v4, 0x0

    .line 417
    :goto_1ed
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setApkInUpdatedApex(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 420
    :cond_1f6
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/InstallRequest;->getApexModuleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setApexModuleName(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 428
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setUid(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 429
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    .line 431
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v13, v6}, Lcom/android/server/pm/Settings;->writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    if-eqz v8, :cond_220

    .line 434
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_220
    iget-object v2, v1, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    if-nez v2, :cond_230

    if-eqz v6, :cond_23d

    .line 439
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSharedLibraryDependencies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23d

    .line 442
    :cond_230
    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    const/4 v15, 0x0

    iget-object v2, v1, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    const/4 v14, 0x0

    move-object/from16 v17, p2

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdate(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    .line 446
    :cond_23d
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 447
    iget-boolean v3, v1, Lcom/android/server/pm/ReconciledPackage;->mRemoveAppKeySetData:Z

    if-eqz v3, :cond_250

    .line 448
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    .line 450
    :cond_250
    iget-boolean v2, v1, Lcom/android/server/pm/ReconciledPackage;->mSharedUserSignaturesChanged:Z

    if-eqz v2, :cond_25e

    .line 451
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v7, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 452
    iget-object v2, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v1, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-object v3, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 454
    :cond_25e
    iget-object v2, v1, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;

    .line 456
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v2

    .line 458
    invoke-virtual {v0, v12, v13, v6, v1}, Lcom/android/server/pm/InstallPackageHelper;->commitPackageSettings(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/ReconciledPackage;)V

    .line 459
    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v1

    if-eqz v1, :cond_27b

    .line 460
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    .line 463
    :cond_27b
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28a

    const/high16 v1, 0x3f800000    # 1.0f

    .line 464
    invoke-virtual {v13, v1}, Lcom/android/server/pm/PackageSetting;->setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;

    .line 469
    :cond_28a
    invoke-static {v13}, Lcom/android/server/pm/UpdateOwnershipHelper;->hasValidOwnershipDenyList(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    if-eqz v1, :cond_29c

    .line 470
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v13}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallPackageHelper;Lcom/android/server/pm/PackageSetting;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_29c
    return-object v12
.end method

.method public final completeInstallProcess(Ljava/util/List;Ljava/util/Map;Z)V
    .registers 12

    .line 1415
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingPackages:Ljava/util/Set;

    monitor-enter v1

    .line 1416
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 1417
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInternalErrorCode()I

    move-result v3

    const/16 v4, -0x28

    if-ne v3, v4, :cond_1c

    goto :goto_7

    .line 1421
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v2

    if-nez v2, :cond_23

    goto :goto_7

    .line 1426
    :cond_23
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingPackages:Ljava/util/Set;

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_2d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_e5

    .line 1428
    :cond_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_2d

    if-eqz p3, :cond_95

    .line 1430
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    .line 1431
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppOpsManagerInternal()Landroid/app/AppOpsManagerInternal;

    move-result-object p3

    .line 1432
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v1

    .line 1431
    invoke-virtual {p3, v0, v1}, Landroid/app/AppOpsManagerInternal;->onPackageAdded(Ljava/lang/String;I)V

    .line 1433
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_5d

    goto :goto_38

    .line 1436
    :cond_5d
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getSignatureSchemeVersion()I

    move-result p3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_65

    goto :goto_38

    .line 1442
    :cond_65
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p3

    .line 1443
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 1444
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getOriginUri()Landroid/net/Uri;

    move-result-object v2

    .line 1445
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v3, v1

    iget v1, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v4, v1, 0x1

    iput v4, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 1447
    invoke-static {p3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1450
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    .line 1448
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    goto :goto_38

    .line 1453
    :cond_95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_99
    :goto_99
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    .line 1454
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 1455
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1454
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 1456
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_99

    .line 1461
    :cond_c5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c9
    :goto_c9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    .line 1462
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 1463
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_c9

    const/4 p2, 0x0

    .line 1464
    invoke-virtual {p1, p2}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    goto :goto_c9

    :cond_e4
    return-void

    .line 1428
    :goto_e5
    :try_start_e5
    monitor-exit v1
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_2d

    throw p0
.end method

.method public final decompressPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 3411
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compressedFileExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 3412
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz p0, :cond_21

    .line 3413
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No files to decompress at: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-object v1

    .line 3418
    :cond_22
    invoke-static {v1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3420
    invoke-static {p2, v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->decompressFiles(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_35

    .line 3422
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->extractNativeBinaries(Ljava/io/File;Ljava/lang/String;)I

    move-result p2

    :cond_35
    if-ne p2, v2, :cond_5e

    .line 3429
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isSystemReady()Z

    move-result p1

    if-nez p1, :cond_54

    .line 3430
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    if-nez p2, :cond_4c

    .line 3431
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 3433
    :cond_4c
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 3435
    :cond_54
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3436
    invoke-static {p0, v0}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    return-object v0

    .line 3439
    :cond_5e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_65

    return-object v1

    .line 3442
    :cond_65
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    return-object v1
.end method

.method public final disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V
    .registers 7

    .line 3506
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3507
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 3506
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 3509
    iget-object p1, p1, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    const/4 p2, -0x1

    if-nez p1, :cond_15

    move p1, p2

    goto :goto_19

    .line 3510
    :cond_15
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 3511
    :goto_19
    const-string v0, "android"

    const/4 v1, 0x2

    if-ne p1, p2, :cond_2a

    .line 3512
    array-length p1, p3

    const/4 p2, 0x0

    :goto_20
    if-ge p2, p1, :cond_2f

    aget v2, p3, p2

    .line 3513
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_2a
    if-ltz p1, :cond_2f

    .line 3516
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public final disableSystemPackageLPw(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 3

    .line 2545
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public doPostDexopt(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V
    .registers 14

    .line 1067
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    .line 1068
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->onWaitDexoptFinished()V

    .line 1069
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v3

    if-eq v3, v1, :cond_6

    move v2, v4

    goto :goto_6

    :cond_1e
    const-wide/32 v5, 0x40000

    if-eqz v2, :cond_3c

    .line 1075
    :try_start_23
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->commitInstallPackages(Ljava/util/List;)Z

    move-result p1
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_2a

    if-eqz p1, :cond_3c

    goto :goto_3d

    :catchall_2a
    move-exception p1

    .line 1079
    invoke-virtual {p0, p2, p3, v4}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;Z)V

    .line 1080
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1081
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    .line 1082
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p5, p6, p2}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(JI)V

    .line 1083
    throw p1

    :cond_3c
    move v1, v4

    .line 1079
    :goto_3d
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;Z)V

    .line 1080
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1081
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    .line 1082
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p5, p6, p1}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(JI)V

    return-void
.end method

.method public final doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V
    .registers 5

    .line 1087
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1088
    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstallCleanUp(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/MoveInfo;)V

    goto :goto_4

    .line 1091
    :cond_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    .line 1092
    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_18

    :cond_28
    return-void
.end method

.method public final doPostInstallCleanUp(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/MoveInfo;)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_21

    .line 1098
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result p1

    if-ne p1, v0, :cond_15

    .line 1099
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object p1, p2, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1102
    :cond_15
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object p1, p2, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1106
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result p2

    if-eq p2, v0, :cond_30

    .line 1107
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    :cond_30
    return-void
.end method

.method public final doRenameLI(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .registers 9

    .line 2277
    const-string v0, "PackageManager"

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v1

    .line 2278
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnMsg()Ljava/lang/String;

    move-result-object v2

    .line 2279
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    if-ne v1, v4, :cond_14

    return-void

    .line 2281
    :cond_14
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMoveToUuid()Ljava/lang/String;

    move-result-object p2

    .line 2282
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMovePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMoveFromCodePath()Ljava/lang/String;

    move-result-object p1

    .line 2281
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2b
    if-ne v1, v4, :cond_115

    .line 2293
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->resolveTargetDir(ILjava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 2294
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v2

    .line 2296
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2295
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2299
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v3, :cond_56

    .line 2300
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    goto :goto_57

    :cond_56
    const/4 v4, 0x0

    .line 2302
    :goto_57
    :try_start_57
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/16 v5, 0x1f9

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    if-eqz v4, :cond_6d

    .line 2306
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {p0, v2, v1}, Landroid/os/incremental/IncrementalManager;->linkCodePath(Ljava/io/File;Ljava/io/File;)V

    goto :goto_78

    :catch_6a
    move-exception p0

    goto/16 :goto_109

    .line 2308
    :cond_6d
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_78} :catch_6a
    .catch Landroid/system/ErrnoException; {:try_start_57 .. :try_end_78} :catch_6a

    :goto_78
    const/16 p0, -0x14

    if-nez v4, :cond_8e

    .line 2316
    invoke-static {v1}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_83

    goto :goto_8e

    .line 2317
    :cond_83
    const-string p1, "Failed to restorecon"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    new-instance p2, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw p2

    .line 2323
    :cond_8e
    :goto_8e
    invoke-virtual {p1, v1}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    .line 2327
    :try_start_91
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 2328
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 2329
    invoke-interface {p2, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2332
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v5

    .line 2333
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2331
    invoke-interface {p2, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2335
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v5

    .line 2336
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2334
    invoke-interface {p2, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2337
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c2

    .line 2340
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2339
    invoke-interface {p2, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_bf} :catch_c0

    goto :goto_c2

    :catch_c0
    move-exception p1

    goto :goto_e0

    .line 2348
    :cond_c2
    :goto_c2
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    .line 2347
    invoke-static {v2, v1, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2350
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p0

    .line 2349
    invoke-static {v2, v1, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2351
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/pm/InstallRequest;->updateAllCodePaths(Ljava/util/List;)V

    return-void

    .line 2343
    :goto_e0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get path: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2344
    new-instance p1, Lcom/android/server/pm/PrepareFailure;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2311
    :goto_109
    const-string p1, "Failed to rename"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2312
    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    const/4 p2, -0x4

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2289
    :cond_115
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 2290
    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z
    .registers 9

    .line 2385
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2386
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 2387
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 2388
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    .line 2389
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_75

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-nez v1, :cond_29

    .line 2392
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    goto :goto_2d

    :cond_29
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 2393
    :goto_2d
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 2394
    invoke-virtual {v2, v1, v3, p3}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 2396
    invoke-virtual {v2, v1, p2}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    return p0

    .line 2403
    :cond_42
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    const/4 p3, 0x4

    .line 2402
    invoke-virtual {v0, p1, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4f

    return v2

    .line 2406
    :cond_4f
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 2411
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p0

    .line 2412
    :try_start_61
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;

    .line 2413
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_6d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    :catchall_6d
    move-exception p1

    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1

    :cond_73
    const/4 p0, 0x0

    return p0

    :catchall_75
    move-exception p0

    .line 2389
    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public enableCompressedPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z
    .registers 16

    .line 3306
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v0

    const v1, -0x7fffffc0

    or-int/2addr v0, v1

    .line 3308
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v1

    .line 3309
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3311
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3312
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "setEnabledSetting"

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v5
    :try_end_2d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1c .. :try_end_2d} :catch_99
    .catchall {:try_start_1c .. :try_end_2d} :catchall_75

    .line 3315
    :try_start_2d
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/pm/InstallPackageHelper;->installStubPackageLI(Lcom/android/server/pm/pkg/AndroidPackage;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    .line 3316
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 3317
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v12
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_86

    .line 3319
    :try_start_3e
    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 3321
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p2

    .line 3319
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_4e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3e .. :try_end_4e} :catch_52
    .catchall {:try_start_3e .. :try_end_4e} :catchall_4f

    goto :goto_5c

    :catchall_4f
    move-exception v0

    move-object p2, v0

    goto :goto_89

    :catch_52
    move-exception v0

    move-object p2, v0

    .line 3323
    :try_start_54
    const-string v0, "PackageManager"

    const-string/jumbo v6, "updateAllSharedLibrariesLPw failed: "

    invoke-static {v0, v6, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3325
    :goto_5c
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    const/4 v6, -0x1

    invoke-interface {p2, v7, v6, v0, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 3329
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;)V

    .line 3332
    monitor-exit v12
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_4f

    :try_start_6c
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_86

    if-eqz v5, :cond_79

    .line 3333
    :try_start_71
    invoke-virtual {v5}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_74
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_71 .. :try_end_74} :catch_99
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception v0

    move-object p0, v0

    goto/16 :goto_198

    .line 3367
    :cond_79
    :goto_79
    :try_start_79
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/16 p1, 0x27

    invoke-virtual {p0, v7, v6, p1}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_75

    if-eqz v2, :cond_85

    .line 3370
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_85
    return v3

    :catchall_86
    move-exception v0

    move-object p2, v0

    goto :goto_8e

    .line 3332
    :goto_89
    :try_start_89
    monitor-exit v12
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_4f

    :try_start_8a
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p2
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_86

    :goto_8e
    if-eqz v5, :cond_98

    .line 3311
    :try_start_90
    invoke-virtual {v5}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception v0

    :try_start_95
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_98
    :goto_98
    throw p2
    :try_end_99
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_95 .. :try_end_99} :catch_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_75

    :catch_99
    const/4 p2, 0x2

    .line 3335
    :try_start_9a
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3336
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "setEnabledSetting"

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v5
    :try_end_ab
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_9a .. :try_end_ab} :catch_db
    .catchall {:try_start_9a .. :try_end_ab} :catchall_d8

    .line 3340
    :try_start_ab
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6
    :try_end_b3
    .catchall {:try_start_ab .. :try_end_b3} :catchall_10b

    .line 3343
    :try_start_b3
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 3344
    monitor-exit v6
    :try_end_bf
    .catchall {:try_start_b3 .. :try_end_bf} :catchall_10e

    :try_start_bf
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3345
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3346
    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    const/4 v7, 0x0

    .line 3345
    invoke-virtual {p0, v0, v6, v7, v3}, Lcom/android/server/pm/InstallPackageHelper;->installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    :try_end_d2
    .catchall {:try_start_bf .. :try_end_d2} :catchall_10b

    if-eqz v5, :cond_dd

    .line 3349
    :try_start_d4
    invoke-virtual {v5}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_d7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_d4 .. :try_end_d7} :catch_db
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d8

    goto :goto_dd

    :catchall_d8
    move-exception v0

    goto/16 :goto_16a

    :catch_db
    move-exception v0

    goto :goto_11f

    .line 3355
    :cond_dd
    :goto_dd
    :try_start_dd
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3
    :try_end_e5
    .catchall {:try_start_dd .. :try_end_e5} :catchall_75

    .line 3356
    :try_start_e5
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3357
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3356
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    if-eqz p1, :cond_fc

    .line 3359
    const-string v0, "android"

    invoke-virtual {p1, p2, v4, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_fc

    :catchall_f9
    move-exception v0

    move-object p0, v0

    goto :goto_106

    .line 3362
    :cond_fc
    :goto_fc
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;)V

    .line 3363
    monitor-exit v3
    :try_end_102
    .catchall {:try_start_e5 .. :try_end_102} :catchall_f9

    :goto_102
    :try_start_102
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_75

    goto :goto_15f

    :goto_106
    :try_start_106
    monitor-exit v3
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_f9

    :try_start_107
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
    :try_end_10b
    .catchall {:try_start_107 .. :try_end_10b} :catchall_75

    :catchall_10b
    move-exception v0

    move-object v3, v0

    goto :goto_114

    :catchall_10e
    move-exception v0

    .line 3344
    :try_start_10f
    monitor-exit v6
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    :try_start_110
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_114
    .catchall {:try_start_110 .. :try_end_114} :catchall_10b

    :goto_114
    if-eqz v5, :cond_11e

    .line 3335
    :try_start_116
    invoke-virtual {v5}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_119
    .catchall {:try_start_116 .. :try_end_119} :catchall_11a

    goto :goto_11e

    :catchall_11a
    move-exception v0

    :try_start_11b
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11e
    :goto_11e
    throw v3
    :try_end_11f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_11b .. :try_end_11f} :catch_db
    .catchall {:try_start_11b .. :try_end_11f} :catchall_d8

    .line 3351
    :goto_11f
    :try_start_11f
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to restore system package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_139
    .catchall {:try_start_11f .. :try_end_139} :catchall_d8

    .line 3355
    :try_start_139
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3
    :try_end_141
    .catchall {:try_start_139 .. :try_end_141} :catchall_75

    .line 3356
    :try_start_141
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3357
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3356
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    if-eqz p1, :cond_158

    .line 3359
    const-string v0, "android"

    invoke-virtual {p1, p2, v4, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_158

    :catchall_155
    move-exception v0

    move-object p0, v0

    goto :goto_165

    .line 3362
    :cond_158
    :goto_158
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;)V

    .line 3363
    monitor-exit v3
    :try_end_15e
    .catchall {:try_start_141 .. :try_end_15e} :catchall_155

    goto :goto_102

    :goto_15f
    if-eqz v2, :cond_164

    .line 3370
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_164
    return v4

    .line 3363
    :goto_165
    :try_start_165
    monitor-exit v3
    :try_end_166
    .catchall {:try_start_165 .. :try_end_166} :catchall_155

    :try_start_166
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 3355
    :goto_16a
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3
    :try_end_172
    .catchall {:try_start_166 .. :try_end_172} :catchall_75

    .line 3356
    :try_start_172
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3357
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3356
    invoke-virtual {v5, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    if-eqz p1, :cond_189

    .line 3359
    const-string v5, "android"

    invoke-virtual {p1, p2, v4, v5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_189

    :catchall_186
    move-exception v0

    move-object p0, v0

    goto :goto_193

    .line 3362
    :cond_189
    :goto_189
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;)V

    .line 3363
    monitor-exit v3
    :try_end_18f
    .catchall {:try_start_172 .. :try_end_18f} :catchall_186

    :try_start_18f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3364
    throw v0
    :try_end_193
    .catchall {:try_start_18f .. :try_end_193} :catchall_75

    .line 3363
    :goto_193
    :try_start_193
    monitor-exit v3
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_186

    :try_start_194
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
    :try_end_198
    .catchall {:try_start_194 .. :try_end_198} :catchall_75

    :goto_198
    if-eqz v2, :cond_1a3

    .line 3309
    :try_start_19a
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_19d
    .catchall {:try_start_19a .. :try_end_19d} :catchall_19e

    goto :goto_1a3

    :catchall_19e
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a3
    :goto_1a3
    throw p0
.end method

.method public final executePostCommitStepsLIF(Ljava/util/List;)V
    .registers 6

    .line 2815
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2816
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ReconciledPackage;

    .line 2817
    iget-object v1, v1, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 2818
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 2819
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2820
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    .line 2821
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 2822
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v1, :cond_9

    .line 2823
    invoke-static {v3}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2825
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v1, v3}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 2830
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2827
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Install: null storage for incremental package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2833
    :cond_53
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->waitForNativeBinariesExtractionForIncremental(Landroid/util/ArraySet;)V

    return-void
.end method

.method public final freezePackageForInstall(Ljava/lang/String;IILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;
    .registers 13

    and-int/lit16 p3, p3, 0x1000

    if-eqz p3, :cond_c

    .line 2424
    new-instance p1, Lcom/android/server/pm/PackageFreezer;

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p1, p0, p6}, Lcom/android/server/pm/PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/InstallRequest;)V

    return-object p1

    .line 2426
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    return-object p0
.end method

.method public final getNewUsers(Lcom/android/server/pm/InstallRequest;[I)[I
    .registers 15

    .line 1153
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v0

    .line 1154
    const-string v1, " doesn\'t exist or has been removed"

    const-string v2, "User "

    const/16 v3, -0x26

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2f

    const/4 v5, -0x2

    if-eq v0, v5, :cond_2f

    .line 1155
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_2f

    .line 1156
    :cond_17
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1160
    :cond_2f
    :goto_2f
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5}, Landroid/util/IntArray;-><init>()V

    if-eq v0, v4, :cond_3a

    .line 1162
    invoke-virtual {v5, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_6f

    :cond_3a
    if-eqz p2, :cond_6f

    .line 1164
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getOriginUsers()[I

    move-result-object p1

    .line 1165
    array-length v4, p2

    const/4 v6, 0x0

    move v7, v6

    :goto_43
    if-ge v7, v4, :cond_6f

    aget v8, p2, v7

    .line 1166
    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    .line 1168
    iget-object v10, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v11, "no_install_apps"

    .line 1169
    invoke-virtual {v10, v8, v11}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_64

    iget-object v10, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v11, "no_debugging_features"

    .line 1171
    invoke-virtual {v10, v8, v11}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_62

    goto :goto_64

    :cond_62
    move v10, v6

    goto :goto_65

    :cond_64
    :goto_64
    const/4 v10, 0x1

    :goto_65
    if-nez v9, :cond_69

    if-nez v10, :cond_6c

    .line 1174
    :cond_69
    invoke-virtual {v5, v8}, Landroid/util/IntArray;->add(I)V

    :cond_6c
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 1179
    :cond_6f
    :goto_6f
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result p0

    if-eqz p0, :cond_7a

    .line 1183
    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0

    .line 1180
    :cond_7a
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final getOriginalPackageLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 8

    .line 4677
    invoke-static {p1, p2}, Lcom/android/server/pm/ScanPackageUtils;->isPackageRenamed(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    return-object v0

    .line 4680
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_12
    if-ltz p2, :cond_8c

    .line 4681
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4682
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 4686
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/InstallPackageHelper;->verifyPackageUpdateLPr(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_89

    .line 4689
    :cond_2f
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 4690
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4691
    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 4692
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 4694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to migrate data from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4695
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": old shared user settings name "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " differs from "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4697
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4694
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    :cond_88
    return-object v1

    :cond_89
    :goto_89
    add-int/lit8 p2, p2, -0x1

    goto :goto_12

    :cond_8c
    return-object v0
.end method

.method public getUidForVerifier(Landroid/content/pm/VerifierInfo;)I
    .registers 6

    .line 2987
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2988
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p1, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    const/4 v1, -0x1

    if-nez p0, :cond_1f

    .line 2990
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    :catchall_1c
    move-exception p0

    goto/16 :goto_9c

    .line 2991
    :cond_1f
    :try_start_1f
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4d

    .line 2992
    const-string p0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verifier package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has more than one signature; ignoring"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_1f .. :try_end_49} :catchall_1c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 3005
    :cond_4d
    :try_start_4d
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 3006
    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 3007
    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2
    :try_end_60
    .catch Ljava/security/cert/CertificateException; {:try_start_4d .. :try_end_60} :catch_97
    .catchall {:try_start_4d .. :try_end_60} :catchall_1c

    .line 3012
    :try_start_60
    iget-object v3, p1, Landroid/content/pm/VerifierInfo;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 3014
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 3015
    const-string p0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verifier package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have the expected public key; ignoring"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_60 .. :try_end_8a} :catchall_1c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 3020
    :cond_8e
    :try_start_8e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p0

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_1c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    .line 3009
    :catch_97
    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_1c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 3021
    :goto_9c
    :try_start_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_1c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final getUnknownSourcesSettings()I
    .registers 4

    .line 3233
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "install_non_market_apps"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public handlePackagePostInstall(Lcom/android/server/pm/InstallRequest;Z)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 3075
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    const/4 v2, 0x0

    const/4 v13, 0x1

    if-nez v1, :cond_10

    move v10, v13

    goto :goto_11

    :cond_10
    move v10, v2

    .line 3076
    :goto_11
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v1

    if-ne v1, v13, :cond_19

    move v14, v13

    goto :goto_1a

    :cond_19
    move v14, v2

    .line 3077
    :goto_1a
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isUpdate()Z

    move-result v11

    .line 3078
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isArchived()Z

    move-result v12

    .line 3079
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3080
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v15, 0x0

    if-eqz v14, :cond_36

    .line 3082
    invoke-interface {v1, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_38

    :cond_36
    move-object/from16 v16, v15

    :goto_38
    if-eqz v16, :cond_59

    .line 3084
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3085
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 3084
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_59

    :cond_57
    move v1, v2

    goto :goto_5a

    :cond_59
    :goto_59
    move v1, v13

    :goto_5a
    if-eqz v14, :cond_8d

    if-eqz v1, :cond_8d

    .line 3087
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was removed before handlePackagePostInstall could be executed"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x17

    .line 3089
    invoke-virtual {v3, v1}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 3090
    const-string v1, "Package was removed before install could complete."

    invoke-virtual {v3, v1}, Lcom/android/server/pm/InstallRequest;->setReturnMessage(Ljava/lang/String;)V

    .line 3093
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getOldCodeFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;)V

    .line 3094
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    return-void

    :cond_8d
    if-eqz v14, :cond_1ef

    .line 3099
    const-string v1, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installation completed for package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Final code path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3100
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3099
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppMetadataSource()I

    move-result v1

    if-ne v1, v13, :cond_f3

    .line 3104
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    .line 3105
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v6

    .line 3104
    invoke-static {v1, v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->extractAppMetadataFromApk(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_f3

    .line 3106
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 3107
    :try_start_d5
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-eqz v5, :cond_e9

    .line 3109
    invoke-virtual {v5, v15}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 3110
    invoke-virtual {v5, v2}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    goto :goto_e9

    :catchall_e7
    move-exception v0

    goto :goto_ee

    .line 3112
    :cond_e9
    :goto_e9
    monitor-exit v1
    :try_end_ea
    .catchall {:try_start_d5 .. :try_end_ea} :catchall_e7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_f3

    :goto_ee
    :try_start_ee
    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_e7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 3117
    :cond_f3
    :goto_f3
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object v15, v1, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 3119
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3120
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v5

    .line 3119
    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/PackageManagerService;->notifyInstantAppPackageInstalled(Ljava/lang/String;[I)V

    .line 3122
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getFirstTimeBroadcastUserIds()[I

    move-result-object v1

    .line 3124
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_123

    .line 3125
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/pm/ProcessLoggingHandler;->invalidateBaseApkHash(Ljava/lang/String;)V

    :cond_123
    move-object v2, v1

    .line 3128
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v2

    new-instance v2, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v5}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    move-object v9, v7

    iget-object v7, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object v15, v9

    move/from16 v9, p2

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPostInstallBroadcasts(Ljava/util/function/Supplier;Lcom/android/server/pm/InstallRequest;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageSender;ZZZZ)V

    .line 3133
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isAllNewUsers()Z

    move-result v1

    if-eqz v1, :cond_153

    if-nez v11, :cond_153

    .line 3134
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/PackageManagerService;->notifyPackageAdded(Ljava/lang/String;I)V

    goto :goto_15c

    .line 3136
    :cond_153
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/PackageManagerService;->notifyPackageChanged(Ljava/lang/String;I)V

    :goto_15c
    const/16 v1, 0xc26

    .line 3164
    invoke-virtual {v0}, Lcom/android/server/pm/InstallPackageHelper;->getUnknownSourcesSettings()I

    move-result v2

    .line 3163
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3167
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    if-eqz v1, :cond_172

    .line 3168
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    goto :goto_173

    :cond_172
    const/4 v1, 0x0

    :goto_173
    if-eqz v1, :cond_1b0

    if-nez v10, :cond_1a6

    .line 3176
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageManagerService;->scheduleDeferredNoKillPostDelete(Lcom/android/server/pm/CleanUpArgs;)V

    .line 3177
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    .line 3178
    :try_start_184
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 3179
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getOldPaths()Ljava/util/Set;

    move-result-object v6

    .line 3178
    invoke-static {v2, v4, v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkFilesToOldDirs(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/util/Set;)V
    :try_end_193
    .catchall {:try_start_184 .. :try_end_193} :catchall_199

    if-eqz v1, :cond_1b7

    .line 3180
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    goto :goto_1b7

    :catchall_199
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_1a5

    .line 3177
    :try_start_19d
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1a0
    .catchall {:try_start_19d .. :try_end_1a0} :catchall_1a1

    goto :goto_1a5

    :catchall_1a1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a5
    :goto_1a5
    throw v2

    .line 3182
    :cond_1a6
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v1}, Lcom/android/server/pm/CleanUpArgs;->getCodeFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_1b7

    .line 3187
    :cond_1b0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    :cond_1b7
    :goto_1b7
    if-eqz v12, :cond_1ef

    .line 3192
    new-instance v1, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v1}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 3193
    iput-object v4, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 3194
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 3195
    iput-object v15, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 3196
    iput-object v15, v1, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 3197
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v2

    iput v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 3198
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 3199
    iput-boolean v13, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 3201
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v19, 0x0

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    :cond_1ef
    if-eqz v14, :cond_201

    if-eqz v11, :cond_201

    if-eqz v10, :cond_1fb

    .line 3209
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->scheduleDeferredPendingKillInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_206

    .line 3211
    :cond_1fb
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->scheduleDeferredNoKillInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_206

    .line 3214
    :cond_201
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 3218
    :goto_206
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 3221
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getTraceMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21f

    .line 3222
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getTraceMethod()Ljava/lang/String;

    move-result-object v0

    .line 3223
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getTraceCookie()I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 3222
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_21f
    return-void
.end method

.method public final handleUpdateOwnerDenyList(Lcom/android/server/pm/PackageSetting;)V
    .registers 6

    .line 476
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UpdateOwnershipHelper;->readUpdateOwnerDenyList(Lcom/android/server/pm/PackageSetting;)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 477
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    .line 478
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/UpdateOwnershipHelper;->addToUpdateOwnerDenyList(Ljava/lang/String;Landroid/util/ArraySet;)V

    .line 480
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 481
    :try_start_1f
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 483
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 484
    invoke-virtual {v3, v1}, Lcom/android/server/pm/PackageManagerService;->getSystemAppUpdateOwnerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    const/4 v1, 0x0

    .line 485
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    goto :goto_23

    :catchall_46
    move-exception p0

    goto :goto_4d

    .line 488
    :cond_48
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_1f .. :try_end_49} :catchall_46

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_4d
    :try_start_4d
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_46

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_52
    return-void
.end method

.method public final initPackageLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 14

    .line 4047
    const-string/jumbo v0, "parsePackage"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4049
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object v3
    :try_end_11
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_9 .. :try_end_11} :catch_2d
    .catchall {:try_start_9 .. :try_end_11} :catchall_2a

    const/4 v0, 0x0

    .line 4050
    :try_start_12
    invoke-virtual {v3, p1, p2, v0}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v5
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_30

    .line 4051
    :try_start_16
    invoke-virtual {v3}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_19
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_16 .. :try_end_19} :catch_2d
    .catchall {:try_start_16 .. :try_end_19} :catchall_2a

    .line 4054
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4057
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    return-object p0

    :catchall_2a
    move-exception v0

    move-object p0, v0

    goto :goto_4a

    :catch_2d
    move-exception v0

    move-object p0, v0

    goto :goto_3e

    :catchall_30
    move-exception v0

    move-object p0, v0

    if-eqz v3, :cond_3d

    .line 4049
    :try_start_34
    invoke-virtual {v3}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3d

    :catchall_38
    move-exception v0

    move-object p1, v0

    :try_start_3a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    throw p0
    :try_end_3e
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_3a .. :try_end_3e} :catch_2d
    .catchall {:try_start_3a .. :try_end_3e} :catchall_2a

    .line 4052
    :goto_3e
    :try_start_3e
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    iget p2, p0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_2a

    .line 4054
    :goto_4a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4055
    throw p0
.end method

.method public initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 7

    .line 4030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scanPackage ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4032
    :try_start_21
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->initPackageLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_29

    .line 4034
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4035
    throw p0
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)Landroid/util/Pair;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v2, p2

    move/from16 v1, p3

    move-object/from16 v10, p6

    const/4 v4, -0x3

    .line 707
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 669
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 670
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v4, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-string v6, "com.android.permission.INSTALL_EXISTING_PACKAGES"

    .line 672
    invoke-virtual {v4, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_28

    goto :goto_4e

    .line 675
    :cond_28
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Neither user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nor current process has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_4e
    :goto_4e
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    .line 680
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "installExistingPackage for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x1

    const/4 v8, 0x1

    move v6, v2

    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v9, v5

    .line 683
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v6, "no_install_apps"

    invoke-virtual {v5, v2, v6}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    const/16 v0, -0x6f

    .line 684
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 687
    :cond_82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    and-int/lit16 v5, v1, 0x800

    if-eqz v5, :cond_8c

    const/4 v5, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v5, 0x0

    :goto_8d
    and-int/lit16 v7, v1, 0x4000

    if-eqz v7, :cond_93

    const/4 v7, 0x1

    goto :goto_94

    :cond_93
    const/4 v7, 0x0

    .line 694
    :goto_94
    :try_start_94
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8, v3, v2}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v8

    .line 695
    iget-object v15, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    if-eqz v15, :cond_ab

    .line 696
    invoke-virtual {v15, v2, v3}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_ab

    const/4 v15, 0x1

    goto :goto_ac

    :catchall_a8
    move-exception v0

    goto/16 :goto_272

    :cond_ab
    const/4 v15, 0x0

    .line 699
    :goto_ac
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6
    :try_end_b4
    .catchall {:try_start_94 .. :try_end_b4} :catchall_a8

    .line 700
    :try_start_b4
    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v14

    .line 701
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz v1, :cond_261

    .line 702
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v17

    if-nez v17, :cond_cc

    goto/16 :goto_261

    :cond_cc
    if-eqz v5, :cond_ee

    .line 705
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v17

    if-nez v17, :cond_e2

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v17

    if-nez v17, :cond_e2

    if-nez v8, :cond_e2

    if-eqz v15, :cond_ee

    goto :goto_e2

    :catchall_df
    move-exception v0

    goto/16 :goto_26d

    .line 707
    :cond_e2
    :goto_e2
    invoke-static {v11, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v6
    :try_end_e7
    .catchall {:try_start_b4 .. :try_end_e7} :catchall_df

    .line 800
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 709
    :cond_ee
    :try_start_ee
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v14, v9, v8}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v8

    if-nez v8, :cond_124

    .line 713
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v8

    array-length v14, v8

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_104
    if-ge v15, v14, :cond_116

    aget v3, v8, v15

    .line 714
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v3

    xor-int/lit8 v17, v3, 0x1

    if-nez v3, :cond_111

    goto :goto_116

    :cond_111
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p1

    goto :goto_104

    :cond_116
    :goto_116
    if-nez v17, :cond_124

    .line 720
    invoke-static {v11, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v6
    :try_end_11d
    .catchall {:try_start_ee .. :try_end_11d} :catchall_df

    .line 800
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 723
    :cond_124
    :try_start_124
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v3

    if-nez v3, :cond_15a

    const/4 v3, 0x1

    .line 724
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    const/4 v3, 0x0

    .line 725
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageSetting;->setHidden(ZI)V

    move/from16 v8, p4

    .line 726
    invoke-virtual {v1, v8, v2}, Lcom/android/server/pm/PackageSetting;->setInstallReason(II)V

    .line 727
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15, v2}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    .line 730
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    .line 731
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 732
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    :goto_158
    const/4 v3, 0x1

    goto :goto_164

    :cond_15a
    if-eqz v7, :cond_163

    .line 734
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v3

    if-eqz v3, :cond_163

    goto :goto_158

    :cond_163
    const/4 v3, 0x0

    .line 738
    :goto_164
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-static {v8, v1, v2, v5, v7}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    .line 740
    monitor-exit v6
    :try_end_16c
    .catchall {:try_start_124 .. :try_end_16c} :catchall_df

    :try_start_16c
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v3, :cond_253

    .line 743
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 744
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v6, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v5, :cond_18b

    .line 746
    invoke-virtual {v5, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result v5

    if-eqz v5, :cond_18b

    const/4 v5, 0x1

    goto :goto_18c

    :cond_18b
    const/4 v5, 0x0

    .line 751
    :goto_18c
    invoke-interface {v4, v3, v9}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    const/4 v11, 0x0

    if-nez v3, :cond_19e

    .line 752
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_19b

    if-nez v5, :cond_19e

    .line 753
    :cond_19b
    invoke-virtual {v1, v11}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 755
    :cond_19e
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_1f4

    .line 757
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;

    invoke-direct {v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;-><init>()V

    const/high16 v4, 0x400000

    and-int v4, p3, v4

    if-eqz v4, :cond_1bf

    .line 761
    new-instance v4, Ljava/util/ArrayList;

    .line 762
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 761
    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setAllowlistedRestrictedPermissions(Ljava/util/List;)V

    .line 764
    :cond_1bf
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    .line 766
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->build()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    move-result-object v3

    const/4 v6, -0x1

    .line 764
    invoke-interface {v4, v5, v6, v3, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 768
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3
    :try_end_1d7
    .catchall {:try_start_16c .. :try_end_1d7} :catchall_a8

    .line 770
    :try_start_1d7
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    filled-new-array {v2}, [I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;I[I)V
    :try_end_1e1
    .catchall {:try_start_1d7 .. :try_end_1e1} :catchall_1e7

    if-eqz v3, :cond_1f5

    .line 772
    :try_start_1e3
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1e6
    .catchall {:try_start_1e3 .. :try_end_1e6} :catchall_a8

    goto :goto_1f5

    :catchall_1e7
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_1f3

    .line 768
    :try_start_1eb
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1ee
    .catchall {:try_start_1eb .. :try_end_1ee} :catchall_1ef

    goto :goto_1f3

    :catchall_1ef
    move-exception v0

    :try_start_1f0
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f3
    :goto_1f3
    throw v1

    :cond_1f4
    const/4 v6, 0x0

    .line 775
    :cond_1f5
    :goto_1f5
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-nez v3, :cond_1fc

    const/4 v6, 0x1

    :cond_1fc
    move-object v4, v1

    .line 776
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v5, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    const/4 v7, 0x0

    move v5, v2

    move-object v2, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZILjava/lang/String;)V

    move v2, v5

    .line 779
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1
    :try_end_21a
    .catchall {:try_start_1f0 .. :try_end_21a} :catchall_a8

    .line 780
    :try_start_21a
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 781
    monitor-exit v1
    :try_end_224
    .catchall {:try_start_21a .. :try_end_224} :catchall_24d

    :try_start_224
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 787
    new-instance v1, Lcom/android/server/pm/InstallRequest;

    move-object v5, v4

    .line 788
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    move-object v6, v5

    filled-new-array {v2}, [I

    move-result-object v5

    move-object v7, v6

    new-instance v6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v3, v2, v10}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/String;ILandroid/content/IntentSender;)V

    move-object v3, v7

    .line 796
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v3

    move v8, v9

    move v9, v3

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/InstallRequest;-><init>(IILcom/android/server/pm/pkg/AndroidPackage;[ILjava/lang/Runnable;IIZ)V

    .line 797
    invoke-virtual {v0, v1}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V
    :try_end_24b
    .catchall {:try_start_224 .. :try_end_24b} :catchall_a8

    move-object v10, v11

    goto :goto_253

    :catchall_24d
    move-exception v0

    .line 781
    :try_start_24e
    monitor-exit v1
    :try_end_24f
    .catchall {:try_start_24e .. :try_end_24f} :catchall_24d

    :try_start_24f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_253
    .catchall {:try_start_24f .. :try_end_253} :catchall_a8

    .line 800
    :cond_253
    :goto_253
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v16, 0x1

    .line 803
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 703
    :cond_261
    :goto_261
    :try_start_261
    invoke-static {v11, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v6
    :try_end_266
    .catchall {:try_start_261 .. :try_end_266} :catchall_df

    .line 800
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 740
    :goto_26d
    :try_start_26d
    monitor-exit v6
    :try_end_26e
    .catchall {:try_start_26d .. :try_end_26e} :catchall_df

    :try_start_26e
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_272
    .catchall {:try_start_26e .. :try_end_272} :catchall_a8

    .line 800
    :goto_272
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 801
    throw v0
.end method

.method public final installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    .registers 13

    .line 3529
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3530
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3531
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x11

    .line 3534
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageScanFlags(Ljava/io/File;)I

    move-result v1

    .line 3535
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    .line 3537
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 3538
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_3b

    .line 3541
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 3542
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3541
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_3a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2b .. :try_end_3a} :catch_3e
    .catchall {:try_start_2b .. :try_end_3a} :catchall_3b

    goto :goto_5a

    :catchall_3b
    move-exception v0

    move-object p0, v0

    goto :goto_67

    :catch_3e
    move-exception v0

    .line 3544
    :try_start_3f
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAllSharedLibrariesLPw failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    :goto_5a
    monitor-exit p1
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_3b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3547
    invoke-virtual {p0, v3, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->setPackageInstalledForSystemPackage(Lcom/android/server/pm/pkg/AndroidPackage;[I[IZ)V

    .line 3549
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void

    .line 3546
    :goto_67
    :try_start_67
    monitor-exit p1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_3b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public installPackagesFromDir(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    .registers 8

    .line 3822
    new-instance v0, Lcom/android/server/pm/ParallelPackageParser;

    invoke-direct {v0, p4, p5}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    const/high16 p4, 0x800000

    and-int/2addr p4, p3

    if-eqz p4, :cond_f

    .line 3825
    invoke-static {p1, p2, p3, p6}, Lcom/android/server/pm/InitAppsHelper$ScanParams;->forApkInApexScan(Ljava/io/File;IILcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/InitAppsHelper$ScanParams;

    move-result-object p1

    goto :goto_13

    .line 3826
    :cond_f
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/InitAppsHelper$ScanParams;->forApkPartitionScan(Ljava/io/File;II)Lcom/android/server/pm/InitAppsHelper$ScanParams;

    move-result-object p1

    .line 3827
    :goto_13
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/InstallPackageHelper;->scanDirectoryForFilesToParse(Lcom/android/server/pm/ParallelPackageParser;Lcom/android/server/pm/InitAppsHelper$ScanParams;)I

    move-result p1

    :goto_17
    if-lez p1, :cond_23

    .line 3831
    invoke-virtual {v0}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstallPackageHelper;->processParseResult(Lcom/android/server/pm/ParallelPackageParser$ParseResult;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_17

    :cond_23
    return-void
.end method

.method public installPackagesTraced(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V
    .registers 16

    .line 1028
    const-string v0, "installPackages"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1031
    new-instance v7, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1032
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1033
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/InstallPackageHelper;->acquireWakeLock(I)J

    move-result-wide v9

    const/4 v11, 0x0

    .line 1035
    :try_start_23
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/criticalevents/CriticalEventLog;->logInstallPackagesStarted()V

    .line 1036
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->prepareInstallPackages(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1037
    invoke-virtual {p0, p1, v7, v0}, Lcom/android/server/pm/InstallPackageHelper;->scanInstallPackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1039
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/InstallPackageHelper;->reconcileInstallPackages(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v5
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_6c

    if-nez v5, :cond_4d

    .line 1055
    invoke-virtual {p0, p1, v7, v11}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;Z)V

    .line 1056
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1057
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    .line 1058
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v9, v10, p1}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(JI)V

    return-void

    .line 1044
    :cond_4d
    :try_start_4d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->renameAndUpdatePaths(Ljava/util/List;)Z

    move-result v0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_6c

    if-eqz v0, :cond_68

    const/4 v12, 0x1

    .line 1047
    :try_start_54
    new-instance v3, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;
    :try_end_56
    .catchall {:try_start_54 .. :try_end_56} :catchall_63

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    :try_start_59
    invoke-direct/range {v3 .. v10}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V

    .line 1050
    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/InstallPackageHelper;->prepPerformDexoptIfNeeded(Ljava/util/List;Ljava/lang/Runnable;)V
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_60

    return-void

    :catchall_60
    move-exception v0

    :goto_61
    move-object p0, v0

    goto :goto_84

    :catchall_63
    move-exception v0

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    goto :goto_61

    :cond_68
    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    goto :goto_73

    :catchall_6c
    move-exception v0

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object p0, v0

    move v12, v11

    goto :goto_84

    .line 1055
    :goto_73
    invoke-virtual {v4, v6, v7, v11}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;Z)V

    .line 1056
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1057
    invoke-virtual {v4, v6, v8}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    .line 1058
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v4, v9, v10, p0}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(JI)V

    return-void

    :goto_84
    if-nez v12, :cond_96

    .line 1055
    invoke-virtual {v4, v6, v7, v11}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;Z)V

    .line 1056
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1057
    invoke-virtual {v4, v6, v8}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    .line 1058
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, v9, v10, p1}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(JI)V

    .line 1060
    :cond_96
    throw p0
.end method

.method public final installStubPackageLI(Lcom/android/server/pm/pkg/AndroidPackage;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 9

    .line 3379
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v0, :cond_1e

    .line 3380
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uncompressing system stub; pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    :cond_1e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/InstallPackageHelper;->decompressPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 3389
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 3390
    :try_start_34
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;Z)Z

    .line 3391
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_6f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3392
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v1, p1, v4}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 3394
    :try_start_49
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0
    :try_end_4d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_49 .. :try_end_4d} :catch_4e

    return-object p0

    :catch_4e
    move-exception p2

    .line 3396
    const-string p3, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to install compressed system package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3399
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 3400
    throw p2

    :catchall_6f
    move-exception p0

    .line 3391
    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 3385
    :cond_75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to decompress stub at "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3386
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0xb

    .line 3385
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0
.end method

.method public installSystemStubPackages(Ljava/util/List;I)V
    .registers 10

    .line 3252
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const-string v1, "android"

    const/4 v2, 0x0

    if-ltz v0, :cond_6c

    .line 3253
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3255
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 3256
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_69

    .line 3260
    :cond_1f
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez v4, :cond_2f

    .line 3262
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_69

    .line 3266
    :cond_2f
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 3268
    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_44

    .line 3270
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_69

    .line 3277
    :cond_44
    :try_start_44
    invoke-virtual {p0, v4, v2, p2}, Lcom/android/server/pm/InstallPackageHelper;->installStubPackageLI(Lcom/android/server/pm/pkg/AndroidPackage;II)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3278
    invoke-virtual {v3, v2, v2, v1}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3280
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_69

    :catch_4e
    move-exception v1

    .line 3282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse uncompressed system package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3289
    :cond_6c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_72
    if-ltz p2, :cond_9e

    .line 3290
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3291
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    const/4 v4, 0x2

    .line 3292
    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stub disabled; pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_72

    :cond_9e
    return-void
.end method

.method public final synthetic lambda$commitReconciledScanResultLocked$0(Lcom/android/server/pm/PackageSetting;)V
    .registers 2

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->handleUpdateOwnerDenyList(Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method public final synthetic lambda$installExistingPackageAsUser$1(Ljava/lang/String;ILandroid/content/IntentSender;)V
    .registers 5

    .line 790
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->restorePermissionsAndUpdateRolesForNewUserInstall(Ljava/lang/String;I)V

    if-eqz p3, :cond_d

    const/4 p1, 0x1

    .line 793
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, p3}, Lcom/android/server/pm/InstallPackageHelper;->onInstallComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V

    :cond_d
    return-void
.end method

.method public final synthetic lambda$installPackagesTraced$3(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V
    .registers 7

    .line 1048
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/InstallPackageHelper;->doPostDexopt(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V

    return-void
.end method

.method public final synthetic lambda$prepPerformDexoptIfNeeded$5(Ljava/lang/Runnable;)V
    .registers 2

    .line 1232
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$restoreAndPostInstall$2(ZLcom/android/server/pm/InstallRequest;)V
    .registers 8

    if-eqz p1, :cond_7

    .line 893
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getUpdateBroadcastUserIds()[I

    move-result-object p1

    goto :goto_b

    .line 894
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getFirstTimeBroadcastUserIds()[I

    move-result-object p1

    .line 895
    :goto_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    aget v2, p1, v1

    .line 896
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/PackageManagerService;->restorePermissionsAndUpdateRolesForNewUserInstall(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public final maybeClearProfilesForUpgradesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 7

    if-eqz p1, :cond_1d

    .line 4650
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1d

    .line 4653
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_18

    goto :goto_1d

    .line 4657
    :cond_18
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final needSignatureMatchToSystem(Ljava/lang/String;)Z
    .registers 2

    .line 4639
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getPreinstallPackagesWithStrictSignatureCheck()Ljava/util/Set;

    move-result-object p0

    .line 4640
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z
    .registers 4

    .line 4190
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isExistingSettingCopied()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->needsNewAppId()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    .line 4191
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4194
    :try_start_17
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 4195
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->needsNewAppId()Z

    move-result p1

    .line 4194
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/Settings;->registerAppIdLPw(Lcom/android/server/pm/PackageSetting;Z)Z

    move-result p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    :catchall_2c
    move-exception p0

    .line 4196
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final orderedScanDirectoryForFilesToParse(Lcom/android/server/pm/ParallelPackageParser;Lcom/android/server/pm/InitAppsHelper$ScanParams;)Ljava/util/List;
    .registers 12

    .line 3905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3906
    iget-object v1, p2, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 3907
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "PackageManager"

    if-eqz v2, :cond_2a

    .line 3908
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No files in app dir "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanDir:Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3919
    :cond_2a
    array-length v2, v1

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v2, :cond_81

    aget-object v5, v1, v4

    .line 3920
    invoke-static {v5}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3c

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 3921
    :cond_3c
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 3926
    iget v6, p2, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanFlags:I

    const/high16 v7, 0x1000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_77

    .line 3927
    new-instance v6, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v7, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->getCacheDir()Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    invoke-direct {v6, v7, v8}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    .line 3929
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropping cache of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    invoke-virtual {v6, v5}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    .line 3932
    :cond_77
    invoke-virtual {p1, v5, p2}, Lcom/android/server/pm/ParallelPackageParser;->orderedSubmit(Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)Lcom/android/server/pm/ParallelPackageParser$OrderedResult;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_81
    return-object v0
.end method

.method public parallelInstallPackagesFromDirs(Ljava/util/List;Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 7

    .line 3842
    new-instance v0, Lcom/android/server/pm/ParallelPackageParser;

    invoke-direct {v0, p2, p3}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 3844
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3847
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/InitAppsHelper$ScanParams;

    .line 3848
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/InstallPackageHelper;->orderedScanDirectoryForFilesToParse(Lcom/android/server/pm/ParallelPackageParser;Lcom/android/server/pm/InitAppsHelper$ScanParams;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 3852
    :cond_22
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p3, 0x0

    :cond_27
    if-ge p3, p1, :cond_66

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    check-cast v0, Ljava/util/List;

    .line 3853
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;

    .line 3855
    :try_start_41
    iget-object v2, v1, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;->future:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/InstallPackageHelper;->processParseResult(Lcom/android/server/pm/ParallelPackageParser$ParseResult;)V
    :try_end_4c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_41 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_4c} :catch_4d

    goto :goto_35

    .line 3857
    :catch_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to parse: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;->scanFile:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    return-void
.end method

.method public final performBackupManagerRestore(IILcom/android/server/pm/InstallRequest;)Z
    .registers 9

    .line 929
    invoke-virtual {p3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 932
    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIBackupManager()Landroid/app/backup/IBackupManager;

    move-result-object p0

    .line 933
    const-string v0, "PackageManager"

    if-eqz p0, :cond_55

    const/4 v2, -0x1

    if-ne p1, v2, :cond_16

    move p1, v1

    :cond_16
    const-wide/32 v2, 0x40000

    .line 942
    const-string/jumbo v4, "restore"

    invoke-static {v2, v3, v4, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 944
    :try_start_1f
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupManager;->isUserReadyForBackup(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 946
    invoke-virtual {p3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 945
    invoke-interface {p0, p1, p3, p2}, Landroid/app/backup/IBackupManager;->restoreAtInstallForUser(ILjava/lang/String;I)V

    goto :goto_53

    :catch_31
    move-exception p0

    goto :goto_4d

    .line 948
    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not ready. Restore at install didn\'t take place."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_4c} :catch_53
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4c} :catch_31

    return v1

    .line 955
    :goto_4d
    const-string p1, "Exception trying to enqueue restore"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_53
    :goto_53
    const/4 p0, 0x1

    return p0

    .line 959
    :cond_55
    const-string p0, "Backup Manager not found!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final performRollbackManagerRestore(IILcom/android/server/pm/InstallRequest;)Z
    .registers 15

    .line 970
    invoke-virtual {p3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 973
    :cond_8
    invoke-virtual {p3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 974
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 980
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 981
    :try_start_20
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    const/4 v10, 0x1

    if-eqz v4, :cond_3b

    .line 983
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    .line 984
    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v6

    .line 987
    invoke-virtual {v4, v0, v10}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object p1

    goto :goto_40

    :catchall_38
    move-exception v0

    move-object p0, v0

    goto :goto_72

    .line 989
    :cond_3b
    new-array p1, v1, [I

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    .line 991
    :goto_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_38

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 993
    invoke-virtual {p3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result p3

    const/high16 v0, 0x40000

    and-int/2addr v0, p3

    if-nez v0, :cond_54

    and-int/lit16 p3, p3, 0x80

    if-eqz p3, :cond_52

    goto :goto_54

    :cond_52
    move p3, v1

    goto :goto_55

    :cond_54
    :goto_54
    move p3, v10

    :goto_55
    if-eqz v4, :cond_71

    if-eqz p3, :cond_71

    .line 998
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v8

    .line 999
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class p3, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 1000
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 1002
    invoke-static {p1}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v4

    move v9, p2

    .line 1001
    invoke-interface/range {v2 .. v9}, Lcom/android/server/rollback/RollbackManagerInternal;->snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V

    return v10

    :cond_71
    return v1

    .line 991
    :goto_72
    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_38

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final prepPerformDexoptIfNeeded(Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 13

    .line 1189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ReconciledPackage;

    .line 1191
    iget-object v2, v0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 1193
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 1194
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestOldPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 1195
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v9

    .line 1196
    iget-object v4, v0, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    if-nez v4, :cond_37

    if-eqz v3, :cond_44

    .line 1198
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getSharedLibraryDependencies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_44

    .line 1202
    :cond_37
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v4

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdate(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    .line 1206
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3
    :try_end_4c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_44 .. :try_end_4c} :catch_72

    .line 1207
    :try_start_4c
    invoke-virtual {p0, v2, v9}, Lcom/android/server/pm/InstallPackageHelper;->getNewUsers(Lcom/android/server/pm/InstallRequest;[I)[I

    move-result-object v0

    .line 1209
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;I[I)V

    .line 1210
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->isClearCodeCache()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1211
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    const/4 v5, -0x1

    const/16 v6, 0x27

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    :try_end_68
    .catchall {:try_start_4c .. :try_end_68} :catchall_69

    goto :goto_6c

    :catchall_69
    move-exception v0

    move-object p1, v0

    goto :goto_8b

    :cond_6c
    :goto_6c
    if-eqz v3, :cond_75

    .line 1215
    :try_start_6e
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_71
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_75

    :catch_72
    move-exception v0

    move-object p1, v0

    goto :goto_96

    :cond_75
    :goto_75
    const/4 v0, 0x1

    .line 1220
    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setKeepArtProfile(Z)V

    .line 1222
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1223
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDexOptHelper()Lcom/android/server/pm/DexOptHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/DexOptHelper;->performDexoptIfNeededAsync(Lcom/android/server/pm/InstallRequest;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1224
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->onWaitDexoptStarted()V

    goto/16 :goto_9

    :goto_8b
    if-eqz v3, :cond_95

    .line 1206
    :try_start_8d
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    goto :goto_95

    :catchall_91
    move-exception v0

    :try_start_92
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_95
    :goto_95
    throw p1
    :try_end_96
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_92 .. :try_end_96} :catch_72

    .line 1216
    :goto_96
    iget v0, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    .line 1217
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1228
    :cond_a2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c0

    .line 1229
    new-instance p1, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda6;-><init>()V

    .line 1231
    invoke-interface {v1, p1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/concurrent/CompletableFuture;

    .line 1230
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 1232
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_c3

    .line 1234
    :cond_c0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_c3
    return-void
.end method

.method public final prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanRequest;
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    .line 4244
    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v3

    .line 4245
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4246
    :try_start_10
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->getPlatformPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    .line 4247
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4248
    invoke-static {v0, v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v6

    .line 4247
    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4249
    invoke-static {v0, v5, v3}, Lcom/android/server/pm/ScanPackageUtils;->getRealPackageName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_30

    .line 4252
    invoke-static {v0, v5}, Lcom/android/server/pm/ScanPackageUtils;->ensurePackageRenamed(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    goto :goto_30

    :catchall_2c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_f6

    .line 4254
    :cond_30
    :goto_30
    invoke-virtual {p0, v0, v5}, Lcom/android/server/pm/InstallPackageHelper;->getOriginalPackageLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 4255
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 4256
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 4257
    const-string v5, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " was transferred to another, but its .apk remains"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4260
    :cond_6d
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4261
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 4260
    invoke-virtual {v5, v9}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    const/4 v5, 0x0

    if-eqz v6, :cond_85

    .line 4264
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v10

    if-nez v10, :cond_83

    goto :goto_85

    :cond_83
    move v10, v5

    goto :goto_89

    .line 4267
    :cond_85
    :goto_85
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v10

    :goto_89
    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v10, :cond_a0

    .line 4270
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a0

    .line 4271
    iget-object v10, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4272
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v13

    .line 4271
    invoke-virtual {v10, v13, v5, v5, v11}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v10

    goto :goto_a1

    :cond_a0
    move-object v10, v12

    :goto_a1
    if-eqz v6, :cond_ac

    .line 4285
    iget-object v13, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v6}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v13

    goto :goto_ad

    :cond_ac
    move-object v13, v12

    .line 4287
    :goto_ad
    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_10 .. :try_end_ae} :catchall_2c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v4, :cond_c2

    .line 4290
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    goto :goto_c3

    :cond_c2
    move v11, v5

    :goto_c3
    if-eqz v1, :cond_c9

    .line 4292
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    move-object v2, v1

    goto :goto_ca

    :cond_c9
    move-object v2, v12

    .line 4295
    :goto_ca
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 4296
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v5, p3

    move v4, v11

    .line 4295
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ScanPackageUtils;->enableAlignmentChecks(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Landroid/content/Context;Ljava/lang/String;ZZI)Z

    move-result v14

    .line 4298
    new-instance v0, Lcom/android/server/pm/ScanRequest;

    if-nez v6, :cond_ed

    :goto_dd
    move-object/from16 v1, p1

    move-object v4, v6

    move-object v6, v9

    move-object v5, v10

    move-object v3, v12

    move-object v2, v13

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    goto :goto_f2

    .line 4299
    :cond_ed
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    goto :goto_dd

    :goto_f2
    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;Z)V

    return-object v0

    .line 4287
    :goto_f6
    :try_start_f6
    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_2c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final prepareInstallPackages(Ljava/util/List;)Z
    .registers 6

    .line 1264
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    const-wide/32 v1, 0x40000

    .line 1266
    :try_start_13
    const-string/jumbo v3, "preparePackage"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1267
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->onPrepareStarted()V

    .line 1268
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallPackageHelper;->preparePackage(Lcom/android/server/pm/InstallRequest;)V
    :try_end_1f
    .catch Lcom/android/server/pm/PrepareFailure; {:try_start_13 .. :try_end_1f} :catch_28
    .catchall {:try_start_13 .. :try_end_1f} :catchall_26

    .line 1276
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->onPrepareFinished()V

    .line 1277
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_4

    :catchall_26
    move-exception p0

    goto :goto_44

    :catch_28
    move-exception p0

    .line 1270
    :try_start_29
    iget p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1271
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1270
    invoke-virtual {v0, p1, v3}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    .line 1272
    iget-object p1, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallRequest;->setOriginPackage(Ljava/lang/String;)V

    .line 1273
    iget-object p0, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPermission:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/InstallRequest;->setOriginPermission(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_26

    .line 1276
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->onPrepareFinished()V

    .line 1277
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    .line 1276
    :goto_44
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->onPrepareFinished()V

    .line 1277
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1278
    throw p0

    :cond_4b
    const/4 p0, 0x1

    return p0
.end method

.method public final preparePackage(Lcom/android/server/pm/InstallRequest;)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    .line 1817
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1486
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    .line 1487
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v5

    .line 1488
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getVolumeUuid()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_1e

    const/4 v6, 0x1

    goto :goto_1f

    :cond_1e
    move v6, v8

    :goto_1f
    and-int/lit16 v9, v5, 0x800

    if-eqz v9, :cond_25

    const/4 v9, 0x1

    goto :goto_26

    :cond_25
    move v9, v8

    :goto_26
    and-int/lit16 v10, v5, 0x4000

    if-eqz v10, :cond_2c

    const/4 v10, 0x1

    goto :goto_2d

    :cond_2c
    move v10, v8

    :goto_2d
    const/high16 v11, 0x10000

    and-int v12, v5, v11

    if-eqz v12, :cond_35

    const/4 v12, 0x1

    goto :goto_36

    :cond_35
    move v12, v8

    :goto_36
    const/high16 v13, 0x20000

    and-int v14, v5, v13

    if-eqz v14, :cond_3e

    const/4 v14, 0x1

    goto :goto_3f

    :cond_3e
    move v14, v8

    .line 1495
    :goto_3f
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    move-result v15

    move/from16 v16, v11

    const/4 v11, 0x5

    if-ne v15, v11, :cond_4b

    const/16 v23, 0x1

    goto :goto_4d

    :cond_4b
    move/from16 v23, v8

    .line 1497
    :goto_4d
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v11

    if-eqz v11, :cond_56

    const/16 v11, 0x206

    goto :goto_57

    :cond_56
    const/4 v11, 0x6

    :goto_57
    and-int/lit16 v15, v5, 0x1000

    if-eqz v15, :cond_5d

    or-int/lit16 v11, v11, 0x400

    :cond_5d
    if-eqz v9, :cond_61

    or-int/lit16 v11, v11, 0x2000

    :cond_61
    if-eqz v10, :cond_65

    or-int/lit16 v11, v11, 0x4000

    :cond_65
    if-eqz v12, :cond_6b

    const v10, 0x8000

    or-int/2addr v11, v10

    :cond_6b
    if-eqz v14, :cond_70

    const/high16 v10, 0x4000000

    or-int/2addr v11, v10

    .line 1517
    :cond_70
    new-instance v10, Ljava/io/File;

    if-eqz v14, :cond_7b

    .line 1518
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getApexInfo()Landroid/apex/ApexInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    goto :goto_7f

    :cond_7b
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v12

    :goto_7f
    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v12, -0x74

    if-eqz v9, :cond_a5

    if-nez v6, :cond_89

    goto :goto_a5

    .line 1523
    :cond_89
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible ephemeral install; external="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {v0, v12}, Lcom/android/server/pm/PrepareFailure;-><init>(I)V

    throw v0

    .line 1528
    :cond_a5
    :goto_a5
    iget-object v15, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1529
    invoke-virtual {v15}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v15

    const v17, -0x7fffffc0

    or-int v15, v15, v17

    if-eqz v6, :cond_b5

    const/16 v17, 0x8

    goto :goto_b7

    :cond_b5
    move/from16 v17, v8

    :goto_b7
    or-int v15, v15, v17

    .line 1533
    const-string/jumbo v2, "parsePackage"

    move/from16 v24, v14

    const-wide/32 v13, 0x40000

    invoke-static {v13, v14, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1536
    :try_start_c4
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPreparingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object v2
    :try_end_cc
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_c4 .. :try_end_cc} :catch_10e
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_10b

    .line 1537
    :try_start_cc
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getPackageLite()Landroid/content/pm/parsing/PackageLite;

    move-result-object v17

    const/16 v25, 0x0

    if-eqz v17, :cond_f4

    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isArchived()Z

    move-result v17

    if-nez v17, :cond_db

    goto :goto_f4

    .line 1546
    :cond_db
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getPackageLite()Landroid/content/pm/parsing/PackageLite;

    move-result-object v10

    invoke-virtual {v2, v10, v15}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackageFromPackageLite(Landroid/content/pm/parsing/PackageLite;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v10

    .line 1548
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getPackageLite()Landroid/content/pm/parsing/PackageLite;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/parsing/PackageLite;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v17

    move/from16 v26, v6

    move-object/from16 v6, v17

    goto :goto_105

    :catchall_f0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_c51

    .line 1539
    :cond_f4
    :goto_f4
    invoke-virtual {v2, v10, v15, v8}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v10

    .line 1540
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->artManagedInstallFilesValidationApi()Z

    move-result v17

    if-nez v17, :cond_101

    .line 1541
    invoke-static {v10}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->validatePackageDexMetadata(Lcom/android/server/pm/pkg/AndroidPackage;)V
    :try_end_101
    .catchall {:try_start_cc .. :try_end_101} :catchall_f0

    :cond_101
    move/from16 v26, v6

    move-object/from16 v6, v25

    :goto_105
    if-eqz v2, :cond_111

    .line 1550
    :try_start_107
    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_10a
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_107 .. :try_end_10a} :catch_10e
    .catchall {:try_start_107 .. :try_end_10a} :catchall_10b

    goto :goto_111

    :catchall_10b
    move-exception v0

    goto/16 :goto_c6a

    :catch_10e
    move-exception v0

    goto/16 :goto_c5c

    .line 1554
    :cond_111
    :goto_111
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    const/high16 v2, 0x1000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_11b

    const/4 v2, 0x1

    goto :goto_11c

    :cond_11b
    move v2, v8

    :goto_11c
    if-nez v2, :cond_125

    .line 1564
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isTestOnly()Z

    move-result v13

    if-eqz v13, :cond_125

    const/4 v2, 0x1

    :cond_125
    if-nez v2, :cond_174

    .line 1571
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v2

    sget v13, Lcom/android/server/pm/PackageManagerService;->MIN_INSTALLABLE_TARGET_SDK:I

    if-lt v2, v13, :cond_130

    goto :goto_174

    .line 1572
    :cond_130
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " targets deprecated sdk version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App package must target at least SDK version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x1d

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_174
    :goto_174
    if-eqz v9, :cond_1d3

    .line 1582
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v13, 0x1a

    if-lt v2, v13, :cond_1ac

    .line 1588
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_185

    goto :goto_1d3

    .line 1589
    :cond_185
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " may not declare sharedUserId."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Instant app package may not declare a sharedUserId"

    invoke-direct {v0, v12, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1583
    :cond_1ac
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not target at least O"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Instant app package must target at least O"

    invoke-direct {v0, v12, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1596
    :cond_1d3
    :goto_1d3
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v2

    const/16 v13, -0x13

    if-eqz v2, :cond_1f0

    .line 1598
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    if-nez v26, :cond_1e1

    goto :goto_1f0

    .line 1602
    :cond_1e1
    const-string v0, "PackageManager"

    const-string v1, "Static shared libs can only be installed on internal storage."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Static shared libs can only be installed on internal storage."

    invoke-direct {v0, v13, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1608
    :cond_1f0
    :goto_1f0
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1609
    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallRequest;->setName(Ljava/lang/String;)V

    .line 1610
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isTestOnly()Z

    move-result v14

    if-eqz v14, :cond_20c

    and-int/lit8 v14, v5, 0x4

    if-eqz v14, :cond_202

    goto :goto_20c

    .line 1612
    :cond_202
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const/16 v1, -0xf

    const-string v2, "Failed to install test-only apk. Did you forget to add -t?"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1618
    :cond_20c
    :goto_20c
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v14

    sget-object v13, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v14, v13, :cond_21c

    .line 1619
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v13

    invoke-interface {v10, v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_233

    .line 1621
    :cond_21c
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v13

    .line 1622
    invoke-static {v13, v10, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v13

    .line 1624
    invoke-interface {v13}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v14

    if-nez v14, :cond_c45

    .line 1628
    invoke-interface {v13}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/SigningDetails;

    invoke-interface {v10, v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :goto_233
    if-eqz v9, :cond_268

    .line 1631
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v13

    const/4 v14, 0x2

    if-lt v13, v14, :cond_241

    goto :goto_268

    .line 1633
    :cond_241
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not signed with at least APK Signature Scheme v2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Instant app package must be signed with APK Signature Scheme v2 or greater"

    invoke-direct {v0, v12, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1641
    :cond_268
    :goto_268
    iget-object v13, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v13, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v14

    .line 1642
    :try_start_270
    iget-object v13, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    and-int/lit8 v17, v5, 0x2

    const/high16 v27, 0x200000

    const/16 v28, 0x1

    if-eqz v17, :cond_3b5

    .line 1645
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, v2}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1646
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2ac

    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1647
    invoke-virtual {v7, v8}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2ac

    .line 1652
    invoke-interface {v10, v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1654
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    move-object v2, v8

    goto :goto_2ac

    :catchall_2a9
    move-exception v0

    goto/16 :goto_c40

    :cond_2ac
    :goto_2ac
    if-eqz v13, :cond_2b1

    move/from16 v7, v28

    goto :goto_2b2

    :cond_2b1
    const/4 v7, 0x0

    :goto_2b2
    if-eqz v7, :cond_3af

    .line 1668
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v8

    .line 1669
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v12

    move/from16 v29, v5

    const/16 v5, 0x16

    if-le v8, v5, :cond_2f7

    if-le v12, v5, :cond_2c5

    goto :goto_2f7

    .line 1672
    :cond_2c5
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " new target SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t support runtime permissions but the old target SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x1a

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1680
    :cond_2f7
    :goto_2f7
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_31f

    and-int v5, v29, v27

    if-eqz v5, :cond_302

    goto :goto_31f

    .line 1682
    :cond_302
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a persistent app. Persistent apps are not updateable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1688
    :cond_31f
    :goto_31f
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    move-result v5

    if-eqz v5, :cond_3ac

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_3ac

    .line 1689
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isSdkLibrary()Z

    move-result v5

    if-eqz v5, :cond_3ac

    .line 1690
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getMinSdkVersion()I

    move-result v5

    move-object/from16 v30, v6

    .line 1691
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMinSdkVersion()I

    move-result v6

    if-ne v8, v12, :cond_34d

    if-eq v5, v6, :cond_348

    goto :goto_34d

    :cond_348
    :goto_348
    move/from16 v18, v7

    move/from16 v31, v9

    goto :goto_3b2

    .line 1693
    :cond_34d
    :goto_34d
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v17

    move/from16 v18, v7

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibVersionMajor()I

    move-result v7

    move/from16 v31, v9

    .line 1694
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibVersionMajor()I

    move-result v9

    if-eq v7, v9, :cond_360

    goto :goto_3b2

    .line 1696
    :cond_360
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure updating "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as it updates an sdk library <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> without changing the versionMajor, but the targetSdkVersion or minSdkVersion has changed: Old targetSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new targetSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Old minSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new minSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " versionMajor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3ac
    :goto_3ac
    move-object/from16 v30, v6

    goto :goto_348

    :cond_3af
    move/from16 v29, v5

    goto :goto_3ac

    :goto_3b2
    move/from16 v7, v18

    goto :goto_3bc

    :cond_3b5
    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v31, v9

    const/4 v7, 0x0

    :goto_3bc
    if-nez v13, :cond_3ea

    .line 1719
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    move-result v5

    if-eqz v5, :cond_3ea

    .line 1720
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1722
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v6

    .line 1721
    invoke-virtual {v5, v6}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v5

    if-eqz v5, :cond_3ea

    .line 1723
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v6

    if-lez v6, :cond_3ea

    const/4 v6, 0x0

    .line 1725
    invoke-virtual {v5, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/SharedLibraryInfo;

    .line 1726
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    goto :goto_3eb

    :cond_3ea
    move-object v5, v13

    .line 1734
    :goto_3eb
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v6

    const/4 v8, -0x5

    if-eqz v6, :cond_407

    .line 1735
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1736
    invoke-virtual {v6, v10}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersion(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v6

    if-eqz v6, :cond_422

    .line 1738
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    goto :goto_422

    .line 1743
    :cond_407
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1744
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/pm/SharedLibrariesImpl;->getStaticLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v6

    if-eqz v6, :cond_422

    .line 1745
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v6

    if-gtz v6, :cond_41a

    goto :goto_422

    .line 1746
    :cond_41a
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "The package name is same as an existing shared libs"

    invoke-direct {v0, v8, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_422
    :goto_422
    if-eqz v5, :cond_4ae

    .line 1760
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v6

    .line 1761
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9, v5}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9

    .line 1763
    invoke-virtual {v6, v5, v9, v11}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result v12

    if-eqz v12, :cond_462

    .line 1765
    invoke-virtual {v6, v5, v10}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v5

    if-eqz v5, :cond_441

    goto :goto_4ae

    .line 1766
    :cond_441
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " upgrade keys do not match the previously installed version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_462
    .catchall {:try_start_270 .. :try_end_462} :catchall_2a9

    .line 1772
    :cond_462
    :try_start_462
    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1774
    invoke-virtual {v12, v10}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v12

    .line 1773
    invoke-static {v12}, Lcom/android/server/pm/ReconcilePackageUtils;->isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v21

    .line 1775
    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1777
    invoke-virtual {v12, v10}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v12

    .line 1776
    invoke-static {v12}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v22

    .line 1782
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v20

    const/16 v19, 0x0

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    .line 1780
    invoke-static/range {v17 .. v23}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    move-result v5

    if-eqz v5, :cond_4ae

    .line 1786
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5
    :try_end_48e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_462 .. :try_end_48e} :catch_49a
    .catchall {:try_start_462 .. :try_end_48e} :catchall_2a9

    .line 1787
    :try_start_48e
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    .line 1788
    monitor-exit v5
    :try_end_496
    .catchall {:try_start_48e .. :try_end_496} :catchall_49c

    :try_start_496
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_499
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_496 .. :try_end_499} :catch_49a
    .catchall {:try_start_496 .. :try_end_499} :catchall_2a9

    goto :goto_4ae

    :catch_49a
    move-exception v0

    goto :goto_4a2

    :catchall_49c
    move-exception v0

    :try_start_49d
    monitor-exit v5
    :try_end_49e
    .catchall {:try_start_49d .. :try_end_49e} :catchall_49c

    :try_start_49e
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_4a2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_49e .. :try_end_4a2} :catch_49a
    .catchall {:try_start_49e .. :try_end_4a2} :catchall_2a9

    .line 1791
    :goto_4a2
    :try_start_4a2
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_4ae
    :goto_4ae
    if-eqz v13, :cond_4be

    .line 1799
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    .line 1800
    invoke-virtual {v13, v4}, Lcom/android/server/pm/PackageSetting;->queryUsersInstalledOrHasData([I)[I

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/pm/InstallRequest;->setOriginUsers([I)V

    move/from16 v19, v5

    goto :goto_4c0

    :cond_4be
    const/16 v19, 0x0

    .line 1804
    :goto_4c0
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    const/4 v6, 0x0

    :goto_4c9
    if-ge v6, v5, :cond_542

    .line 1807
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 1808
    iget-object v13, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v13, v8, v9}, Lcom/android/server/pm/PackageManagerService;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v8

    if-eqz v8, :cond_53e

    .line 1811
    invoke-static {v10}, Lcom/android/server/pm/InstallPackageHelper;->cannotInstallWithBadPermissionGroups(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z

    move-result v9

    if-eqz v9, :cond_53e

    .line 1812
    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    if-nez v7, :cond_4f6

    .line 1814
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_53e

    .line 1815
    :cond_4f6
    invoke-virtual {v0, v8, v10, v11}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v9

    if-eqz v9, :cond_4fd

    goto :goto_53e

    .line 1817
    :cond_4fd
    const-string v0, "146211400"

    .line 1818
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    .line 1817
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1820
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to redeclare permission group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already owned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x7e

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_53e
    :goto_53e
    add-int/lit8 v6, v6, 0x1

    const/4 v8, -0x5

    goto :goto_4c9

    .line 1831
    :cond_542
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissions()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_54c
    if-ltz v6, :cond_760

    .line 1833
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 1834
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v9

    .line 1837
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v12

    and-int/lit16 v12, v12, 0x1000

    if-eqz v12, :cond_5a5

    if-nez v19, :cond_5a5

    .line 1839
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v7

    const-string v7, "Non-System package "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " attempting to delcare ephemeral permission "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; Removing ephemeral."

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1839
    invoke-static {v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v7

    and-int/lit16 v7, v7, -0x1001

    .line 1842
    invoke-static {v8, v7}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setProtectionLevel(Lcom/android/internal/pm/pkg/component/ParsedPermission;I)V

    goto :goto_5a7

    :cond_5a5
    move/from16 v32, v7

    :goto_5a7
    if-eqz v9, :cond_672

    .line 1848
    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1850
    invoke-virtual {v0, v7, v10, v11}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v12

    if-nez v12, :cond_624

    .line 1855
    const-string v9, "android"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5eb

    .line 1865
    const-string v7, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " attempting to redeclare system permission "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; ignoring new declaration"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1865
    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    invoke-interface {v10, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removePermission(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto/16 :goto_672

    .line 1856
    :cond_5eb
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to redeclare permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already owned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x70

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 1862
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/pm/PrepareFailure;->conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PrepareFailure;

    move-result-object v0

    throw v0

    .line 1870
    :cond_624
    const-string v7, "android"

    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_672

    .line 1875
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    move/from16 v12, v28

    if-ne v7, v12, :cond_672

    .line 1877
    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-nez v7, :cond_672

    .line 1878
    const-string v7, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " trying to change a non-runtime permission "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " to runtime; keeping old protection level"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1878
    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->getProtectionLevel()I

    move-result v7

    .line 1882
    invoke-static {v8, v7}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setProtectionLevel(Lcom/android/internal/pm/pkg/component/ParsedPermission;I)V

    .line 1889
    :cond_672
    :goto_672
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6c0

    .line 1890
    invoke-static {v10}, Lcom/android/server/pm/InstallPackageHelper;->cannotInstallWithBadPermissionGroups(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z

    move-result v7

    if-eqz v7, :cond_6c0

    const/4 v7, 0x0

    :goto_67f
    if-ge v7, v5, :cond_69e

    .line 1893
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1894
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_69b

    const/4 v7, 0x1

    goto :goto_69f

    :cond_69b
    add-int/lit8 v7, v7, 0x1

    goto :goto_67f

    :cond_69e
    const/4 v7, 0x0

    :goto_69f
    if-nez v7, :cond_6c0

    .line 1901
    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1902
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v12}, Lcom/android/server/pm/PackageManagerService;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v7

    const/16 v9, -0x7f

    if-eqz v7, :cond_715

    .line 1915
    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 1917
    const-string v12, "android"

    invoke-virtual {v12, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6c0

    .line 1918
    invoke-virtual {v0, v7, v10, v11}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v12

    if-eqz v12, :cond_6c5

    :cond_6c0
    const v7, 0x534e4554

    goto/16 :goto_758

    .line 1920
    :cond_6c5
    const-string v0, "146211400"

    .line 1921
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    .line 1920
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1923
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to declare permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " owned by package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with incompatible certificate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1905
    :cond_715
    const-string v0, "146211400"

    .line 1906
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v7, 0x534e4554

    .line 1905
    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1908
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to declare permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in non-existing group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_758
    add-int/lit8 v6, v6, -0x1

    move/from16 v7, v32

    const/16 v28, 0x1

    goto/16 :goto_54c

    :cond_760
    move/from16 v32, v7

    .line 1936
    monitor-exit v14
    :try_end_763
    .catchall {:try_start_4a2 .. :try_end_763} :catchall_2a9

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v19, :cond_781

    if-nez v26, :cond_777

    if-nez v31, :cond_76d

    goto :goto_781

    .line 1945
    :cond_76d
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Cannot update a system app with an instant app"

    const/16 v2, -0x74

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1941
    :cond_777
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Cannot install updates to system apps on sdcard"

    const/16 v2, -0x13

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1950
    :cond_781
    :goto_781
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v3

    if-eqz v3, :cond_7d2

    or-int/lit16 v3, v11, 0x101

    .line 1955
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 1956
    :try_start_791
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-nez v6, :cond_7b7

    .line 1958
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing settings for moved package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, -0x3

    invoke-static {v2, v7}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_7b7

    :catchall_7b5
    move-exception v0

    goto :goto_7cd

    .line 1965
    :cond_7b7
    :goto_7b7
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v2

    .line 1966
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1967
    monitor-exit v5
    :try_end_7c7
    .catchall {:try_start_791 .. :try_end_7c7} :catchall_7b5

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    :cond_7ca
    move-object v5, v10

    goto/16 :goto_85c

    :goto_7cd
    :try_start_7cd
    monitor-exit v5
    :try_end_7ce
    .catchall {:try_start_7cd .. :try_end_7ce} :catchall_7b5

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :cond_7d2
    const/16 v28, 0x1

    or-int/lit8 v3, v11, 0x1

    if-nez v24, :cond_7ca

    .line 1977
    :try_start_7d8
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5
    :try_end_7e0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_7d8 .. :try_end_7e0} :catch_839

    .line 1978
    :try_start_7e0
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1979
    monitor-exit v5
    :try_end_7e9
    .catchall {:try_start_7e0 .. :try_end_7e9} :catchall_833

    :try_start_7e9
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v2, :cond_7f6

    .line 1981
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v5

    if-eqz v5, :cond_7f6

    const/4 v5, 0x1

    goto :goto_7f7

    :cond_7f6
    const/4 v5, 0x0

    .line 1982
    :goto_7f7
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getAbiOverride()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v2, :cond_809

    .line 1986
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_809

    const/4 v2, 0x1

    goto :goto_80a

    :cond_809
    const/4 v2, 0x0

    .line 1989
    :goto_80a
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    if-nez v5, :cond_814

    if-eqz v2, :cond_811

    goto :goto_814

    :cond_811
    const/16 v20, 0x0

    goto :goto_816

    :cond_814
    :goto_814
    const/16 v20, 0x1

    .line 1992
    :goto_816
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getAppLib32InstallDir()Ljava/io/File;

    move-result-object v22

    move-object/from16 v17, v6

    move-object/from16 v18, v10

    .line 1989
    invoke-interface/range {v17 .. v22}, Lcom/android/server/pm/PackageAbiHelper;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v2

    move-object/from16 v5, v18

    .line 1993
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 1994
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_832
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_7e9 .. :try_end_832} :catch_839

    goto :goto_85c

    :catchall_833
    move-exception v0

    .line 1979
    :try_start_834
    monitor-exit v5
    :try_end_835
    .catchall {:try_start_834 .. :try_end_835} :catchall_833

    :try_start_835
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_839
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_835 .. :try_end_839} :catch_839

    :catch_839
    move-exception v0

    .line 1996
    const-string v1, "PackageManager"

    const-string v2, "Error deriving application ABI"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error deriving application ABI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x4

    .line 1997
    invoke-static {v0, v1}, Lcom/android/server/pm/PrepareFailure;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PrepareFailure;

    move-result-object v0

    throw v0

    :goto_85c
    if-eqz v24, :cond_870

    .line 2006
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getApexInfo()Landroid/apex/ApexInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-interface {v5, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2007
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getApexInfo()Landroid/apex/ApexInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-interface {v5, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_870
    if-eqz v32, :cond_bc2

    .line 2020
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2021
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 2022
    :try_start_87e
    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 2023
    monitor-exit v6
    :try_end_887
    .catchall {:try_start_87e .. :try_end_887} :catchall_bbc

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2024
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    .line 2025
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v8

    if-eqz v8, :cond_8a4

    if-eqz v6, :cond_8a4

    and-int/lit8 v6, v29, 0x20

    if-eqz v6, :cond_89b

    goto :goto_8a4

    .line 2031
    :cond_89b
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Packages declaring static-shared libs cannot be updated"

    const/4 v2, -0x5

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_8a4
    :goto_8a4
    and-int/lit16 v6, v3, 0x2000

    if-eqz v6, :cond_8aa

    const/4 v6, 0x1

    goto :goto_8ab

    :cond_8aa
    const/4 v6, 0x0

    .line 2042
    :goto_8ab
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v8

    .line 2049
    :try_start_8b3
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    .line 2050
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;

    move-result-object v25

    .line 2051
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v10

    .line 2054
    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v11}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v11

    .line 2055
    invoke-virtual {v11, v9, v10, v3}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result v10

    if-eqz v10, :cond_8fb

    .line 2056
    invoke-virtual {v11, v9, v5}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v10

    if-eqz v10, :cond_8e0

    goto :goto_933

    .line 2057
    :cond_8e0
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New package not signed by keys specified by upgrade-keysets: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_8f8
    move-exception v0

    goto/16 :goto_bb7

    .line 2062
    :cond_8fb
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v10

    .line 2063
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v11

    const/4 v12, 0x1

    .line 2065
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v13

    if-nez v13, :cond_933

    const/16 v12, 0x8

    .line 2067
    invoke-virtual {v11, v10, v12}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v12

    if-nez v12, :cond_933

    if-eqz v23, :cond_91b

    .line 2074
    invoke-virtual {v11, v10}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v10

    if-eqz v10, :cond_91b

    goto :goto_933

    .line 2076
    :cond_91b
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New package has a different signature: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2083
    :cond_933
    :goto_933
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v10

    if-eqz v10, :cond_9bc

    .line 2084
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v10
    :try_end_93d
    .catchall {:try_start_8b3 .. :try_end_93d} :catchall_8f8

    if-eqz v10, :cond_9bc

    .line 2087
    :try_start_93f
    const-string v10, "SHA-512"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 2088
    new-instance v11, Ljava/io/File;

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/android/server/pm/InstallPackageHelper;->updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V

    .line 2089
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_974

    .line 2090
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_961
    if-ge v13, v12, :cond_974

    aget-object v14, v11, v13

    move/from16 v17, v3

    .line 2091
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v3}, Lcom/android/server/pm/InstallPackageHelper;->updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v17

    goto :goto_961

    :cond_974
    move/from16 v17, v3

    .line 2094
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3
    :try_end_97a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_93f .. :try_end_97a} :catch_9a4
    .catch Ljava/io/IOException; {:try_start_93f .. :try_end_97a} :catch_9a4
    .catchall {:try_start_93f .. :try_end_97a} :catchall_8f8

    .line 2099
    :try_start_97a
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v10

    invoke-static {v10, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_98c

    .line 2105
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v3

    .line 2104
    invoke-interface {v5, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_9be

    .line 2100
    :cond_98c
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New package fails restrict-update check: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2096
    :catch_9a4
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compute hash: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9bc
    move/from16 v17, v3

    .line 2110
    :goto_9be
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v7}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    if-eqz v3, :cond_9d3

    .line 2111
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_9d5

    .line 2113
    :cond_9d3
    const-string v0, "<nothing>"

    .line 2115
    :goto_9d5
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9e0

    .line 2116
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_9e2

    :cond_9e0
    const-string v3, "<nothing>"

    .line 2120
    :goto_9e2
    const-string v10, "<nothing>"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9f2

    .line 2121
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v10

    if-eqz v10, :cond_9f2

    .line 2122
    const-string v3, "<nothing>"

    .line 2126
    :cond_9f2
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v11, -0x18

    if-nez v10, :cond_a3a

    .line 2127
    const-string v10, "<nothing>"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a0f

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v10

    if-nez v10, :cond_a0f

    .line 2128
    invoke-virtual {v9, v4}, Lcom/android/server/pm/PackageSetting;->isArchivedOnAnyUser([I)Z

    move-result v10

    if-eqz v10, :cond_a0f

    goto :goto_a3a

    .line 2132
    :cond_a0f
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " shared user changed from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2140
    :cond_a3a
    :goto_a3a
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isLeavingSharedUser()Z

    move-result v0

    if-eqz v0, :cond_a46

    .line 2141
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v0

    if-eqz v0, :cond_a48

    :cond_a46
    const/4 v12, 0x1

    goto :goto_a6b

    .line 2142
    :cond_a48
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2143
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to rejoin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2148
    :goto_a6b
    invoke-virtual {v9, v4, v12}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v0

    const/4 v12, 0x0

    .line 2149
    invoke-virtual {v9, v4, v12}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v3

    if-eqz v6, :cond_ae7

    .line 2153
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v6

    const/4 v10, -0x1

    if-ne v6, v10, :cond_ab2

    .line 2154
    array-length v6, v4

    move v10, v12

    :goto_a7f
    if-ge v10, v6, :cond_ae7

    aget v11, v4, v10

    .line 2155
    invoke-virtual {v9, v11}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v13

    if-eqz v13, :cond_a8c

    add-int/lit8 v10, v10, 0x1

    goto :goto_a7f

    .line 2157
    :cond_a8c
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t replace full app with instant app: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0x74

    invoke-direct {v0, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(I)V

    throw v0

    .line 2164
    :cond_ab2
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_abd

    goto :goto_ae7

    .line 2166
    :cond_abd
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t replace full app with instant app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2166
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0x74

    invoke-direct {v0, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(I)V

    throw v0

    .line 2172
    :cond_ae7
    :goto_ae7
    monitor-exit v8
    :try_end_ae8
    .catchall {:try_start_97a .. :try_end_ae8} :catchall_8f8

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2175
    new-instance v2, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v2}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 2176
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    iput v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 2177
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 2179
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 2181
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b0c

    const/4 v4, 0x1

    goto :goto_b0d

    :cond_b0c
    move v4, v12

    :goto_b0d
    iput-boolean v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    const/4 v4, 0x1

    .line 2182
    iput-boolean v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    .line 2183
    iput-object v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 2184
    new-instance v4, Landroid/util/SparseIntArray;

    array-length v6, v0

    invoke-direct {v4, v6}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    move v6, v12

    .line 2185
    :goto_b1d
    array-length v4, v0

    if-ge v6, v4, :cond_b2e

    .line 2186
    aget v4, v0, v6

    .line 2187
    iget-object v8, v2, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    .line 2188
    invoke-virtual {v9, v4}, Lcom/android/server/pm/PackageSetting;->getInstallReason(I)I

    move-result v10

    .line 2187
    invoke-virtual {v8, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b1d

    .line 2190
    :cond_b2e
    new-instance v0, Landroid/util/SparseIntArray;

    array-length v4, v3

    invoke-direct {v0, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    move v6, v12

    .line 2191
    :goto_b37
    array-length v0, v3

    if-ge v6, v0, :cond_b48

    .line 2192
    aget v0, v3, v6

    .line 2193
    iget-object v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    .line 2194
    invoke-virtual {v9, v0}, Lcom/android/server/pm/PackageSetting;->getUninstallReason(I)I

    move-result v8

    .line 2193
    invoke-virtual {v4, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b37

    .line 2196
    :cond_b48
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 2197
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 2198
    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallRequest;->setRemovedInfo(Lcom/android/server/pm/PackageRemovedInfo;)V

    .line 2200
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_baf

    .line 2203
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v2

    .line 2204
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v3

    .line 2205
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isVendor()Z

    move-result v4

    .line 2206
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isProduct()Z

    move-result v6

    .line 2207
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOdm()Z

    move-result v8

    .line 2208
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystemExt()Z

    move-result v10

    or-int v11, v17, v16

    if-eqz v2, :cond_b7c

    const/high16 v13, 0x20000

    goto :goto_b7d

    :cond_b7c
    move v13, v12

    :goto_b7d
    or-int v2, v11, v13

    if-eqz v3, :cond_b84

    const/high16 v3, 0x40000

    goto :goto_b85

    :cond_b84
    move v3, v12

    :goto_b85
    or-int/2addr v2, v3

    if-eqz v4, :cond_b8b

    const/high16 v3, 0x80000

    goto :goto_b8c

    :cond_b8b
    move v3, v12

    :goto_b8c
    or-int/2addr v2, v3

    if-eqz v6, :cond_b92

    const/high16 v6, 0x100000

    goto :goto_b93

    :cond_b92
    move v6, v12

    :goto_b93
    or-int/2addr v2, v6

    if-eqz v8, :cond_b99

    const/high16 v6, 0x400000

    goto :goto_b9a

    :cond_b99
    move v6, v12

    :goto_b9a
    or-int/2addr v2, v6

    if-eqz v10, :cond_ba0

    move/from16 v8, v27

    goto :goto_ba1

    :cond_ba0
    move v8, v12

    :goto_ba1
    or-int v3, v2, v8

    const/4 v12, 0x1

    .line 2223
    invoke-virtual {v1, v12}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 2224
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    goto :goto_bb1

    :cond_baf
    move/from16 v3, v17

    :goto_bb1
    move v8, v0

    move v2, v3

    move-object v4, v7

    move-object/from16 v10, v25

    goto :goto_bf0

    .line 2172
    :goto_bb7
    :try_start_bb7
    monitor-exit v8
    :try_end_bb8
    .catchall {:try_start_bb7 .. :try_end_bb8} :catchall_8f8

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_bbc
    move-exception v0

    .line 2023
    :try_start_bbd
    monitor-exit v6
    :try_end_bbe
    .catchall {:try_start_bbd .. :try_end_bbe} :catchall_bbc

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :cond_bc2
    move/from16 v17, v3

    const/4 v12, 0x0

    .line 2239
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2244
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 2245
    :try_start_bd1
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c1b

    .line 2256
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bfe

    .line 2262
    monitor-exit v3
    :try_end_be6
    .catchall {:try_start_bd1 .. :try_end_be6} :catchall_bfc

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    move v8, v12

    move/from16 v2, v17

    move-object/from16 v4, v25

    move-object v9, v4

    move-object v10, v9

    :goto_bf0
    move/from16 v7, v32

    move-object v0, v1

    move v3, v15

    move-object/from16 v6, v30

    move/from16 v1, v32

    .line 2265
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/InstallRequest;->setPrepareResult(ZIILcom/android/server/pm/pkg/PackageState;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Landroid/content/pm/ArchivedPackageParcel;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    return-void

    :catchall_bfc
    move-exception v0

    goto :goto_c3b

    .line 2258
    :cond_bfe
    :try_start_bfe
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to re-install "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " without first uninstalling."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, -0x1

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2251
    :cond_c1b
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to re-install "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " without first uninstalling package running as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, -0x1

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2262
    :goto_c3b
    monitor-exit v3
    :try_end_c3c
    .catchall {:try_start_bfe .. :try_end_c3c} :catchall_bfc

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 1936
    :goto_c40
    :try_start_c40
    monitor-exit v14
    :try_end_c41
    .catchall {:try_start_c40 .. :try_end_c41} :catchall_2a9

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 1625
    :cond_c45
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Failed collect during installPackageLI"

    .line 1626
    invoke-interface {v13}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :goto_c51
    if-eqz v2, :cond_c5b

    .line 1536
    :try_start_c53
    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_c56
    .catchall {:try_start_c53 .. :try_end_c56} :catchall_c57

    goto :goto_c5b

    :catchall_c57
    move-exception v0

    :try_start_c58
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c5b
    :goto_c5b
    throw v1
    :try_end_c5c
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_c58 .. :try_end_c5c} :catch_10e
    .catchall {:try_start_c58 .. :try_end_c5c} :catchall_10b

    .line 1551
    :goto_c5c
    :try_start_c5c
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    iget v2, v0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    const-string v3, "Failed parse during installPackageLI"

    .line 1552
    invoke-static {v3, v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_c6a
    .catchall {:try_start_c5c .. :try_end_c6a} :catchall_10b

    .line 1554
    :goto_c6a
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 1555
    throw v0
.end method

.method public prepareSystemPackageCleanUp(Lcom/android/server/utils/WatchedArrayMap;Ljava/util/List;Landroid/util/ArrayMap;[I)V
    .registers 14

    .line 3612
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_cd

    .line 3613
    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 3614
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3619
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_c9

    .line 3626
    :cond_1a
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3627
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3628
    invoke-virtual {v5, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    const/4 v6, 0x5

    if-eqz v4, :cond_82

    .line 3630
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v7

    if-eqz v7, :cond_37

    goto/16 :goto_c9

    :cond_37
    if-eqz v5, :cond_c9

    .line 3642
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting better updated system app for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; removing system app.  Last known codePath="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", versionCode="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3647
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; scanned versionCode="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3649
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3642
    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 3650
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 3651
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p3, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c9

    :cond_82
    if-nez v5, :cond_a3

    .line 3658
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " no longer exists; its data will be wiped"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 3660
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v3, v2, p4}, Lcom/android/server/pm/RemovePackageHelper;->removePackageData(Lcom/android/server/pm/PackageSetting;[I)V

    goto :goto_c9

    .line 3666
    :cond_a3
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_c6

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 3667
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-nez v2, :cond_ba

    goto :goto_c6

    .line 3673
    :cond_ba
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c9

    .line 3668
    :cond_c6
    :goto_c6
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c9
    :goto_c9
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :cond_cd
    return-void
.end method

.method public final processParseResult(Lcom/android/server/pm/ParallelPackageParser$ParseResult;)V
    .registers 16

    .line 3939
    iget-object v0, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    .line 3942
    iget-object v1, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanParams:Lcom/android/server/pm/InitAppsHelper$ScanParams;

    .line 3944
    const-string v2, "PackageManager"

    const-string v3, ": "

    const/4 v4, 0x1

    if-nez v0, :cond_5e

    const-wide/32 v5, 0x40000

    .line 3946
    :try_start_e
    const-string v0, "addForInitLI"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3947
    iget-object v8, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget v9, v1, Lcom/android/server/pm/InitAppsHelper$ScanParams;->parseFlags:I

    iget v10, v1, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanFlags:I

    new-instance v11, Landroid/os/UserHandle;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v12, v1, Lcom/android/server/pm/InitAppsHelper$ScanParams;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    :try_end_21
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_e .. :try_end_21} :catch_31
    .catchall {:try_start_e .. :try_end_21} :catchall_2b

    move-object v7, p0

    :try_start_22
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_25
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_22 .. :try_end_25} :catch_2e
    .catchall {:try_start_22 .. :try_end_25} :catchall_2b

    .line 3954
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    move v0, v4

    goto :goto_8a

    :catchall_2b
    move-exception v0

    move-object p0, v0

    goto :goto_5a

    :catch_2e
    move-exception v0

    :goto_2f
    move-object p0, v0

    goto :goto_34

    :catch_31
    move-exception v0

    move-object v7, p0

    goto :goto_2f

    .line 3950
    :goto_34
    :try_start_34
    iget v0, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 3951
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to scan "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3952
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_34 .. :try_end_56} :catchall_2b

    .line 3954
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_8a

    :goto_5a
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3955
    throw p0

    :cond_5e
    move-object v7, p0

    .line 3956
    instance-of p0, v0, Lcom/android/server/pm/PackageManagerException;

    if-eqz p0, :cond_c6

    .line 3957
    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    .line 3958
    iget p0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 3959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3960
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v0

    move v0, p0

    move-object p0, v13

    .line 3966
    :goto_8a
    iget v2, v1, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanFlags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_9e

    if-eq v0, v4, :cond_9e

    .line 3967
    iget-object v2, v7, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v3, v1, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/android/server/pm/ApexManager;->reportErrorWithApkInApex(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    :cond_9e
    iget p0, v1, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanFlags:I

    const/high16 v1, 0x10000

    and-int/2addr p0, v1

    if-nez p0, :cond_c5

    if-eq v0, v4, :cond_c5

    .line 3973
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Deleting invalid package at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 3975
    iget-object p0, v7, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    :cond_c5
    return-void

    .line 3962
    :cond_c6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception occurred while parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final reconcileInstallPackages(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 15

    .line 1367
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    .line 1368
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_81

    const-wide/32 v3, 0x40000

    .line 1370
    :try_start_13
    const-string/jumbo v0, "reconcilePackages"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1372
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1373
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v9

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1374
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v11
    :try_end_35
    .catch Lcom/android/server/pm/ReconcileFailure; {:try_start_13 .. :try_end_35} :catch_51
    .catchall {:try_start_13 .. :try_end_35} :catchall_4b

    move-object v5, p1

    move-object v7, p2

    .line 1371
    :try_start_37
    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/ReconcilePackageUtils;->reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;

    move-result-object p0
    :try_end_3b
    .catch Lcom/android/server/pm/ReconcileFailure; {:try_start_37 .. :try_end_3b} :catch_4e
    .catchall {:try_start_37 .. :try_end_3b} :catchall_4b

    .line 1381
    :try_start_3b
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_48

    .line 1384
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_47
    return-object p0

    :catchall_48
    move-exception v0

    move-object p0, v0

    goto :goto_7c

    :catchall_4b
    move-exception v0

    move-object p0, v0

    goto :goto_78

    :catch_4e
    move-exception v0

    :goto_4f
    move-object p0, v0

    goto :goto_54

    :catch_51
    move-exception v0

    move-object v5, p1

    goto :goto_4f

    .line 1376
    :goto_54
    :try_start_54
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    .line 1377
    const-string v0, "Reconciliation failed..."

    invoke-virtual {p2, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_69
    .catchall {:try_start_54 .. :try_end_69} :catchall_4b

    goto :goto_58

    .line 1381
    :cond_6a
    :try_start_6a
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_48

    .line 1384
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v1, :cond_76

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_76
    const/4 p0, 0x0

    return-object p0

    .line 1381
    :goto_78
    :try_start_78
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1382
    throw p0

    .line 1383
    :goto_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_48

    :try_start_7d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_8e

    .line 1367
    :try_start_85
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8e

    :catchall_89
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    throw p0
.end method

.method public final releaseWakeLock(JI)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_7

    goto :goto_27

    .line 1137
    :cond_7
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mInternalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1139
    :try_start_a
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_c} :catch_1e
    .catchall {:try_start_a .. :try_end_c} :catchall_10

    if-nez p2, :cond_12

    .line 1140
    :try_start_e
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception p0

    goto :goto_28

    .line 1142
    :cond_12
    :try_start_12
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 1143
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1d} :catch_1e
    .catchall {:try_start_12 .. :try_end_1d} :catchall_10

    goto :goto_26

    :catch_1e
    move-exception p0

    .line 1146
    :try_start_1f
    const-string p2, "PackageManager"

    const-string p3, "Error while releasing installer lock"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1148
    :cond_26
    :goto_26
    monitor-exit p1

    :goto_27
    return-void

    :goto_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_10

    throw p0
.end method

.method public final renameAndUpdatePaths(Ljava/util/List;)Z
    .registers 7

    .line 1239
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0

    .line 1240
    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1241
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v2

    .line 1242
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_41

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_26

    goto :goto_c

    .line 1247
    :cond_26
    :try_start_26
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->doRenameLI(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_29
    .catch Lcom/android/server/pm/PrepareFailure; {:try_start_26 .. :try_end_29} :catch_43
    .catchall {:try_start_26 .. :try_end_29} :catchall_41

    .line 1254
    :try_start_29
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1255
    new-instance v3, Ljava/io/File;

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    .line 1257
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v2

    .line 1256
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    goto :goto_c

    :catchall_41
    move-exception p0

    goto :goto_55

    :catch_43
    move-exception p0

    .line 1249
    invoke-virtual {v1, p0}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_41

    if-eqz v0, :cond_4c

    .line 1260
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_4c
    const/4 p0, 0x0

    return p0

    :cond_4e
    const/4 p0, 0x1

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_54
    return p0

    :goto_55
    if-eqz v0, :cond_5f

    .line 1239
    :try_start_57
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5f
    :goto_5f
    throw p0
.end method

.method public final resolveTargetDir(ILjava/io/File;)Ljava/io/File;
    .registers 3

    const/high16 p0, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    .line 2359
    invoke-static {p0}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 2361
    :cond_b
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V
    .registers 11

    .line 821
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v0

    .line 829
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isUpdate()Z

    move-result v1

    .line 831
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_4a

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isArchived()Z

    move-result v2

    if-nez v2, :cond_4a

    if-nez v1, :cond_1b

    move v2, v3

    goto :goto_4b

    .line 839
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 840
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 841
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 842
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v2

    if-eqz v2, :cond_3f

    move v2, v3

    goto :goto_40

    :catchall_3d
    move-exception p0

    goto :goto_45

    :cond_3f
    move v2, v5

    .line 845
    :goto_40
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_3d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_4b

    :goto_45
    :try_start_45
    monitor-exit v6
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_3d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_4a
    move v2, v5

    .line 853
    :goto_4b
    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v7, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v7, :cond_53

    iput v3, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 854
    :cond_53
    iget v7, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 855
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    monitor-enter v6

    .line 856
    :try_start_5c
    iget-object v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 857
    monitor-exit v6
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_d2

    .line 861
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v6

    if-ne v6, v3, :cond_99

    .line 863
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->onRestoreStarted()V

    if-eqz v2, :cond_76

    .line 871
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 872
    invoke-virtual {p0, v0, v7, p1}, Lcom/android/server/pm/InstallPackageHelper;->performBackupManagerRestore(IILcom/android/server/pm/InstallRequest;)Z

    move-result v2

    :cond_76
    if-nez v2, :cond_7f

    if-eqz v1, :cond_7f

    .line 881
    invoke-virtual {p0, v0, v7, p1}, Lcom/android/server/pm/InstallPackageHelper;->performRollbackManagerRestore(IILcom/android/server/pm/InstallRequest;)Z

    move-result v0

    move v2, v0

    :cond_7f
    if-eqz v2, :cond_99

    .line 884
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->hasPostInstallRunnable()Z

    move-result v0

    if-nez v0, :cond_99

    if-eqz v4, :cond_90

    .line 886
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_91

    :cond_90
    move v3, v5

    .line 887
    :goto_91
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v3, p1}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallPackageHelper;ZLcom/android/server/pm/InstallRequest;)V

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setPostInstallRunnable(Ljava/lang/Runnable;)V

    :cond_99
    if-eqz v2, :cond_b4

    if-eqz v4, :cond_b3

    .line 905
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p0

    .line 906
    :try_start_a5
    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSetting;->setPendingRestore(Z)Lcom/android/server/pm/PackageSetting;

    .line 907
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_ad

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_ad
    move-exception p1

    :try_start_ae
    monitor-exit p0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1

    :cond_b3
    return-void

    .line 914
    :cond_b4
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    const-wide/32 v0, 0x40000

    .line 917
    const-string/jumbo p1, "postInstall"

    invoke-static {v0, v1, p1, v7}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 919
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 920
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_d2
    move-exception p0

    .line 857
    :try_start_d3
    monitor-exit v6
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw p0
.end method

.method public restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V
    .registers 10

    .line 3455
    iget-object v0, p1, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 3456
    iget-object v1, p1, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 3457
    iget-object v2, p1, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 3459
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 3465
    :try_start_e
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 3467
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->removeNativeBinariesLI(Lcom/android/server/pm/PackageSetting;)V

    .line 3468
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_ca

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v3, 0x0

    if-nez v1, :cond_29

    move-object v1, v3

    goto :goto_2b

    .line 3472
    :cond_29
    :try_start_29
    iget-object v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 3473
    :goto_2b
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v4
    :try_end_33
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_29 .. :try_end_33} :catch_42
    .catchall {:try_start_29 .. :try_end_33} :catchall_40

    .line 3474
    :try_start_33
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p2, v1, p3}, Lcom/android/server/pm/InstallPackageHelper;->installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_71

    if-eqz v4, :cond_44

    .line 3476
    :try_start_3c
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    goto :goto_44

    :catchall_40
    move-exception p3

    goto :goto_a9

    :catch_42
    move-exception p3

    goto :goto_7d

    :cond_44
    :goto_44
    if-eqz v1, :cond_50

    .line 3478
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v4, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;-><init>([ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    :try_end_50
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3c .. :try_end_50} :catch_42
    .catchall {:try_start_3c .. :try_end_50} :catchall_40

    .line 3492
    :cond_50
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStub()Z

    move-result p3

    if-eqz p3, :cond_70

    .line 3496
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p3

    .line 3497
    :try_start_62
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/InstallPackageHelper;->disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V

    .line 3498
    monitor-exit p3
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_6a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_6a
    move-exception p0

    :try_start_6b
    monitor-exit p3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_70
    return-void

    :catchall_71
    move-exception p3

    if-eqz v4, :cond_7c

    .line 3473
    :try_start_74
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v1

    :try_start_79
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7c
    :goto_7c
    throw p3
    :try_end_7d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_79 .. :try_end_7d} :catch_42
    .catchall {:try_start_79 .. :try_end_7d} :catchall_40

    .line 3487
    :goto_7d
    :try_start_7d
    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore system package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3488
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3487
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    new-instance v1, Lcom/android/server/pm/SystemDeleteException;

    invoke-direct {v1, p3}, Lcom/android/server/pm/SystemDeleteException;-><init>(Lcom/android/server/pm/PackageManagerException;)V

    throw v1
    :try_end_a9
    .catchall {:try_start_7d .. :try_end_a9} :catchall_40

    .line 3492
    :goto_a9
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStub()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 3496
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 3497
    :try_start_bb
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/InstallPackageHelper;->disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V

    .line 3498
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_c3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_c9

    :catchall_c3
    move-exception p0

    :try_start_c4
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 3500
    :cond_c9
    :goto_c9
    throw p3

    :catchall_ca
    move-exception p0

    .line 3468
    :try_start_cb
    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public scanApexPackages([Landroid/apex/ApexInfo;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;
    .registers 19

    if-nez p1, :cond_5

    .line 3752
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 3755
    :cond_5
    new-instance v2, Lcom/android/server/pm/ParallelPackageParser;

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 3757
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/InitAppsHelper$ScanParams;->forApexDirScan(II)Lcom/android/server/pm/InitAppsHelper$ScanParams;

    move-result-object v3

    .line 3760
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 3761
    array-length v4, p1

    const/4 v5, 0x0

    move v7, v5

    :goto_1a
    if-ge v7, v4, :cond_2e

    aget-object v8, p1, v7

    .line 3762
    new-instance v9, Ljava/io/File;

    iget-object v10, v8, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {v2, v9, v3}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)V

    .line 3764
    invoke-virtual {v6, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 3767
    :cond_2e
    new-instance v7, Ljava/util/ArrayList;

    .line 3768
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v5

    .line 3769
    :goto_38
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_48

    .line 3770
    invoke-virtual {v2}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object v3

    .line 3771
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 3774
    :cond_48
    new-instance v1, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, v6}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;-><init>(Landroid/util/ArrayMap;)V

    invoke-static {v7, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3782
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v5

    .line 3783
    :goto_5a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_10d

    .line 3784
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    .line 3785
    iget-object v1, v10, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    .line 3786
    iget-object v2, v10, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/apex/ApexInfo;

    const/high16 v2, 0x4000000

    or-int v2, p3, v2

    .line 3788
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v10, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 3789
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageScanFlags(Ljava/io/File;)I

    move-result v3

    or-int/2addr v2, v3

    .line 3790
    iget-boolean v3, v11, Landroid/apex/ApexInfo;->isFactory:Z

    if-nez v3, :cond_8b

    and-int/lit8 v3, p2, -0x11

    or-int/lit8 v2, v2, 0x4

    move v12, v3

    move v3, v2

    move v2, v12

    goto :goto_8d

    :cond_8b
    move v3, v2

    move v2, p2

    :goto_8d
    if-nez v1, :cond_d7

    .line 3797
    :try_start_8f
    iget-object v1, v10, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    new-instance v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-direct {v5, v11}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Landroid/apex/ApexInfo;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3799
    iget-object v1, v10, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    .line 3800
    iget-boolean v2, v11, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v2, :cond_af

    iget-boolean v2, v11, Landroid/apex/ApexInfo;->isActive:Z

    if-nez v2, :cond_af

    .line 3801
    invoke-virtual {p0, v1}, Lcom/android/server/pm/InstallPackageHelper;->disableSystemPackageLPw(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    goto :goto_af

    :catch_ad
    move-exception v0

    goto :goto_be

    .line 3803
    :cond_af
    :goto_af
    new-instance v2, Lcom/android/server/pm/ApexManager$ScanResult;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v11, v1, v3}, Lcom/android/server/pm/ApexManager$ScanResult;-><init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8f .. :try_end_bb} :catch_ad

    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 3805
    :goto_be
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to scan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3807
    :cond_d7
    instance-of v0, v1, Lcom/android/server/pm/PackageManagerException;

    if-eqz v0, :cond_f4

    .line 3808
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3810
    :cond_f4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception occurred while parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_10d
    return-object v8
.end method

.method public final scanDirectoryForFilesToParse(Lcom/android/server/pm/ParallelPackageParser;Lcom/android/server/pm/InitAppsHelper$ScanParams;)I
    .registers 12

    .line 3866
    iget-object v0, p2, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3867
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "PackageManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    .line 3868
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No files in app dir "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanDir:Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3880
    :cond_26
    array-length v1, v0

    move v4, v3

    :goto_28
    if-ge v3, v1, :cond_7b

    aget-object v5, v0, v3

    .line 3881
    invoke-static {v5}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_38

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 3882
    :cond_38
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_78

    .line 3887
    iget v6, p2, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanFlags:I

    const/high16 v7, 0x1000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_73

    .line 3888
    new-instance v6, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v7, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->getCacheDir()Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    invoke-direct {v6, v7, v8}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    .line 3890
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropping cache of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    invoke-virtual {v6, v5}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    .line 3893
    :cond_73
    invoke-virtual {p1, v5, p2}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)V

    add-int/lit8 v4, v4, 0x1

    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_7b
    return v4
.end method

.method public final scanInstallPackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 20

    .line 1285
    new-instance v9, Landroid/util/ArraySet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 1286
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_13b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/pm/InstallRequest;

    .line 1287
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v13

    const/4 v14, 0x0

    if-nez v13, :cond_2a

    const/16 v0, -0x74

    .line 1289
    const-string v1, "Failed to obtain package to scan"

    invoke-virtual {v12, v0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return v14

    .line 1293
    :cond_2a
    invoke-virtual {v12, v11}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 1294
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 1296
    :try_start_31
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->onScanStarted()V

    .line 1297
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    .line 1298
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getParseFlags()I

    move-result v2

    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v3

    .line 1299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 1300
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getAbiOverride()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v8

    move-object/from16 v0, p0

    .line 1297
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageTraced(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanResult;

    move-result-object v1

    .line 1301
    invoke-virtual {v12, v1}, Lcom/android/server/pm/InstallRequest;->setScanResult(Lcom/android/server/pm/ScanResult;)V

    .line 1302
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->onScanFinished()V

    .line 1303
    invoke-interface {v9, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x5

    if-nez v1, :cond_80

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in multi-package install request."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return v14

    :catch_7d
    move-exception v0

    goto/16 :goto_135

    .line 1311
    :cond_80
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingPackages:Ljava/util/Set;

    monitor-enter v1
    :try_end_83
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_31 .. :try_end_83} :catch_7d

    .line 1312
    :try_start_83
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingPackages:Ljava/util/Set;

    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b2

    .line 1313
    const-string v0, "Scanning Failed."

    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in pending install requests."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x28

    invoke-direct {v3, v2, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v12, v0, v3}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 1321
    monitor-exit v1

    return v14

    :catchall_af
    move-exception v0

    goto/16 :goto_133

    .line 1323
    :cond_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_83 .. :try_end_b3} :catchall_af

    .line 1325
    :try_start_b3
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getScanRequestOldPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    .line 1324
    invoke-virtual {v0, v1, v13}, Lcom/android/server/pm/InstallPackageHelper;->checkNoAppStorageIsConsistent(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    if-nez v1, :cond_c4

    .line 1328
    const-string v0, "Update attempted to change value of android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    const/4 v1, -0x7

    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return v14

    .line 1334
    :cond_c4
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v1

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_ce

    goto :goto_cf

    :cond_ce
    move v11, v14

    .line 1335
    :goto_cf
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    if-nez v11, :cond_e2

    .line 1339
    invoke-virtual {v0, v12}, Lcom/android/server/pm/InstallPackageHelper;->optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ec

    :cond_e2
    move-object/from16 v2, p2

    .line 1337
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1341
    :goto_ec
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1342
    invoke-virtual {v1, v13}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v1

    move-object/from16 v3, p3

    .line 1341
    invoke-interface {v3, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_b3 .. :try_end_f7} :catch_7d

    .line 1347
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->isArchived()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1348
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1350
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v5

    .line 1351
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v6

    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v7

    .line 1349
    invoke-static {v1, v4, v5, v6, v7}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitles(Landroid/content/Context;Lcom/android/server/pm/Computer;Lcom/android/server/pm/InstallSource;I[I)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_127

    .line 1353
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_122

    goto :goto_127

    .line 1359
    :cond_122
    invoke-virtual {v12, v1}, Lcom/android/server/pm/InstallRequest;->setResponsibleInstallerTitles(Landroid/util/SparseArray;)V

    goto/16 :goto_d

    .line 1354
    :cond_127
    :goto_127
    const-string v0, "Failed to obtain the responsible installer info"

    const/16 v1, -0x27

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    return v14

    .line 1323
    :goto_133
    :try_start_133
    monitor-exit v1
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_af

    :try_start_134
    throw v0
    :try_end_135
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_134 .. :try_end_135} :catch_7d

    .line 1344
    :goto_135
    const-string v1, "Scanning Failed."

    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    return v14

    :cond_13b
    return v11
.end method

.method public final scanPackageForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Landroid/util/Pair;
    .registers 35

    .line 4348
    new-instance v15, Lcom/android/server/pm/InitAppScanMetrics;

    invoke-direct {v15}, Lcom/android/server/pm/InitAppScanMetrics;-><init>()V

    and-int/lit8 v0, p2, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_e

    move/from16 v16, v7

    goto :goto_10

    :cond_e
    move/from16 v16, v8

    :goto_10
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 4353
    :try_start_1c
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanRequest;

    move-result-object v5

    .line 4355
    iget-object v1, v5, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 4356
    iget-object v2, v5, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;
    :try_end_24
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1c .. :try_end_24} :catch_48a
    .catchall {:try_start_1c .. :try_end_24} :catchall_486

    if-nez v2, :cond_29

    move-object/from16 v17, v1

    goto :goto_2b

    :cond_29
    move-object/from16 v17, v2

    :goto_2b
    if-eqz v17, :cond_30

    move/from16 v18, v7

    goto :goto_32

    :cond_30
    move/from16 v18, v8

    :goto_32
    if-eqz v18, :cond_41

    .line 4361
    :try_start_34
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_38
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_34 .. :try_end_38} :catch_3d
    .catchall {:try_start_34 .. :try_end_38} :catchall_39

    goto :goto_45

    :catchall_39
    move-exception v0

    :goto_3a
    move-object v12, v15

    goto/16 :goto_495

    :catch_3d
    move-exception v0

    :goto_3e
    move-object v12, v15

    goto/16 :goto_48e

    :cond_41
    :try_start_41
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4366
    :goto_45
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_4d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_41 .. :try_end_4d} :catch_48a
    .catchall {:try_start_41 .. :try_end_4d} :catchall_486

    .line 4367
    :try_start_4d
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v19

    if-eqz v16, :cond_8b

    if-nez v18, :cond_8b

    .line 4368
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4369
    invoke-virtual {v3, v1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_8b

    .line 4373
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent package setting of updated system app for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". To recover it, enable the system app and install it as non-updated system app."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4376
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Settings;->removeDisabledSystemPackageLPw(Ljava/lang/String;)V

    goto :goto_8b

    :catchall_84
    move-exception v0

    move-object/from16 v25, v2

    move v13, v8

    move-object v12, v15

    goto/16 :goto_47b

    .line 4378
    :cond_8b
    :goto_8b
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4
    :try_end_93
    .catchall {:try_start_4d .. :try_end_93} :catchall_84

    if-eqz v4, :cond_98

    move/from16 v20, v7

    goto :goto_9a

    :cond_98
    move/from16 v20, v8

    :goto_9a
    if-eqz v16, :cond_100

    if-eqz v20, :cond_100

    .line 4387
    :try_start_9e
    new-instance v1, Lcom/android/server/pm/ScanRequest;

    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4388
    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    iget-object v6, v5, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    iget-boolean v11, v5, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    iget-boolean v14, v5, Lcom/android/server/pm/ScanRequest;->mEnableAlignmentChecks:Z
    :try_end_ae
    .catchall {:try_start_9e .. :try_end_ae} :catchall_fa

    move-object v9, v2

    move-object v2, v3

    const/4 v3, 0x0

    move-object v10, v5

    move-object v5, v6

    const/4 v6, 0x0

    move v12, v7

    const/4 v7, 0x0

    move v13, v8

    const/4 v8, 0x0

    move/from16 v21, v13

    const/4 v13, 0x0

    move-object/from16 v12, p4

    move-object/from16 v25, v9

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    move/from16 v9, p2

    move/from16 v10, p3

    move-object v15, v0

    move-object v0, v1

    move-object/from16 v1, p1

    :try_start_cb
    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;Z)V

    .line 4395
    iget-object v2, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4396
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->getPlatformPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    const/4 v12, 0x1

    .line 4395
    invoke-static {v1, v10, v2, v12}, Lcom/android/server/pm/ScanPackageUtils;->applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 4397
    iget-object v2, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    const-wide/16 v5, -0x1

    .line 4398
    invoke-static {v0, v3, v2, v5, v6}, Lcom/android/server/pm/ScanPackageUtils;->scanPackageOnly(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    .line 4400
    iget-boolean v2, v0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    if-eqz v2, :cond_10b

    iget-object v2, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_10b

    .line 4402
    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->updateFrom(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_10b

    :catchall_f4
    move-exception v0

    :goto_f5
    move-object/from16 v12, v22

    const/4 v13, 0x0

    goto/16 :goto_47b

    :catchall_fa
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v22, v15

    goto :goto_f5

    :cond_100
    move-object/from16 v1, p1

    move/from16 v10, p3

    move-object/from16 v25, v2

    move-object/from16 v24, v5

    move-object/from16 v22, v15

    move-object v15, v0

    .line 4405
    :cond_10b
    :goto_10b
    monitor-exit v25
    :try_end_10c
    .catchall {:try_start_cb .. :try_end_10c} :catchall_f4

    :try_start_10c
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_10f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_10c .. :try_end_10f} :catch_475
    .catchall {:try_start_10c .. :try_end_10f} :catchall_46f

    if-nez v16, :cond_115

    if-eqz v20, :cond_115

    const/4 v9, 0x1

    goto :goto_116

    :cond_115
    const/4 v9, 0x0

    :goto_116
    if-eqz v18, :cond_134

    .line 4409
    :try_start_118
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_134

    const/4 v7, 0x1

    goto :goto_135

    :catchall_128
    move-exception v0

    move v8, v9

    move-object/from16 v12, v22

    goto/16 :goto_495

    :catch_12e
    move-exception v0

    move v8, v9

    move-object/from16 v12, v22

    goto/16 :goto_48e

    :cond_134
    const/4 v7, 0x0

    :goto_135
    if-eqz v18, :cond_145

    .line 4411
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-lez v0, :cond_145

    const/4 v6, 0x1

    goto :goto_146

    :cond_145
    const/4 v6, 0x0

    :goto_146
    if-eqz v18, :cond_152

    move-object/from16 v0, v24

    .line 4412
    iget-object v2, v0, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    if-eq v2, v0, :cond_152

    const/4 v8, 0x1

    goto :goto_153

    :cond_152
    const/4 v8, 0x0

    :goto_153
    if-eqz v16, :cond_15f

    if-eqz v20, :cond_15f

    if-eqz v7, :cond_15f

    if-nez v6, :cond_15d

    if-eqz v8, :cond_15f

    :cond_15d
    const/4 v7, 0x1

    goto :goto_160

    :cond_15f
    const/4 v7, 0x0

    :goto_160
    const/4 v11, 0x5

    if-eqz v7, :cond_1f8

    .line 4426
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_16b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_118 .. :try_end_16b} :catch_12e
    .catchall {:try_start_118 .. :try_end_16b} :catchall_128

    .line 4428
    :try_start_16b
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4429
    monitor-exit v2
    :try_end_177
    .catchall {:try_start_16b .. :try_end_177} :catchall_1f2

    :try_start_177
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System package updated; name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4433
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4434
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4435
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4436
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4437
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4431
    invoke-static {v11, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4439
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 4440
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4439
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;)V

    .line 4441
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_1dc
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_177 .. :try_end_1dc} :catch_12e
    .catchall {:try_start_177 .. :try_end_1dc} :catchall_128

    .line 4442
    :try_start_1dc
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4443
    monitor-exit v2
    :try_end_1e8
    .catchall {:try_start_1dc .. :try_end_1e8} :catchall_1ec

    :try_start_1e8
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_1eb
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1e8 .. :try_end_1eb} :catch_12e
    .catchall {:try_start_1e8 .. :try_end_1eb} :catchall_128

    goto :goto_1f8

    :catchall_1ec
    move-exception v0

    :try_start_1ed
    monitor-exit v2
    :try_end_1ee
    .catchall {:try_start_1ed .. :try_end_1ee} :catchall_1ec

    :try_start_1ee
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_1f2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1ee .. :try_end_1f2} :catch_12e
    .catchall {:try_start_1ee .. :try_end_1f2} :catchall_128

    :catchall_1f2
    move-exception v0

    .line 4429
    :try_start_1f3
    monitor-exit v2
    :try_end_1f4
    .catchall {:try_start_1f3 .. :try_end_1f4} :catchall_1f2

    :try_start_1f4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :cond_1f8
    :goto_1f8
    if-eqz v16, :cond_27a

    if-eqz v20, :cond_27a

    if-nez v7, :cond_27a

    .line 4455
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/server/pm/InstallPackageHelper;->needSignatureMatchToSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22d

    .line 4456
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    const/4 v13, 0x0

    .line 4458
    invoke-static {v0, v1, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 4460
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_221

    .line 4464
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;

    goto :goto_22d

    .line 4461
    :cond_221
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "Failed collect during scanPackageForInitLI"

    .line 4462
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 4472
    :cond_22d
    :goto_22d
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 4473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4474
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4475
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ignored: updated version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v18, :cond_25d

    .line 4477
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_260

    :cond_25d
    const-string/jumbo v2, "unknown"

    :goto_260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " better than this "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4478
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0xc

    .line 4473
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    :cond_27a
    const/4 v13, 0x0

    if-eqz v16, :cond_280

    move/from16 v3, v19

    goto :goto_28f

    :cond_280
    if-eqz v18, :cond_28e

    .line 4487
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/server/pm/InstallPackageHelper;->needSignatureMatchToSystem(Ljava/lang/String;)Z

    move-result v0
    :try_end_28a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1f4 .. :try_end_28a} :catch_12e
    .catchall {:try_start_1f4 .. :try_end_28a} :catchall_128

    if-eqz v0, :cond_28e

    const/4 v3, 0x1

    goto :goto_28f

    :cond_28e
    move v3, v13

    .line 4495
    :goto_28f
    :try_start_28f
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4496
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4497
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isPreNMR1Upgrade()Z

    move-result v5

    move/from16 v4, v16

    move-object/from16 v0, v17

    .line 4495
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ScanPackageUtils;->collectCertificatesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/Settings$VersionInfo;ZZZ)V
    :try_end_2a2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_28f .. :try_end_2a2} :catch_46a
    .catchall {:try_start_28f .. :try_end_2a2} :catchall_465

    move-object/from16 v12, v22

    .line 4500
    :try_start_2a4
    invoke-virtual {v12, v3}, Lcom/android/server/pm/InitAppScanMetrics;->setIsFsiEnabled(Z)Lcom/android/server/pm/InitAppScanMetrics;

    move-result-object v2

    .line 4501
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2b0

    move v3, v13

    goto :goto_2b5

    .line 4503
    :cond_2b0
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 4501
    :goto_2b5
    invoke-virtual {v2, v3}, Lcom/android/server/pm/InitAppScanMetrics;->setNumApkSplits(I)Lcom/android/server/pm/InitAppScanMetrics;

    move-result-object v2

    .line 4505
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v3

    .line 4504
    invoke-virtual {v2, v3}, Lcom/android/server/pm/InitAppScanMetrics;->setSignatureSchemeVersion(I)Lcom/android/server/pm/InitAppScanMetrics;

    .line 4508
    invoke-virtual {v15, v0, v1}, Lcom/android/server/pm/InstallPackageHelper;->maybeClearProfilesForUpgradesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V

    if-eqz v4, :cond_405

    if-nez v20, :cond_405

    if-eqz v18, :cond_405

    .line 4518
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-nez v2, :cond_405

    .line 4520
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 4521
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    if-nez v2, :cond_35b

    .line 4523
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 4524
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    const/16 v5, 0x8

    .line 4523
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    if-nez v2, :cond_35b

    .line 4526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System package signature mismatch; name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4528
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4526
    invoke-static {v11, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4529
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4530
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v25, "scanPackageInternalLI"

    const/16 v26, 0xd

    const/16 v27, 0x0

    const/16 v24, -0x1

    move-object/from16 v22, v0

    .line 4529
    invoke-virtual/range {v22 .. v27}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v2
    :try_end_31f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2a4 .. :try_end_31f} :catch_34a
    .catchall {:try_start_2a4 .. :try_end_31f} :catchall_346

    .line 4533
    :try_start_31f
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 4534
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v23

    iget-object v3, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4535
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v26

    new-instance v28, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    const/16 v29, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v27, 0x0

    move-object/from16 v22, v0

    .line 4533
    invoke-virtual/range {v22 .. v29}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    :try_end_33f
    .catchall {:try_start_31f .. :try_end_33f} :catchall_34e

    if-eqz v2, :cond_405

    .line 4536
    :try_start_341
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_344
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_341 .. :try_end_344} :catch_34a
    .catchall {:try_start_341 .. :try_end_344} :catchall_346

    goto/16 :goto_405

    :catchall_346
    move-exception v0

    :goto_347
    move v8, v9

    goto/16 :goto_495

    :catch_34a
    move-exception v0

    :goto_34b
    move v8, v9

    goto/16 :goto_48e

    :catchall_34e
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_35a

    .line 4529
    :try_start_352
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_355
    .catchall {:try_start_352 .. :try_end_355} :catchall_356

    goto :goto_35a

    :catchall_356
    move-exception v0

    :try_start_357
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_35a
    :goto_35a
    throw v1

    :cond_35b
    if-nez v6, :cond_3ab

    if-eqz v8, :cond_360

    goto :goto_3ab

    .line 4559
    :cond_360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System package disabled; name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4561
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4562
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4563
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "; new: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4564
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " @ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4565
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 4559
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_406

    .line 4545
    :cond_3ab
    :goto_3ab
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System package enabled; name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4547
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4548
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4549
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4550
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4551
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4545
    invoke-static {v11, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4552
    iget-object v2, v15, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 4553
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4552
    invoke-virtual {v2, v3, v5}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;)V

    :cond_405
    :goto_405
    move v11, v13

    :goto_406
    const/high16 v0, 0x4000000

    and-int/2addr v0, v10

    if-eqz v0, :cond_40d

    const/4 v7, 0x1

    goto :goto_40e

    :cond_40d
    move v7, v13

    .line 4580
    :goto_40e
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    if-eqz v0, :cond_440

    if-eqz v4, :cond_440

    if-nez v18, :cond_440

    if-nez v7, :cond_440

    .line 4584
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isOverlayIsStatic()Z

    move-result v0

    if-nez v0, :cond_440

    .line 4586
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4587
    const-string v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_440

    iget-object v2, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 4588
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_440

    .line 4589
    invoke-static {v1}, Lcom/android/server/pm/InstallPackageHelper;->hasLauncherEntry(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z

    move-result v0

    if-eqz v0, :cond_440

    const/high16 v0, 0x8000000

    or-int/2addr v0, v10

    goto :goto_441

    :cond_440
    move v0, v10

    .line 4594
    :goto_441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    or-int/lit8 v3, v0, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v2, p2

    move-object/from16 v6, p4

    move-object v0, v15

    .line 4595
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageNew(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    const/4 v5, 0x1

    .line 4599
    invoke-virtual {v12, v5}, Lcom/android/server/pm/InitAppScanMetrics;->setInitAppScanOutcome(I)Lcom/android/server/pm/InitAppScanMetrics;

    .line 4600
    new-instance v1, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_45f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_357 .. :try_end_45f} :catch_34a
    .catchall {:try_start_357 .. :try_end_45f} :catchall_346

    if-eqz v9, :cond_464

    .line 4609
    invoke-virtual {v12}, Lcom/android/server/pm/InitAppScanMetrics;->log()V

    :cond_464
    return-object v1

    :catchall_465
    move-exception v0

    move-object/from16 v12, v22

    goto/16 :goto_347

    :catch_46a
    move-exception v0

    move-object/from16 v12, v22

    goto/16 :goto_34b

    :catchall_46f
    move-exception v0

    move-object/from16 v12, v22

    const/4 v13, 0x0

    :goto_473
    move v8, v13

    goto :goto_495

    :catch_475
    move-exception v0

    move-object/from16 v12, v22

    const/4 v13, 0x0

    :goto_479
    move v8, v13

    goto :goto_48e

    .line 4405
    :goto_47b
    :try_start_47b
    monitor-exit v25
    :try_end_47c
    .catchall {:try_start_47b .. :try_end_47c} :catchall_484

    :try_start_47c
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_480
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_47c .. :try_end_480} :catch_482
    .catchall {:try_start_47c .. :try_end_480} :catchall_480

    :catchall_480
    move-exception v0

    goto :goto_473

    :catch_482
    move-exception v0

    goto :goto_479

    :catchall_484
    move-exception v0

    goto :goto_47b

    :catchall_486
    move-exception v0

    move v13, v8

    goto/16 :goto_3a

    :catch_48a
    move-exception v0

    move v13, v8

    goto/16 :goto_3e

    .line 4603
    :goto_48e
    :try_start_48e
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v12, v1}, Lcom/android/server/pm/InitAppScanMetrics;->setInitAppScanOutcome(I)Lcom/android/server/pm/InitAppScanMetrics;

    .line 4604
    throw v0
    :try_end_494
    .catchall {:try_start_48e .. :try_end_494} :catchall_494

    :catchall_494
    move-exception v0

    :goto_495
    if-eqz v8, :cond_49a

    .line 4609
    invoke-virtual {v12}, Lcom/android/server/pm/InitAppScanMetrics;->log()V

    .line 4611
    :cond_49a
    throw v0
.end method

.method public final scanPackageNew(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanResult;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 4313
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanRequest;

    move-result-object v6

    .line 4315
    iget-object v2, v6, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 4316
    iget-object v3, v6, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_26

    .line 4320
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v0

    :goto_1c
    move-object/from16 v5, p1

    move/from16 v1, p3

    move-object/from16 v4, p6

    move v7, v0

    move-object/from16 v0, p0

    goto :goto_2c

    :cond_26
    if-eqz v3, :cond_2a

    const/4 v0, 0x1

    goto :goto_1c

    :cond_2a
    const/4 v0, 0x0

    goto :goto_1c

    .line 4325
    :goto_2c
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;->adjustScanFlags(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v8

    move-object v15, v0

    move-object v1, v5

    .line 4327
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4328
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPlatformPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 4327
    invoke-static {v1, v8, v0, v7}, Lcom/android/server/pm/ScanPackageUtils;->applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 4330
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    move/from16 v9, p2

    .line 4331
    :try_start_45
    invoke-virtual {v15, v1, v9, v8}, Lcom/android/server/pm/InstallPackageHelper;->assertPackageIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 4332
    new-instance v0, Lcom/android/server/pm/ScanRequest;
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_8e

    move-object v5, v4

    move-object v4, v2

    :try_start_4c
    iget-object v2, v6, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    move-object v7, v3

    iget-object v3, v6, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_8a

    move-object v8, v5

    :try_start_52
    iget-object v5, v6, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    move-object v10, v7

    iget-object v7, v6, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_86

    move-object v11, v8

    :try_start_58
    iget-object v8, v6, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_82

    move-object v12, v11

    :try_start_5b
    iget-boolean v11, v6, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    iget-boolean v14, v6, Lcom/android/server/pm/ScanRequest;->mEnableAlignmentChecks:Z
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_7e

    move-object/from16 v13, p7

    move-object v6, v10

    move-object/from16 v16, v12

    move/from16 v10, p3

    move-object/from16 v12, p6

    :try_start_68
    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;Z)V

    .line 4339
    iget-object v1, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-boolean v1, v1, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    move-wide/from16 v3, p4

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/pm/ScanPackageUtils;->scanPackageOnly(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    monitor-exit v16
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_7c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v0

    :catchall_7c
    move-exception v0

    goto :goto_91

    :catchall_7e
    move-exception v0

    move-object/from16 v16, v12

    goto :goto_91

    :catchall_82
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_91

    :catchall_86
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_91

    :catchall_8a
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_91

    :catchall_8e
    move-exception v0

    move-object/from16 v16, v4

    .line 4341
    :goto_91
    :try_start_91
    monitor-exit v16
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_7c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final scanPackageTraced(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanResult;
    .registers 12

    .line 4222
    const-string/jumbo v0, "scanPackage"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4224
    :try_start_9
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageNew(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanResult;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    .line 4227
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_11
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4228
    throw p0
.end method

.method public sendPendingBroadcasts(Ljava/lang/String;I)V
    .registers 22

    move-object/from16 v0, p0

    .line 3030
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 3031
    :try_start_a
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 3032
    invoke-virtual {v2}, Lcom/android/server/pm/PendingPackageBroadcasts;->copiedMap()Landroid/util/SparseArray;

    move-result-object v2

    .line 3033
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_19
    if-ge v5, v3, :cond_2c

    .line 3035
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :catchall_29
    move-exception v0

    goto/16 :goto_a7

    :cond_2c
    if-nez v6, :cond_33

    .line 3039
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_29

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 3041
    :cond_33
    :try_start_33
    new-array v5, v6, [Ljava/lang/String;

    .line 3042
    new-array v7, v6, [Ljava/util/ArrayList;

    .line 3043
    new-array v6, v6, [I

    move v8, v4

    move v9, v8

    :goto_3b
    if-ge v8, v3, :cond_7e

    .line 3047
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 3049
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    .line 3050
    invoke-static {v11}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v12

    move v13, v4

    :goto_4c
    if-ge v13, v12, :cond_7b

    .line 3052
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v5, v9

    .line 3053
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    aput-object v14, v7, v9

    .line 3054
    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    aget-object v15, v5, v9

    invoke-virtual {v14, v15}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    if-eqz v14, :cond_73

    .line 3056
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v14

    invoke-static {v10, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v14

    goto :goto_74

    :cond_73
    const/4 v14, -0x1

    .line 3057
    :goto_74
    aput v14, v6, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_4c

    :cond_7b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 3062
    :cond_7e
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PendingPackageBroadcasts;->clear()V

    .line 3063
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_33 .. :try_end_86} :catchall_29

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3064
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    :goto_8f
    if-ge v4, v9, :cond_a6

    .line 3067
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    aget-object v12, v5, v4

    aget-object v14, v7, v4

    aget v15, v6, v4

    const/16 v16, 0x0

    const/4 v13, 0x1

    move-object/from16 v17, p1

    move/from16 v18, p2

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    :cond_a6
    return-void

    .line 3063
    :goto_a7
    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_29

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final setPackageInstalledForSystemPackage(Lcom/android/server/pm/pkg/AndroidPackage;[I[IZ)V
    .registers 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 3555
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    .line 3557
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 3558
    :try_start_14
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_26

    move v7, v5

    goto :goto_27

    :cond_26
    move v7, v6

    :goto_27
    if-eqz v7, :cond_5a

    .line 3566
    array-length v8, v0

    move v9, v6

    move v10, v9

    :goto_2c
    if-ge v9, v8, :cond_4a

    aget v11, v0, v9

    .line 3567
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v12

    .line 3571
    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v13

    if-eq v12, v13, :cond_3b

    move v10, v5

    .line 3574
    :cond_3b
    invoke-virtual {v4, v12, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    if-eqz v12, :cond_47

    .line 3576
    invoke-virtual {v4, v6, v11}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    goto :goto_47

    :catchall_44
    move-exception v0

    move-object p0, v0

    goto :goto_82

    :cond_47
    :goto_47
    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    .line 3581
    :cond_4a
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    if-eqz v10, :cond_5a

    .line 3583
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 3589
    :cond_5a
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    const/4 v5, -0x1

    invoke-interface {v1, p1, v5, v4, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 3592
    array-length v1, v0

    move v4, v6

    :goto_66
    if-ge v4, v1, :cond_76

    aget v5, v0, v4

    if-eqz v7, :cond_73

    .line 3594
    iget-object v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, v5, v6}, Lcom/android/server/pm/Settings;->writePermissionStateForUserLPr(IZ)V

    :cond_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_76
    if-eqz p4, :cond_7d

    .line 3600
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;)V

    .line 3602
    :cond_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_14 .. :try_end_7e} :catchall_44

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_82
    :try_start_82
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_44

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final updateSettingsInternalLI(Lcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallRequest;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2555
    const-string/jumbo v4, "updateSettingsInternal"

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2557
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2558
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    move-result v7

    .line 2559
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2562
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_51

    const/4 v11, -0x2

    if-eq v9, v11, :cond_51

    .line 2563
    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2564
    invoke-virtual {v11, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v11

    if-nez v11, :cond_51

    .line 2565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t exist or has been removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x26

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    return-void

    .line 2570
    :cond_51
    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-static {v11}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v11

    .line 2571
    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v12

    .line 2575
    :try_start_61
    iget-object v13, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    if-eqz v13, :cond_2fa

    .line 2577
    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->queryUsersInstalledOrHasData([I)[I

    move-result-object v15

    .line 2578
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v16

    if-eqz v16, :cond_ac

    .line 2583
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isApplicationEnabledSettingPersistent()Z

    move-result v6

    if-nez v6, :cond_90

    .line 2584
    array-length v6, v15

    const/4 v14, 0x0

    :goto_7d
    if-ge v14, v6, :cond_90

    aget v5, v15, v14

    if-eq v9, v10, :cond_85

    if-ne v9, v5, :cond_89

    :cond_85
    const/4 v10, 0x0

    .line 2586
    invoke-virtual {v13, v10, v5, v8}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :cond_89
    add-int/lit8 v14, v14, 0x1

    const/4 v10, -0x1

    goto :goto_7d

    :catchall_8d
    move-exception v0

    goto/16 :goto_324

    .line 2592
    :cond_90
    array-length v5, v2

    const/4 v6, 0x0

    :goto_92
    if-ge v6, v5, :cond_a0

    aget v10, v2, v6

    .line 2593
    invoke-static {v15, v10}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v14

    .line 2598
    invoke-virtual {v13, v14, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_92

    .line 2603
    :cond_a0
    array-length v5, v2

    const/4 v6, 0x0

    :goto_a2
    if-ge v6, v5, :cond_ac

    aget v10, v2, v6

    .line 2604
    invoke-virtual {v13, v10}, Lcom/android/server/pm/PackageSetting;->resetOverrideComponentLabelIcon(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a2

    .line 2609
    :cond_ac
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_109

    .line 2610
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_109

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    .line 2611
    array-length v10, v2

    const/4 v14, 0x0

    :goto_d4
    if-ge v14, v10, :cond_c6

    move-object/from16 v17, v5

    aget v5, v2, v14

    move-object/from16 v18, v6

    .line 2612
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->getType()I

    move-result v6

    move/from16 v19, v10

    const/4 v10, 0x1

    if-eq v6, v10, :cond_e6

    goto :goto_100

    .line 2616
    :cond_e6
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2617
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2616
    invoke-virtual {v6, v10}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-nez v6, :cond_f5

    goto :goto_100

    .line 2621
    :cond_f5
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->getName()Ljava/lang/String;

    move-result-object v10

    .line 2622
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v6

    .line 2621
    invoke-virtual {v13, v10, v6, v5}, Lcom/android/server/pm/PackageSetting;->setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;I)Z

    :goto_100
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v10, v19

    goto :goto_d4

    :cond_109
    const/4 v5, -0x1

    if-eq v9, v5, :cond_143

    const/4 v10, 0x1

    .line 2631
    invoke-virtual {v13, v10, v9}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 2632
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isApplicationEnabledSettingPersistent()Z

    move-result v5

    if-nez v5, :cond_11a

    const/4 v10, 0x0

    .line 2633
    invoke-virtual {v13, v10, v9, v8}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 2637
    :cond_11a
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v5, v13, v9}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    .line 2641
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getUserStates()Landroid/util/SparseArray;

    move-result-object v5

    .line 2642
    array-length v6, v2

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-eq v6, v8, :cond_1a6

    const/4 v6, 0x0

    .line 2643
    :goto_12f
    array-length v8, v2

    if-ge v6, v8, :cond_1a6

    .line 2644
    aget v8, v2, v6

    .line 2645
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-nez v10, :cond_140

    const/4 v10, 0x0

    .line 2650
    invoke-virtual {v13, v10, v8}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    :cond_140
    add-int/lit8 v6, v6, 0x1

    goto :goto_12f

    .line 2657
    :cond_143
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getOriginUsers()[I

    move-result-object v5

    if-eqz v5, :cond_14b

    const/4 v5, 0x1

    goto :goto_14c

    :cond_14b
    const/4 v5, 0x0

    .line 2658
    :goto_14c
    array-length v6, v2

    const/4 v10, 0x0

    :goto_14e
    if-ge v10, v6, :cond_1a6

    aget v14, v2, v10

    if-eqz v5, :cond_15f

    .line 2670
    invoke-static {v15, v14}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v17

    if-eqz v17, :cond_15f

    const/16 v17, 0x1

    :goto_15c
    move/from16 v18, v5

    goto :goto_162

    :cond_15f
    const/16 v17, 0x0

    goto :goto_15c

    .line 2671
    :goto_162
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v19, v6

    const-string/jumbo v6, "no_install_apps"

    .line 2672
    invoke-virtual {v5, v14, v6}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17d

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v6, "no_debugging_features"

    .line 2674
    invoke-virtual {v5, v14, v6}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17b

    goto :goto_17d

    :cond_17b
    const/4 v5, 0x0

    goto :goto_17e

    :cond_17d
    :goto_17d
    const/4 v5, 0x1

    :goto_17e
    if-nez v17, :cond_182

    if-nez v5, :cond_185

    :cond_182
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_18a

    :cond_185
    const/4 v5, 0x0

    .line 2686
    invoke-virtual {v13, v5, v14}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_19f

    .line 2677
    :goto_18a
    invoke-virtual {v13, v6, v14}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 2678
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isApplicationEnabledSettingPersistent()Z

    move-result v6

    if-nez v6, :cond_196

    .line 2679
    invoke-virtual {v13, v5, v14, v8}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 2683
    :cond_196
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v5, v13, v14}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    :goto_19f
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v18

    move/from16 v6, v19

    goto :goto_14e

    .line 2691
    :cond_1a6
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 2695
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2696
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v6

    if-eqz v6, :cond_1f2

    .line 2697
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    if-eqz v6, :cond_1f2

    .line 2699
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_1cf
    if-ge v10, v6, :cond_1f2

    .line 2702
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2704
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    .line 2705
    invoke-virtual {v13, v14, v8}, Lcom/android/server/pm/PackageSetting;->setInstallReason(II)V

    .line 2706
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1cf

    .line 2709
    :cond_1f2
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v6

    if-eqz v6, :cond_227

    .line 2710
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    if-eqz v6, :cond_227

    const/4 v10, 0x0

    .line 2711
    :goto_201
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v10, v6, :cond_227

    .line 2714
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 2716
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 2717
    invoke-virtual {v13, v8, v6}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_201

    :cond_227
    const/4 v6, -0x1

    if-ne v9, v6, :cond_246

    .line 2723
    array-length v6, v2

    const/4 v10, 0x0

    :goto_22c
    if-ge v10, v6, :cond_253

    aget v8, v2, v10

    .line 2724
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_243

    .line 2725
    invoke-virtual {v13, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v14

    if-eqz v14, :cond_243

    .line 2726
    invoke-virtual {v13, v7, v8}, Lcom/android/server/pm/PackageSetting;->setInstallReason(II)V

    :cond_243
    add-int/lit8 v10, v10, 0x1

    goto :goto_22c

    .line 2729
    :cond_246
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_253

    .line 2730
    invoke-virtual {v13, v7, v9}, Lcom/android/server/pm/PackageSetting;->setInstallReason(II)V

    .line 2735
    :cond_253
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v5

    .line 2736
    invoke-static {v5}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26f

    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v6, :cond_26f

    .line 2738
    new-instance v7, Lcom/android/server/pm/IncrementalProgressListener;

    .line 2739
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v7, v8, v10}, Lcom/android/server/pm/IncrementalProgressListener;-><init>(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    .line 2738
    invoke-virtual {v6, v5, v7}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    .line 2743
    :cond_26f
    array-length v5, v2

    const/4 v10, 0x0

    :goto_271
    if-ge v10, v5, :cond_284

    aget v6, v2, v10

    .line 2744
    invoke-virtual {v13, v6}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    if-eqz v7, :cond_280

    const/4 v7, 0x0

    .line 2745
    invoke-virtual {v13, v7, v6}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    goto :goto_281

    :cond_280
    const/4 v7, 0x0

    :goto_281
    add-int/lit8 v10, v10, 0x1

    goto :goto_271

    .line 2749
    :cond_284
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v13}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 2752
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;

    invoke-direct {v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;-><init>()V

    .line 2754
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_2bf

    .line 2757
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 2758
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2bb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v16, 0x1

    .line 2760
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2759
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a5

    .line 2762
    :cond_2bb
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setPermissionStates(Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;

    goto :goto_2c8

    .line 2764
    :cond_2bf
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v5

    if-eqz v5, :cond_2c8

    .line 2767
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setPermissionStates(Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;

    .line 2771
    :cond_2c8
    :goto_2c8
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v5

    const/high16 v6, 0x400000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2db

    .line 2775
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2df

    .line 2776
    :cond_2db
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getAllowlistedRestrictedPermissions()Ljava/util/List;

    move-result-object v5

    :goto_2df
    if-eqz v5, :cond_2e4

    .line 2778
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setAllowlistedRestrictedPermissions(Ljava/util/List;)V

    .line 2781
    :cond_2e4
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getAutoRevokePermissionsMode()I

    move-result v5

    .line 2782
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setAutoRevokePermissionsMode(I)V

    .line 2783
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPreviousAppId()I

    move-result v6

    .line 2784
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->build()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    move-result-object v2

    .line 2783
    invoke-interface {v5, v1, v6, v2, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 2786
    :cond_2fa
    invoke-virtual {v3, v4}, Lcom/android/server/pm/InstallRequest;->setName(Ljava/lang/String;)V

    .line 2787
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/pm/InstallRequest;->setAppId(I)V

    .line 2788
    invoke-virtual {v3, v1}, Lcom/android/server/pm/InstallRequest;->setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)V

    const/4 v10, 0x1

    .line 2789
    invoke-virtual {v3, v10}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 2791
    const-string/jumbo v1, "writeSettings"

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2792
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;)V

    .line 2793
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2794
    monitor-exit v12
    :try_end_31d
    .catchall {:try_start_61 .. :try_end_31d} :catchall_8d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2796
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 2794
    :goto_324
    :try_start_324
    monitor-exit v12
    :try_end_325
    .catchall {:try_start_324 .. :try_end_325} :catchall_8d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final updateSettingsLI(Lcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallRequest;)V
    .registers 4

    .line 2550
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->updateSettingsInternalLI(Lcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public final verifyPackageUpdateLPr(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 9

    .line 4716
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const-string v3, " to "

    const-string v4, "Unable to update from "

    const-string v5, "PackageManager"

    if-nez v0, :cond_35

    .line 4717
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4718
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": old package not in system partition"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4717
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4721
    :cond_35
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 4722
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4723
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": old package still exists"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4722
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_69
    return v1
.end method

.method public verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;
    .registers 15

    const/4 v0, 0x1

    .line 2858
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, -0x19

    .line 2904
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x79

    .line 2854
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v3, 0x20000

    and-int/2addr v3, p4

    if-eqz v3, :cond_1b

    .line 2840
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->verifyReplacingVersionCodeForApex(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 2844
    :cond_1b
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 2845
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 2846
    :try_start_25
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    if-nez v5, :cond_66

    cmp-long p0, p2, v7

    if-eqz p0, :cond_5d

    .line 2849
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Required installed version code was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " but package is not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2852
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v4
    :try_end_56
    .catchall {:try_start_25 .. :try_end_56} :catchall_5a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_5a
    move-exception p0

    goto/16 :goto_18b

    .line 2858
    :cond_5d
    :try_start_5d
    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_5a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 2866
    :cond_66
    :try_start_66
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v9

    cmp-long v7, p2, v7

    if-eqz v7, :cond_c7

    if-nez v9, :cond_94

    .line 2870
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Required installed version code was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " but package is not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2873
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v4
    :try_end_90
    .catchall {:try_start_66 .. :try_end_90} :catchall_5a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 2878
    :cond_94
    :try_start_94
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v7

    cmp-long v7, v7, p2

    if-eqz v7, :cond_c7

    .line 2879
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Required installed version code was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " but actual installed version is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2883
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v4
    :try_end_c3
    .catchall {:try_start_94 .. :try_end_c3} :catchall_5a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :cond_c7
    if-nez v9, :cond_fc

    .line 2894
    :try_start_c9
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isDebuggable()Z

    move-result p0

    .line 2893
    invoke-static {p4, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result p0
    :try_end_d1
    .catchall {:try_start_c9 .. :try_end_d1} :catchall_5a

    if-nez p0, :cond_182

    .line 2898
    :try_start_d3
    invoke-static {v5, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageInfoLite;)V
    :try_end_d6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_d3 .. :try_end_d6} :catch_d8
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_5a

    goto/16 :goto_182

    :catch_d8
    move-exception p0

    .line 2900
    :try_start_d9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Downgrade detected on app uninstalled with DELETE_KEEP_DATA: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2901
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2902
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v4
    :try_end_f8
    .catchall {:try_start_d9 .. :try_end_f8} :catchall_5a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 2909
    :cond_fc
    :try_start_fc
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->isSdkLibrary()Z

    move-result p2

    if-nez p2, :cond_182

    .line 2911
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result p2

    .line 2910
    invoke-static {p4, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result p2
    :try_end_10a
    .catchall {:try_start_fc .. :try_end_10a} :catchall_5a

    if-nez p2, :cond_134

    .line 2914
    :try_start_10c
    invoke-static {v9, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    :try_end_10f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_10c .. :try_end_10f} :catch_110
    .catchall {:try_start_10c .. :try_end_10f} :catchall_5a

    goto :goto_182

    :catch_110
    move-exception p0

    .line 2916
    :try_start_111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Downgrade detected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2917
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v4
    :try_end_130
    .catchall {:try_start_111 .. :try_end_130} :catchall_5a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 2921
    :cond_134
    :try_start_134
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result p2

    if-eqz p2, :cond_182

    .line 2924
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_148

    .line 2927
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v9

    .line 2929
    :cond_148
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez p0, :cond_182

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result p0
    :try_end_150
    .catchall {:try_start_134 .. :try_end_150} :catchall_5a

    if-nez p0, :cond_182

    .line 2932
    :try_start_152
    invoke-static {v9, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    :try_end_155
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_152 .. :try_end_155} :catch_156
    .catchall {:try_start_152 .. :try_end_155} :catchall_5a

    goto :goto_182

    :catch_156
    move-exception p0

    .line 2934
    :try_start_157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "System app: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be downgraded to older than its preloaded version on the system image. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2937
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2938
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v4
    :try_end_17e
    .catchall {:try_start_157 .. :try_end_17e} :catchall_5a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 2945
    :cond_182
    :goto_182
    :try_start_182
    monitor-exit v4
    :try_end_183
    .catchall {:try_start_182 .. :try_end_183} :catchall_5a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2946
    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 2945
    :goto_18b
    :try_start_18b
    monitor-exit v4
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_5a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final verifyReplacingVersionCodeForApex(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;
    .registers 13

    .line 2951
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 2953
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/32 v1, 0x40000000

    const/4 v3, 0x0

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2955
    const-string v1, "PackageManager"

    if-nez p0, :cond_33

    .line 2956
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Attempting to install new APEX package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2957
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x17

    .line 2958
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 2961
    :cond_33
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, p2, v6

    if-eqz v2, :cond_70

    cmp-long v2, v4, p2

    if-eqz v2, :cond_70

    .line 2964
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Installed version of APEX package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match required. Active version: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " required: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2967
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x79

    .line 2968
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 2971
    :cond_70
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    const/4 p2, 0x1

    if-eqz p0, :cond_7a

    move v3, p2

    .line 2973
    :cond_7a
    invoke-virtual {p1}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide p0

    .line 2974
    invoke-static {p4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result p3

    if-nez p3, :cond_b7

    cmp-long p3, p0, v4

    if-gez p3, :cond_b7

    .line 2976
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Downgrade of APEX package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not allowed. Active version: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " attempted: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2979
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x19

    .line 2980
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 2983
    :cond_b7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
