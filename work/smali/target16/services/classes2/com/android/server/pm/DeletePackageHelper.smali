.class public final Lcom/android/server/pm/DeletePackageHelper;
.super Ljava/lang/Object;
.source "DeletePackageHelper.java"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$-oeUp2P8o8iDLUc_n3ggTncXCE8(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .registers 6

    .line 741
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    const-string/jumbo v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 743
    const-string p0, "android.content.pm.extra.CALLBACK"

    new-instance v1, Landroid/content/pm/PackageManager$UninstallCompleteCallback;

    .line 744
    invoke-interface {p1}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$UninstallCompleteCallback;-><init>(Landroid/os/IBinder;)V

    .line 743
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    and-int/lit8 p0, p2, 0x10

    if-eqz p0, :cond_29

    .line 749
    const-string p0, "android.content.pm.extra.DELETE_FLAGS"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 751
    :cond_29
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2c

    :catch_2c
    return-void
.end method

.method public static synthetic $r8$lambda$7Hr_v2af0PSvgDGHaWT-s7nAcws(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 5

    .line 772
    :try_start_0
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not removing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": has active device admin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    const/4 v1, 0x0

    .line 774
    invoke-interface {p1, p0, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    :catch_20
    return-void
.end method

.method public static synthetic $r8$lambda$At051VPPk0B3rzESNnDqgcryRsc(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x3

    const/4 v1, 0x0

    .line 802
    :try_start_2
    invoke-interface {p0, p1, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public static synthetic $r8$lambda$K8jinxL8TaNMNq1r3FA2gQNwNFQ(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/DeletePackageHelper;->lambda$removeUnusedPackagesLPw$6(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MC3hsuSffYYhEszBQHJvs-FTT6I(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;IZZJII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 12

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$5(Ljava/lang/String;IZZJII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OmU3_QuZgW_Cze1CVHdRM6F2mcY(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x4

    const/4 v1, 0x0

    .line 813
    :try_start_2
    invoke-interface {p0, p1, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public static synthetic $r8$lambda$RQQgPNIc9pnksz9sGvFB4kTgrj8(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 5

    .line 785
    :try_start_0
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to delete protected package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 786
    invoke-interface {p1, p0, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 97
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 98
    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 99
    iput-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    return-void
.end method

.method public static mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)Lcom/android/server/pm/DeletePackageAction;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 421
    :cond_4
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v1

    if-eqz v1, :cond_3e

    and-int/lit8 v1, p3, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    if-eqz p4, :cond_1c

    .line 424
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1d

    :cond_1c
    move v2, v3

    :cond_1d
    if-eqz v1, :cond_21

    if-eqz v2, :cond_3e

    :cond_21
    if-nez p2, :cond_3e

    .line 426
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempt to delete unknown system package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 426
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 434
    :cond_3e
    new-instance v1, Lcom/android/server/pm/DeletePackageAction;

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/DeletePackageAction;-><init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageRemovedInfo;ILandroid/os/UserHandle;)V

    return-object v1
.end method


# virtual methods
.method public final deleteArtDexoptArtifacts(Ljava/lang/String;)V
    .registers 3

    .line 358
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object p0

    .line 359
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    .line 361
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/art/ArtManagerLocal;->deleteDexoptArtifacts(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)Lcom/android/server/art/model/DeleteResult;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_f} :catch_12
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_1c

    :catchall_10
    move-exception p1

    goto :goto_22

    :catch_12
    move-exception p1

    .line 364
    :try_start_13
    const-string v0, "PackageManager"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_10

    :goto_1c
    if-eqz p0, :cond_21

    .line 366
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    :cond_21
    return-void

    :goto_22
    if-eqz p0, :cond_2c

    .line 357
    :try_start_24
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    throw p1
.end method

.method public deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .registers 15

    .line 1046
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1051
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3

    .line 1054
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 1056
    :try_start_20
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 1057
    invoke-interface {v5, v0, v3, v4}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 1058
    iget-object v4, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_44

    .line 1060
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v3

    .line 1062
    array-length v3, v3

    goto :goto_45

    :catchall_41
    move-exception v0

    move-object p0, v0

    goto :goto_5b

    :cond_44
    const/4 v3, 0x0

    .line 1064
    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_20 .. :try_end_46} :catchall_41

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-le v3, v4, :cond_55

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .line 1067
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V

    return-void

    :cond_55
    move-object v7, p2

    const/4 p0, -0x1

    .line 1070
    :try_start_57
    invoke-interface {v7, v0, p0, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5a} :catch_5a

    :catch_5a
    return-void

    .line 1064
    :goto_5b
    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_41

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;IZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V
    .registers 15

    .line 570
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 572
    :try_start_8
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    iput v2, p6, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 573
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 574
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 575
    invoke-virtual {v5}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    .line 573
    invoke-virtual {v3, v2, p1, p5, v5}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p6, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 576
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_45

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 579
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    move-object v1, p1

    move v2, p2

    move v5, p4

    move-object v3, p5

    move-object v4, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/RemovePackageHelper;->removePackageDataLIF(Lcom/android/server/pm/PackageSetting;I[ILcom/android/server/pm/PackageRemovedInfo;IZ)V

    if-eqz p3, :cond_44

    .line 584
    new-instance v0, Lcom/android/server/pm/CleanUpArgs;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/CleanUpArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p6, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    :cond_44
    return-void

    :catchall_45
    move-exception v0

    .line 576
    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final deleteInstalledSystemPackage(Lcom/android/server/pm/DeletePackageAction;[IZ)V
    .registers 13

    .line 650
    iget v0, p1, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    .line 651
    iget-object v2, p1, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 652
    iget-object v7, p1, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 653
    iget-object v1, v7, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 654
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 659
    iget-object p1, p1, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 664
    const-string v1, "PackageManager"

    const-string v3, "Deleting system pkg from data partition"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 677
    iput-boolean v1, v7, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 679
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_32

    .line 680
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    if-eq p1, v3, :cond_2e

    goto :goto_32

    :cond_2e
    or-int/lit8 p1, v0, 0x1

    :goto_30
    move v5, p1

    goto :goto_35

    :cond_32
    :goto_32
    and-int/lit8 p1, v0, -0x2

    goto :goto_30

    .line 687
    :goto_35
    iget-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p1

    const/4 v3, -0x1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v6, p2

    move v8, p3

    .line 688
    :try_start_42
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;IZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4b

    if-eqz p1, :cond_4a

    .line 690
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_4a
    return-void

    :catchall_4b
    move-exception v0

    move-object p0, v0

    if-eqz p1, :cond_58

    .line 687
    :try_start_4f
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_58

    :catchall_53
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_58
    :goto_58
    throw p0
.end method

.method public deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    .registers 14

    .line 377
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 378
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    .line 383
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    :catchall_18
    move-exception v0

    move-object p0, v0

    goto :goto_65

    .line 385
    :cond_1b
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 386
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "android.permission.CONTROL_KEYGUARD"

    .line 387
    invoke-virtual {v4, v5, p1, v2}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4e

    .line 389
    const-string p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to delete keyguard system package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_1b .. :try_end_4a} :catchall_18

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    .line 392
    :cond_4e
    :try_start_4e
    invoke-static {p6, v0, v3, p5, p2}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)Lcom/android/server/pm/DeletePackageAction;

    move-result-object p2

    .line 393
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_18

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-nez p2, :cond_59

    return v2

    :cond_59
    move p6, p7

    const/4 p7, 0x0

    move-object p5, p4

    move p4, p3

    move-object p3, p1

    move-object p1, p0

    .line 401
    :try_start_5f
    invoke-virtual/range {p1 .. p7}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    :try_end_62
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_5f .. :try_end_62} :catch_64

    const/4 p0, 0x1

    return p0

    :catch_64
    return v2

    .line 393
    :goto_65
    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_18

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIIZ)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v3, p5

    .line 703
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 706
    invoke-interface {v2, v3, v8}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v5

    .line 707
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    invoke-static {v11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v12

    const-wide v16, 0x7fffffffffffffffL

    const-string/jumbo v18, "versionCode must be >= -1"

    const-wide/16 v14, -0x1

    invoke-static/range {v12 .. v18}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 714
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v6

    .line 717
    :try_start_3d
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v10, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 718
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isBaseOfLockedTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const/4 v0, -0x7

    .line 719
    invoke-interface {v11, v12, v0, v4}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 721
    const-string v0, "127605586"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v10, ""

    filled-new-array {v0, v4, v10}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x534e4554

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_66} :catch_67

    return-void

    :catch_67
    move-exception v0

    .line 725
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 730
    :cond_6b
    invoke-interface {v2, v12, v6, v7}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v4, v9, 0x2

    const/4 v10, 0x0

    const/4 v13, 0x1

    if-eqz v4, :cond_78

    move v4, v5

    move v5, v13

    goto :goto_7a

    :cond_78
    move v4, v5

    move v5, v10

    :goto_7a
    if-eqz v5, :cond_83

    .line 733
    iget-object v14, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v14}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v14

    goto :goto_87

    :cond_83
    new-array v14, v13, [I

    aput v8, v14, v10

    .line 735
    :goto_87
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/DeletePackageHelper;->isOrphaned(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a2

    if-nez p6, :cond_a2

    .line 737
    invoke-virtual {v1, v2, v3, v0, v14}, Lcom/android/server/pm/DeletePackageHelper;->isCallerAllowedToSilentlyUninstall(Lcom/android/server/pm/Computer;ILjava/lang/String;[I)Z

    move-result v15

    if-nez v15, :cond_a2

    .line 739
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v12, v11, v9}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 758
    :cond_a2
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    if-ne v15, v8, :cond_ad

    if-eqz v5, :cond_c7

    array-length v15, v14

    if-le v15, v13, :cond_c7

    .line 759
    :cond_ad
    iget-object v13, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deletePackage for user "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v15, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v13, v15, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_c7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 768
    :try_start_cb
    array-length v10, v14

    const/4 v13, 0x0

    :goto_cd
    if-ge v13, v10, :cond_10e

    aget v3, v14, v13

    move/from16 p1, v4

    .line 769
    iget-object v4, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v12, v3}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 770
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, v12, v11}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e7
    .catchall {:try_start_cb .. :try_end_e7} :catchall_eb

    .line 796
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_eb
    move-exception v0

    goto :goto_153

    .line 782
    :cond_ed
    :try_start_ed
    iget-object v4, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v4, v3, v12}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 783
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, v12, v11}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_103
    .catchall {:try_start_ed .. :try_end_103} :catchall_eb

    .line 796
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_107
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, p1

    move/from16 v3, p5

    goto :goto_cd

    :cond_10e
    move/from16 p1, v4

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 799
    iget-object v3, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v4, "no_uninstall_apps"

    invoke-virtual {v3, v8, v4}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 800
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, v11, v12}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda4;-><init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_12b
    if-nez v5, :cond_140

    .line 810
    invoke-interface {v2, v0, v8}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_140

    .line 811
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, v11, v12}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda5;-><init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 828
    :cond_140
    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda6;

    move/from16 v4, p1

    move/from16 v3, p5

    move-object v10, v14

    invoke-direct/range {v0 .. v12}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;IZZJII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 796
    :goto_153
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 797
    throw v0
.end method

.method public deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V
    .registers 13

    .line 697
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 696
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIIZ)V

    return-void
.end method

.method public deletePackageX(Ljava/lang/String;JIIZ)I
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 121
    new-instance v7, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v7}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    and-int/lit8 v5, p5, 0x2

    const/4 v8, -0x1

    if-eqz v5, :cond_14

    move v9, v8

    goto :goto_15

    :cond_14
    move v9, v4

    .line 139
    :goto_15
    iget-object v5, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 140
    :try_start_1d
    iget-object v6, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    .line 141
    iget-object v6, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-nez v6, :cond_4b

    .line 143
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not removing non-existent package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_48

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v8

    :catchall_48
    move-exception v0

    goto/16 :goto_429

    :cond_4b
    const-wide/16 v11, -0x1

    cmp-long v11, v2, v11

    if-eqz v11, :cond_88

    .line 148
    :try_start_51
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v11

    cmp-long v11, v11, v2

    if-eqz v11, :cond_88

    .line 149
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not removing package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with versionCode "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    monitor-exit v5
    :try_end_84
    .catchall {:try_start_51 .. :try_end_84} :catchall_48

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v8

    .line 154
    :cond_88
    :try_start_88
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUpdatedSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v2

    if-eqz v2, :cond_e1

    and-int/lit8 v2, p5, 0x4

    if-nez v2, :cond_e1

    .line 156
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_b0

    .line 157
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 158
    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    .line 157
    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v2

    if-nez v2, :cond_e1

    .line 159
    :cond_b0
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not removing package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as only admin user (or their profile) may downgrade system apps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "170646036"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 162
    monitor-exit v5
    :try_end_dc
    .catchall {:try_start_88 .. :try_end_dc} :catchall_48

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v0, -0x3

    return v0

    .line 166
    :cond_e1
    :try_start_e1
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v16

    .line 169
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 171
    iget-object v3, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    const/4 v4, 0x0

    const/16 v17, 0x0

    if-eqz v2, :cond_1bb

    .line 175
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_111

    .line 176
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v11

    .line 177
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v12

    .line 176
    invoke-interface {v10, v11, v12, v13}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v11

    goto :goto_126

    .line 178
    :cond_111
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_125

    .line 179
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v11

    .line 180
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v12

    int-to-long v12, v12

    .line 179
    invoke-interface {v10, v11, v12, v13}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v11

    goto :goto_126

    :cond_125
    move-object v11, v4

    :goto_126
    if-eqz v11, :cond_1bb

    .line 185
    array-length v12, v3

    move/from16 v13, v17

    :goto_12b
    if-ge v13, v12, :cond_1bb

    aget v15, v3, v13

    if-eq v9, v8, :cond_139

    if-eq v9, v15, :cond_139

    move/from16 v19, v12

    move/from16 v18, v13

    goto/16 :goto_1b5

    :cond_139
    move v14, v12

    move/from16 v18, v13

    const-wide/32 v12, 0x402000

    move/from16 v19, v14

    const/16 v14, 0x3e8

    .line 189
    invoke-interface/range {v10 .. v15}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v12

    .line 191
    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    .line 192
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    .line 199
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_167

    .line 200
    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_167

    .line 201
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_167

    .line 202
    invoke-interface {v13}, Ljava/util/List;->size()I

    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 213
    :cond_167
    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_1b5

    .line 214
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not removing package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hosting lib "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v11}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v11}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " used by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    monitor-exit v5
    :try_end_1b0
    .catchall {:try_start_e1 .. :try_end_1b0} :catchall_48

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v0, -0x6

    return v0

    :cond_1b5
    :goto_1b5
    add-int/lit8 v13, v18, 0x1

    move/from16 v12, v19

    goto/16 :goto_12b

    :cond_1bb
    const/4 v10, 0x1

    .line 224
    :try_start_1bc
    invoke-virtual {v6, v3, v10}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v11

    iput-object v11, v7, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 226
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUpdatedSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v11

    if-eqz v11, :cond_200

    and-int/lit8 v11, p5, 0x4

    if-nez v11, :cond_200

    .line 231
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    move/from16 v12, v17

    .line 232
    :goto_1d3
    array-length v13, v3

    if-ge v12, v13, :cond_1fa

    .line 233
    aget v13, v3, v12

    invoke-virtual {v6, v13}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v13

    .line 234
    aget v14, v3, v12

    new-instance v15, Lcom/android/server/pm/DeletePackageHelper$TempUserState;

    move/from16 v18, v8

    .line 235
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v8

    .line 236
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v13

    invoke-direct {v15, v8, v10, v13, v4}, Lcom/android/server/pm/DeletePackageHelper$TempUserState;-><init>(ILjava/lang/String;ZLcom/android/server/pm/DeletePackageHelper-IA;)V

    .line 234
    invoke-virtual {v11, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v18

    const/4 v10, 0x1

    goto :goto_1d3

    :cond_1fa
    move/from16 v18, v8

    move-object v8, v3

    move/from16 v3, v18

    goto :goto_205

    :cond_200
    move/from16 v18, v8

    move-object v8, v3

    move-object v11, v4

    move v3, v9

    .line 243
    :goto_205
    iget-object v10, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v1}, Lcom/android/server/pm/Settings;->isInstallerPackage(Ljava/lang/String;)Z

    move-result v10

    .line 244
    monitor-exit v5
    :try_end_20e
    .catchall {:try_start_1bc .. :try_end_20e} :catchall_48

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 246
    iget-object v5, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v12

    .line 248
    :try_start_219
    iget-object v1, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "deletePackageX"

    move-object v13, v6

    const/16 v6, 0xd

    move-object v14, v2

    move-object v15, v8

    move-object/from16 v2, p1

    move-object v8, v4

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(Ljava/lang/String;IILjava/lang/String;I)Lcom/android/server/pm/PackageFreezer;

    move-result-object v19
    :try_end_22b
    .catchall {:try_start_219 .. :try_end_22b} :catchall_24c

    .line 250
    :try_start_22b
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/high16 v1, -0x80000000

    or-int v5, p5, v1

    move-object v1, v7

    const/4 v7, 0x1

    const/4 v3, 0x1

    move-object v6, v1

    move-object v4, v15

    move-object/from16 v1, p1

    move/from16 v15, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    move-result v7
    :try_end_240
    .catchall {:try_start_22b .. :try_end_240} :catchall_411

    move-object/from16 v20, v6

    move-object v6, v0

    move-object v0, v1

    move-object/from16 v1, v20

    if-eqz v19, :cond_250

    .line 252
    :try_start_248
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageFreezer;->close()V

    goto :goto_250

    :catchall_24c
    move-exception v0

    move-object v1, v0

    goto/16 :goto_41e

    :cond_250
    :goto_250
    if-eqz v7, :cond_282

    if-eqz v14, :cond_282

    .line 255
    iget-object v2, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_25c
    .catchall {:try_start_248 .. :try_end_25c} :catchall_24c

    .line 256
    :try_start_25c
    iget-object v3, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_26c

    const/4 v3, 0x1

    goto :goto_26e

    :cond_26c
    move/from16 v3, v17

    .line 257
    :goto_26e
    monitor-exit v2
    :try_end_26f
    .catchall {:try_start_25c .. :try_end_26f} :catchall_27c

    :try_start_26f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 258
    iget-object v2, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v5, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    invoke-virtual {v2, v14, v13, v5, v3}, Lcom/android/server/pm/InstantAppRegistry;->onPackageUninstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[IZ)V
    :try_end_27b
    .catchall {:try_start_26f .. :try_end_27b} :catchall_24c

    goto :goto_282

    :catchall_27c
    move-exception v0

    .line 257
    :try_start_27d
    monitor-exit v2
    :try_end_27e
    .catchall {:try_start_27d .. :try_end_27e} :catchall_27c

    :try_start_27e
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 261
    :cond_282
    :goto_282
    iget-object v2, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_28a
    .catchall {:try_start_27e .. :try_end_28a} :catchall_24c

    if-eqz v7, :cond_29c

    .line 263
    :try_start_28c
    iget-object v3, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    invoke-virtual {v3, v13, v5}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 264
    iget-object v3, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    goto :goto_29c

    :catchall_299
    move-exception v0

    goto/16 :goto_40c

    .line 266
    :cond_29c
    :goto_29c
    monitor-exit v2
    :try_end_29d
    .catchall {:try_start_28c .. :try_end_29d} :catchall_299

    :try_start_29d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v2, 0x2

    .line 267
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->invalidateGetPackagesForUidCache(I)V

    .line 269
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateCheckPackageCache()V
    :try_end_2a7
    .catchall {:try_start_29d .. :try_end_2a7} :catchall_24c

    if-eqz v12, :cond_2ac

    .line 270
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_2ac
    if-eqz v7, :cond_2d3

    and-int/lit8 v2, v15, 0x8

    if-nez v2, :cond_2b4

    const/4 v3, 0x1

    goto :goto_2b6

    :cond_2b4
    move/from16 v3, v17

    :goto_2b6
    and-int/lit8 v2, v15, 0x10

    if-eqz v2, :cond_2bc

    const/4 v5, 0x1

    goto :goto_2be

    :cond_2bc
    move/from16 v5, v17

    .line 275
    :goto_2be
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v2, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v12, p1

    move-object v14, v4

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    .line 277
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/BroadcastHelper;->sendSystemPackageUpdatedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;)V

    .line 278
    invoke-static {v1, v15, v9}, Lcom/android/server/pm/PackageMetrics;->onUninstallSucceeded(Lcom/android/server/pm/PackageRemovedInfo;II)V

    goto :goto_2d5

    :cond_2d3
    move-object v12, v0

    move-object v14, v4

    .line 283
    :goto_2d5
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 287
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v2

    .line 288
    :try_start_2e4
    iget-object v0, v1, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    if-eqz v0, :cond_2fc

    .line 289
    iget-object v3, v6, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 290
    invoke-virtual {v0}, Lcom/android/server/pm/CleanUpArgs;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/CleanUpArgs;->getCodeFile()Ljava/io/File;

    move-result-object v1

    .line 289
    invoke-virtual {v3, v0, v1}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_2fc

    :catchall_2f8
    move-exception v0

    move-object v1, v0

    goto/16 :goto_401

    :cond_2fc
    :goto_2fc
    if-eqz v11, :cond_375

    .line 296
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1
    :try_end_306
    .catchall {:try_start_2e4 .. :try_end_306} :catchall_2f8

    .line 297
    :try_start_306
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_349

    .line 299
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_31e

    .line 300
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_31e

    const/4 v3, 0x1

    goto :goto_320

    :catchall_31c
    move-exception v0

    goto :goto_370

    :cond_31e
    move/from16 v3, v17

    :goto_320
    move/from16 v4, v17

    .line 301
    :goto_322
    array-length v5, v14

    if-ge v4, v5, :cond_364

    .line 302
    aget v5, v14, v4

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/DeletePackageHelper$TempUserState;

    .line 303
    iget v12, v5, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->enabledState:I

    .line 304
    aget v15, v14, v4

    iget-object v8, v5, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {v0, v12, v15, v8}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    if-nez v17, :cond_345

    .line 306
    iget-boolean v5, v5, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->installed:Z

    if-eqz v5, :cond_345

    if-nez v12, :cond_340

    if-nez v3, :cond_343

    :cond_340
    const/4 v5, 0x1

    if-ne v12, v5, :cond_345

    :cond_343
    const/16 v17, 0x1

    :cond_345
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    goto :goto_322

    .line 318
    :cond_349
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing PackageSetting after uninstalling the update for system app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". This should not happen."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_364
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 322
    monitor-exit v1
    :try_end_36c
    .catchall {:try_start_306 .. :try_end_36c} :catchall_31c

    :try_start_36c
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_36f
    .catchall {:try_start_36c .. :try_end_36f} :catchall_2f8

    goto :goto_375

    :goto_370
    :try_start_370
    monitor-exit v1
    :try_end_371
    .catchall {:try_start_370 .. :try_end_371} :catchall_31c

    :try_start_371
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :cond_375
    :goto_375
    if-nez v16, :cond_379

    const/4 v4, 0x0

    goto :goto_37d

    .line 326
    :cond_379
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    :goto_37d
    if-eqz v4, :cond_3ea

    .line 327
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v0

    if-eqz v0, :cond_3ea

    .line 329
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1
    :try_end_38d
    .catchall {:try_start_371 .. :try_end_38d} :catchall_2f8

    .line 330
    :try_start_38d
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 331
    monitor-exit v1
    :try_end_39a
    .catchall {:try_start_38d .. :try_end_39a} :catchall_3e4

    :try_start_39a
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v0, :cond_3ea

    if-eqz v17, :cond_3c5

    .line 335
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v1, :cond_3bf

    .line 336
    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enabling system stub after removal; pkg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_3bf
    iget-object v1, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v4, v0}, Lcom/android/server/pm/PackageManagerService;->enableCompressedPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_3ea

    .line 340
    :cond_3c5
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v0, :cond_3ea

    .line 341
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System stub disabled for all users, leaving uncompressed after removal; pkg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e3
    .catchall {:try_start_39a .. :try_end_3e3} :catchall_2f8

    goto :goto_3ea

    :catchall_3e4
    move-exception v0

    .line 331
    :try_start_3e5
    monitor-exit v1
    :try_end_3e6
    .catchall {:try_start_3e5 .. :try_end_3e6} :catchall_3e4

    :try_start_3e6
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_3ea
    .catchall {:try_start_3e6 .. :try_end_3ea} :catchall_2f8

    :cond_3ea
    :goto_3ea
    if-eqz v2, :cond_3ef

    .line 346
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_3ef
    if-eqz v7, :cond_3fc

    if-eqz v10, :cond_3fc

    .line 349
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/pm/PackageManagerService;->onInstallerPackageDeleted(II)V

    :cond_3fc
    if-eqz v7, :cond_400

    const/4 v5, 0x1

    return v5

    :cond_400
    return v18

    :goto_401
    if-eqz v2, :cond_40b

    .line 287
    :try_start_403
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_406
    .catchall {:try_start_403 .. :try_end_406} :catchall_407

    goto :goto_40b

    :catchall_407
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_40b
    :goto_40b
    throw v1

    .line 266
    :goto_40c
    :try_start_40c
    monitor-exit v2
    :try_end_40d
    .catchall {:try_start_40c .. :try_end_40d} :catchall_299

    :try_start_40d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_411
    .catchall {:try_start_40d .. :try_end_411} :catchall_24c

    :catchall_411
    move-exception v0

    move-object v1, v0

    if-eqz v19, :cond_41d

    .line 248
    :try_start_415
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_418
    .catchall {:try_start_415 .. :try_end_418} :catchall_419

    goto :goto_41d

    :catchall_419
    move-exception v0

    :try_start_41a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_41d
    :goto_41d
    throw v1
    :try_end_41e
    .catchall {:try_start_41a .. :try_end_41e} :catchall_24c

    :goto_41e
    if-eqz v12, :cond_428

    .line 246
    :try_start_420
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_423
    .catchall {:try_start_420 .. :try_end_423} :catchall_424

    goto :goto_428

    :catchall_424
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_428
    :goto_428
    throw v1

    .line 244
    :goto_429
    :try_start_429
    monitor-exit v5
    :try_end_42a
    .catchall {:try_start_429 .. :try_end_42a} :catchall_48

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public executeDeletePackage(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    .registers 9

    .line 440
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    .line 441
    :try_start_8
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    if-eqz v1, :cond_10

    .line 443
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_10
    return-void

    :catchall_11
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_1e

    .line 440
    :try_start_15
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    throw p0
.end method

.method public final executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v5, p4

    move/from16 v7, p5

    .line 452
    iget-object v2, v1, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 453
    iget-object v6, v1, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 454
    iget-object v3, v1, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    if-eqz p6, :cond_18

    .line 456
    iget v4, v1, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    const/high16 v9, 0x20000

    or-int/2addr v4, v9

    goto :goto_1a

    .line 457
    :cond_18
    iget v4, v1, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    .line 458
    :goto_1a
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v9

    .line 461
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 462
    array-length v11, v5

    const/4 v13, 0x0

    :goto_25
    if-ge v13, v11, :cond_3f

    aget v15, v5, v13

    const/16 p6, 0x0

    .line 463
    iget-object v12, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v14, "android.permission.SUSPEND_APPS"

    invoke-virtual {v12, v14, v8, v15}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_37

    const/4 v14, 0x1

    goto :goto_39

    :cond_37
    move/from16 v14, p6

    :goto_39
    invoke-virtual {v10, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_25

    :cond_3f
    const/16 p6, 0x0

    const/4 v11, -0x1

    if-nez v3, :cond_46

    move v12, v11

    goto :goto_4a

    .line 467
    :cond_46
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    :goto_4a
    if-ne v12, v11, :cond_51

    .line 470
    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageSetting;->queryUsersInstalledOrHasData([I)[I

    move-result-object v13

    goto :goto_57

    :cond_51
    const/4 v13, 0x1

    .line 471
    new-array v14, v13, [I

    aput v12, v14, p6

    move-object v13, v14

    :goto_57
    iput-object v13, v6, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 472
    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageRemovedInfo;->populateBroadcastUsers(Lcom/android/server/pm/PackageSetting;)V

    and-int/lit8 v13, v4, 0x1

    if-nez v13, :cond_62

    const/4 v13, 0x1

    goto :goto_64

    :cond_62
    move/from16 v13, p6

    .line 473
    :goto_64
    iput-boolean v13, v6, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    .line 474
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 475
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object v13, v6, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 477
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    if-eqz v13, :cond_86

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_86

    const/4 v13, 0x1

    goto :goto_88

    :cond_86
    move/from16 v13, p6

    :goto_88
    iput-boolean v13, v6, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 478
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result v13

    iput-boolean v13, v6, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 479
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v13

    iput-wide v13, v6, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    if-eqz v9, :cond_9f

    and-int/lit8 v13, v4, 0x4

    if-eqz v13, :cond_9d

    goto :goto_9f

    :cond_9d
    const/4 v14, 0x1

    goto :goto_f3

    :cond_9f
    :goto_9f
    if-eq v12, v11, :cond_9d

    .line 489
    iget-object v13, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v13

    .line 490
    :try_start_a9
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/pm/DeletePackageHelper;->markPackageUninstalledForUserLPw(Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;I)V

    if-nez v9, :cond_cf

    .line 493
    iget-object v14, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 494
    invoke-virtual {v14, v8}, Lcom/android/server/pm/PackageManagerService;->shouldKeepUninstalledPackageLPr(Ljava/lang/String;)Z

    move-result v14

    .line 495
    iget-object v15, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 496
    invoke-virtual {v15}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v15

    .line 495
    invoke-virtual {v2, v15, v12}, Lcom/android/server/pm/PackageSetting;->isInstalledOnAnyOtherUser([II)Z

    move-result v15

    if-nez v15, :cond_cf

    if-eqz v14, :cond_c3

    goto :goto_cf

    .line 504
    :cond_c3
    iget-object v14, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v14, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    move/from16 v14, p6

    goto :goto_d0

    :catchall_cd
    move-exception v0

    goto :goto_ee

    :cond_cf
    :goto_cf
    const/4 v14, 0x1

    .line 515
    :goto_d0
    monitor-exit v13
    :try_end_d1
    .catchall {:try_start_a9 .. :try_end_d1} :catchall_cd

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v14, :cond_9d

    .line 517
    iget-object v1, v0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v1, v2, v12, v4}, Lcom/android/server/pm/RemovePackageHelper;->clearPackageStateForUserLIF(Lcom/android/server/pm/PackageSetting;II)V

    .line 520
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    iput v1, v6, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 523
    iget-boolean v1, v6, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    if-eqz v1, :cond_e8

    const/4 v14, 0x1

    .line 524
    iput-boolean v14, v6, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    .line 526
    :cond_e8
    iget-object v0, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(Landroid/os/UserHandle;)V

    return-void

    .line 515
    :goto_ee
    :try_start_ee
    monitor-exit v13
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_cd

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :goto_f3
    if-eqz v9, :cond_ff

    .line 536
    invoke-virtual {v0, v1, v5, v7}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledSystemPackage(Lcom/android/server/pm/DeletePackageAction;[IZ)V

    .line 537
    iget-object v3, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v1, v5, v7}, Lcom/android/server/pm/PackageManagerService;->restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V

    move-object v1, v2

    goto :goto_10f

    .line 540
    :cond_ff
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isIncremental()Z

    move-result v1

    if-eqz v1, :cond_108

    .line 543
    invoke-virtual {v0, v8}, Lcom/android/server/pm/DeletePackageHelper;->deleteArtDexoptArtifacts(Ljava/lang/String;)V

    :cond_108
    move/from16 v3, p3

    move-object v1, v2

    move v2, v12

    .line 545
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;IZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V

    .line 551
    :goto_10f
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 552
    iget-object v3, v6, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    array-length v4, v3

    move/from16 v5, p6

    :goto_11a
    if-ge v5, v4, :cond_131

    aget v7, v3, v5

    .line 553
    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_12e

    .line 554
    iget-object v9, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9, v2, v8, v7, v11}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)V

    .line 556
    iget-object v9, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9, v2, v7}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    :cond_12e
    add-int/lit8 v5, v5, 0x1

    goto :goto_11a

    .line 561
    :cond_131
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 562
    :try_start_139
    iget-object v0, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_149

    move v12, v14

    goto :goto_14b

    :cond_149
    move/from16 v12, p6

    :goto_14b
    iput-boolean v12, v6, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 563
    monitor-exit v2
    :try_end_14e
    .catchall {:try_start_139 .. :try_end_14e} :catchall_152

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_152
    move-exception v0

    :try_start_153
    monitor-exit v2
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_152

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final getBlockUninstallForUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)[I
    .registers 8

    .line 968
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 969
    array-length v0, p3

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_15

    aget v2, p3, v1

    .line 970
    invoke-interface {p1, p2, v2}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 971
    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    return-object p0
.end method

.method public final isCallerAllowedToSilentlyUninstall(Lcom/android/server/pm/Computer;ILjava/lang/String;[I)Z
    .registers 13

    .line 922
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_63

    .line 923
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_10

    goto :goto_63

    .line 926
    :cond_10
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 929
    array-length v2, p4

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    const-wide/16 v5, 0x0

    if-ge v4, v2, :cond_2b

    aget v7, p4, v4

    .line 932
    :try_start_1d
    invoke-interface {p1, p3, v7}, Lcom/android/server/pm/Computer;->getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 931
    invoke-interface {p1, v7, v5, v6, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_28

    if-ne p2, v5, :cond_28

    return v1

    :catch_28
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 942
    :cond_2b
    iget-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length p4, p3

    move v2, v3

    :goto_31
    if-ge v2, p4, :cond_3f

    aget-object v4, p3, v2

    .line 943
    invoke-interface {p1, v4, v5, v6, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    if-ne p2, v4, :cond_3c

    return v1

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 949
    :cond_3f
    iget-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    if-eqz p3, :cond_4c

    .line 950
    invoke-interface {p1, p3, v5, v6, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-ne p2, p3, :cond_4c

    return v1

    .line 955
    :cond_4c
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    if-eqz p0, :cond_59

    invoke-interface {p1, p0, v5, v6, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p2, p0, :cond_59

    return v1

    .line 962
    :cond_59
    const-string p0, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    invoke-interface {p1, p0, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_62

    goto :goto_63

    :cond_62
    move v1, v3

    :cond_63
    :goto_63
    return v1
.end method

.method public final isOrphaned(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .registers 3

    .line 916
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 917
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$deletePackageVersionedInternal$5(Ljava/lang/String;IZZJII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p9

    .line 830
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 832
    invoke-interface {v2, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 834
    const-string v9, "PackageManager"

    const/4 v10, 0x1

    if-eqz v8, :cond_29

    .line 836
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v8, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 837
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_29

    if-eqz p3, :cond_26

    goto :goto_29

    :cond_26
    const/4 v1, -0x1

    goto/16 :goto_fa

    .line 842
    :cond_29
    :goto_29
    const-string v11, ", returnCode "

    const-string v12, "Package delete failed for user "

    const/4 v13, 0x0

    if-nez p4, :cond_a6

    const/4 v6, 0x0

    move-wide/from16 v2, p5

    move/from16 v4, p7

    move/from16 v5, p8

    .line 843
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v6

    move v14, v4

    if-ne v6, v10, :cond_a4

    if-eqz v8, :cond_a4

    .line 850
    iget-object v1, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v14, v10}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object v7

    .line 852
    array-length v15, v7

    move v1, v13

    move v13, v6

    :goto_49
    if-ge v1, v15, :cond_a2

    aget v4, v7, v1

    if-ne v4, v14, :cond_54

    :cond_4f
    :goto_4f
    move/from16 v16, v1

    move-object/from16 v1, p1

    goto :goto_9e

    .line 854
    :cond_54
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v2

    if-eq v2, v14, :cond_5d

    goto :goto_4f

    .line 859
    :cond_5d
    invoke-interface {v8, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_68

    goto :goto_4f

    .line 863
    :cond_68
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 864
    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 865
    invoke-virtual {v2}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v6, 0x0

    move-wide/from16 v2, p5

    move/from16 v5, p8

    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 866
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v6

    if-eq v6, v10, :cond_9e

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x8

    :cond_9e
    :goto_9e
    add-int/lit8 v2, v16, 0x1

    move v1, v2

    goto :goto_49

    :cond_a2
    move v1, v13

    goto :goto_fa

    :cond_a4
    move v1, v6

    goto :goto_fa

    :cond_a6
    move/from16 v14, p7

    .line 877
    invoke-virtual {v0, v2, v1, v7}, Lcom/android/server/pm/DeletePackageHelper;->getBlockUninstallForUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)[I

    move-result-object v8

    .line 880
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v2

    if-eqz v2, :cond_bf

    const/4 v6, 0x0

    move-wide/from16 v2, p5

    move/from16 v5, p8

    move v4, v14

    .line 881
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v1

    move-object/from16 v0, p0

    goto :goto_fa

    :cond_bf
    and-int/lit8 v5, p8, -0x3

    .line 886
    array-length v14, v7

    :goto_c2
    if-ge v13, v14, :cond_f7

    aget v4, v7, v13

    .line 887
    invoke-static {v8, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_f2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p5

    .line 888
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v6

    if-eq v6, v10, :cond_f4

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    :cond_f2
    move-object/from16 v0, p0

    :cond_f4
    :goto_f4
    add-int/lit8 v13, v13, 0x1

    goto :goto_c2

    :cond_f7
    move-object/from16 v0, p0

    const/4 v1, -0x4

    :goto_fa
    const/4 v2, 0x0

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    .line 905
    :try_start_ff
    invoke-interface {v3, v4, v1, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_102} :catch_103

    goto :goto_108

    .line 907
    :catch_103
    const-string v1, "Observer no longer exists."

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :goto_108
    iget-object v0, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    return-void
.end method

.method public final synthetic lambda$removeUnusedPackagesLPw$6(Ljava/lang/String;I)V
    .registers 10

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 1037
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    return-void
.end method

.method public final markPackageUninstalledForUserLPw(Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;I)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_19

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    goto :goto_19

    .line 593
    :cond_10
    new-array v4, v3, [I

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    aput v5, v4, v2

    goto :goto_1f

    .line 592
    :cond_19
    :goto_19
    iget-object v4, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    .line 594
    :goto_1f
    array-length v5, v4

    :goto_20
    if-ge v2, v5, :cond_ae

    move v6, v2

    aget v2, v4, v6

    and-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    if-eqz v7, :cond_49

    .line 604
    new-instance v9, Landroid/util/ArraySet;

    .line 605
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 606
    new-instance v10, Landroid/util/ArraySet;

    .line 607
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    goto :goto_4d

    :cond_49
    move-object/from16 v17, v8

    move-object/from16 v18, v17

    :goto_4d
    if-nez v7, :cond_52

    :goto_4f
    move-object/from16 v26, v8

    goto :goto_5b

    .line 614
    :cond_52
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v8

    goto :goto_4f

    :goto_5b
    if-nez v7, :cond_64

    const-wide/16 v7, 0x0

    :goto_5f
    move-wide/from16 v23, v7

    move v8, v3

    move-object v7, v4

    goto :goto_6d

    .line 620
    :cond_64
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v7

    goto :goto_5f

    .line 623
    :goto_6d
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v3

    move v9, v5

    move v10, v6

    .line 624
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->getDeDataInode(I)J

    move-result-wide v5

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object v11, v7

    const/4 v7, 0x0

    move v12, v8

    const/4 v8, 0x0

    move v13, v9

    const/4 v9, 0x1

    move v14, v10

    const/4 v10, 0x1

    move-object v15, v11

    const/4 v11, 0x0

    move/from16 v16, v12

    const/4 v12, 0x0

    move/from16 v19, v13

    const/4 v13, 0x0

    move/from16 v20, v14

    const/4 v14, 0x0

    move-object/from16 v21, v15

    const/4 v15, 0x0

    move/from16 v27, v16

    const/16 v16, 0x0

    move/from16 v28, v19

    const/16 v19, 0x0

    move/from16 v29, v20

    const/16 v20, 0x0

    move-object/from16 v30, v21

    const/16 v21, 0x0

    .line 622
    invoke-virtual/range {v1 .. v26}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    add-int/lit8 v2, v29, 0x1

    move/from16 v3, v27

    move/from16 v5, v28

    move-object/from16 v4, v30

    goto/16 :goto_20

    .line 645
    :cond_ae
    iget-object v0, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method public removeUnusedPackagesLPw(Lcom/android/server/pm/UserManagerService;I)V
    .registers 12

    .line 998
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p1

    .line 999
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_83

    .line 1001
    iget-object v3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1002
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-nez v4, :cond_29

    goto :goto_80

    .line 1005
    :cond_29
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1007
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-nez v5, :cond_80

    .line 1008
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 1009
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_80

    .line 1015
    :cond_56
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageManagerService;->shouldKeepUninstalledPackageLPr(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    goto :goto_71

    :cond_5f
    move v7, v1

    .line 1021
    :goto_60
    array-length v8, p1

    if-ge v7, v8, :cond_71

    .line 1022
    aget v8, p1, v7

    if-eq v8, p2, :cond_6e

    invoke-virtual {v3, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v8

    if-eqz v8, :cond_6e

    goto :goto_72

    :cond_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    :cond_71
    :goto_71
    move v6, v5

    :goto_72
    if-nez v6, :cond_80

    .line 1037
    iget-object v3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v4, p2}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_80
    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_83
    return-void
.end method
