.class final Lcom/android/server/pm/DeletePackageHelper;
.super Ljava/lang/Object;
.source "DeletePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/DeletePackageHelper$TempUserState;
    }
.end annotation


# static fields
.field private static final DEBUG_CLEAN_APKS:Z = false

.field private static final DEBUG_SD_INSTALL:Z = false


# instance fields
.field private final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 4
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 105
    new-instance v0, Lcom/android/server/pm/AppDataHelper;

    invoke-direct {v0, p1}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 106
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 107
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 108
    new-instance v1, Lcom/android/server/pm/RemovePackageHelper;

    invoke-direct {v1, p1, v0}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;)V

    iput-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 109
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/AppDataHelper;)V
    .registers 5
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "removePackageHelper"    # Lcom/android/server/pm/RemovePackageHelper;
    .param p3, "appDataHelper"    # Lcom/android/server/pm/AppDataHelper;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 97
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 98
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 99
    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 100
    iput-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 101
    return-void
.end method

.method private clearPackageStateForUserLIF(Lcom/android/server/pm/PackageSetting;ILcom/android/server/pm/PackageRemovedInfo;I)V
    .registers 21
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I
    .param p3, "outInfo"    # Lcom/android/server/pm/PackageRemovedInfo;
    .param p4, "flags"    # I

    .line 527
    move-object/from16 v1, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 528
    :try_start_b
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 529
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v3, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_ec

    move-object/from16 v10, p1

    :try_start_1f
    invoke-virtual {v3, v10}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    move-object v11, v3

    .line 530
    .local v11, "sus":Lcom/android/server/pm/SharedUserSetting;
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_f1

    .line 532
    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 535
    if-eqz v11, :cond_31

    invoke-virtual {v11}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v2

    goto :goto_35

    :cond_31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_35
    move-object v6, v2

    .line 536
    .local v6, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    new-instance v2, Lcom/android/server/pm/PreferredActivityHelper;

    iget-object v3, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/pm/PreferredActivityHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object v12, v2

    .line 537
    .local v12, "preferredActivityHelper":Lcom/android/server/pm/PreferredActivityHelper;
    const/4 v2, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v8, v2, :cond_4a

    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    goto :goto_4e

    .line 538
    :cond_4a
    new-array v2, v14, [I

    aput v8, v2, v13

    :goto_4e
    move-object v15, v2

    .line 539
    .local v15, "userIds":[I
    array-length v2, v15

    move v3, v13

    :goto_51
    if-ge v3, v2, :cond_a8

    aget v4, v15, v3

    .line 540
    .local v4, "nextUserId":I
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v5, :cond_7f

    .line 541
    const-string v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updating package:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " install state for user:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_7f
    and-int/lit8 v5, p4, 0x1

    if-nez v5, :cond_89

    .line 545
    iget-object v5, v1, Lcom/android/server/pm/DeletePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v7, 0x7

    invoke-virtual {v5, v0, v4, v7}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 548
    :cond_89
    iget-object v5, v1, Lcom/android/server/pm/DeletePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v7

    invoke-virtual {v5, v4, v7}, Lcom/android/server/pm/AppDataHelper;->clearKeystoreData(II)V

    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5, v4}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(Ljava/lang/String;I)V

    .line 551
    iget-object v5, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearPackageForUser(Ljava/lang/String;I)V

    .line 539
    .end local v4    # "nextUserId":I
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    goto :goto_51

    .line 553
    :cond_a8
    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    move-object v5, v0

    move/from16 v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V

    .line 556
    if-eqz v9, :cond_eb

    .line 557
    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_c0

    .line 558
    iput-boolean v14, v9, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    .line 560
    :cond_c0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 561
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v2, v9, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 562
    if-eqz v0, :cond_d8

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d8

    move v13, v14

    goto :goto_d9

    :cond_d8
    const/4 v13, 0x0

    :goto_d9
    iput-boolean v13, v9, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    iput v2, v9, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedAppId:I

    .line 564
    iput-object v15, v9, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 565
    iput-object v15, v9, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 566
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result v2

    iput-boolean v2, v9, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 568
    :cond_eb
    return-void

    .line 530
    .end local v0    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v6    # "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v11    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v12    # "preferredActivityHelper":Lcom/android/server/pm/PreferredActivityHelper;
    .end local v15    # "userIds":[I
    :catchall_ec
    move-exception v0

    move-object/from16 v10, p1

    :goto_ef
    :try_start_ef
    monitor-exit v2
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_f1

    throw v0

    :catchall_f1
    move-exception v0

    goto :goto_ef
.end method

.method private deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;ZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V
    .registers 15
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "deleteCodeAndResources"    # Z
    .param p3, "flags"    # I
    .param p4, "allUserHandles"    # [I
    .param p5, "outInfo"    # Lcom/android/server/pm/PackageRemovedInfo;
    .param p6, "writeSettings"    # Z

    .line 573
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 574
    if-eqz p5, :cond_25

    .line 575
    :try_start_7
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    iput v1, p5, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 576
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 577
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 578
    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    .line 576
    invoke-virtual {v1, v2, p1, p4, v3}, Lcom/android/server/pm/AppsFilterImpl;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p5, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 580
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_4e

    .line 583
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p3

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/RemovePackageHelper;->removePackageDataLIF(Lcom/android/server/pm/PackageSetting;[ILcom/android/server/pm/PackageRemovedInfo;IZ)V

    .line 587
    if-eqz p2, :cond_4d

    if-eqz p5, :cond_4d

    .line 588
    new-instance v0, Lcom/android/server/pm/FileInstallArgs;

    .line 589
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    .line 589
    invoke-static {v2, v3}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/FileInstallArgs;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, p5, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/InstallArgs;

    .line 593
    :cond_4d
    return-void

    .line 580
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private deleteInstalledSystemPackage(Lcom/android/server/pm/DeletePackageAction;[IZ)V
    .registers 20
    .param p1, "action"    # Lcom/android/server/pm/DeletePackageAction;
    .param p2, "allUserHandles"    # [I
    .param p3, "writeSettings"    # Z

    .line 628
    move-object/from16 v0, p1

    move-object/from16 v8, p2

    iget v1, v0, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    .line 629
    .local v1, "flags":I
    iget-object v9, v0, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 630
    .local v9, "deletedPs":Lcom/android/server/pm/PackageSetting;
    iget-object v10, v0, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 631
    .local v10, "outInfo":Lcom/android/server/pm/PackageRemovedInfo;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v10, :cond_14

    iget-object v4, v10, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    if-eqz v4, :cond_14

    move v4, v3

    goto :goto_15

    :cond_14
    move v4, v2

    :goto_15
    move v11, v4

    .line 632
    .local v11, "applyUserRestrictions":Z
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v12

    .line 637
    .local v12, "deletedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v13, v0, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 638
    .local v13, "disabledPs":Lcom/android/server/pm/PackageSetting;
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    const-string v5, "PackageManager"

    if-eqz v4, :cond_46

    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteSystemPackageLI: newPs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " disabledPs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_46
    const-string v4, "Deleting system pkg from data partition"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v4, :cond_84

    .line 645
    if-eqz v11, :cond_84

    .line 646
    const-string v4, "Remembering install states:"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    array-length v4, v8

    :goto_57
    if-ge v2, v4, :cond_84

    aget v6, v8, v2

    .line 648
    .local v6, "userId":I
    iget-object v7, v10, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    invoke-static {v7, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    .line 649
    .local v7, "finstalled":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "   u="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " inst="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v6    # "userId":I
    .end local v7    # "finstalled":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 654
    :cond_84
    if-eqz v10, :cond_88

    .line 656
    iput-boolean v3, v10, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 659
    :cond_88
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v4

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-ltz v2, :cond_a2

    .line 660
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    if-eq v2, v4, :cond_9f

    goto :goto_a2

    .line 665
    :cond_9f
    or-int/2addr v1, v3

    move v14, v1

    goto :goto_a5

    .line 662
    :cond_a2
    :goto_a2
    and-int/lit8 v1, v1, -0x2

    move v14, v1

    .line 668
    .end local v1    # "flags":I
    .local v14, "flags":I
    :goto_a5
    const/4 v3, 0x1

    move-object/from16 v1, p0

    move-object v2, v9

    move v4, v14

    move-object/from16 v5, p2

    move-object v6, v10

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;ZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V

    .line 669
    return-void
.end method

.method private getBlockUninstallForUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)[I
    .registers 9
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userIds"    # [I

    .line 886
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 887
    .local v0, "result":[I
    array-length v1, p3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_15

    aget v3, p3, v2

    .line 888
    .local v3, "userId":I
    invoke-interface {p1, p2, v3}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 889
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 887
    .end local v3    # "userId":I
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 892
    :cond_15
    return-object v0
.end method

.method private isCallerAllowedToSilentlyUninstall(Lcom/android/server/pm/Computer;ILjava/lang/String;)Z
    .registers 9
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "callingUid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 842
    const/4 v0, 0x1

    const/16 v1, 0x7d0

    if-eq p2, v1, :cond_66

    if-eqz p2, :cond_66

    .line 843
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_10

    goto :goto_66

    .line 846
    :cond_10
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 848
    .local v1, "callingUserId":I
    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne p2, v2, :cond_21

    .line 850
    return v0

    .line 854
    :cond_21
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 855
    invoke-interface {p1, v2, v3, v4, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne p2, v2, :cond_32

    .line 856
    return v0

    .line 860
    :cond_32
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 861
    invoke-interface {p1, v2, v3, v4, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne p2, v2, :cond_43

    .line 862
    return v0

    .line 866
    :cond_43
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v4, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne p2, v2, :cond_54

    .line 868
    return v0

    .line 876
    :cond_54
    const-string v2, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    invoke-interface {p1, v2, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5d

    .line 878
    return v0

    .line 880
    :cond_5d
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageManagerServiceStub;->isCallerAllowedToSilentlyUninstall(I)Z

    move-result v0

    return v0

    .line 844
    .end local v1    # "callingUserId":I
    :cond_66
    :goto_66
    return v0
.end method

.method private isOrphaned(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .registers 5
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 836
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 837
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method static synthetic lambda$deletePackageVersionedInternal$0(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;

    .line 694
    :try_start_0
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to delete protected package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 698
    goto :goto_1f

    .line 697
    :catch_1e
    move-exception v0

    .line 699
    :goto_1f
    return-void
.end method

.method static synthetic lambda$deletePackageVersionedInternal$1(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;

    .line 725
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 727
    const-string v1, "android.content.pm.extra.CALLBACK"

    invoke-interface {p1}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 728
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 730
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_20

    .line 729
    :catch_1f
    move-exception v0

    .line 731
    :goto_20
    return-void
.end method

.method static synthetic lambda$deletePackageVersionedInternal$2(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 4
    .param p0, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 745
    const/4 v0, -0x3

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p0, p1, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 748
    goto :goto_7

    .line 747
    :catch_6
    move-exception v0

    .line 749
    :goto_7
    return-void
.end method

.method static synthetic lambda$deletePackageVersionedInternal$3(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 4
    .param p0, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 756
    const/4 v0, -0x4

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p0, p1, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 759
    goto :goto_7

    .line 758
    :catch_6
    move-exception v0

    .line 760
    :goto_7
    return-void
.end method

.method private markPackageUninstalledForUserLPw(Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;)V
    .registers 30
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 597
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    goto :goto_17

    .line 599
    :cond_d
    const/4 v2, 0x1

    new-array v2, v2, [I

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    aput v3, v2, v1

    goto :goto_1d

    .line 598
    :cond_17
    :goto_17
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    .line 599
    :goto_1d
    nop

    .line 600
    .local v2, "userIds":[I
    array-length v3, v2

    :goto_1f
    if-ge v1, v3, :cond_73

    aget v5, v2, v1

    .line 601
    .local v5, "nextUserId":I
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v4, :cond_4d

    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Marking package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " uninstalled for user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "PackageManager"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_4d
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v4, p1

    move/from16 v26, v5

    .end local v5    # "nextUserId":I
    .local v26, "nextUserId":I
    invoke-virtual/range {v4 .. v25}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;J)V

    .line 600
    .end local v26    # "nextUserId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 623
    :cond_73
    iget-object v1, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 624
    return-void
.end method

.method public static mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)Lcom/android/server/pm/DeletePackageAction;
    .registers 16
    .param p0, "outInfo"    # Lcom/android/server/pm/PackageRemovedInfo;
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "disabledPs"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 406
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 407
    return-object v0

    .line 409
    :cond_4
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 410
    and-int/lit8 v1, p3, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    move v1, v3

    .line 411
    .local v1, "deleteSystem":Z
    :goto_13
    if-eqz p4, :cond_1f

    .line 412
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1d

    goto :goto_1f

    :cond_1d
    move v2, v3

    goto :goto_20

    :cond_1f
    :goto_1f
    nop

    .line 413
    .local v2, "deleteAllUsers":Z
    :goto_20
    if-eqz v1, :cond_24

    if-eqz v2, :cond_47

    :cond_24
    if-nez p2, :cond_47

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to delete unknown system package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 415
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 414
    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-object v0

    .line 422
    .end local v1    # "deleteSystem":Z
    .end local v2    # "deleteAllUsers":Z
    :cond_47
    new-instance v0, Lcom/android/server/pm/DeletePackageAction;

    move-object v5, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p0

    move v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/DeletePackageAction;-><init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageRemovedInfo;ILandroid/os/UserHandle;)V

    return-object v0
.end method

.method private notifyPackageChangeObserversOnDelete(Ljava/lang/String;J)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # J

    .line 896
    new-instance v0, Landroid/content/pm/PackageChangeEvent;

    invoke-direct {v0}, Landroid/content/pm/PackageChangeEvent;-><init>()V

    .line 897
    .local v0, "pkgChangeEvent":Landroid/content/pm/PackageChangeEvent;
    iput-object p1, v0, Landroid/content/pm/PackageChangeEvent;->packageName:Ljava/lang/String;

    .line 898
    iput-wide p2, v0, Landroid/content/pm/PackageChangeEvent;->version:J

    .line 899
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/content/pm/PackageChangeEvent;->lastUpdateTimeMillis:J

    .line 900
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/pm/PackageChangeEvent;->newInstalled:Z

    .line 901
    iput-boolean v1, v0, Landroid/content/pm/PackageChangeEvent;->dataRemoved:Z

    .line 902
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/PackageChangeEvent;->isDeleted:Z

    .line 904
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->notifyPackageChangeObservers(Landroid/content/pm/PackageChangeEvent;)V

    .line 905
    return-void
.end method


# virtual methods
.method public deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .registers 15
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I

    .line 976
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 981
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v8

    .line 983
    .local v8, "versionCode":J
    const/4 v1, 0x0

    .line 984
    .local v1, "installedForUsersCount":I
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    .line 986
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 987
    invoke-interface {v0, v7, v8, v9}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, "internalPkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 989
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v5, 0x1

    if-eqz v4, :cond_40

    .line 990
    iget-object v6, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v6

    .line 992
    .local v6, "installedUsers":[I
    array-length v10, v6
    :try_end_3e
    .catchall {:try_start_1e .. :try_end_3e} :catchall_58

    move v1, v10

    goto :goto_41

    .line 989
    .end local v6    # "installedUsers":[I
    :cond_40
    move v10, v1

    .line 994
    .end local v0    # "internalPkgName":Ljava/lang/String;
    .end local v1    # "installedForUsersCount":I
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v10, "installedForUsersCount":I
    :goto_41
    :try_start_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_55

    .line 996
    if-le v10, v5, :cond_4e

    .line 997
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V

    goto :goto_54

    .line 1000
    :cond_4e
    const/4 v0, -0x1

    :try_start_4f
    invoke-interface {p2, v7, v0, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_52} :catch_53

    .line 1003
    goto :goto_54

    .line 1002
    :catch_53
    move-exception v0

    .line 1005
    :goto_54
    return-void

    .line 994
    :catchall_55
    move-exception v0

    move v1, v10

    goto :goto_59

    .end local v10    # "installedForUsersCount":I
    .restart local v1    # "installedForUsersCount":I
    :catchall_58
    move-exception v0

    :goto_59
    :try_start_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method public deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "deleteCodeAndResources"    # Z
    .param p4, "allUserHandles"    # [I
    .param p5, "flags"    # I
    .param p6, "outInfo"    # Lcom/android/server/pm/PackageRemovedInfo;
    .param p7, "writeSettings"    # Z

    .line 377
    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    iget-object v0, v7, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 378
    :try_start_9
    iget-object v0, v7, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 379
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v2, v7, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_76

    .line 380
    .local v2, "disabledPs":Lcom/android/server/pm/PackageSetting;
    move/from16 v10, p5

    move-object/from16 v11, p6

    :try_start_1d
    invoke-static {v11, v0, v2, v10, v9}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)Lcom/android/server/pm/DeletePackageAction;

    move-result-object v3

    move-object v12, v3

    .line 381
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .local v12, "action":Lcom/android/server/pm/DeletePackageAction;
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_7d

    .line 382
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v0, :cond_49

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackageLI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_49
    const/4 v13, 0x0

    if-nez v12, :cond_58

    .line 384
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v0, :cond_57

    const-string v0, "PackageManager"

    const-string v1, "deletePackageLI: action was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_57
    return v13

    .line 389
    :cond_58
    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    :try_start_61
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZ)V
    :try_end_64
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_61 .. :try_end_64} :catch_67

    .line 394
    nop

    .line 395
    const/4 v0, 0x1

    return v0

    .line 391
    :catch_67
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 392
    .local v0, "e":Lcom/android/server/pm/SystemDeleteException;
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v1, :cond_75

    const-string v1, "PackageManager"

    const-string v2, "deletePackageLI: system deletion failure"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    :cond_75
    return v13

    .line 381
    .end local v0    # "e":Lcom/android/server/pm/SystemDeleteException;
    .end local v12    # "action":Lcom/android/server/pm/DeletePackageAction;
    :catchall_76
    move-exception v0

    move/from16 v10, p5

    move-object/from16 v11, p6

    :goto_7b
    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7d

    throw v0

    :catchall_7d
    move-exception v0

    goto :goto_7b
.end method

.method public deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V
    .registers 31
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .param p4, "deleteFlags"    # I
    .param p5, "allowSilentUninstall"    # Z

    .line 674
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move/from16 v13, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 675
    .local v12, "callingUid":I
    iget-object v0, v14, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v0, v14, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    .line 678
    .local v11, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v11, v12, v13}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v16

    .line 679
    .local v16, "canViewInstantApps":Z
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const-wide v7, 0x7fffffffffffffffL

    const-string/jumbo v9, "versionCode must be >= -1"

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 686
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v7

    .line 689
    .local v7, "versionCode":J
    iget-object v0, v14, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, v13, v10}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, v14, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 690
    invoke-static {v0, v10}, Lcom/miui/enterprise/ApplicationHelper;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 692
    iget-object v0, v14, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v10, v15}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 700
    return-void

    .line 704
    :cond_5e
    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_60
    iget-object v0, v14, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 705
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isBaseOfLockedTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 706
    const/4 v0, -0x7

    invoke-interface {v15, v10, v0, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 708
    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "127605586"

    aput-object v4, v2, v1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, ""

    const/4 v5, 0x2

    aput-object v4, v2, v5

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_8f} :catch_91

    .line 709
    return-void

    .line 713
    :cond_90
    goto :goto_95

    .line 711
    :catch_91
    move-exception v0

    .line 712
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 716
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_95
    nop

    .line 717
    invoke-interface {v11, v10, v7, v8}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "internalPackageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 720
    .local v9, "uid":I
    invoke-direct {v14, v11, v0}, Lcom/android/server/pm/DeletePackageHelper;->isOrphaned(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b9

    if-nez p5, :cond_b9

    .line 722
    invoke-direct {v14, v11, v9, v0}, Lcom/android/server/pm/DeletePackageHelper;->isCallerAllowedToSilentlyUninstall(Lcom/android/server/pm/Computer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 723
    iget-object v1, v14, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v10, v15}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 732
    return-void

    .line 734
    :cond_b9
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_bf

    move v2, v3

    goto :goto_c0

    :cond_bf
    move v2, v1

    :goto_c0
    move v6, v2

    .line 735
    .local v6, "deleteAllUsers":Z
    if-eqz v6, :cond_ca

    iget-object v1, v14, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    goto :goto_cf

    :cond_ca
    new-array v2, v3, [I

    aput v13, v2, v1

    move-object v1, v2

    :goto_cf
    move-object v5, v1

    .line 736
    .local v5, "users":[I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, v13, :cond_db

    if-eqz v6, :cond_f7

    array-length v1, v5

    if-le v1, v3, :cond_f7

    .line 737
    :cond_db
    iget-object v1, v14, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePackage for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_f7
    iget-object v1, v14, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "no_uninstall_apps"

    invoke-virtual {v1, v13, v2}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 743
    iget-object v1, v14, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v15, v10}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 750
    return-void

    .line 753
    :cond_10f
    if-nez v6, :cond_124

    invoke-interface {v11, v0, v13}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 754
    iget-object v1, v14, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, v15, v10}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;-><init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    return-void

    .line 765
    :cond_124
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v1

    move-object v2, v10

    move-object/from16 v3, p2

    move v4, v9

    move-object/from16 v17, v5

    .end local v5    # "users":[I
    .local v17, "users":[I
    move/from16 v5, p3

    move v15, v6

    .end local v6    # "deleteAllUsers":Z
    .local v15, "deleteAllUsers":Z
    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceStub;->protectAppFromDeleting(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;III)Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 767
    return-void

    .line 771
    :cond_13a
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v1, :cond_181

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackageAsUser: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deleteAllUsers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 774
    const-wide/16 v2, -0x1

    cmp-long v2, v7, v2

    if-nez v2, :cond_170

    .line 775
    const-string v2, "VERSION_CODE_HIGHEST"

    goto :goto_174

    :cond_170
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_181
    iget-object v1, v14, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda4;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v12

    move-object/from16 v18, v0

    move-object v0, v5

    .end local v0    # "internalPackageName":Ljava/lang/String;
    .local v18, "internalPackageName":Ljava/lang/String;
    move/from16 v5, v16

    move-object v14, v6

    move v6, v15

    move-wide/from16 v19, v7

    .end local v7    # "versionCode":J
    .local v19, "versionCode":J
    move/from16 v21, v9

    .end local v9    # "uid":I
    .local v21, "uid":I
    move/from16 v9, p3

    move-object/from16 v22, v10

    .end local v10    # "packageName":Ljava/lang/String;
    .local v22, "packageName":Ljava/lang/String;
    move/from16 v10, p4

    move-object/from16 v23, v11

    .end local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .local v23, "snapshot":Lcom/android/server/pm/Computer;
    move-object/from16 v11, v17

    move/from16 v24, v12

    .end local v12    # "callingUid":I
    .local v24, "callingUid":I
    move-object/from16 v12, p2

    move-object/from16 v13, v22

    invoke-direct/range {v1 .. v13}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;IZZJII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    return-void
.end method

.method public deletePackageX(Ljava/lang/String;JIIZ)I
    .registers 37
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "userId"    # I
    .param p5, "deleteFlags"    # I
    .param p6, "removedBySystem"    # Z

    .line 130
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v14, p5

    new-instance v0, Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageRemovedInfo;-><init>(Lcom/android/server/pm/PackageSender;)V

    move-object v15, v0

    .line 133
    .local v15, "info":Lcom/android/server/pm/PackageRemovedInfo;
    and-int/lit8 v0, v14, 0x2

    const/4 v8, -0x1

    if-eqz v0, :cond_19

    .line 134
    move v0, v8

    goto :goto_1a

    :cond_19
    move v0, v13

    :goto_1a
    move v7, v0

    .line 137
    .local v7, "removeUser":I
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceStub;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_47

    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 138
    invoke-virtual {v0, v10, v7}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 139
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not removing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": has active device admin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, -0x2

    return v0

    .line 156
    :cond_47
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 157
    :try_start_4c
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 158
    .local v0, "computer":Lcom/android/server/pm/Computer;
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v10}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move-object v6, v2

    .line 159
    .local v6, "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v10}, Lcom/android/server/pm/PackageManagerService;->getCompilerPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v2
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_5ae

    move-object/from16 v22, v2

    .line 160
    .local v22, "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    if-nez v6, :cond_83

    .line 161
    :try_start_65
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not removing non-existent package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    monitor-exit v1

    return v8

    .line 240
    .end local v0    # "computer":Lcom/android/server/pm/Computer;
    .end local v6    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    :catchall_7f
    move-exception v0

    :goto_80
    move v4, v7

    goto/16 :goto_5b0

    .line 165
    .restart local v0    # "computer":Lcom/android/server/pm/Computer;
    .restart local v6    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    :cond_83
    const-wide/16 v2, -0x1

    cmp-long v2, v11, v2

    if-eqz v2, :cond_c3

    .line 166
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    cmp-long v2, v2, v11

    if-eqz v2, :cond_c3

    .line 167
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not removing package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with versionCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 168
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    monitor-exit v1
    :try_end_c2
    .catchall {:try_start_65 .. :try_end_c2} :catchall_7f

    return v8

    .line 172
    :cond_c3
    :try_start_c3
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v2
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_5ae

    const/4 v4, 0x0

    if-eqz v2, :cond_12a

    and-int/lit8 v2, v14, 0x4

    if-nez v2, :cond_12a

    .line 174
    :try_start_ce
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, v13}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 175
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_f1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v16

    if-nez v16, :cond_ef

    iget-object v5, v9, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 176
    invoke-virtual {v5, v13}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    .line 175
    invoke-virtual {v5, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 176
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_ed

    goto :goto_f1

    :cond_ed
    const/4 v8, 0x2

    goto :goto_12b

    .line 175
    :cond_ef
    const/4 v8, 0x2

    goto :goto_12b

    .line 177
    :cond_f1
    :goto_f1
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not removing package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " as only admin user (or their profile) may downgrade system apps"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const v3, 0x534e4554

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "170646036"

    aput-object v8, v5, v4

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v5, v8

    const/4 v8, 0x2

    aput-object v10, v5, v8

    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 180
    const/4 v3, -0x3

    monitor-exit v1
    :try_end_129
    .catchall {:try_start_ce .. :try_end_129} :catchall_7f

    return v3

    .line 172
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_12a
    const/4 v8, 0x2

    .line 184
    :goto_12b
    :try_start_12b
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v10}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move-object/from16 v23, v2

    .line 187
    .local v23, "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v10}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v5, v2

    .line 189
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v2
    :try_end_146
    .catchall {:try_start_12b .. :try_end_146} :catchall_5ae

    move-object v3, v2

    .line 191
    .local v3, "allUsers":[I
    if-eqz v5, :cond_209

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    :try_start_14a
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_15e

    .line 194
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibVersion()J

    move-result-wide v8

    .line 194
    invoke-interface {v0, v4, v8, v9}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v4

    move-object v2, v4

    goto :goto_172

    .line 196
    :cond_15e
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_172

    .line 197
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v8

    int-to-long v8, v8

    .line 197
    invoke-interface {v0, v4, v8, v9}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v4

    move-object v2, v4

    .line 201
    :cond_172
    :goto_172
    if-eqz v2, :cond_200

    .line 202
    array-length v4, v3

    const/4 v8, 0x0

    :goto_176
    if-ge v8, v4, :cond_1fc

    aget v9, v3, v8

    .line 203
    .local v9, "currUserId":I
    move/from16 v27, v4

    const/4 v4, -0x1

    if-eq v7, v4, :cond_184

    if-eq v7, v9, :cond_184

    .line 204
    move-object/from16 v16, v0

    goto :goto_1f2

    .line 206
    :cond_184
    const-wide/32 v18, 0x402000

    const/16 v20, 0x3e8

    .line 207
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move/from16 v21, v9

    invoke-interface/range {v16 .. v21}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;

    move-result-object v16

    move-object/from16 v17, v16

    .line 209
    .local v17, "libClientPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v16

    if-nez v16, :cond_1ee

    .line 210
    const-string v4, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "computer":Lcom/android/server/pm/Computer;
    .local v16, "computer":Lcom/android/server/pm/Computer;
    const-string v0, "Not removing package "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " hosting lib "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " version "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " used by "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v11, v17

    .end local v17    # "libClientPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .local v11, "libClientPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " for user "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, -0x6

    monitor-exit v1
    :try_end_1ed
    .catchall {:try_start_14a .. :try_end_1ed} :catchall_204

    return v0

    .line 209
    .end local v11    # "libClientPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .restart local v0    # "computer":Lcom/android/server/pm/Computer;
    .restart local v17    # "libClientPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    :cond_1ee
    move-object/from16 v16, v0

    move-object/from16 v11, v17

    .line 202
    .end local v0    # "computer":Lcom/android/server/pm/Computer;
    .end local v9    # "currUserId":I
    .end local v17    # "libClientPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local v16    # "computer":Lcom/android/server/pm/Computer;
    :goto_1f2
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v11, p2

    move-object/from16 v0, v16

    move/from16 v4, v27

    goto/16 :goto_176

    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .restart local v0    # "computer":Lcom/android/server/pm/Computer;
    :cond_1fc
    move-object/from16 v16, v0

    const/4 v4, -0x1

    .end local v0    # "computer":Lcom/android/server/pm/Computer;
    .restart local v16    # "computer":Lcom/android/server/pm/Computer;
    goto :goto_20c

    .line 201
    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .restart local v0    # "computer":Lcom/android/server/pm/Computer;
    :cond_200
    move-object/from16 v16, v0

    const/4 v4, -0x1

    .end local v0    # "computer":Lcom/android/server/pm/Computer;
    .restart local v16    # "computer":Lcom/android/server/pm/Computer;
    goto :goto_20c

    .line 240
    .end local v2    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "allUsers":[I
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v6    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .end local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    :catchall_204
    move-exception v0

    move-object/from16 v9, p0

    goto/16 :goto_80

    .line 191
    .restart local v0    # "computer":Lcom/android/server/pm/Computer;
    .restart local v3    # "allUsers":[I
    .restart local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v6    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    :cond_209
    move-object/from16 v16, v0

    const/4 v4, -0x1

    .line 220
    .end local v0    # "computer":Lcom/android/server/pm/Computer;
    .restart local v16    # "computer":Lcom/android/server/pm/Computer;
    :goto_20c
    const/4 v0, 0x1

    :try_start_20d
    invoke-virtual {v6, v3, v0}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v2

    iput-object v2, v15, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 222
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v2
    :try_end_217
    .catchall {:try_start_20d .. :try_end_217} :catchall_5aa

    if-eqz v2, :cond_25c

    and-int/lit8 v2, v14, 0x4

    if-nez v2, :cond_25c

    .line 226
    const/4 v2, -0x1

    .line 227
    .local v2, "freezeUser":I
    :try_start_21e
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 228
    .local v8, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_224
    array-length v12, v3

    if-ge v11, v12, :cond_253

    .line 229
    aget v12, v3, v11

    invoke-virtual {v6, v12}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    .line 230
    .local v12, "userState":Lcom/android/server/pm/pkg/PackageUserState;
    aget v0, v3, v11

    new-instance v4, Lcom/android/server/pm/DeletePackageHelper$TempUserState;

    .line 231
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v9

    .line 232
    move/from16 v18, v2

    .end local v2    # "freezeUser":I
    .local v18, "freezeUser":I
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v3

    .end local v3    # "allUsers":[I
    .local v19, "allUsers":[I
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    move-object/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "userState":Lcom/android/server/pm/pkg/PackageUserState;
    .local v20, "userState":Lcom/android/server/pm/pkg/PackageUserState;
    invoke-direct {v4, v9, v2, v3, v12}, Lcom/android/server/pm/DeletePackageHelper$TempUserState;-><init>(ILjava/lang/String;ZLcom/android/server/pm/DeletePackageHelper$TempUserState-IA;)V

    .line 230
    invoke-virtual {v8, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_24a
    .catchall {:try_start_21e .. :try_end_24a} :catchall_204

    .line 228
    .end local v20    # "userState":Lcom/android/server/pm/pkg/PackageUserState;
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v18

    move-object/from16 v3, v19

    const/4 v0, 0x1

    const/4 v4, -0x1

    goto :goto_224

    .end local v18    # "freezeUser":I
    .end local v19    # "allUsers":[I
    .restart local v2    # "freezeUser":I
    .restart local v3    # "allUsers":[I
    :cond_253
    move/from16 v18, v2

    move-object/from16 v19, v3

    const/4 v12, 0x0

    .end local v2    # "freezeUser":I
    .end local v3    # "allUsers":[I
    .restart local v18    # "freezeUser":I
    .restart local v19    # "allUsers":[I
    move-object v11, v8

    move/from16 v9, v18

    .end local v11    # "i":I
    goto :goto_264

    .line 222
    .end local v8    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v18    # "freezeUser":I
    .end local v19    # "allUsers":[I
    .restart local v3    # "allUsers":[I
    :cond_25c
    move-object/from16 v19, v3

    const/4 v12, 0x0

    .line 235
    .end local v3    # "allUsers":[I
    .restart local v19    # "allUsers":[I
    move v2, v7

    .line 236
    .restart local v2    # "freezeUser":I
    const/4 v0, 0x0

    move-object v8, v0

    move v9, v2

    move-object v11, v8

    .line 239
    .end local v2    # "freezeUser":I
    .local v9, "freezeUser":I
    .local v11, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    :goto_264
    move-object/from16 v8, p0

    :try_start_266
    iget-object v0, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/Settings;->isInstallerPackage(Ljava/lang/String;)Z

    move-result v0

    move/from16 v16, v0

    .line 240
    .local v16, "isInstallerPackage":Z
    monitor-exit v1
    :try_end_271
    .catchall {:try_start_266 .. :try_end_271} :catchall_5a6

    .line 242
    iget-object v0, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 243
    :try_start_276
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z
    :try_end_278
    .catchall {:try_start_276 .. :try_end_278} :catchall_594

    if-eqz v0, :cond_2ad

    :try_start_27a
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackageX: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29c
    .catchall {:try_start_27a .. :try_end_29c} :catchall_29d

    goto :goto_2ad

    .line 264
    :catchall_29d
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move-object v5, v6

    move v4, v7

    move/from16 v25, v9

    move-object/from16 v21, v11

    move-object/from16 v3, v19

    move-object v9, v8

    goto/16 :goto_5a2

    .line 244
    :cond_2ad
    :goto_2ad
    :try_start_2ad
    iget-object v0, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "deletePackageX"

    invoke-virtual {v0, v10, v9, v14, v1}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0
    :try_end_2b5
    .catchall {:try_start_2ad .. :try_end_2b5} :catchall_594

    move-object/from16 v17, v0

    .line 246
    .local v17, "freezer":Lcom/android/server/pm/PackageFreezer;
    :try_start_2b7
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3
    :try_end_2bb
    .catchall {:try_start_2b7 .. :try_end_2bb} :catchall_579

    const/4 v0, 0x1

    const/high16 v1, -0x80000000

    or-int v18, v14, v1

    const/16 v20, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v21, v19

    const/4 v12, 0x1

    .end local v19    # "allUsers":[I
    .local v21, "allUsers":[I
    move-object/from16 v24, v4

    const/16 v25, -0x1

    move v4, v0

    move-object v12, v5

    const/4 v0, 0x2

    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v12, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move-object/from16 v5, v21

    move-object/from16 v28, v6

    .end local v6    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .local v28, "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    move/from16 v6, v18

    move/from16 v29, v7

    .end local v7    # "removeUser":I
    .local v29, "removeUser":I
    move-object v7, v15

    move/from16 v18, v25

    move/from16 v25, v9

    move-object v9, v8

    .end local v9    # "freezeUser":I
    .local v25, "freezeUser":I
    move/from16 v8, v20

    :try_start_2e0
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    move-result v1
    :try_end_2e4
    .catchall {:try_start_2e0 .. :try_end_2e4} :catchall_56c

    .line 248
    .local v1, "res":Z
    if-eqz v17, :cond_2f7

    :try_start_2e6
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_2e9
    .catchall {:try_start_2e6 .. :try_end_2e9} :catchall_2ea

    goto :goto_2f7

    .line 264
    .end local v1    # "res":Z
    .end local v17    # "freezer":Lcom/android/server/pm/PackageFreezer;
    :catchall_2ea
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move-object/from16 v5, v28

    move/from16 v4, v29

    move-object/from16 v21, v11

    goto/16 :goto_5a2

    .line 249
    .restart local v1    # "res":Z
    :cond_2f7
    :goto_2f7
    if-eqz v1, :cond_33e

    if-eqz v12, :cond_33e

    .line 251
    :try_start_2fb
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2
    :try_end_300
    .catchall {:try_start_2fb .. :try_end_300} :catchall_331

    .line 252
    :try_start_300
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_310

    const/4 v4, 0x1

    goto :goto_311

    :cond_310
    const/4 v4, 0x0

    :goto_311
    move v3, v4

    .line 253
    .local v3, "packageInstalledForSomeUsers":Z
    monitor-exit v2
    :try_end_313
    .catchall {:try_start_300 .. :try_end_313} :catchall_31f

    .line 254
    :try_start_313
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v4, v15, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I
    :try_end_319
    .catchall {:try_start_313 .. :try_end_319} :catchall_331

    move-object/from16 v5, v28

    .end local v28    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .local v5, "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    :try_start_31b
    invoke-virtual {v2, v12, v5, v4, v3}, Lcom/android/server/pm/InstantAppRegistry;->onPackageUninstalled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[IZ)V
    :try_end_31e
    .catchall {:try_start_31b .. :try_end_31e} :catchall_324

    goto :goto_340

    .line 253
    .end local v3    # "packageInstalledForSomeUsers":Z
    .end local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v28    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    :catchall_31f
    move-exception v0

    move-object/from16 v5, v28

    .end local v28    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    :goto_322
    :try_start_322
    monitor-exit v2
    :try_end_323
    .catchall {:try_start_322 .. :try_end_323} :catchall_32f

    .end local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v15    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v16    # "isInstallerPackage":Z
    .end local v21    # "allUsers":[I
    .end local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v25    # "freezeUser":I
    .end local v29    # "removeUser":I
    .end local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "versionCode":J
    .end local p4    # "userId":I
    .end local p5    # "deleteFlags":I
    .end local p6    # "removedBySystem":Z
    :try_start_323
    throw v0
    :try_end_324
    .catchall {:try_start_323 .. :try_end_324} :catchall_324

    .line 264
    .end local v1    # "res":Z
    .restart local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v15    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v16    # "isInstallerPackage":Z
    .restart local v21    # "allUsers":[I
    .restart local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .restart local v25    # "freezeUser":I
    .restart local v29    # "removeUser":I
    .restart local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "versionCode":J
    .restart local p4    # "userId":I
    .restart local p5    # "deleteFlags":I
    .restart local p6    # "removedBySystem":Z
    :catchall_324
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move/from16 v4, v29

    move-object/from16 v21, v11

    goto/16 :goto_5a2

    .line 253
    .restart local v1    # "res":Z
    :catchall_32f
    move-exception v0

    goto :goto_322

    .line 264
    .end local v1    # "res":Z
    .end local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v28    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    :catchall_331
    move-exception v0

    move-object/from16 v5, v28

    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move/from16 v4, v29

    move-object/from16 v21, v11

    .end local v28    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_5a2

    .line 249
    .end local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v1    # "res":Z
    .restart local v28    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    :cond_33e
    move-object/from16 v5, v28

    .line 257
    .end local v28    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    :goto_340
    :try_start_340
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2
    :try_end_345
    .catchall {:try_start_340 .. :try_end_345} :catchall_562

    .line 258
    if-eqz v1, :cond_35f

    .line 259
    :try_start_347
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v15, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    invoke-virtual {v3, v5, v4}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 260
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v10}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V
    :try_end_353
    .catchall {:try_start_347 .. :try_end_353} :catchall_354

    goto :goto_35f

    .line 262
    :catchall_354
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move/from16 v4, v29

    move-object/from16 v21, v11

    goto/16 :goto_55e

    :cond_35f
    :goto_35f
    :try_start_35f
    monitor-exit v2
    :try_end_360
    .catchall {:try_start_35f .. :try_end_360} :catchall_555

    .line 263
    :try_start_360
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    .line 264
    monitor-exit v24
    :try_end_364
    .catchall {:try_start_360 .. :try_end_364} :catchall_562

    .line 266
    if-eqz v1, :cond_38c

    .line 268
    if-eqz v22, :cond_37b

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/CompilerStats$PackageStats;->isDexoptStarted()Z

    move-result v2

    if-eqz v2, :cond_37b

    .line 269
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/CompilerStats$PackageStats;->isDexoptEnded()Z

    move-result v2

    if-nez v2, :cond_37b

    .line 270
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->forceStopFirstUseDexopt()V

    .line 273
    :cond_37b
    and-int/lit8 v2, v14, 0x8

    if-nez v2, :cond_381

    const/4 v4, 0x1

    goto :goto_382

    :cond_381
    const/4 v4, 0x0

    :goto_382
    move v2, v4

    .line 274
    .local v2, "killApp":Z
    move/from16 v3, p6

    invoke-virtual {v15, v2, v3}, Lcom/android/server/pm/PackageRemovedInfo;->sendPackageRemovedBroadcasts(ZZ)V

    .line 275
    invoke-virtual {v15}, Lcom/android/server/pm/PackageRemovedInfo;->sendSystemPackageUpdatedBroadcasts()V

    goto :goto_38e

    .line 266
    .end local v2    # "killApp":Z
    :cond_38c
    move/from16 v3, p6

    .line 280
    :goto_38e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 284
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 285
    :try_start_39a
    iget-object v4, v15, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/InstallArgs;
    :try_end_39c
    .catchall {:try_start_39a .. :try_end_39c} :catchall_548

    if-eqz v4, :cond_3b0

    .line 286
    :try_start_39e
    iget-object v4, v15, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/InstallArgs;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/pm/InstallArgs;->doPostDeleteLI(Z)Z
    :try_end_3a4
    .catchall {:try_start_39e .. :try_end_3a4} :catchall_3a5

    goto :goto_3b0

    .line 348
    :catchall_3a5
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move/from16 v4, v29

    move-object/from16 v21, v11

    goto/16 :goto_551

    .line 289
    :cond_3b0
    :goto_3b0
    const/4 v6, 0x0

    .line 291
    .local v6, "reEnableStub":Z
    if-eqz v11, :cond_479

    .line 292
    :try_start_3b3
    iget-object v7, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v7
    :try_end_3b8
    .catchall {:try_start_3b3 .. :try_end_3b8} :catchall_46e

    .line 293
    :try_start_3b8
    iget-object v8, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8, v10}, Lcom/android/server/pm/PackageManagerService;->getPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 294
    .local v8, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v8, :cond_436

    .line 295
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v17
    :try_end_3c4
    .catchall {:try_start_3b8 .. :try_end_3c4} :catchall_463

    .line 296
    .local v17, "aPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v17, :cond_3d8

    :try_start_3c6
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v20
    :try_end_3ca
    .catchall {:try_start_3c6 .. :try_end_3ca} :catchall_3cf

    if-eqz v20, :cond_3d8

    const/16 v20, 0x1

    goto :goto_3da

    .line 324
    .end local v8    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "aPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_3cf
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move-object/from16 v21, v11

    goto/16 :goto_46a

    .line 296
    .restart local v8    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "aPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_3d8
    const/16 v20, 0x0

    .line 297
    .local v20, "pkgEnabled":Z
    :goto_3da
    const/16 v24, 0x0

    move/from16 v4, v24

    .local v4, "i":I
    :goto_3de
    move-object/from16 v3, v21

    .end local v21    # "allUsers":[I
    .local v3, "allUsers":[I
    :try_start_3e0
    array-length v0, v3

    if-ge v4, v0, :cond_42b

    .line 298
    aget v0, v3, v4

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;
    :try_end_3eb
    .catchall {:try_start_3e0 .. :try_end_3eb} :catchall_430

    .line 299
    .local v0, "priorUserState":Lcom/android/server/pm/DeletePackageHelper$TempUserState;
    move-object/from16 v21, v11

    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .local v21, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    :try_start_3ed
    iget v11, v0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->enabledState:I
    :try_end_3ef
    .catchall {:try_start_3ed .. :try_end_3ef} :catchall_427

    .line 300
    .local v11, "enabledState":I
    move-object/from16 v26, v12

    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v26, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_start_3f1
    aget v12, v3, v4

    iget-object v14, v0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {v8, v11, v12, v14}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 303
    aget v12, v3, v4

    invoke-virtual {v5, v12}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    .line 304
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDefaultState()Ljava/lang/String;

    move-result-object v12

    .line 305
    .local v12, "defaultUserState":Ljava/lang/String;
    aget v14, v3, v4

    invoke-virtual {v8, v14}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v14

    .line 306
    invoke-virtual {v14, v12}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDefaultState(Ljava/lang/String;)V

    .line 308
    if-nez v6, :cond_419

    iget-boolean v14, v0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->installed:Z

    if-eqz v14, :cond_419

    if-nez v11, :cond_415

    if-nez v20, :cond_418

    :cond_415
    const/4 v14, 0x1

    if-ne v11, v14, :cond_419

    .line 312
    :cond_418
    const/4 v6, 0x1

    .line 297
    .end local v0    # "priorUserState":Lcom/android/server/pm/DeletePackageHelper$TempUserState;
    .end local v11    # "enabledState":I
    .end local v12    # "defaultUserState":Ljava/lang/String;
    :cond_419
    add-int/lit8 v4, v4, 0x1

    move/from16 v14, p5

    move-object/from16 v11, v21

    move-object/from16 v12, v26

    const/4 v0, 0x2

    move-object/from16 v21, v3

    move/from16 v3, p6

    goto :goto_3de

    .line 324
    .end local v4    # "i":I
    .end local v8    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "aPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v20    # "pkgEnabled":Z
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v12, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_427
    move-exception v0

    move-object/from16 v26, v12

    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_46a

    .line 297
    .end local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v4    # "i":I
    .restart local v8    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v11, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "aPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v20    # "pkgEnabled":Z
    :cond_42b
    move-object/from16 v21, v11

    move-object/from16 v26, v12

    .line 315
    .end local v4    # "i":I
    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "aPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v20    # "pkgEnabled":Z
    .restart local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_45a

    .line 324
    .end local v8    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_430
    move-exception v0

    move-object/from16 v21, v11

    move-object/from16 v26, v12

    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_46a

    .line 320
    .end local v3    # "allUsers":[I
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v8    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v21, "allUsers":[I
    :cond_436
    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move-object/from16 v21, v11

    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v3    # "allUsers":[I
    .local v21, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing PackageSetting after uninstalling the update for system app: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ". This should not happen."

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_45a
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 324
    .end local v8    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    monitor-exit v7

    goto :goto_47f

    .end local v3    # "allUsers":[I
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v21, "allUsers":[I
    :catchall_463
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move-object/from16 v21, v11

    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v3    # "allUsers":[I
    .local v21, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_46a
    monitor-exit v7
    :try_end_46b
    .catchall {:try_start_3f1 .. :try_end_46b} :catchall_46c

    .end local v1    # "res":Z
    .end local v3    # "allUsers":[I
    .end local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v16    # "isInstallerPackage":Z
    .end local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v25    # "freezeUser":I
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v29    # "removeUser":I
    .end local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "versionCode":J
    .end local p4    # "userId":I
    .end local p5    # "deleteFlags":I
    .end local p6    # "removedBySystem":Z
    :try_start_46b
    throw v0
    :try_end_46c
    .catchall {:try_start_46b .. :try_end_46c} :catchall_4f5

    .restart local v1    # "res":Z
    .restart local v3    # "allUsers":[I
    .restart local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v15    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v16    # "isInstallerPackage":Z
    .restart local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .restart local v25    # "freezeUser":I
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v29    # "removeUser":I
    .restart local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "versionCode":J
    .restart local p4    # "userId":I
    .restart local p5    # "deleteFlags":I
    .restart local p6    # "removedBySystem":Z
    :catchall_46c
    move-exception v0

    goto :goto_46a

    .line 348
    .end local v3    # "allUsers":[I
    .end local v6    # "reEnableStub":Z
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v21, "allUsers":[I
    :catchall_46e
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move-object/from16 v21, v11

    move/from16 v4, v29

    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v3    # "allUsers":[I
    .local v21, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto/16 :goto_551

    .line 291
    .end local v3    # "allUsers":[I
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v6    # "reEnableStub":Z
    .restart local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v21, "allUsers":[I
    :cond_479
    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move-object/from16 v21, v11

    .line 328
    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v3    # "allUsers":[I
    .local v21, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_47f
    if-nez v23, :cond_483

    const/4 v0, 0x0

    goto :goto_487

    :cond_483
    :try_start_483
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0
    :try_end_487
    .catchall {:try_start_483 .. :try_end_487} :catchall_544

    :goto_487
    move-object v4, v0

    .line 329
    .local v4, "stubPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v4, :cond_4f9

    :try_start_48a
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStub()Z

    move-result v0

    if-eqz v0, :cond_4f9

    .line 331
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v7
    :try_end_495
    .catchall {:try_start_48a .. :try_end_495} :catchall_4f5

    .line 332
    :try_start_495
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 333
    .local v0, "stubPs":Lcom/android/server/pm/PackageSetting;
    monitor-exit v7
    :try_end_4a2
    .catchall {:try_start_495 .. :try_end_4a2} :catchall_4f2

    .line 335
    if-eqz v0, :cond_4f9

    .line 336
    if-eqz v6, :cond_4d1

    .line 337
    :try_start_4a6
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v7, :cond_4c6

    .line 338
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enabling system stub after removal; pkg: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 339
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 338
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_4c6
    new-instance v7, Lcom/android/server/pm/InstallPackageHelper;

    iget-object v8, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v7, v8}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v7, v4, v0}, Lcom/android/server/pm/InstallPackageHelper;->enableCompressedPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_4f9

    .line 342
    :cond_4d1
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v7, :cond_4f9

    .line 343
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "System stub disabled for all users, leaving uncompressed after removal; pkg: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 344
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 343
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f1
    .catchall {:try_start_4a6 .. :try_end_4f1} :catchall_4f5

    goto :goto_4f9

    .line 333
    .end local v0    # "stubPs":Lcom/android/server/pm/PackageSetting;
    :catchall_4f2
    move-exception v0

    :try_start_4f3
    monitor-exit v7
    :try_end_4f4
    .catchall {:try_start_4f3 .. :try_end_4f4} :catchall_4f2

    .end local v1    # "res":Z
    .end local v3    # "allUsers":[I
    .end local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v16    # "isInstallerPackage":Z
    .end local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v25    # "freezeUser":I
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v29    # "removeUser":I
    .end local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "versionCode":J
    .end local p4    # "userId":I
    .end local p5    # "deleteFlags":I
    .end local p6    # "removedBySystem":Z
    :try_start_4f4
    throw v0
    :try_end_4f5
    .catchall {:try_start_4f4 .. :try_end_4f5} :catchall_4f5

    .line 348
    .end local v4    # "stubPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v6    # "reEnableStub":Z
    .restart local v1    # "res":Z
    .restart local v3    # "allUsers":[I
    .restart local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v15    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v16    # "isInstallerPackage":Z
    .restart local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .restart local v25    # "freezeUser":I
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v29    # "removeUser":I
    .restart local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "versionCode":J
    .restart local p4    # "userId":I
    .restart local p5    # "deleteFlags":I
    .restart local p6    # "removedBySystem":Z
    :catchall_4f5
    move-exception v0

    move/from16 v4, v29

    goto :goto_551

    :cond_4f9
    :goto_4f9
    :try_start_4f9
    monitor-exit v2
    :try_end_4fa
    .catchall {:try_start_4f9 .. :try_end_4fa} :catchall_544

    .line 350
    if-eqz v1, :cond_510

    if-eqz v16, :cond_510

    .line 351
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 352
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v0

    .line 353
    .local v0, "packageInstallerService":Lcom/android/server/pm/PackageInstallerService;
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    move/from16 v4, v29

    .end local v29    # "removeUser":I
    .local v4, "removeUser":I
    invoke-virtual {v0, v2, v4}, Lcom/android/server/pm/PackageInstallerService;->onInstallerPackageDeleted(II)V

    goto :goto_512

    .line 350
    .end local v0    # "packageInstallerService":Lcom/android/server/pm/PackageInstallerService;
    .end local v4    # "removeUser":I
    .restart local v29    # "removeUser":I
    :cond_510
    move/from16 v4, v29

    .line 356
    .end local v29    # "removeUser":I
    .restart local v4    # "removeUser":I
    :goto_512
    if-eqz v1, :cond_53c

    if-eqz v10, :cond_53c

    .line 357
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    .line 358
    .local v0, "ux_perf":Landroid/util/BoostFramework;
    nop

    .line 359
    iget v2, v0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const/16 v6, 0x21

    if-ge v2, v6, :cond_52d

    iget v2, v0, Landroid/util/BoostFramework;->board_api_lvl:I

    if-ge v2, v6, :cond_52d

    .line 361
    const/4 v2, 0x7

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6, v10, v13}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    const/4 v11, 0x1

    goto :goto_53d

    .line 359
    :cond_52d
    const/4 v6, 0x0

    .line 363
    const/16 v2, 0x10a4

    const/4 v7, 0x2

    new-array v8, v7, [I

    aput v13, v8, v6

    const/4 v11, 0x1

    aput v6, v8, v11

    invoke-virtual {v0, v2, v10, v7, v8}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;I[I)V

    goto :goto_53d

    .line 356
    .end local v0    # "ux_perf":Landroid/util/BoostFramework;
    :cond_53c
    const/4 v11, 0x1

    .line 367
    :goto_53d
    if-eqz v1, :cond_541

    move v8, v11

    goto :goto_543

    :cond_541
    move/from16 v8, v18

    :goto_543
    return v8

    .line 348
    .end local v4    # "removeUser":I
    .restart local v29    # "removeUser":I
    :catchall_544
    move-exception v0

    move/from16 v4, v29

    .end local v29    # "removeUser":I
    .restart local v4    # "removeUser":I
    goto :goto_551

    .end local v3    # "allUsers":[I
    .end local v4    # "removeUser":I
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v21, "allUsers":[I
    .restart local v29    # "removeUser":I
    :catchall_548
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move/from16 v4, v29

    move-object/from16 v21, v11

    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v29    # "removeUser":I
    .restart local v3    # "allUsers":[I
    .restart local v4    # "removeUser":I
    .local v21, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_551
    :try_start_551
    monitor-exit v2
    :try_end_552
    .catchall {:try_start_551 .. :try_end_552} :catchall_553

    throw v0

    :catchall_553
    move-exception v0

    goto :goto_551

    .line 262
    .end local v3    # "allUsers":[I
    .end local v4    # "removeUser":I
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v21, "allUsers":[I
    .restart local v29    # "removeUser":I
    :catchall_555
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move/from16 v4, v29

    move-object/from16 v21, v11

    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v29    # "removeUser":I
    .restart local v3    # "allUsers":[I
    .restart local v4    # "removeUser":I
    .local v21, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_55e
    :try_start_55e
    monitor-exit v2
    :try_end_55f
    .catchall {:try_start_55e .. :try_end_55f} :catchall_560

    .end local v3    # "allUsers":[I
    .end local v4    # "removeUser":I
    .end local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v16    # "isInstallerPackage":Z
    .end local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v25    # "freezeUser":I
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "versionCode":J
    .end local p4    # "userId":I
    .end local p5    # "deleteFlags":I
    .end local p6    # "removedBySystem":Z
    :try_start_55f
    throw v0
    :try_end_560
    .catchall {:try_start_55f .. :try_end_560} :catchall_5a4

    .restart local v3    # "allUsers":[I
    .restart local v4    # "removeUser":I
    .restart local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v15    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v16    # "isInstallerPackage":Z
    .restart local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .restart local v25    # "freezeUser":I
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "versionCode":J
    .restart local p4    # "userId":I
    .restart local p5    # "deleteFlags":I
    .restart local p6    # "removedBySystem":Z
    :catchall_560
    move-exception v0

    goto :goto_55e

    .line 264
    .end local v1    # "res":Z
    .end local v3    # "allUsers":[I
    .end local v4    # "removeUser":I
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v21, "allUsers":[I
    .restart local v29    # "removeUser":I
    :catchall_562
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move/from16 v4, v29

    move-object/from16 v21, v11

    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v29    # "removeUser":I
    .restart local v3    # "allUsers":[I
    .restart local v4    # "removeUser":I
    .local v21, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_5a2

    .line 244
    .end local v3    # "allUsers":[I
    .end local v4    # "removeUser":I
    .end local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v17, "freezer":Lcom/android/server/pm/PackageFreezer;
    .local v21, "allUsers":[I
    .restart local v28    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v29    # "removeUser":I
    :catchall_56c
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v3, v21

    move-object/from16 v5, v28

    move/from16 v4, v29

    move-object/from16 v21, v11

    move-object v1, v0

    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v28    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v29    # "removeUser":I
    .restart local v3    # "allUsers":[I
    .restart local v4    # "removeUser":I
    .restart local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .local v21, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_588

    .end local v3    # "allUsers":[I
    .end local v4    # "removeUser":I
    .end local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v25    # "freezeUser":I
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v6, "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "removeUser":I
    .restart local v9    # "freezeUser":I
    .restart local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v19    # "allUsers":[I
    :catchall_579
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move-object v5, v6

    move v4, v7

    move/from16 v25, v9

    move-object/from16 v21, v11

    move-object/from16 v3, v19

    move-object v9, v8

    move-object v1, v0

    .end local v6    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "removeUser":I
    .end local v9    # "freezeUser":I
    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v19    # "allUsers":[I
    .restart local v3    # "allUsers":[I
    .restart local v4    # "removeUser":I
    .local v5, "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v25    # "freezeUser":I
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_588
    if-eqz v17, :cond_593

    :try_start_58a
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_58d
    .catchall {:try_start_58a .. :try_end_58d} :catchall_58e

    goto :goto_593

    :catchall_58e
    move-exception v0

    move-object v2, v0

    :try_start_590
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "allUsers":[I
    .end local v4    # "removeUser":I
    .end local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v16    # "isInstallerPackage":Z
    .end local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v25    # "freezeUser":I
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "versionCode":J
    .end local p4    # "userId":I
    .end local p5    # "deleteFlags":I
    .end local p6    # "removedBySystem":Z
    :cond_593
    :goto_593
    throw v1

    .line 264
    .end local v17    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v6    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "removeUser":I
    .restart local v9    # "freezeUser":I
    .restart local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v15    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v16    # "isInstallerPackage":Z
    .restart local v19    # "allUsers":[I
    .restart local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .restart local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "versionCode":J
    .restart local p4    # "userId":I
    .restart local p5    # "deleteFlags":I
    .restart local p6    # "removedBySystem":Z
    :catchall_594
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move-object v5, v6

    move v4, v7

    move/from16 v25, v9

    move-object/from16 v21, v11

    move-object/from16 v3, v19

    move-object v9, v8

    .end local v6    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "removeUser":I
    .end local v9    # "freezeUser":I
    .end local v11    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v19    # "allUsers":[I
    .restart local v3    # "allUsers":[I
    .restart local v4    # "removeUser":I
    .local v5, "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v25    # "freezeUser":I
    .restart local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_5a2
    monitor-exit v24
    :try_end_5a3
    .catchall {:try_start_590 .. :try_end_5a3} :catchall_5a4

    throw v0

    :catchall_5a4
    move-exception v0

    goto :goto_5a2

    .line 240
    .end local v3    # "allUsers":[I
    .end local v4    # "removeUser":I
    .end local v5    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "isInstallerPackage":Z
    .end local v21    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v22    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local v23    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v25    # "freezeUser":I
    .end local v26    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v7    # "removeUser":I
    :catchall_5a6
    move-exception v0

    move v4, v7

    move-object v9, v8

    goto :goto_5b0

    :catchall_5aa
    move-exception v0

    move-object/from16 v9, p0

    goto :goto_5af

    :catchall_5ae
    move-exception v0

    :goto_5af
    move v4, v7

    .end local v7    # "removeUser":I
    .restart local v4    # "removeUser":I
    :goto_5b0
    :try_start_5b0
    monitor-exit v1
    :try_end_5b1
    .catchall {:try_start_5b0 .. :try_end_5b1} :catchall_5b2

    throw v0

    :catchall_5b2
    move-exception v0

    goto :goto_5b0
.end method

.method public executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZ)V
    .registers 25
    .param p1, "action"    # Lcom/android/server/pm/DeletePackageAction;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deleteCodeAndResources"    # Z
    .param p4, "allUserHandles"    # [I
    .param p5, "writeSettings"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/SystemDeleteException;
        }
    .end annotation

    .line 429
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    iget-object v13, v9, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 430
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v14, v9, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 431
    .local v14, "outInfo":Lcom/android/server/pm/PackageRemovedInfo;
    iget-object v15, v9, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    .line 432
    .local v15, "user":Landroid/os/UserHandle;
    iget v7, v9, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    .line 433
    .local v7, "flags":I
    invoke-static {v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v16

    .line 436
    .local v16, "systemApp":Z
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v6, v0

    .line 437
    .local v6, "hadSuspendAppsPermission":Landroid/util/SparseBooleanArray;
    array-length v0, v11

    const/16 v17, 0x0

    move/from16 v1, v17

    :goto_21
    const/4 v5, 0x1

    if-ge v1, v0, :cond_39

    aget v2, v11, v1

    .line 438
    .local v2, "userId":I
    iget-object v3, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v4, "android.permission.SUSPEND_APPS"

    invoke-virtual {v3, v4, v10, v2}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_31

    goto :goto_33

    :cond_31
    move/from16 v5, v17

    :goto_33
    invoke-virtual {v6, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 437
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 442
    :cond_39
    const/4 v0, -0x1

    if-nez v15, :cond_3e

    move v1, v0

    goto :goto_42

    :cond_3e
    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    :goto_42
    move v4, v1

    .line 444
    .local v4, "userId":I
    if-eqz v16, :cond_49

    and-int/lit8 v1, v7, 0x4

    if-eqz v1, :cond_aa

    :cond_49
    if-eq v4, v0, :cond_aa

    .line 452
    iget-object v0, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 453
    :try_start_50
    invoke-direct {v8, v13, v15}, Lcom/android/server/pm/DeletePackageHelper;->markPackageUninstalledForUserLPw(Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;)V

    .line 454
    if-nez v16, :cond_8e

    .line 456
    iget-object v0, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 457
    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageManagerService;->shouldKeepUninstalledPackageLPr(Ljava/lang/String;)Z

    move-result v0

    .line 458
    .local v0, "keepUninstalledPackage":Z
    iget-object v2, v8, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 459
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    .line 458
    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->isAnyInstalled([I)Z

    move-result v2

    if-nez v2, :cond_81

    if-eqz v0, :cond_6a

    goto :goto_81

    .line 468
    :cond_6a
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v2, :cond_75

    const-string v2, "PackageManager"

    const-string v3, "Not installed by other users, full delete"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_75
    invoke-virtual {v13, v5, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 470
    iget-object v2, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v13}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 471
    const/4 v2, 0x0

    .local v2, "clearPackageStateAndReturn":Z
    goto :goto_8d

    .line 463
    .end local v2    # "clearPackageStateAndReturn":Z
    :cond_81
    :goto_81
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v2, :cond_8c

    const-string v2, "PackageManager"

    const-string v3, "Still installed by other users"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_8c
    const/4 v2, 0x1

    .line 473
    .end local v0    # "keepUninstalledPackage":Z
    .restart local v2    # "clearPackageStateAndReturn":Z
    :goto_8d
    goto :goto_9b

    .line 478
    .end local v2    # "clearPackageStateAndReturn":Z
    :cond_8e
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v0, :cond_99

    const-string v0, "PackageManager"

    const-string v2, "Deleting system app"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_99
    const/4 v0, 0x1

    move v2, v0

    .line 481
    .restart local v2    # "clearPackageStateAndReturn":Z
    :goto_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_50 .. :try_end_9c} :catchall_a7

    .line 482
    if-eqz v2, :cond_aa

    .line 483
    invoke-direct {v8, v13, v4, v14, v7}, Lcom/android/server/pm/DeletePackageHelper;->clearPackageStateForUserLIF(Lcom/android/server/pm/PackageSetting;ILcom/android/server/pm/PackageRemovedInfo;I)V

    .line 484
    iget-object v0, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(Landroid/os/UserHandle;)V

    .line 485
    return-void

    .line 481
    .end local v2    # "clearPackageStateAndReturn":Z
    :catchall_a7
    move-exception v0

    :try_start_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v0

    .line 490
    :cond_aa
    if-eqz v16, :cond_df

    .line 491
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v0, :cond_cc

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing system package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_cc
    invoke-direct {v8, v9, v11, v12}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledSystemPackage(Lcom/android/server/pm/DeletePackageAction;[IZ)V

    .line 495
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v0, v9, v11, v12}, Lcom/android/server/pm/InstallPackageHelper;->restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V

    move v9, v4

    move v0, v5

    move-object v11, v6

    move/from16 v18, v7

    goto :goto_112

    .line 498
    :cond_df
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v0, :cond_ff

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing non-system package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_ff
    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v3, p3

    move v9, v4

    .end local v4    # "userId":I
    .local v9, "userId":I
    move v4, v7

    move v0, v5

    move-object/from16 v5, p4

    move-object v11, v6

    .end local v6    # "hadSuspendAppsPermission":Landroid/util/SparseBooleanArray;
    .local v11, "hadSuspendAppsPermission":Landroid/util/SparseBooleanArray;
    move-object v6, v14

    move/from16 v18, v7

    .end local v7    # "flags":I
    .local v18, "flags":I
    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;ZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V

    .line 505
    :goto_112
    if-eqz v14, :cond_117

    iget-object v1, v14, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    goto :goto_118

    :cond_117
    const/4 v1, 0x0

    .line 506
    .local v1, "affectedUserIds":[I
    :goto_118
    if-nez v1, :cond_120

    .line 507
    iget-object v2, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v1

    .line 509
    :cond_120
    iget-object v2, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 510
    .local v2, "snapshot":Lcom/android/server/pm/Computer;
    array-length v3, v1

    move/from16 v4, v17

    :goto_129
    if-ge v4, v3, :cond_140

    aget v5, v1, v4

    .line 511
    .local v5, "affectedUserId":I
    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_13d

    .line 512
    iget-object v6, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v2, v10, v5}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 513
    iget-object v6, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v2, v5}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    .line 510
    .end local v5    # "affectedUserId":I
    :cond_13d
    add-int/lit8 v4, v4, 0x1

    goto :goto_129

    .line 518
    :cond_140
    if-eqz v14, :cond_155

    .line 519
    iget-object v3, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_151

    goto :goto_153

    :cond_151
    move/from16 v0, v17

    :goto_153
    iput-boolean v0, v14, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 521
    :cond_155
    return-void
.end method

.method synthetic lambda$deletePackageVersionedInternal$4$com-android-server-pm-DeletePackageHelper(Ljava/lang/String;IZZJII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 34
    .param p1, "internalPackageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "canViewInstantApps"    # Z
    .param p4, "deleteAllUsers"    # Z
    .param p5, "versionCode"    # J
    .param p7, "userId"    # I
    .param p8, "deleteFlags"    # I
    .param p9, "users"    # [I
    .param p10, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p11, "packageName"    # Ljava/lang/String;

    .line 780
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    iget-object v0, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v12

    .line 781
    .local v12, "innerSnapshot":Lcom/android/server/pm/Computer;
    nop

    .line 782
    invoke-interface {v12, v9}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 783
    .local v13, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v0, 0x1

    .line 784
    .local v0, "doDeletePackage":Z
    const/4 v1, 0x0

    const/4 v14, 0x1

    if-eqz v13, :cond_30

    .line 785
    nop

    .line 786
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v13, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 787
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v2

    .line 788
    .local v2, "targetIsInstantApp":Z
    if-eqz v2, :cond_2c

    if-eqz p3, :cond_2a

    goto :goto_2c

    :cond_2a
    move v3, v1

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v3, v14

    :goto_2d
    move v0, v3

    move v15, v0

    goto :goto_31

    .line 784
    .end local v2    # "targetIsInstantApp":Z
    :cond_30
    move v15, v0

    .line 791
    .end local v0    # "doDeletePackage":Z
    .local v15, "doDeletePackage":Z
    :goto_31
    const-string v7, "PackageManager"

    if-eqz v15, :cond_d2

    .line 792
    if-nez p4, :cond_4e

    .line 793
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p5

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v16, v7

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v0

    move v1, v0

    move-object/from16 v4, v16

    .local v0, "returnCode":I
    goto/16 :goto_d5

    .line 796
    .end local v0    # "returnCode":I
    :cond_4e
    move-object/from16 v16, v7

    invoke-direct {v8, v12, v9, v10}, Lcom/android/server/pm/DeletePackageHelper;->getBlockUninstallForUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)[I

    move-result-object v0

    .line 799
    .local v0, "blockUninstallUserIds":[I
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 800
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v1

    move v0, v1

    move-object/from16 v4, v16

    .local v1, "returnCode":I
    goto/16 :goto_d0

    .line 804
    .end local v1    # "returnCode":I
    :cond_6e
    and-int/lit8 v17, p8, -0x3

    .line 805
    .local v17, "userFlags":I
    array-length v7, v10

    move v6, v1

    :goto_72
    if-ge v6, v7, :cond_cc

    aget v5, v10, v6

    .line 806
    .local v5, "userId1":I
    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_be

    .line 807
    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p5

    move/from16 v19, v5

    .end local v5    # "userId1":I
    .local v19, "userId1":I
    move/from16 v20, v6

    move/from16 v6, v17

    move/from16 v21, v7

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v1

    .line 809
    .restart local v1    # "returnCode":I
    if-eq v1, v14, :cond_b9

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package delete failed for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, v19

    .end local v19    # "userId1":I
    .local v3, "userId1":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", returnCode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v16

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 809
    .end local v3    # "userId1":I
    .restart local v19    # "userId1":I
    :cond_b9
    move-object/from16 v4, v16

    move/from16 v3, v19

    .end local v19    # "userId1":I
    .restart local v3    # "userId1":I
    goto :goto_c5

    .line 806
    .end local v1    # "returnCode":I
    .end local v3    # "userId1":I
    .restart local v5    # "userId1":I
    :cond_be
    move v3, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v4, v16

    .line 805
    .end local v5    # "userId1":I
    :goto_c5
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v16, v4

    move/from16 v7, v21

    goto :goto_72

    .line 817
    :cond_cc
    move-object/from16 v4, v16

    const/4 v1, -0x4

    move v0, v1

    .line 819
    .end local v17    # "userFlags":I
    .local v0, "returnCode":I
    :goto_d0
    move v1, v0

    goto :goto_d5

    .line 821
    .end local v0    # "returnCode":I
    :cond_d2
    move-object v4, v7

    const/4 v0, -0x1

    move v1, v0

    .line 824
    .restart local v1    # "returnCode":I
    :goto_d5
    const/4 v0, 0x0

    move-object/from16 v2, p10

    :try_start_d8
    invoke-interface {v2, v11, v1, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_db} :catch_dc

    .line 827
    goto :goto_e4

    .line 825
    :catch_dc
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 826
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Observer no longer exists."

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e4
    move-wide/from16 v3, p5

    invoke-direct {v8, v11, v3, v4}, Lcom/android/server/pm/DeletePackageHelper;->notifyPackageChangeObserversOnDelete(Ljava/lang/String;J)V

    .line 831
    iget-object v0, v8, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 832
    return-void
.end method

.method synthetic lambda$removeUnusedPackagesLPw$5$com-android-server-pm-DeletePackageHelper(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 967
    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    return-void
.end method

.method public removeUnusedPackagesLPw(Lcom/android/server/pm/UserManagerService;I)V
    .registers 11
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "userId"    # I

    .line 928
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 929
    .local v0, "users":[I
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    .line 930
    .local v1, "numPackages":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_11
    if-ge v2, v1, :cond_84

    .line 931
    iget-object v3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 932
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_28

    .line 933
    goto :goto_81

    .line 935
    :cond_28
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 937
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_81

    .line 938
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 939
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    .line 940
    goto :goto_81

    .line 945
    :cond_55
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageManagerService;->shouldKeepUninstalledPackageLPr(Ljava/lang/String;)Z

    move-result v5

    .line 946
    .local v5, "keep":Z
    if-eqz v5, :cond_5e

    goto :goto_73

    .line 951
    :cond_5e
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5f
    array-length v7, v0

    if-ge v6, v7, :cond_73

    .line 952
    aget v7, v0, v6

    if-eq v7, p2, :cond_70

    aget v7, v0, v6

    invoke-virtual {v3, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 953
    const/4 v5, 0x1

    .line 958
    goto :goto_73

    .line 951
    :cond_70
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 962
    .end local v6    # "i":I
    :cond_73
    :goto_73
    if-nez v5, :cond_81

    .line 967
    iget-object v6, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0, v4, p2}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 930
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "keep":Z
    :cond_81
    :goto_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 972
    .end local v2    # "index":I
    :cond_84
    return-void
.end method
