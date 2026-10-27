.class public final Lcom/android/server/pm/PackageMetrics;
.super Ljava/lang/Object;
.source "PackageMetrics.java"


# static fields
.field public static final LOG_INVALIDATION_METRICS_TIMEOUT_MS:J

.field public static sInvalidationMetrics:Landroid/util/SparseArray;

.field public static sOkayToWrite:Z

.field public static sSystemServiceManager:Lcom/android/server/SystemServiceManager;


# instance fields
.field public final mInstallRequest:Lcom/android/server/pm/InstallRequest;

.field public final mInstallStartTimestampMillis:J

.field public final mInstallSteps:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$f5pHzh7OuAZE-zi-5tXpPdqd4ck()V
    .registers 0

    .line 674
    invoke-static {}, Lcom/android/server/pm/PackageMetrics;->logInvalidationMetrics()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x5

    .line 210
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/PackageMetrics;->LOG_INVALIDATION_METRICS_TIMEOUT_MS:J

    const/4 v0, 0x0

    .line 217
    sput-object v0, Lcom/android/server/pm/PackageMetrics;->sSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 219
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageMetrics;->sInvalidationMetrics:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 221
    sput-boolean v0, Lcom/android/server/pm/PackageMetrics;->sOkayToWrite:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstallRequest;)V
    .registers 4

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallStartTimestampMillis:J

    .line 227
    iput-object p1, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    return-void
.end method

.method public static getUid(II)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    .line 318
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 320
    :cond_7
    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0
.end method

