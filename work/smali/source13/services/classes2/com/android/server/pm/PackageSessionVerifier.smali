.class final Lcom/android/server/pm/PackageSessionVerifier;
.super Ljava/lang/Object;
.source "PackageSessionVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageSessionVerifier$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageSessionVerifier"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageParserSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mStagedSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mverifyStaged(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->verifyStaged(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    .line 87
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 88
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 89
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Ljava/util/function/Supplier;

    .line 90
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Ljava/util/function/Supplier;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "apexManager"    # Lcom/android/server/pm/ApexManager;
    .param p5, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/ApexManager;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 76
    .local p4, "packageParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    .line 77
    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 79
    iput-object p3, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 80
    iput-object p4, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Ljava/util/function/Supplier;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method private checkActiveSessions()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 563
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSessionVerifier;->checkActiveSessions(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 567
    nop

    .line 568
    return-void

    .line 564
    :catch_d
    move-exception v0

    .line 565
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x6e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t query fs-checkpoint status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 9
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 511
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_7

    .line 512
    return-void

    .line 514
    :cond_7
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 515
    .local v0, "installFlags":I
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    .line 516
    return-void

    .line 518
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 520
    .local v2, "installerPackageName":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageSessionVerifier;->isApexUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 526
    return-void

    .line 521
    :cond_22
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/16 v4, -0x16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update of APEX package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not allowed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method private dispatchEndVerification(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "callback"    # Lcom/android/server/pm/PackageSessionVerifier$Callback;

    .line 246
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method private dispatchVerifyApex(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "callback"    # Lcom/android/server/pm/PackageSessionVerifier$Callback;

    .line 235
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method

.method private endVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 309
    const-string v0, "PackageSessionVerifier"

    :try_start_2
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 310
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->startCheckpoint(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_4e

    .line 318
    :cond_14
    nop

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionReady()V

    .line 330
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 331
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    .line 332
    .local v0, "hasApex":Z
    if-eqz v0, :cond_4d

    .line 333
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->markStagedSessionReady(I)V

    .line 336
    .end local v0    # "hasApex":Z
    :cond_4d
    return-void

    .line 312
    :catch_4e
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to get hold of StorageManager"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x6e

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 472
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 473
    return v1

    .line 475
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    .line 476
    .local v0, "sessionId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v2

    .line 477
    .local v2, "apexSession":Landroid/apex/ApexSessionInfo;
    if-eqz v2, :cond_22

    invoke-static {v2}, Lcom/android/server/pm/PackageSessionVerifier;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_22

    .line 480
    :cond_1b
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result v1

    return v1

    .line 478
    :cond_22
    :goto_22
    return v1
.end method

.method private static isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z
    .registers 2
    .param p0, "info"    # Landroid/apex/ApexSessionInfo;

    .line 467
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private isApexUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "apexPackageName"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v0

    const-string v2, "PackageSessionVerifier"

    if-eqz v0, :cond_20

    .line 486
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getModulesInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "modulesInstaller":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 488
    const-string v3, "No modules installer defined"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return v1

    .line 491
    :cond_1b
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 494
    .end local v0    # "modulesInstaller":Ljava/lang/String;
    :cond_20
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowedVendorApexes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 495
    .local v0, "vendorApexInstaller":Ljava/lang/String;
    if-nez v0, :cond_47

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed to be updated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return v1

    .line 499
    :cond_47
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 3
    .param p0, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 462
    invoke-interface {p0}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method static synthetic lambda$checkOverlaps$5(Ljava/lang/String;Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "s"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 649
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$checkRebootlessApex$4(Ljava/lang/String;Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "s"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 547
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private makeVerificationParams(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Lcom/android/server/pm/VerificationParams;
    .registers 16
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver2;

    .line 165
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b

    .line 166
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .local v0, "user":Landroid/os/UserHandle;
    goto :goto_12

    .line 168
    .end local v0    # "user":Landroid/os/UserHandle;
    :cond_b
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 170
    .restart local v0    # "user":Landroid/os/UserHandle;
    :goto_12
    new-instance v12, Lcom/android/server/pm/VerificationParams;

    iget-object v3, p1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v5, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 171
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v8

    iget v9, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 172
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageLite()Landroid/content/pm/parsing/PackageLite;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v1, v12

    move-object v2, v0

    move-object v4, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/VerificationParams;-><init>(Landroid/os/UserHandle;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V

    .line 170
    return-object v12
.end method

.method private onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;ILjava/lang/String;)V
    .registers 7
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "callback"    # Lcom/android/server/pm/PackageSessionVerifier$Callback;
    .param p3, "errorCode"    # I
    .param p4, "errorMessage"    # Ljava/lang/String;

    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to abort apex session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageSessionVerifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_22
    invoke-interface {p1, p3, p4}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 231
    const/16 v0, -0x16

    invoke-interface {p2, v0, p4}, Lcom/android/server/pm/PackageSessionVerifier$Callback;->onResult(ILjava/lang/String;)V

    .line 232
    return-void
.end method

.method private onVerificationSuccess(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "callback"    # Lcom/android/server/pm/PackageSessionVerifier$Callback;

    .line 220
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/android/server/pm/PackageSessionVerifier$Callback;->onResult(ILjava/lang/String;)V

    .line 221
    return-void
.end method

.method private retrieveRollbackIdForCommitSession(I)I
    .registers 8
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 449
    .local v0, "rm":Landroid/content/rollback/RollbackManager;
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v1

    .line 450
    .local v1, "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_13
    if-ge v2, v3, :cond_29

    .line 451
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/RollbackInfo;

    .line 452
    .local v4, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v5

    if-ne v5, p1, :cond_26

    .line 453
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    return v5

    .line 450
    .end local v4    # "rollback":Landroid/content/rollback/RollbackInfo;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 456
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_29
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find rollback id for commit session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private submitSessionToApexService(Lcom/android/server/pm/StagingManager$StagedSession;I)Ljava/util/List;
    .registers 21
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "rollbackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 395
    move-object/from16 v1, p0

    move/from16 v2, p2

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v3, v0

    .line 396
    .local v3, "childSessionIds":Landroid/util/IntArray;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 397
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 398
    .local v4, "s":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 399
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/IntArray;->add(I)V

    .line 401
    .end local v4    # "s":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_31
    goto :goto_18

    .line 403
    :cond_32
    new-instance v0, Landroid/apex/ApexSessionParams;

    invoke-direct {v0}, Landroid/apex/ApexSessionParams;-><init>()V

    move-object v4, v0

    .line 404
    .local v4, "apexSessionParams":Landroid/apex/ApexSessionParams;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    iput v0, v4, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 405
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, v4, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 406
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ne v0, v5, :cond_53

    .line 407
    iput-boolean v6, v4, Landroid/apex/ApexSessionParams;->isRollback:Z

    .line 408
    iput v2, v4, Landroid/apex/ApexSessionParams;->rollbackId:I

    goto :goto_5a

    .line 410
    :cond_53
    const/4 v0, -0x1

    if-eq v2, v0, :cond_5a

    .line 411
    iput-boolean v6, v4, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    .line 412
    iput v2, v4, Landroid/apex/ApexSessionParams;->rollbackId:I

    .line 417
    :cond_5a
    :goto_5a
    iget-object v0, v1, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ApexManager;->submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;

    move-result-object v5

    .line 418
    .local v5, "apexInfoList":Landroid/apex/ApexInfoList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 419
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 420
    .local v7, "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v5, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v8, v0

    const/4 v9, 0x0

    move v10, v9

    :goto_71
    if-ge v10, v8, :cond_fc

    aget-object v11, v0, v10

    .line 422
    .local v11, "apexInfo":Landroid/apex/ApexInfo;
    const/16 v12, 0x80

    .line 423
    .local v12, "flags":I
    :try_start_77
    iget-object v14, v1, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Ljava/util/function/Supplier;

    invoke-interface {v14}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/parsing/PackageParser2;
    :try_end_7f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_77 .. :try_end_7f} :catch_d4

    .line 424
    .local v14, "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :try_start_7f
    new-instance v15, Ljava/io/File;

    iget-object v13, v11, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v15, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    .line 425
    .local v13, "apexFile":Ljava/io/File;
    const/16 v15, 0x80

    invoke-virtual {v14, v13, v15, v9}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v16

    move-object/from16 v17, v16

    .line 427
    .local v17, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    move-object/from16 v9, v17

    .end local v17    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .local v9, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    invoke-static {v9, v11, v15}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generate(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v15
    :try_end_95
    .catchall {:try_start_7f .. :try_end_95} :catchall_c6

    .line 428
    .local v15, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v15, :cond_a9

    .line 433
    .end local v9    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v13    # "apexFile":Ljava/io/File;
    if-eqz v14, :cond_9c

    :try_start_99
    invoke-virtual {v14}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_9c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_99 .. :try_end_9c} :catch_d4

    .line 437
    .end local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :cond_9c
    nop

    .line 438
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v9, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v11    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v12    # "flags":I
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_71

    .line 429
    .restart local v9    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .restart local v11    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v12    # "flags":I
    .restart local v13    # "apexFile":Ljava/io/File;
    .restart local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_a9
    :try_start_a9
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to generate package info: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v11, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v10, -0x16

    invoke-direct {v0, v10, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v3    # "childSessionIds":Landroid/util/IntArray;
    .end local v4    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .end local v5    # "apexInfoList":Landroid/apex/ApexInfoList;
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v12    # "flags":I
    .end local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .end local p0    # "this":Lcom/android/server/pm/PackageSessionVerifier;
    .end local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local p2    # "rollbackId":I
    throw v0
    :try_end_c6
    .catchall {:try_start_a9 .. :try_end_c6} :catchall_c6

    .line 423
    .end local v9    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v13    # "apexFile":Ljava/io/File;
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "childSessionIds":Landroid/util/IntArray;
    .restart local v4    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .restart local v5    # "apexInfoList":Landroid/apex/ApexInfoList;
    .restart local v6    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v12    # "flags":I
    .restart local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local p0    # "this":Lcom/android/server/pm/PackageSessionVerifier;
    .restart local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    .restart local p2    # "rollbackId":I
    :catchall_c6
    move-exception v0

    move-object v8, v0

    if-eqz v14, :cond_d3

    :try_start_ca
    invoke-virtual {v14}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_ce

    goto :goto_d3

    :catchall_ce
    move-exception v0

    move-object v9, v0

    :try_start_d0
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "childSessionIds":Landroid/util/IntArray;
    .end local v4    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .end local v5    # "apexInfoList":Landroid/apex/ApexInfoList;
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v12    # "flags":I
    .end local p0    # "this":Lcom/android/server/pm/PackageSessionVerifier;
    .end local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local p2    # "rollbackId":I
    :cond_d3
    :goto_d3
    throw v8
    :try_end_d4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_d0 .. :try_end_d4} :catch_d4

    .line 433
    .end local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local v3    # "childSessionIds":Landroid/util/IntArray;
    .restart local v4    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .restart local v5    # "apexInfoList":Landroid/apex/ApexInfoList;
    .restart local v6    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v12    # "flags":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageSessionVerifier;
    .restart local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    .restart local p2    # "rollbackId":I
    :catch_d4
    move-exception v0

    .line 434
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse APEX package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v11, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, -0x16

    invoke-direct {v8, v10, v9, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 441
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v11    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v12    # "flags":I
    :cond_fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Session "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " has following APEX packages: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "PackageSessionVerifier"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-object v6
.end method

.method private validateApexSignature(Landroid/content/pm/PackageInfo;)V
    .registers 15
    .param p1, "newApexPkg"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 345
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 346
    .local v0, "apexPath":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 347
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v2}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v2

    .line 350
    .local v2, "minSignatureScheme":I
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v3

    .line 351
    .local v3, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    nop

    .line 352
    invoke-virtual {v3}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v4

    .line 351
    invoke-static {v4, v0, v2}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 353
    .local v4, "newResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    const-string v6, " : "

    const-string v7, "Failed to parse APEX package "

    const/16 v8, -0x16

    if-nez v5, :cond_d8

    .line 358
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/SigningDetails;

    .line 361
    .local v5, "newSigningDetails":Landroid/content/pm/SigningDetails;
    iget-object v9, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v1, v10}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 363
    .local v9, "existingApexPkg":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_bf

    .line 369
    nop

    .line 370
    invoke-virtual {v3}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 369
    invoke-static {v11, v12, v10}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v11

    .line 372
    .local v11, "existingResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v11}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v12

    if-nez v12, :cond_94

    .line 377
    invoke-interface {v11}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SigningDetails;

    .line 380
    .local v6, "existingSigningDetails":Landroid/content/pm/SigningDetails;
    invoke-virtual {v5, v6, v10}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v7

    if-nez v7, :cond_93

    const/16 v7, 0x8

    .line 382
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v7

    if-eqz v7, :cond_5e

    goto :goto_93

    .line 387
    :cond_5e
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "APK-container signature of APEX package "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " with version "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, p1, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " and path "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " is not compatible with the one currently installed on device"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 384
    :cond_93
    :goto_93
    return-void

    .line 373
    .end local v6    # "existingSigningDetails":Landroid/content/pm/SigningDetails;
    :cond_94
    new-instance v10, Lcom/android/server/pm/PackageManagerException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 375
    invoke-interface {v11}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-direct {v10, v8, v6, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 366
    .end local v11    # "existingResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_bf
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown apex package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 354
    .end local v5    # "newSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v9    # "existingApexPkg":Landroid/content/pm/PackageInfo;
    :cond_d8
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 356
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private verifyAPK(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 10
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "callback"    # Lcom/android/server/pm/PackageSessionVerifier$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/android/server/pm/PackageSessionVerifier$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$1;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    .line 147
    .local v0, "observer":Landroid/content/pm/IPackageInstallObserver2;
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSessionVerifier;->makeVerificationParams(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Lcom/android/server/pm/VerificationParams;

    move-result-object v1

    .line 148
    .local v1, "verifyingSession":Lcom/android/server/pm/VerificationParams;
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 149
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v2

    .line 150
    .local v2, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v3, "verifyingChildSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/VerificationParams;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 152
    .local v5, "child":Lcom/android/server/pm/PackageInstallerSession;
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/PackageSessionVerifier;->makeVerificationParams(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Lcom/android/server/pm/VerificationParams;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v5    # "child":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_20

    .line 154
    :cond_35
    invoke-virtual {v1, v3}, Lcom/android/server/pm/VerificationParams;->verifyStage(Ljava/util/List;)V

    .line 155
    .end local v2    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local v3    # "verifyingChildSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/VerificationParams;>;"
    goto :goto_44

    .line 157
    :cond_39
    iget-object v2, v1, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationTiming()Lcom/android/server/pm/InstallationTiming;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/pm/OriginInfo;->mTiming:Lcom/android/server/pm/InstallationTiming;

    .line 158
    invoke-virtual {v1}, Lcom/android/server/pm/VerificationParams;->verifyStage()V

    .line 160
    :goto_44
    return-void
.end method

.method private verifyApex(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 8
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 265
    const/4 v0, -0x1

    .line 266
    .local v0, "rollbackId":I
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3c

    .line 270
    const-class v1, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 271
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 275
    .local v1, "rm":Lcom/android/server/rollback/RollbackManagerInternal;
    :try_start_14
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/rollback/RollbackManagerInternal;->notifyStagedSession(I)I

    move-result v2
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1c} :catch_1e

    move v0, v2

    .line 279
    goto :goto_4b

    .line 276
    :catch_1e
    move-exception v2

    .line 277
    .local v2, "re":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to notifyStagedSession for session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 278
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 277
    const-string v4, "PackageSessionVerifier"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 280
    .end local v1    # "rm":Lcom/android/server/rollback/RollbackManagerInternal;
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :cond_3c
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 281
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->retrieveRollbackIdForCommitSession(I)I

    move-result v0

    goto :goto_4c

    .line 280
    :cond_4b
    :goto_4b
    nop

    .line 284
    :goto_4c
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v1

    .line 287
    .local v1, "hasApex":Z
    if-eqz v1, :cond_74

    .line 288
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSessionVerifier;->submitSessionToApexService(Lcom/android/server/pm/StagingManager$StagedSession;I)Ljava/util/List;

    move-result-object v2

    .line 289
    .local v2, "apexPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_5b
    if-ge v3, v4, :cond_69

    .line 290
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageSessionVerifier;->validateApexSignature(Landroid/content/pm/PackageInfo;)V

    .line 289
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 292
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_69
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 293
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 294
    .local v3, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->pruneCachedApksInApex(Ljava/util/List;)V

    .line 296
    .end local v2    # "apexPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :cond_74
    return-void
.end method

.method private verifyStaged(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "callback"    # Lcom/android/server/pm/PackageSessionVerifier$Callback;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting preRebootVerification for session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageSessionVerifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method


# virtual methods
.method checkActiveSessions(Z)V
    .registers 6
    .param p1, "supportsCheckpoint"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "activeSessions":I
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 574
    .local v2, "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 575
    goto :goto_7

    .line 577
    :cond_20
    nop

    .end local v2    # "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    add-int/lit8 v0, v0, 0x1

    .line 578
    goto :goto_7

    .line 579
    :cond_24
    if-nez p1, :cond_34

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2a

    goto :goto_34

    .line 580
    :cond_2a
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x77

    const-string v3, "Cannot stage multiple sessions without checkpoint support"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 584
    :cond_34
    :goto_34
    return-void
.end method

.method checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 11
    .param p1, "parent"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "child"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 635
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e0

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_e0

    .line 638
    :cond_e
    invoke-interface {p2}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_bb

    .line 644
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 645
    .local v2, "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 646
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    if-ne v3, v4, :cond_3d

    .line 647
    goto :goto_1a

    .line 649
    :cond_3d
    new-instance v3, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 650
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->getCommittedMillis()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getCommittedMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    const-string v4, " has been staged already by session: "

    const-string v5, " in session: "

    const-string v6, "Package: "

    const/16 v7, -0x77

    if-ltz v3, :cond_89

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 662
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 664
    invoke-interface {p2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 659
    invoke-interface {v2, v7, v3}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_b8

    .line 652
    :cond_89
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 655
    invoke-interface {p2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 657
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 667
    .end local v2    # "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_b8
    :goto_b8
    goto/16 :goto_1a

    .line 668
    :cond_ba
    return-void

    .line 640
    :cond_bb
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot stage session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 642
    invoke-interface {p2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with package name null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 636
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_e0
    :goto_e0
    return-void
.end method

.method checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 8
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 534
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_8a

    .line 537
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "packageName":Ljava/lang/String;
    const/16 v1, -0x16

    if-eqz v0, :cond_69

    .line 543
    iget-object v2, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 544
    .local v3, "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 545
    goto :goto_1c

    .line 547
    :cond_35
    new-instance v4, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 554
    .end local v3    # "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    goto :goto_1c

    .line 549
    .restart local v3    # "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_41
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Staged session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 551
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already contains "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 555
    .end local v3    # "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_68
    return-void

    .line 539
    :cond_69
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with package name null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 535
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_8a
    :goto_8a
    return-void
.end method

.method checkRollbacks(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 9
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 594
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_cb

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_cb

    .line 597
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 598
    .local v1, "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 599
    goto :goto_14

    .line 601
    :cond_2d
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    const-string v3, "Session was failed by rollback session: "

    const/16 v4, -0x77

    if-eqz v2, :cond_a0

    invoke-static {v1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 605
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    const-string v5, "PackageSessionVerifier"

    if-nez v2, :cond_5f

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to abort apex session "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 613
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-interface {v1, v4, v2}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is marked failed due to rollback session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 615
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    .line 616
    :cond_a0
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    if-nez v2, :cond_c8

    invoke-static {v1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    if-nez v2, :cond_ad

    goto :goto_c8

    .line 617
    :cond_ad
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 619
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 622
    .end local v1    # "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_c8
    :goto_c8
    goto/16 :goto_14

    .line 623
    :cond_ca
    return-void

    .line 595
    :cond_cb
    :goto_cb
    return-void
.end method

.method synthetic lambda$dispatchEndVerification$3$com-android-server-pm-PackageSessionVerifier(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "callback"    # Lcom/android/server/pm/PackageSessionVerifier$Callback;

    .line 248
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->endVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationSuccess(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_6} :catch_7

    .line 252
    goto :goto_11

    .line 250
    :catch_7
    move-exception v0

    .line 251
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;ILjava/lang/String;)V

    .line 253
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_11
    return-void
.end method

.method synthetic lambda$dispatchVerifyApex$2$com-android-server-pm-PackageSessionVerifier(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "callback"    # Lcom/android/server/pm/PackageSessionVerifier$Callback;

    .line 237
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->verifyApex(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->dispatchEndVerification(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_6} :catch_7

    .line 241
    goto :goto_11

    .line 239
    :catch_7
    move-exception v0

    .line 240
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;ILjava/lang/String;)V

    .line 242
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_11
    return-void
.end method

.method synthetic lambda$verify$0$com-android-server-pm-PackageSessionVerifier(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 7
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "callback"    # Lcom/android/server/pm/PackageSessionVerifier$Callback;

    .line 99
    :try_start_0
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSessionVerifier;->storeSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 100
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 101
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 102
    .local v1, "child":Lcom/android/server/pm/PackageInstallerSession;
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 104
    .end local v1    # "child":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_13

    :cond_26
    goto :goto_2d

    .line 106
    :cond_27
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 109
    :goto_2d
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->verifyAPK(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    :try_end_30
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_30} :catch_31

    .line 114
    goto :goto_4a

    .line 110
    :catch_31
    move-exception v0

    .line 111
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "errorMessage":Ljava/lang/String;
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p1, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 113
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/android/server/pm/PackageSessionVerifier$Callback;->onResult(ILjava/lang/String;)V

    .line 115
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v1    # "errorMessage":Ljava/lang/String;
    :goto_4a
    return-void
.end method

.method synthetic lambda$verifyStaged$1$com-android-server-pm-PackageSessionVerifier(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "callback"    # Lcom/android/server/pm/PackageSessionVerifier$Callback;

    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageSessionVerifier;->checkActiveSessions()V

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRollbacks(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 195
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 196
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 197
    .local v1, "child":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 198
    .end local v1    # "child":Lcom/android/server/pm/StagingManager$StagedSession;
    goto :goto_14

    :cond_24
    goto :goto_28

    .line 200
    :cond_25
    invoke-virtual {p0, p1, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 202
    :goto_28
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->dispatchVerifyApex(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    :try_end_2b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 205
    goto :goto_36

    .line 203
    :catch_2c
    move-exception v0

    .line 204
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;ILjava/lang/String;)V

    .line 206
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_36
    return-void
.end method

.method storeSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 3
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 214
    if-eqz p1, :cond_7

    .line 215
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_7
    return-void
.end method

.method public verify(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "callback"    # Lcom/android/server/pm/PackageSessionVerifier$Callback;

    .line 97
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method
