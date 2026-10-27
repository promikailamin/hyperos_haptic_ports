.class public final Lcom/android/server/pm/SuspendPackageHelper;
.super Ljava/lang/Object;
.source "SuspendPackageHelper.java"


# instance fields
.field private final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field private final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/ProtectedPackages;)V
    .registers 5
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p3, "broadcastHelper"    # Lcom/android/server/pm/BroadcastHelper;
    .param p4, "protectedPackages"    # Lcom/android/server/pm/ProtectedPackages;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 76
    iput-object p2, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 77
    iput-object p3, p0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 78
    iput-object p4, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 79
    return-void
.end method

.method private getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "knownPackage"    # I
    .param p3, "userId"    # I

    .line 650
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 651
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "knownPackages":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method private isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z
    .registers 13
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 657
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p3, v1, :cond_6

    .line 658
    return v0

    .line 660
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "ownerPackage":Ljava/lang/String;
    const/4 v8, 0x0

    if-eqz v1, :cond_1e

    .line 662
    const-wide/16 v4, 0x0

    move-object v2, p1

    move-object v3, v1

    move v6, p2

    move v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result v2

    if-ne p3, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v8

    :goto_1d
    return v0

    .line 665
    :cond_1e
    return v8
.end method

.method static synthetic lambda$removeSuspensionsBySuspendingPackage$1(Landroid/util/ArrayMap;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 9
    .param p0, "pkgToSuspendingPkgsToCommit"    # Landroid/util/ArrayMap;
    .param p1, "userId"    # I
    .param p2, "mutator"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 331
    const/4 v0, 0x0

    .local v0, "mapIndex":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 332
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 333
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 334
    .local v2, "packagesToRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p2, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v3

    .line 335
    .local v3, "userState":Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    const/4 v4, 0x0

    .local v4, "setIndex":I
    :goto_1c
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_2e

    .line 336
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->removeSuspension(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 331
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packagesToRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "userState":Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .end local v4    # "setIndex":I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 339
    .end local v0    # "mapIndex":I
    :cond_31
    return-void
.end method

.method static synthetic lambda$setPackagesSuspended$0(Landroid/util/ArraySet;ILcom/android/server/pm/Computer;ZLjava/lang/String;ILcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 15
    .param p0, "modifiedPackages"    # Landroid/util/ArraySet;
    .param p1, "userId"    # I
    .param p2, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p3, "suspended"    # Z
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingUid"    # I
    .param p6, "newSuspendParams"    # Lcom/android/server/pm/pkg/SuspendParams;
    .param p7, "mutator"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 179
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 180
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5
    if-ge v1, v0, :cond_5b

    .line 181
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p7, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v3

    .line 183
    invoke-interface {v3, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v3

    .line 185
    .local v3, "userState":Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    invoke-interface {p2, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 186
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v4, :cond_4f

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_4f

    if-eqz p3, :cond_4f

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " suspended from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "msg":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-static {v6, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 192
    .end local v5    # "msg":Ljava/lang/String;
    :cond_4f
    if-eqz p3, :cond_55

    .line 193
    invoke-interface {v3, p4, p6}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->putSuspendParams(Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    goto :goto_58

    .line 195
    :cond_55
    invoke-interface {v3, p4}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->removeSuspension(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 180
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "userState":Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 198
    .end local v1    # "index":I
    :cond_5b
    return-void
.end method

.method private sendMyPackageSuspendedOrUnsuspended([Ljava/lang/String;ZI)V
    .registers 12
    .param p1, "affectedPackages"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "userId"    # I

    .line 670
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 671
    .local v0, "handler":Landroid/os/Handler;
    if-eqz p2, :cond_c

    .line 672
    const-string v1, "android.intent.action.MY_PACKAGE_SUSPENDED"

    move-object v7, v1

    goto :goto_f

    .line 673
    :cond_c
    const-string v1, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    move-object v7, v1

    :goto_f
    nop

    .line 674
    .local v7, "action":Ljava/lang/String;
    new-instance v1, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;

    move-object v2, v1

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/SuspendPackageHelper;ZI[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    return-void
.end method


# virtual methods
.method canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z
    .registers 25
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 490
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    array-length v0, v3

    new-array v5, v0, [Z

    .line 491
    .local v5, "canSuspend":[Z
    move/from16 v6, p4

    invoke-direct {v1, v2, v4, v6}, Lcom/android/server/pm/SuspendPackageHelper;->isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z

    move-result v7

    .line 492
    .local v7, "isCallerOwner":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 494
    .local v8, "token":J
    :try_start_15
    iget-object v0, v1, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v0

    .line 495
    .local v0, "defaultAppProvider":Lcom/android/server/pm/DefaultAppProvider;
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v10

    .line 496
    .local v10, "activeLauncherPackageName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultDialer(I)Ljava/lang/String;

    move-result-object v11

    .line 497
    .local v11, "dialerPackageName":Ljava/lang/String;
    const/4 v12, 0x2

    .line 498
    invoke-direct {v1, v2, v12, v4}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v12

    .line 499
    .local v12, "requiredInstallerPackage":Ljava/lang/String;
    const/4 v13, 0x3

    .line 500
    invoke-direct {v1, v2, v13, v4}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v13

    .line 501
    .local v13, "requiredUninstallerPackage":Ljava/lang/String;
    const/4 v14, 0x4

    .line 502
    invoke-direct {v1, v2, v14, v4}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v14

    .line 503
    .local v14, "requiredVerifierPackage":Ljava/lang/String;
    const/4 v15, 0x7

    .line 504
    invoke-direct {v1, v2, v15, v4}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v15

    .line 506
    .local v15, "requiredPermissionControllerPackage":Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v17, v0

    move/from16 v0, v16

    .local v0, "i":I
    .local v17, "defaultAppProvider":Lcom/android/server/pm/DefaultAppProvider;
    :goto_3d
    array-length v6, v3

    if-ge v0, v6, :cond_217

    .line 507
    const/4 v6, 0x0

    aput-boolean v6, v5, v0

    .line 508
    aget-object v6, v3, v0

    .line 510
    .local v6, "packageName":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v6, v4}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v3
    :try_end_4b
    .catchall {:try_start_15 .. :try_end_4b} :catchall_21e

    move-wide/from16 v18, v8

    .end local v8    # "token":J
    .local v18, "token":J
    const-string v8, "Cannot suspend package \""

    const-string v9, "PackageManager"

    if-eqz v3, :cond_6f

    .line 511
    :try_start_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\": has an active device admin"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    goto/16 :goto_207

    .line 515
    :cond_6f
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\": contains the active launcher"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    goto/16 :goto_207

    .line 520
    :cond_91
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\": required for package installation"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    goto/16 :goto_207

    .line 525
    :cond_b3
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\": required for package uninstallation"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    goto/16 :goto_207

    .line 530
    :cond_d5
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\": required for package verification"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    goto/16 :goto_207

    .line 535
    :cond_f7
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_119

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\": is the default dialer"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    goto/16 :goto_207

    .line 540
    :cond_119
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\": required for permissions management"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    goto/16 :goto_207

    .line 545
    :cond_13b
    iget-object v3, v1, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15f

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\": protected package"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    goto/16 :goto_207

    .line 550
    :cond_15f
    if-nez v7, :cond_183

    invoke-interface {v2, v4, v6}, Lcom/android/server/pm/Computer;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_183

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\": blocked by admin"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    goto/16 :goto_207

    .line 559
    :cond_183
    invoke-interface {v2, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 560
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v3, :cond_18b

    const/4 v8, 0x0

    goto :goto_18f

    :cond_18b
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    .line 561
    .local v8, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_18f
    if-eqz v8, :cond_1e5

    .line 563
    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSdkLibrary()Z

    move-result v16
    :try_end_195
    .catchall {:try_start_53 .. :try_end_195} :catchall_215

    const-string v1, "Cannot suspend package: "

    if-eqz v16, :cond_1bc

    .line 564
    :try_start_199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " providing SDK library: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 566
    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    goto :goto_207

    .line 572
    :cond_1bc
    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v2

    if-eqz v2, :cond_1e5

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " providing static shared library: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    goto :goto_207

    .line 579
    :cond_1e5
    const-string v1, "android"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_204

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot suspend the platform package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    goto :goto_207

    .line 583
    :cond_204
    const/4 v1, 0x1

    aput-boolean v1, v5, v0
    :try_end_207
    .catchall {:try_start_199 .. :try_end_207} :catchall_215

    .line 506
    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_207
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p4

    move-wide/from16 v8, v18

    goto/16 :goto_3d

    .line 586
    .end local v0    # "i":I
    .end local v10    # "activeLauncherPackageName":Ljava/lang/String;
    .end local v11    # "dialerPackageName":Ljava/lang/String;
    .end local v12    # "requiredInstallerPackage":Ljava/lang/String;
    .end local v13    # "requiredUninstallerPackage":Ljava/lang/String;
    .end local v14    # "requiredVerifierPackage":Ljava/lang/String;
    .end local v15    # "requiredPermissionControllerPackage":Ljava/lang/String;
    .end local v17    # "defaultAppProvider":Lcom/android/server/pm/DefaultAppProvider;
    :catchall_215
    move-exception v0

    goto :goto_221

    .line 506
    .end local v18    # "token":J
    .restart local v0    # "i":I
    .local v8, "token":J
    .restart local v10    # "activeLauncherPackageName":Ljava/lang/String;
    .restart local v11    # "dialerPackageName":Ljava/lang/String;
    .restart local v12    # "requiredInstallerPackage":Ljava/lang/String;
    .restart local v13    # "requiredUninstallerPackage":Ljava/lang/String;
    .restart local v14    # "requiredVerifierPackage":Ljava/lang/String;
    .restart local v15    # "requiredPermissionControllerPackage":Ljava/lang/String;
    .restart local v17    # "defaultAppProvider":Lcom/android/server/pm/DefaultAppProvider;
    :cond_217
    move-wide/from16 v18, v8

    .line 586
    .end local v0    # "i":I
    .end local v8    # "token":J
    .end local v10    # "activeLauncherPackageName":Ljava/lang/String;
    .end local v11    # "dialerPackageName":Ljava/lang/String;
    .end local v12    # "requiredInstallerPackage":Ljava/lang/String;
    .end local v13    # "requiredUninstallerPackage":Ljava/lang/String;
    .end local v14    # "requiredVerifierPackage":Ljava/lang/String;
    .end local v15    # "requiredPermissionControllerPackage":Ljava/lang/String;
    .end local v17    # "defaultAppProvider":Lcom/android/server/pm/DefaultAppProvider;
    .restart local v18    # "token":J
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    nop

    .line 588
    return-object v5

    .line 586
    .end local v18    # "token":J
    .restart local v8    # "token":J
    :catchall_21e
    move-exception v0

    move-wide/from16 v18, v8

    .end local v8    # "token":J
    .restart local v18    # "token":J
    :goto_221
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    throw v0
.end method

.method getSuspendedDialogInfo(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/SuspendDialogInfo;
    .registers 11
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "suspendedPackage"    # Ljava/lang/String;
    .param p3, "suspendingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 443
    invoke-interface {p1, p2, p5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 445
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 446
    return-object v1

    .line 449
    :cond_8
    invoke-interface {v0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 450
    .local v2, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isSuspended()Z

    move-result v3

    if-nez v3, :cond_13

    .line 451
    return-object v1

    .line 454
    :cond_13
    nop

    .line 455
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    .line 456
    .local v3, "suspendParamsMap":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;>;"
    if-nez v3, :cond_1b

    .line 457
    return-object v1

    .line 460
    :cond_1b
    invoke-virtual {v3, p3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/SuspendParams;

    .line 461
    .local v4, "suspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    if-eqz v4, :cond_27

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/SuspendParams;->getDialogInfo()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v1

    :cond_27
    return-object v1
.end method

.method getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 12
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 263
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 264
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 265
    return-object v1

    .line 267
    :cond_8
    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 268
    .local v2, "pus":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v3, "allExtras":Landroid/os/Bundle;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isSuspended()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 270
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3e

    .line 271
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/SuspendParams;

    .line 272
    .local v5, "params":Lcom/android/server/pm/pkg/SuspendParams;
    if-eqz v5, :cond_3b

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/SuspendParams;->getAppExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    if-eqz v6, :cond_3b

    .line 273
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/SuspendParams;->getAppExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 270
    .end local v5    # "params":Lcom/android/server/pm/pkg/SuspendParams;
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 277
    .end local v4    # "i":I
    :cond_3e
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_45

    move-object v1, v3

    :cond_45
    return-object v1
.end method

.method getSuspendedPackageLauncherExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 12
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 364
    nop

    .line 365
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 366
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 367
    return-object v1

    .line 369
    :cond_9
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v2, "allExtras":Landroid/os/Bundle;
    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 371
    .local v3, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isSuspended()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 372
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3f

    .line 373
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/SuspendParams;

    .line 374
    .local v5, "params":Lcom/android/server/pm/pkg/SuspendParams;
    if-eqz v5, :cond_3c

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/SuspendParams;->getLauncherExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    if-eqz v6, :cond_3c

    .line 375
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/SuspendParams;->getLauncherExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 372
    .end local v5    # "params":Lcom/android/server/pm/pkg/SuspendParams;
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 379
    .end local v4    # "i":I
    :cond_3f
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_46

    move-object v1, v2

    :cond_46
    return-object v1
.end method

.method getSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Ljava/lang/String;
    .registers 10
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "suspendedPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 409
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 411
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 412
    return-object v1

    .line 415
    :cond_8
    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 416
    .local v2, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isSuspended()Z

    move-result v3

    if-nez v3, :cond_13

    .line 417
    return-object v1

    .line 420
    :cond_13
    const/4 v1, 0x0

    .line 421
    .local v1, "suspendingPackage":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 422
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 423
    const-string v4, "android"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 424
    return-object v1

    .line 421
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 427
    .end local v3    # "i":I
    :cond_36
    return-object v1
.end method

.method getUnsuspendablePackagesForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Ljava/lang/String;
    .registers 12
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 230
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v0

    const-string v1, "PackageManager"

    if-nez v0, :cond_1f

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot suspend due to restrictions on user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-object p2

    .line 234
    :cond_1f
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 235
    .local v0, "unactionablePackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object v2

    .line 237
    .local v2, "canSuspend":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    array-length v4, p2

    if-ge v3, v4, :cond_5e

    .line 238
    aget-boolean v4, v2, v3

    if-nez v4, :cond_36

    .line 239
    aget-object v4, p2, v3

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 240
    goto :goto_5b

    .line 242
    :cond_36
    aget-object v4, p2, v3

    .line 243
    invoke-interface {p1, v4, p4, p3}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 244
    .local v4, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v4, :cond_5b

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find package setting for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    aget-object v5, p2, v3

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v4    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_5b
    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 249
    .end local v3    # "i":I
    :cond_5e
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method isPackageSuspended(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Z
    .registers 7
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 392
    nop

    .line 393
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 394
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_13

    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    .line 395
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 394
    :goto_14
    return v1
.end method

.method isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 472
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 473
    .local v0, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/SuspendPackageHelper;->isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z

    move-result v1

    if-nez v1, :cond_21

    .line 474
    const-string/jumbo v1, "no_control_apps"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 475
    const-string/jumbo v1, "no_uninstall_apps"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v1, 0x1

    .line 473
    :goto_22
    return v1
.end method

.method synthetic lambda$sendMyPackageSuspendedOrUnsuspended$3$com-android-server-pm-SuspendPackageHelper(ZI[Ljava/lang/String;Ljava/lang/String;)V
    .registers 28
    .param p1, "suspended"    # Z
    .param p2, "userId"    # I
    .param p3, "affectedPackages"    # [Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .line 675
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 676
    .local v3, "am":Landroid/app/IActivityManager;
    if-nez v3, :cond_32

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IActivityManager null. Cannot send MY_PACKAGE_ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 678
    if-eqz p1, :cond_1c

    const-string v5, ""

    goto :goto_1e

    :cond_1c
    const-string v5, "UN"

    :goto_1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SUSPENDED broadcasts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 677
    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-void

    .line 681
    :cond_32
    const/4 v4, 0x1

    new-array v12, v4, [I

    const/4 v5, 0x0

    aput v1, v12, v5

    .line 682
    .local v12, "targetUserIds":[I
    iget-object v6, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v15

    .line 683
    .local v15, "snapshot":Lcom/android/server/pm/Computer;
    array-length v14, v2

    move v13, v5

    :goto_40
    if-ge v13, v14, :cond_8f

    aget-object v11, v2, v13

    .line 684
    .local v11, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_4d

    .line 685
    const/16 v5, 0x3e8

    invoke-virtual {v0, v15, v11, v1, v5}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_4e

    .line 686
    :cond_4d
    const/4 v5, 0x0

    :goto_4e
    move-object v10, v5

    .line 688
    .local v10, "appExtras":Landroid/os/Bundle;
    if-eqz v10, :cond_5e

    .line 689
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 690
    .local v5, "intentExtras":Landroid/os/Bundle;
    const-string v6, "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS"

    invoke-virtual {v5, v6, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v16, v5

    goto :goto_61

    .line 692
    .end local v5    # "intentExtras":Landroid/os/Bundle;
    :cond_5e
    const/4 v5, 0x0

    move-object/from16 v16, v5

    .line 694
    .local v16, "intentExtras":Landroid/os/Bundle;
    :goto_61
    iget-object v5, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v7, 0x0

    const/high16 v9, 0x1000000

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v6, p4

    move-object/from16 v8, v16

    move-object/from16 v21, v10

    .end local v10    # "appExtras":Landroid/os/Bundle;
    .local v21, "appExtras":Landroid/os/Bundle;
    move-object v10, v11

    move-object/from16 v22, v11

    .end local v11    # "packageName":Ljava/lang/String;
    .local v22, "packageName":Ljava/lang/String;
    move-object/from16 v11, v17

    move/from16 v17, v13

    move/from16 v13, v18

    move/from16 v18, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v15

    .end local v15    # "snapshot":Lcom/android/server/pm/Computer;
    .local v19, "snapshot":Lcom/android/server/pm/Computer;
    move-object/from16 v15, v20

    invoke-virtual/range {v5 .. v15}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 683
    .end local v16    # "intentExtras":Landroid/os/Bundle;
    .end local v21    # "appExtras":Landroid/os/Bundle;
    .end local v22    # "packageName":Ljava/lang/String;
    add-int/lit8 v13, v17, 0x1

    move/from16 v14, v18

    move-object/from16 v15, v19

    goto :goto_40

    .line 698
    .end local v19    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v15    # "snapshot":Lcom/android/server/pm/Computer;
    :cond_8f
    return-void
.end method

.method synthetic lambda$sendPackagesSuspendedForUser$2$com-android-server-pm-SuspendPackageHelper(Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V
    .registers 16
    .param p1, "intent"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "userIds"    # [I
    .param p4, "allowList"    # Landroid/util/SparseArray;

    .line 641
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    move-object v9, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V
    .registers 24
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "packagesToChange"    # [Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 294
    .local p3, "suspendingPackagePredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 295
    .local v9, "unsuspendedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v10, v0

    .line 296
    .local v10, "unsuspendedUids":Landroid/util/IntArray;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v0

    .line 297
    .local v11, "pkgToSuspendingPkgsToCommit":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    array-length v0, v7

    const/4 v2, 0x0

    :goto_1a
    const/4 v3, 0x0

    if-ge v2, v0, :cond_ae

    aget-object v4, v7, v2

    .line 298
    .local v4, "packageName":Ljava/lang/String;
    nop

    .line 299
    move-object/from16 v12, p1

    invoke-interface {v12, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 300
    .local v5, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v5, :cond_29

    .line 301
    goto :goto_2d

    :cond_29
    invoke-interface {v5, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 302
    .local v3, "packageUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :goto_2d
    if-eqz v3, :cond_a2

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isSuspended()Z

    move-result v13

    if-nez v13, :cond_3b

    .line 303
    move-object/from16 v3, p3

    move/from16 v18, v0

    goto/16 :goto_a8

    .line 306
    :cond_3b
    nop

    .line 307
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v13

    .line 308
    .local v13, "suspendParamsMap":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;>;"
    const/4 v14, 0x0

    .line 309
    .local v14, "countRemoved":I
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_42
    invoke-virtual {v13}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ge v15, v1, :cond_83

    .line 310
    invoke-virtual {v13, v15}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    .local v1, "suspendingPackage":Ljava/lang/String;
    move-object/from16 v16, v3

    move-object/from16 v3, p3

    .end local v3    # "packageUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .local v16, "packageUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v3, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7a

    .line 312
    nop

    .line 313
    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/ArraySet;

    .line 314
    .local v17, "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v17, :cond_70

    .line 315
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v17, v18

    .line 316
    move/from16 v18, v0

    move-object/from16 v0, v17

    .end local v17    # "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v0, "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v11, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    .line 314
    .end local v0    # "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_70
    move/from16 v18, v0

    move-object/from16 v0, v17

    .line 318
    .end local v17    # "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_74
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v14, v14, 0x1

    goto :goto_7c

    .line 311
    .end local v0    # "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_7a
    move/from16 v18, v0

    .line 309
    .end local v1    # "suspendingPackage":Ljava/lang/String;
    :goto_7c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v16

    move/from16 v0, v18

    goto :goto_42

    .end local v16    # "packageUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v3    # "packageUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_83
    move/from16 v18, v0

    move-object/from16 v16, v3

    move-object/from16 v3, p3

    .line 324
    .end local v3    # "packageUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v15    # "index":I
    .restart local v16    # "packageUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-virtual {v13}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    if-ne v14, v0, :cond_a8

    .line 325
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_a8

    .line 302
    .end local v13    # "suspendParamsMap":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;>;"
    .end local v14    # "countRemoved":I
    .end local v16    # "packageUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v3    # "packageUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_a2
    move/from16 v18, v0

    move-object/from16 v16, v3

    move-object/from16 v3, p3

    .line 297
    .end local v3    # "packageUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_a8
    :goto_a8
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v18

    goto/16 :goto_1a

    .line 330
    :cond_ae
    move-object/from16 v12, p1

    move-object v0, v3

    move-object/from16 v3, p3

    iget-object v1, v6, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v2, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v11, v8}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 341
    iget-object v0, v6, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v13

    .line 343
    .local v13, "newSnapshot":Lcom/android/server/pm/Computer;
    iget-object v0, v6, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 344
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f0

    .line 345
    nop

    .line 346
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 345
    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [Ljava/lang/String;

    .line 347
    .local v14, "packageArray":[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-direct {v6, v14, v0, v8}, Lcom/android/server/pm/SuspendPackageHelper;->sendMyPackageSuspendedOrUnsuspended([Ljava/lang/String;ZI)V

    .line 348
    nop

    .line 349
    invoke-virtual {v10}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    .line 348
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v3, v14

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SuspendPackageHelper;->sendPackagesSuspendedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;[Ljava/lang/String;[II)V

    .line 351
    .end local v14    # "packageArray":[Ljava/lang/String;
    :cond_f0
    return-void
.end method

.method sendPackagesSuspendedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;[Ljava/lang/String;[II)V
    .registers 24
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Ljava/lang/String;
    .param p3, "pkgList"    # [Ljava/lang/String;
    .param p4, "uidList"    # [I
    .param p5, "userId"    # I

    .line 602
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p5

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 603
    .local v10, "pkgsToSend":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v0

    .line 604
    .local v11, "uidsToSend":Ljava/util/List;, "Ljava/util/List<Landroid/util/IntArray;>;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v0

    .line 605
    .local v12, "allowListsToSend":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<[I>;>;"
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v9, v1, v2

    move-object v13, v1

    .line 608
    .local v13, "userIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    array-length v3, v8

    if-ge v1, v3, :cond_b1

    .line 609
    aget-object v3, v8, v1

    .line 610
    .local v3, "pkgName":Ljava/lang/String;
    aget v4, p4, v1

    .line 611
    .local v4, "uid":I
    iget-object v5, v6, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v5

    const/16 v14, 0x3e8

    .line 612
    invoke-interface {v7, v3, v14}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    .line 613
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v15

    .line 611
    invoke-virtual {v5, v7, v14, v13, v15}, Lcom/android/server/pm/AppsFilterImpl;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v5

    .line 614
    .local v5, "allowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-nez v5, :cond_48

    .line 615
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14, v2}, Landroid/util/SparseArray;-><init>(I)V

    move-object v5, v14

    .line 617
    :cond_48
    const/4 v14, 0x0

    .line 618
    .local v14, "merged":Z
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_4a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_83

    .line 619
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, [I

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 620
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    .line 622
    const/4 v14, 0x1

    .line 623
    goto :goto_83

    .line 618
    :cond_7e
    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    goto :goto_4a

    .line 626
    .end local v15    # "j":I
    :cond_83
    :goto_83
    if-nez v14, :cond_a7

    .line 627
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    new-array v0, v2, [I

    aput v4, v0, v16

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 626
    :cond_a7
    const/4 v2, 0x1

    const/16 v16, 0x0

    .line 608
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "allowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v14    # "merged":Z
    :goto_aa
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    move/from16 v2, v16

    goto/16 :goto_25

    .line 633
    .end local v1    # "i":I
    :cond_b1
    iget-object v0, v6, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 634
    .local v14, "handler":Landroid/os/Handler;
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_b9
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_11f

    .line 635
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    move-object v4, v0

    .line 636
    .local v4, "extras":Landroid/os/Bundle;
    nop

    .line 637
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 636
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 638
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    const-string v1, "android.intent.extra.changed_uid_list"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 639
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_101

    .line 640
    const/4 v0, 0x0

    goto :goto_107

    :cond_101
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    :goto_107
    move-object v5, v0

    .line 641
    .restart local v5    # "allowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    new-instance v3, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v16, v4

    .end local v4    # "extras":Landroid/os/Bundle;
    .local v16, "extras":Landroid/os/Bundle;
    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/SuspendPackageHelper;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V

    invoke-virtual {v14, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    .end local v5    # "allowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v16    # "extras":Landroid/os/Bundle;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, p0

    goto :goto_b9

    .line 646
    .end local v15    # "i":I
    :cond_11f
    return-void
.end method

.method setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;II)[Ljava/lang/String;
    .registers 34
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "suspended"    # Z
    .param p4, "appExtras"    # Landroid/os/PersistableBundle;
    .param p5, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p6, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .param p9, "callingUid"    # I

    .line 105
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v5, p2

    move/from16 v4, p3

    move-object/from16 v3, p4

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    move-object/from16 v0, p7

    move/from16 v13, p8

    move/from16 v12, p9

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 106
    return-object v5

    .line 108
    :cond_1b
    const-string v7, "PackageManager"

    if-eqz v4, :cond_3c

    invoke-virtual {v6, v15, v13, v12}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot suspend due to restrictions on user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-object v5

    .line 113
    :cond_3c
    new-instance v14, Lcom/android/server/pm/pkg/SuspendParams;

    invoke-direct {v14, v1, v3, v2}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    .line 116
    .local v14, "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v5

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v8

    .line 117
    .local v11, "changedPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Landroid/util/IntArray;

    array-length v9, v5

    invoke-direct {v8, v9}, Landroid/util/IntArray;-><init>(I)V

    move-object v10, v8

    .line 118
    .local v10, "changedUids":Landroid/util/IntArray;
    new-instance v8, Landroid/util/IntArray;

    array-length v9, v5

    invoke-direct {v8, v9}, Landroid/util/IntArray;-><init>(I)V

    move-object v9, v8

    .line 119
    .local v9, "modifiedUids":Landroid/util/IntArray;
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v16, v14

    .end local v14    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .local v16, "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    array-length v14, v5

    invoke-direct {v8, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v8

    .line 121
    .local v14, "unmodifiablePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 123
    .local v8, "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v17, v9

    .end local v9    # "modifiedUids":Landroid/util/IntArray;
    .local v17, "modifiedUids":Landroid/util/IntArray;
    if-eqz v4, :cond_6d

    .line 124
    invoke-virtual {v6, v15, v5, v13, v12}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object v18

    goto :goto_6f

    :cond_6d
    const/16 v18, 0x0

    .line 125
    .local v18, "canSuspend":[Z
    :goto_6f
    const/16 v19, 0x0

    move/from16 v9, v19

    .local v9, "i":I
    :goto_73
    array-length v6, v5

    move-object/from16 v19, v8

    .end local v8    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v19, "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-ge v9, v6, :cond_193

    .line 126
    aget-object v6, v5, v9

    .line 127
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b8

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling package: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " trying to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 129
    if-eqz v4, :cond_9a

    const-string v8, ""

    goto :goto_9d

    :cond_9a
    const-string/jumbo v8, "un"

    :goto_9d
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "suspend itself. Ignoring"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    move-object/from16 v1, v17

    move-object/from16 v21, v19

    goto/16 :goto_183

    .line 133
    :cond_b8
    nop

    .line 134
    invoke-interface {v15, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 135
    .local v5, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v5, :cond_15f

    .line 136
    invoke-interface {v15, v5, v12, v13}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v21

    if-eqz v21, :cond_cb

    move-object/from16 v1, v17

    move-object/from16 v21, v19

    goto/16 :goto_163

    .line 142
    :cond_cb
    if-eqz v18, :cond_da

    aget-boolean v21, v18, v9

    if-nez v21, :cond_da

    .line 143
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    move-object/from16 v1, v17

    move-object/from16 v21, v19

    goto/16 :goto_183

    .line 147
    :cond_da
    nop

    .line 148
    invoke-interface {v5, v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    .line 149
    .local v8, "suspendParamsMap":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;>;"
    if-eqz v4, :cond_126

    .line 150
    if-eqz v8, :cond_126

    invoke-virtual {v8, v6}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_126

    .line 151
    invoke-virtual {v8, v6}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/pm/pkg/SuspendParams;

    .line 153
    .local v21, "suspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    if-eqz v21, :cond_126

    .line 154
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/pkg/SuspendParams;->getDialogInfo()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 155
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/pkg/SuspendParams;->getAppExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 156
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/pkg/SuspendParams;->getLauncherExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 159
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-static {v13, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/util/IntArray;->add(I)V

    .line 161
    move-object/from16 v1, v17

    move-object/from16 v21, v19

    goto :goto_183

    .line 167
    .end local v21    # "suspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    :cond_126
    const/4 v0, 0x1

    if-nez v4, :cond_132

    .line 168
    invoke-static {v8}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v1

    if-gt v1, v0, :cond_132

    move/from16 v22, v0

    goto :goto_134

    :cond_132
    const/16 v22, 0x0

    :goto_134
    move/from16 v0, v22

    .line 169
    .local v0, "packageUnsuspended":Z
    if-nez v4, :cond_13a

    if-eqz v0, :cond_148

    .line 170
    :cond_13a
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    invoke-static {v13, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->add(I)V

    .line 174
    :cond_148
    move-object/from16 v1, v19

    .end local v19    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 175
    move/from16 v19, v0

    .end local v0    # "packageUnsuspended":Z
    .local v19, "packageUnsuspended":Z
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-static {v13, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move-object/from16 v21, v1

    move-object/from16 v1, v17

    .end local v17    # "modifiedUids":Landroid/util/IntArray;
    .local v1, "modifiedUids":Landroid/util/IntArray;
    .local v21, "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_183

    .line 135
    .end local v1    # "modifiedUids":Landroid/util/IntArray;
    .end local v8    # "suspendParamsMap":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;>;"
    .end local v21    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "modifiedUids":Landroid/util/IntArray;
    .local v19, "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_15f
    move-object/from16 v1, v17

    move-object/from16 v21, v19

    .line 137
    .end local v17    # "modifiedUids":Landroid/util/IntArray;
    .end local v19    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "modifiedUids":Landroid/util/IntArray;
    .restart local v21    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find package setting for package: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ". Skipping suspending/un-suspending."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    nop

    .line 125
    .end local v5    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_183
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p7

    move-object/from16 v17, v1

    move-object/from16 v8, v21

    move-object/from16 v1, p6

    goto/16 :goto_73

    .end local v1    # "modifiedUids":Landroid/util/IntArray;
    .end local v21    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "modifiedUids":Landroid/util/IntArray;
    .restart local v19    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_193
    move-object/from16 v1, v17

    move-object/from16 v21, v19

    .line 178
    .end local v9    # "i":I
    .end local v17    # "modifiedUids":Landroid/util/IntArray;
    .end local v19    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "modifiedUids":Landroid/util/IntArray;
    .restart local v21    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v5, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;

    move-object v7, v5

    move-object/from16 v9, v21

    const/4 v15, 0x0

    .end local v21    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v9, "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v8, v9

    move-object v1, v9

    const/4 v15, 0x0

    .end local v9    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "modifiedUids":Landroid/util/IntArray;
    move/from16 v9, p8

    move-object/from16 v19, v10

    .end local v10    # "changedUids":Landroid/util/IntArray;
    .local v19, "changedUids":Landroid/util/IntArray;
    move-object/from16 v10, p1

    move-object/from16 v20, v11

    .end local v11    # "changedPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "changedPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v11, p3

    move-object/from16 v12, p7

    move/from16 v13, p9

    move-object/from16 v23, v14

    move-object/from16 v14, v16

    .end local v16    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .local v14, "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .local v23, "unmodifiablePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v7 .. v14}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;-><init>(Landroid/util/ArraySet;ILcom/android/server/pm/Computer;ZLjava/lang/String;ILcom/android/server/pm/pkg/SuspendParams;)V

    invoke-virtual {v0, v15, v5}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 200
    iget-object v0, v6, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 202
    .local v7, "newSnapshot":Lcom/android/server/pm/Computer;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1fa

    .line 203
    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object/from16 v8, v20

    .end local v20    # "changedPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "changedPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Ljava/lang/String;

    .line 204
    .local v9, "changedPackages":[Ljava/lang/String;
    nop

    .line 205
    if-eqz v4, :cond_1db

    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    move-object v5, v0

    goto :goto_1de

    .line 206
    :cond_1db
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    move-object v5, v0

    .line 207
    :goto_1de
    invoke-virtual/range {v19 .. v19}, Landroid/util/IntArray;->toArray()[I

    move-result-object v10

    .line 204
    move-object/from16 v0, p0

    move-object v11, v1

    .end local v1    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v1, v7

    move-object v2, v5

    move-object v3, v9

    move v12, v4

    move-object v4, v10

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SuspendPackageHelper;->sendPackagesSuspendedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;[Ljava/lang/String;[II)V

    .line 208
    move/from16 v10, p8

    invoke-direct {v6, v9, v12, v10}, Lcom/android/server/pm/SuspendPackageHelper;->sendMyPackageSuspendedOrUnsuspended([Ljava/lang/String;ZI)V

    .line 209
    iget-object v0, v6, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    goto :goto_200

    .line 202
    .end local v8    # "changedPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "changedPackages":[Ljava/lang/String;
    .end local v11    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "changedPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1fa
    move/from16 v10, p8

    move-object v11, v1

    move v12, v4

    move-object/from16 v8, v20

    .line 212
    .end local v1    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "changedPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "changedPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "modifiedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_200
    invoke-virtual {v11}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21e

    .line 213
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 214
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    .line 213
    const-string v2, "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SuspendPackageHelper;->sendPackagesSuspendedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;[Ljava/lang/String;[II)V

    .line 216
    :cond_21e
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v1, v23

    .end local v23    # "unmodifiablePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "unmodifiablePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