.method public static logInvalidationMetrics()V
    .registers 11

    .line 647
    sget-object v0, Lcom/android/server/pm/PackageMetrics;->sInvalidationMetrics:Landroid/util/SparseArray;

    monitor-enter v0

    .line 648
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PackageMetrics;->sSystemServiceManager:Lcom/android/server/SystemServiceManager;

    if-nez v1, :cond_14

    .line 649
    const-class v1, Lcom/android/server/SystemServiceManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemServiceManager;

    sput-object v1, Lcom/android/server/pm/PackageMetrics;->sSystemServiceManager:Lcom/android/server/SystemServiceManager;

    goto :goto_14

    :catchall_12
    move-exception v1

    goto :goto_73

    .line 651
    :cond_14
    :goto_14
    sget-boolean v1, Lcom/android/server/pm/PackageMetrics;->sOkayToWrite:Z

    if-nez v1, :cond_25

    sget-object v1, Lcom/android/server/pm/PackageMetrics;->sSystemServiceManager:Lcom/android/server/SystemServiceManager;

    if-eqz v1, :cond_25

    .line 652
    invoke-virtual {v1}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    .line 653
    sput-boolean v1, Lcom/android/server/pm/PackageMetrics;->sOkayToWrite:Z

    .line 655
    :cond_25
    sget-boolean v1, Lcom/android/server/pm/PackageMetrics;->sOkayToWrite:Z

    if-eqz v1, :cond_63

    .line 656
    sget-object v1, Lcom/android/server/pm/PackageMetrics;->sInvalidationMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_31
    if-ge v3, v1, :cond_5e

    .line 658
    sget-object v4, Lcom/android/server/pm/PackageMetrics;->sInvalidationMetrics:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 659
    sget-object v5, Lcom/android/server/pm/PackageMetrics;->sInvalidationMetrics:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseIntArray;

    if-nez v5, :cond_44

    goto :goto_5b

    .line 663
    :cond_44
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    move v7, v2

    :goto_49
    if-ge v7, v6, :cond_5b

    .line 665
    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 666
    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    const/16 v10, 0x46f

    .line 667
    invoke-static {v10, v4, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    :cond_5b
    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 672
    :cond_5e
    sget-object v1, Lcom/android/server/pm/PackageMetrics;->sInvalidationMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 674
    :cond_63
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageMetrics$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/pm/PackageMetrics$$ExternalSyntheticLambda0;-><init>()V

    sget-wide v3, Lcom/android/server/pm/PackageMetrics;->LOG_INVALIDATION_METRICS_TIMEOUT_MS:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 676
    monitor-exit v0

    return-void

    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_12

    throw v1
.end method

.method public static onDependencyInstallationFailure(ILjava/lang/String;IILandroid/content/pm/PackageInstaller$SessionParams;I)V
    .registers 41

    move-object/from16 v0, p4

    if-nez v0, :cond_5

    return-void

    .line 475
    :cond_5
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 476
    invoke-virtual {v1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v1

    move/from16 v24, v1

    goto :goto_13

    :cond_11
    move/from16 v24, v2

    .line 479
    :goto_13
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iget v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v3, v3, 0x800

    const/4 v4, 0x1

    if-eqz v3, :cond_1f

    move/from16 v26, v4

    goto :goto_21

    :cond_1f
    move/from16 v26, v2

    :goto_21
    iget v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_29

    move/from16 v29, v4

    goto :goto_2b

    :cond_29
    move/from16 v29, v2

    :goto_2b
    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const/16 v33, 0x1

    const/16 v3, 0x20c

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v11, p2

    move/from16 v22, p3

    move/from16 v34, p5

    move/from16 v32, v0

    move/from16 v25, v1

    invoke-static/range {v3 .. v34}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZZI)V

    return-void
.end method

.method public static onUninstallSucceeded(Lcom/android/server/pm/PackageRemovedInfo;II)V
    .registers 14

    .line 412
    iget-boolean v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    if-eqz v0, :cond_5

    goto :goto_f

    .line 416
    :cond_5
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 417
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_10

    :goto_f
    return-void

    .line 422
    :cond_10
    iget-object v3, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 423
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v4

    .line 424
    iget-object v5, p0, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 425
    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v6

    .line 426
    iget v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 427
    invoke-static {v0, p2}, Lcom/android/server/pm/PackageMetrics;->getUid(II)I

    move-result v2

    iget-boolean v9, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    iget-boolean v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    xor-int/lit8 v10, v0, 0x1

    const/16 v1, 0x22a

    const/4 v8, 0x1

    move v7, p1

    .line 426
    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(II[I[I[I[IIIZZ)V

    .line 430
    iget-object p1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 431
    iget-wide v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 432
    invoke-static {p1, v0, v1, p2}, Lcom/android/server/pm/PackageMetrics;->reportUninstallationToSecurityLog(Ljava/lang/String;JI)V

    return-void
.end method

.method public static onVerificationFailed(Lcom/android/server/pm/VerifyingSession;)V
    .registers 33

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getSessionId()I

    move-result v1

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getRet()I

    move-result v8

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getInstallerPackageUid()I

    move-result v19

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getDataLoaderType()I

    move-result v21

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getUserActionRequiredType()I

    move-result v22

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->isInstant()Z

    move-result v23

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->isInherit()Z

    move-result v26

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->isStaged()Z

    move-result v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v0, 0x20c

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 436
    invoke-static/range {v0 .. v31}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZZI)V

    return-void
.end method

.method public static reportCacheInvalidationEvent(II)V
    .registers 2

    .line 628
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageMetrics;->storeInvalidationMetrics(II)V

    return-void
.end method

.method public static reportComponentStateChanged(IIIZZI)V
    .registers 13

    const/16 v0, 0x35f

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 620
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZI)V

    return-void
.end method

.method public static reportComponentStateChanged(Lcom/android/server/pm/Computer;Ljava/util/List;I)V
    .registers 12

    if-eqz p1, :cond_2b

    .line 602
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2b

    .line 606
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_2a

    .line 608
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;

    .line 609
    iget v3, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mUid:I

    iget v4, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentOldState:I

    iget v5, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentNewState:I

    .line 612
    invoke-virtual {v2, p0, p2}, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->isLauncherActivity(Lcom/android/server/pm/Computer;I)Z

    move-result v6

    iget-boolean v7, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mIsForWholeApp:Z

    iget v8, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mCallingUid:I

    .line 609
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageMetrics;->reportComponentStateChanged(IIIZZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2a
    return-void

    .line 603
    :cond_2b
    :goto_2b
    const-string p0, "PackageMetrics"

    const-string p1, "Fail to report component state due to metrics is empty"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static reportUninstallationToSecurityLog(Ljava/lang/String;JI)V
    .registers 5

    .line 540
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 543
    :cond_7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 544
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3347b

    .line 543
    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static storeInvalidationMetrics(II)V
    .registers 5

    .line 632
    sget-object v0, Lcom/android/server/pm/PackageMetrics;->sInvalidationMetrics:Landroid/util/SparseArray;

    monitor-enter v0

    .line 633
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PackageMetrics;->sInvalidationMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    if-nez v1, :cond_1a

    .line 635
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 636
    sget-object v2, Lcom/android/server/pm/PackageMetrics;->sInvalidationMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_25

    .line 639
    :cond_1a
    :goto_1a
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 638
    invoke-virtual {v1, p1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 640
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_18

    throw p0
.end method


# virtual methods
.method public final getApksSize(Ljava/io/File;)J
    .registers 5

    .line 325
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 327
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageMetrics$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/pm/PackageMetrics$1;-><init>(Lcom/android/server/pm/PackageMetrics;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v1, v2}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_11

    .line 350
    :catch_11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    return-wide p0
.end method

.method public final getInstallStepDurations()Landroid/util/Pair;
    .registers 9

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 373
    :goto_c
    iget-object v4, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_49

    .line 374
    iget-object v4, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageMetrics$InstallStep;->getDurationMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_46

    .line 376
    iget-object v4, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v4, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageMetrics$InstallStep;->getDurationMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 380
    :cond_49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v3, p0, [I

    .line 381
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [J

    :goto_55
    if-ge v2, p0, :cond_72

    .line 383
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v2

    .line 384
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 386
    :cond_72
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public onInstallFailed()V
    .registers 2

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    return-void
.end method

.method public onInstallSucceed()V
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->reportInstallationToSecurityLog(I)V

    const/4 v0, 0x1

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    return-void
.end method

.method public onStepFinished(I)V
    .registers 2

    .line 358
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageMetrics$InstallStep;

    if-eqz p0, :cond_d

    .line 361
    invoke-virtual {p0}, Lcom/android/server/pm/PackageMetrics$InstallStep;->finish()V

    :cond_d
    return-void
.end method

.method public onStepFinished(IJ)V
    .registers 5

    .line 366
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-direct {v0, p2, p3}, Lcom/android/server/pm/PackageMetrics$InstallStep;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onStepStarted(I)V
    .registers 3

    .line 354
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-direct {v0}, Lcom/android/server/pm/PackageMetrics$InstallStep;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final reportInstallationStats(Z)V
    .registers 40

    move-object/from16 v0, p0

    .line 240
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 241
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    if-nez v1, :cond_d

    return-void

    .line 248
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/pm/PackageMetrics;->mInstallStartTimestampMillis:J

    sub-long v22, v2, v4

    .line 250
    invoke-virtual {v0}, Lcom/android/server/pm/PackageMetrics;->getInstallStepDurations()Landroid/util/Pair;

    move-result-object v2

    .line 251
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v10

    .line 252
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getOriginUsers()[I

    move-result-object v12

    if-nez p1, :cond_38

    .line 255
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallFromAdb()Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_38

    .line 258
    :cond_30
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_36
    move-object v8, v3

    goto :goto_3a

    :cond_38
    :goto_38
    const/4 v3, 0x0

    goto :goto_36

    .line 261
    :goto_3a
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageUid()I

    move-result v25

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_81

    .line 265
    iget-object v5, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->isInstallForUsers()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 268
    iget-object v5, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_66

    .line 270
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v3

    .line 271
    new-instance v6, Ljava/io/File;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageMetrics;->getApksSize(Ljava/io/File;)J

    move-result-wide v5

    goto :goto_67

    :cond_66
    move-wide v5, v3

    :goto_67
    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    goto :goto_85

    .line 274
    :cond_6c
    iget-object v5, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-eqz v5, :cond_81

    .line 276
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    .line 277
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageMetrics;->getApksSize(Ljava/io/File;)J

    move-result-wide v5

    goto :goto_67

    :cond_81
    move-wide/from16 v16, v3

    move-wide/from16 v18, v16

    .line 283
    :goto_85
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 284
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getSessionId()I

    move-result v7

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 286
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageMetrics;->getUid(II)I

    move-result v9

    .line 288
    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v11

    .line 290
    invoke-virtual {v1, v12}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v13

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 291
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v14

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 292
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getInternalErrorCode()I

    move-result v15

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v1

    check-cast v20, [I

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v1

    check-cast v21, [J

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 298
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v24

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 301
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result v27

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 302
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getRequireUserAction()I

    move-result v28

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 303
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstantInstall()Z

    move-result v29

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 304
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result v30

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 305
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v31

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 306
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallInherit()Z

    move-result v32

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 307
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallForUsers()Z

    move-result v33

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 308
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v34

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 311
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isDependencyInstallerEnabled()Z

    move-result v36

    iget-object v0, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 312
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getMissingSharedLibraryCount()I

    move-result v37

    const/16 v6, 0x20c

    const/16 v26, -0x1

    const/16 v35, 0x0

    .line 283
    invoke-static/range {v6 .. v37}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZZI)V

    return-void
.end method

.method public final reportInstallationToSecurityLog(I)V
    .registers 6

    .line 513
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_45

    .line 520
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_45

    .line 524
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    .line 526
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result p0

    if-nez p0, :cond_33

    .line 527
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 528
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33479

    .line 527
    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    .line 530
    :cond_33
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 531
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3347a

    .line 530
    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_45
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_45} :catch_45
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_45} :catch_45

    :catch_45
    :goto_45
    return-void
.end method
