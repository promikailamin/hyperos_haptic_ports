.class public final Lcom/android/server/pm/SuspendPackageHelper;
.super Ljava/lang/Object;
.source "SuspendPackageHelper.java"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;


# direct methods
.method public static synthetic $r8$lambda$5Ax2v5UvhsR67N-0JmdztLNWe2U(Landroid/util/ArraySet;IZLandroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 9

    .line 182
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_21

    .line 184
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    invoke-virtual {p5, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v2

    .line 186
    invoke-interface {v2, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v2

    if-eqz p2, :cond_1b

    .line 188
    invoke-interface {v2, p3, p4}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->putSuspendParams(Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    goto :goto_1e

    .line 190
    :cond_1b
    invoke-interface {v2, p3}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->removeSuspension(Landroid/content/pm/UserPackage;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    return-void
.end method

.method public static synthetic $r8$lambda$dguAfIKYkbFhj4CajhMWmJ4hzqs(Landroid/util/ArrayMap;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 332
    :goto_2
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 333
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 335
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 337
    invoke-virtual {p2, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v2

    move v4, v0

    .line 338
    :goto_1d
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_2f

    .line 339
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserPackage;

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->removeSuspension(Landroid/content/pm/UserPackage;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_32
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/ProtectedPackages;)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 72
    iput-object p2, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 73
    iput-object p3, p0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 74
    iput-object p4, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    return-void
.end method

.method public static getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 6

    .line 263
    invoke-interface {p0, p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 267
    :cond_8
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 268
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 269
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p3

    if-eqz p3, :cond_3e

    const/4 p3, 0x0

    .line 270
    :goto_18
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    if-ge p3, v0, :cond_3e

    .line 271
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz v0, :cond_3b

    .line 272
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/SuspendParams;->getAppExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 273
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/SuspendParams;->getAppExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_3b
    add-int/lit8 p3, p3, 0x1

    goto :goto_18

    .line 277
    :cond_3e
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result p0

    if-lez p0, :cond_45

    return-object p2

    :cond_45
    return-object p1
.end method


# virtual methods
.method public canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 506
    array-length v4, v2

    new-array v4, v4, [Z

    move/from16 v5, p4

    .line 508
    invoke-virtual {v0, v1, v3, v5}, Lcom/android/server/pm/SuspendPackageHelper;->isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z

    move-result v5

    .line 509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 511
    :try_start_15
    iget-object v8, v0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v8

    .line 513
    invoke-virtual {v8, v3}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v9

    .line 514
    invoke-virtual {v8, v3}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultDialer(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    .line 516
    invoke-virtual {v0, v1, v10, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    .line 518
    invoke-virtual {v0, v1, v11, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    .line 520
    invoke-virtual {v0, v1, v12, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x7

    .line 522
    invoke-virtual {v0, v1, v13, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x14

    .line 524
    invoke-virtual {v0, v1, v14, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v4

    const/16 p4, 0x0

    const/4 v15, 0x0

    .line 527
    :goto_42
    array-length v4, v2

    if-ge v15, v4, :cond_244

    .line 528
    aput-boolean p4, v16, v15

    .line 529
    aget-object v4, v2, v15

    .line 531
    iget-object v2, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v2
    :try_end_4f
    .catchall {:try_start_15 .. :try_end_4f} :catchall_240

    move/from16 v17, v2

    const-string v2, "Cannot suspend package \""

    move/from16 v18, v5

    const-string v5, "PackageManager"

    if-eqz v17, :cond_77

    move-wide/from16 v19, v6

    .line 532
    :try_start_5b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": has an active device admin"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_234

    :catchall_74
    move-exception v0

    goto/16 :goto_24a

    :cond_77
    move-wide/from16 v19, v6

    .line 536
    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 537
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": contains the active launcher"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_234

    .line 541
    :cond_98
    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 542
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": required for package installation"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_234

    .line 546
    :cond_b7
    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": required for package uninstallation"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_234

    .line 551
    :cond_d6
    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": required for package verification"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_234

    .line 556
    :cond_f5
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 557
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": is the default dialer"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_234

    .line 561
    :cond_114
    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_133

    .line 562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": required for permissions management"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_234

    .line 566
    :cond_133
    iget-object v6, v0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_154

    .line 567
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": protected package"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_234

    :cond_154
    if-nez v18, :cond_175

    .line 571
    invoke-interface {v1, v3, v4}, Lcom/android/server/pm/Computer;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_175

    .line 572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": blocked by admin"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_234

    .line 576
    :cond_175
    invoke-virtual {v4, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_194

    .line 577
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": required for package verification service"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_234

    .line 585
    :cond_194
    invoke-interface {v1, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-nez v6, :cond_19c

    const/4 v7, 0x0

    goto :goto_1a0

    .line 586
    :cond_19c
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    :goto_1a0
    if-eqz v7, :cond_214

    .line 588
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-static {v3, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 590
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->isSdkLibrary()Z

    move-result v17
    :try_end_1ae
    .catchall {:try_start_5b .. :try_end_1ae} :catchall_74

    const-string v1, "Cannot suspend package: "

    if-eqz v17, :cond_1d1

    .line 591
    :try_start_1b2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " providing SDK library: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_234

    .line 599
    :cond_1d1
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v17

    if-eqz v17, :cond_1f6

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " providing static shared library: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_234

    .line 605
    :cond_1f6
    invoke-virtual {v0, v6, v4}, Lcom/android/server/pm/SuspendPackageHelper;->exemptFromSuspensionByAppOp(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_214

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": has OP_SYSTEM_EXEMPT_FROM_SUSPENSION set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_234

    .line 611
    :cond_214
    const-string v1, "android"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_231

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot suspend the platform package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_234

    :cond_231
    const/4 v1, 0x1

    .line 615
    aput-boolean v1, v16, v15
    :try_end_234
    .catchall {:try_start_1b2 .. :try_end_234} :catchall_74

    :goto_234
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, v18

    move-wide/from16 v6, v19

    goto/16 :goto_42

    :catchall_240
    move-exception v0

    move-wide/from16 v19, v6

    goto :goto_24a

    :cond_244
    move-wide/from16 v19, v6

    .line 618
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v16

    :goto_24a
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    throw v0
.end method

.method public final exemptFromSuspensionByAppOp(ILjava/lang/String;)Z
    .registers 4

    .line 624
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/16 v0, 0x7c

    .line 625
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;
    .registers 4

    .line 632
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 633
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object p0

    .line 634
    array-length p1, p0

    if-lez p1, :cond_d

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSuspendedDialogInfo(Lcom/android/server/pm/Computer;Ljava/lang/String;Landroid/content/pm/UserPackage;II)Landroid/content/pm/SuspendDialogInfo;
    .registers 6

    .line 459
    invoke-interface {p1, p2, p5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 465
    :cond_8
    invoke-interface {p0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 466
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p2

    if-nez p2, :cond_13

    return-object p1

    .line 471
    :cond_13
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p0

    if-nez p0, :cond_1a

    return-object p1

    .line 476
    :cond_1a
    invoke-virtual {p0, p3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz p0, :cond_27

    .line 477
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/SuspendParams;->getDialogInfo()Landroid/content/pm/SuspendDialogInfo;

    move-result-object p0

    return-object p0

    :cond_27
    return-object p1
.end method

.method public getSuspendedPackageLauncherExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 6

    .line 368
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 372
    :cond_8
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 373
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 374
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p3

    if-eqz p3, :cond_3e

    const/4 p3, 0x0

    .line 375
    :goto_18
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p4

    if-ge p3, p4, :cond_3e

    .line 376
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz p4, :cond_3b

    .line 377
    invoke-virtual {p4}, Lcom/android/server/pm/pkg/SuspendParams;->getLauncherExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 378
    invoke-virtual {p4}, Lcom/android/server/pm/pkg/SuspendParams;->getLauncherExtras()Landroid/os/PersistableBundle;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_3b
    add-int/lit8 p3, p3, 0x1

    goto :goto_18

    .line 382
    :cond_3e
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result p0

    if-lez p0, :cond_45

    return-object p2

    :cond_45
    return-object p1
.end method

.method public getSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/content/pm/UserPackage;
    .registers 8

    .line 412
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 418
    :cond_8
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 419
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p2

    if-nez p2, :cond_13

    return-object p1

    :cond_13
    const/4 p2, 0x0

    move-object p3, p1

    move p4, p2

    move-object p2, p3

    .line 426
    :goto_17
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    if-ge p4, v0, :cond_4c

    .line 427
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserPackage;

    .line 428
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/SuspendParams;

    .line 429
    const-string v1, "android"

    iget-object v2, p3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    move-object p2, p3

    .line 432
    :cond_40
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/SuspendParams;->isQuarantined()Z

    move-result v0

    if-eqz v0, :cond_49

    if-nez p1, :cond_49

    move-object p1, p3

    :cond_49
    add-int/lit8 p4, p4, 0x1

    goto :goto_17

    :cond_4c
    if-eqz p1, :cond_4f

    return-object p1

    :cond_4f
    if-eqz p2, :cond_52

    return-object p2

    :cond_52
    return-object p3
.end method

.method public getUnsuspendablePackagesForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Ljava/lang/String;
    .registers 10

    .line 227
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v0

    const-string v1, "PackageManager"

    if-nez v0, :cond_1d

    .line 228
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot suspend due to restrictions on user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 231
    :cond_1d
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 232
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object p0

    const/4 v2, 0x0

    .line 234
    :goto_27
    array-length v3, p2

    if-ge v2, v3, :cond_5a

    .line 235
    aget-boolean v3, p0, v2

    if-nez v3, :cond_34

    .line 236
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 239
    :cond_34
    aget-object v3, p2, v2

    .line 240
    invoke-interface {p1, v3, p4, p3}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_57

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find package setting for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 247
    :cond_5a
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z
    .registers 12

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-ne p3, v0, :cond_6

    return v1

    .line 642
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 643
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v3

    const/4 p0, 0x0

    if-eqz v3, :cond_1b

    const-wide/16 v4, 0x0

    move-object v2, p1

    move v6, p2

    move v7, p3

    .line 645
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p1

    if-ne v7, p1, :cond_1b

    return v1

    :cond_1b
    return p0
.end method

.method public isPackageSuspended(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Z
    .registers 5

    .line 396
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 397
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 398
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z
    .registers 5

    .line 488
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 489
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/SuspendPackageHelper;->isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z

    move-result p0

    if-nez p0, :cond_21

    const-string/jumbo p0, "no_control_apps"

    .line 490
    invoke-virtual {v0, p0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1f

    const-string/jumbo p0, "no_uninstall_apps"

    .line 491
    invoke-virtual {v0, p0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v6, p4

    .line 294
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 296
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 298
    array-length v5, v1

    const/4 v8, 0x0

    :goto_17
    const/4 v9, 0x0

    if-ge v8, v5, :cond_8a

    aget-object v10, v1, v8

    move-object/from16 v11, p1

    .line 300
    invoke-interface {v11, v10}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    if-nez v12, :cond_25

    goto :goto_29

    .line 302
    :cond_25
    invoke-interface {v12, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    :goto_29
    if-eqz v9, :cond_31

    .line 303
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v13

    if-nez v13, :cond_34

    :cond_31
    move-object/from16 v7, p3

    goto :goto_85

    .line 308
    :cond_34
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 310
    :goto_3a
    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v15

    if-ge v13, v15, :cond_6b

    .line 311
    invoke-virtual {v9, v13}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserPackage;

    move-object/from16 v7, p3

    .line 312
    invoke-interface {v7, v15}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_66

    .line 314
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArraySet;

    if-nez v16, :cond_5f

    .line 316
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 317
    invoke-virtual {v4, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    :cond_5f
    move-object/from16 v1, v16

    .line 319
    :goto_61
    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    :cond_66
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p2

    goto :goto_3a

    :cond_6b
    move-object/from16 v7, p3

    .line 325
    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ne v14, v1, :cond_85

    .line 326
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v6, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    :cond_85
    :goto_85
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p2

    goto :goto_17

    .line 331
    :cond_8a
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v5, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4, v6}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArrayMap;I)V

    invoke-virtual {v1, v9, v5}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 344
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 345
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d4

    .line 347
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 346
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 348
    iget-object v2, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v4, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v1, v4, v6}, Lcom/android/server/pm/BroadcastHelper;->sendMyPackageSuspendedOrUnsuspended(Ljava/util/function/Supplier;[Ljava/lang/String;ZI)V

    .line 350
    iget-object v2, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v0, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    move-object v3, v1

    new-instance v1, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 352
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v2

    .line 350
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    :cond_d4
    return-void
.end method

.method public setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Landroid/content/pm/UserPackage;IIZ)[Ljava/lang/String;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p7

    move/from16 v7, p8

    move/from16 v3, p9

    move/from16 v8, p10

    .line 102
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v2

    .line 105
    :cond_15
    const-string v4, "PackageManager"

    if-eqz p3, :cond_36

    if-nez v8, :cond_36

    .line 106
    invoke-virtual {v0, v1, v7, v3}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v6

    if-nez v6, :cond_36

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot suspend due to restrictions on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_36
    if-eqz p3, :cond_44

    .line 112
    new-instance v6, Lcom/android/server/pm/pkg/SuspendParams;

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct {v6, v12, v10, v11, v8}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    goto :goto_45

    :cond_44
    const/4 v6, 0x0

    .line 114
    :goto_45
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v2

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    new-instance v11, Ljava/util/ArrayList;

    array-length v12, v2

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    new-instance v12, Landroid/util/IntArray;

    array-length v13, v2

    invoke-direct {v12, v13}, Landroid/util/IntArray;-><init>(I)V

    .line 118
    new-instance v13, Landroid/util/ArraySet;

    array-length v14, v2

    invoke-direct {v13, v14}, Landroid/util/ArraySet;-><init>(I)V

    .line 119
    new-instance v14, Landroid/util/IntArray;

    array-length v15, v2

    invoke-direct {v14, v15}, Landroid/util/IntArray;-><init>(I)V

    if-eqz p3, :cond_6a

    .line 122
    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object v15

    goto :goto_6b

    :cond_6a
    const/4 v15, 0x0

    :goto_6b
    const/4 v9, 0x0

    .line 124
    :goto_6c
    array-length v8, v2

    if-ge v9, v8, :cond_176

    .line 125
    aget-object v8, v2, v9

    .line 126
    iget-object v2, v5, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    iget v2, v5, Landroid/content/pm/UserPackage;->userId:I

    if-ne v2, v7, :cond_ae

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p4, v9

    const-string v9, "Suspending package: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " trying to "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_96

    .line 129
    const-string v9, ""

    goto :goto_99

    :cond_96
    const-string/jumbo v9, "un"

    :goto_99
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "suspend itself. Ignoring"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16c

    :cond_ae
    move/from16 p4, v9

    .line 133
    invoke-interface {v1, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 134
    const-string v9, ". Skipping suspending/un-suspending."

    if-eqz v2, :cond_152

    .line 135
    invoke-interface {v2, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v16

    if-eqz v16, :cond_152

    .line 136
    invoke-interface {v1, v2, v3, v7}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v16

    if-eqz v16, :cond_ca

    goto/16 :goto_152

    :cond_ca
    if-eqz v15, :cond_d5

    .line 142
    aget-boolean v16, v15, p4

    if-nez v16, :cond_d5

    .line 143
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16c

    .line 148
    :cond_d5
    invoke-interface {v2, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    if-nez v1, :cond_e3

    move-object/from16 p5, v2

    const/4 v2, 0x0

    goto :goto_ed

    .line 150
    :cond_e3
    invoke-virtual {v1, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/pkg/SuspendParams;

    move-object/from16 p5, v2

    move-object/from16 v2, v16

    .line 151
    :goto_ed
    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz p3, :cond_104

    if-eqz v2, :cond_104

    .line 155
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v7, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 156
    invoke-virtual {v12, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_16c

    :cond_104
    move/from16 p6, v2

    if-nez p3, :cond_116

    .line 164
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_116

    .line 165
    invoke-virtual {v1, v5}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    goto :goto_117

    :cond_116
    const/4 v3, 0x0

    :goto_117
    if-nez p3, :cond_11b

    if-eqz v3, :cond_129

    .line 168
    :cond_11b
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v7, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/util/IntArray;->add(I)V

    :cond_129
    if-nez p6, :cond_13a

    .line 173
    invoke-virtual {v13, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v7, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_16c

    .line 176
    :cond_13a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No change is needed for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16c

    .line 137
    :cond_152
    :goto_152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find package setting for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_16c
    add-int/lit8 v9, p4, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p9

    goto/16 :goto_6c

    .line 181
    :cond_176
    iget-object v8, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v1, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;

    move/from16 v4, p3

    move v3, v7

    move-object v2, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;IZLandroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;)V

    move v9, v4

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 195
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1cc

    const/4 v1, 0x0

    .line 196
    new-array v2, v1, [Ljava/lang/String;

    .line 197
    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    .line 198
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v2, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    if-eqz v9, :cond_1a7

    .line 199
    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    goto :goto_1a9

    .line 200
    :cond_1a7
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 201
    :goto_1a9
    invoke-virtual {v12}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    move/from16 v7, p8

    move/from16 v6, p10

    .line 198
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/BroadcastHelper;->sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    .line 202
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v2, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v1, v3, v4, v9, v7}, Lcom/android/server/pm/BroadcastHelper;->sendMyPackageSuspendedOrUnsuspended(Ljava/util/function/Supplier;[Ljava/lang/String;ZI)V

    .line 204
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    goto :goto_1ce

    :cond_1cc
    move/from16 v7, p8

    .line 207
    :goto_1ce
    invoke-virtual {v13}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_201

    .line 208
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v0, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/String;

    .line 210
    invoke-virtual {v13, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v14}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    .line 208
    const-string v5, "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

    move/from16 p5, p10

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p2, v5

    move/from16 p6, v7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/BroadcastHelper;->sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    goto :goto_202

    :cond_201
    const/4 v0, 0x0

    .line 213
    :goto_202
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
