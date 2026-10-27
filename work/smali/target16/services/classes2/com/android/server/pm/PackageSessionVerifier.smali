.class public final Lcom/android/server/pm/PackageSessionVerifier;
.super Ljava/lang/Object;
.source "PackageSessionVerifier.java"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPackageParserSupplier:Ljava/util/function/Supplier;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mStagedSessions:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$08MqprYAvf5Emies8ndlG5KBsmE(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->lambda$verify$0(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5qzBrZDe9VdeZP59aei1tUOsPiM(Ljava/lang/String;Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 2

    .line 524
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MksuqjzWsvOfGiAd6wRwvGZrPnA(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->lambda$verifyStaged$1(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PsteoPuJoQ6z6lwP6GuX91TAuK0(Ljava/lang/String;Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 2

    .line 626
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YtRBpJoUX-7iRsWdzvGwhFarAI8(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->lambda$dispatchVerifyApex$2(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l8hW4UAzKCDs1Kd_iczowHyOg6M(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->lambda$dispatchEndVerification$3(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mverifyStaged(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->verifyStaged(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    .line 88
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 89
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 90
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Ljava/util/function/Supplier;

    .line 91
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Ljava/util/function/Supplier;Landroid/os/Looper;)V
    .registers 7

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 80
    iput-object p3, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 81
    iput-object p4, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Ljava/util/function/Supplier;

    .line 82
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z
    .registers 2

    .line 444
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v0, :cond_13

    iget-boolean p0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 2

    .line 439
    invoke-interface {p0}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final checkActiveSessions()V
    .registers 4

    .line 540
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSessionVerifier;->checkActiveSessions(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 542
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t query fs-checkpoint status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x6e

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public checkActiveSessions(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 550
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 551
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_7

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_23
    if-nez p1, :cond_33

    const/4 p0, 0x1

    if-gt v0, p0, :cond_29

    goto :goto_33

    .line 557
    :cond_29
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x77

    const-string v0, "Cannot stage multiple sessions without checkpoint support"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method public final checkApexSignature(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 8

    .line 139
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_55

    .line 142
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x40000000

    const/4 v5, 0x0

    .line 143
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->getSigningDetails(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 150
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    const/4 v1, 0x1

    .line 151
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-nez v1, :cond_55

    const/16 v1, 0x8

    .line 153
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_55

    .line 157
    :cond_37
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APK container signature of APEX package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not compatible with the one currently installed on device"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x16

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_55
    :goto_55
    return-void

    .line 146
    :cond_56
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to install new APEX package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x17

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5

    .line 488
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_21

    .line 491
    :cond_7
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    goto :goto_21

    .line 495
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 497
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->isApexUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    :goto_21
    return-void

    .line 498
    :cond_22
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update of APEX package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not allowed for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x16

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 612
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_ce

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_ce

    .line 615
    :cond_e
    invoke-interface {p2}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 621
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 622
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 623
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    if-ne v2, v3, :cond_3d

    goto :goto_1a

    .line 626
    :cond_3d
    new-instance v2, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 627
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->getCommittedMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getCommittedMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const-string v3, " has been staged already by session: "

    const-string v4, " in session: "

    const-string v5, "Package: "

    const/16 v6, -0x77

    if-ltz v2, :cond_83

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-interface {p2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 636
    invoke-interface {v1, v6, v2}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_1a

    .line 629
    :cond_83
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-interface {p2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 617
    :cond_ac
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot stage session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-interface {p2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with package name null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x16

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_ce
    :goto_ce
    return-void
.end method

.method public checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 511
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-nez v0, :cond_82

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_82

    .line 514
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x16

    if-eqz v0, :cond_64

    .line 520
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_82

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 521
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_1c

    .line 524
    :cond_35
    new-instance v2, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_1c

    .line 526
    :cond_41
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Staged session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already contains "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 516
    :cond_64
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with package name null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_82
    :goto_82
    return-void
.end method

.method public checkRollbacks(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 571
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c0

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_c0

    .line 574
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 575
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_14

    .line 578
    :cond_2d
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    const-string v3, "Session was failed by rollback session: "

    const/16 v4, -0x77

    if-eqz v2, :cond_99

    invoke-static {v1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 582
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    const-string v5, "PackageSessionVerifier"

    if-nez v2, :cond_5d

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to abort apex session "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-interface {v1, v4, v2}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is marked failed due to rollback session: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 593
    :cond_99
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {v1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    if-nez v2, :cond_a7

    goto/16 :goto_14

    .line 594
    :cond_a7
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_c0
    :goto_c0
    return-void
.end method

.method public final createVerifyingSession(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Lcom/android/server/pm/VerifyingSession;
    .registers 18

    move-object/from16 v0, p1

    .line 207
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_e

    .line 208
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    :goto_c
    move-object v4, v1

    goto :goto_16

    .line 210
    :cond_e
    new-instance v1, Landroid/os/UserHandle;

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_c

    .line 212
    :goto_16
    new-instance v3, Lcom/android/server/pm/VerifyingSession;

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 213
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v9

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v10

    iget v11, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 214
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageLite()Landroid/content/pm/parsing/PackageLite;

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getUserActionRequired()Z

    move-result v13

    iget-object v14, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v14}, Lcom/android/server/pm/VerifyingSession;-><init>(Landroid/os/UserHandle;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;ZLcom/android/server/pm/PackageManagerService;)V

    return-object v3
.end method

.method public final dispatchEndVerification(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 288
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dispatchVerifyApex(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 277
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final endVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 6

    .line 345
    const-string v0, "PackageSessionVerifier"

    const/16 v1, -0x6e

    :try_start_4
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 346
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/os/storage/IStorageManager;->startCheckpoint(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_19

    :catch_17
    move-exception p0

    goto :goto_74

    .line 364
    :cond_19
    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as ready"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionReady()V

    .line 369
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 370
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 372
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->markStagedSessionReady(I)V

    :cond_4e
    return-void

    .line 375
    :cond_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mark session "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as ready."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Session is abandoned."

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 350
    :goto_74
    const-string p1, "Failed to get hold of StorageManager"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 4

    .line 449
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 452
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    .line 453
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 454
    invoke-static {v0}, Lcom/android/server/pm/PackageSessionVerifier;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_22

    .line 457
    :cond_1b
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result p0

    return p0

    :cond_22
    :goto_22
    return v1
.end method

.method public final getSigningDetails(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningDetails;
    .registers 5

    .line 122
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 123
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 124
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result p0

    .line 126
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 127
    invoke-static {v0, p1, p0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 129
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 134
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SigningDetails;

    return-object p0

    .line 130
    :cond_1f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to verify APEX package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    const/16 v1, -0x16

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final isApexUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 461
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object p0

    const-string v1, "PackageSessionVerifier"

    if-eqz p0, :cond_20

    .line 463
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getModulesInstallerPackageName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1b

    .line 465
    const-string p0, "No modules installer defined"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 468
    :cond_1b
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 471
    :cond_20
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getAllowedVendorApexes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_45

    .line 473
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed to be updated"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 476
    :cond_45
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$dispatchEndVerification$3(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 290
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->endVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationSuccess(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    .line 293
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$dispatchVerifyApex$2(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 279
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->verifyApex(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->dispatchEndVerification(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    .line 282
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$verify$0(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 100
    :try_start_0
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSessionVerifier;->storeSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 101
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 102
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexSignature(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_13

    :catch_29
    move-exception p0

    goto :goto_38

    .line 108
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexSignature(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 112
    :cond_34
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->verifyAPK(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    :try_end_37
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_37} :catch_29

    return-void

    .line 114
    :goto_38
    iget v0, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget v1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p1, v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 116
    iget p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/android/server/pm/PackageSessionVerifier$Callback;->onResult(ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$verifyStaged$1(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 235
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSessionVerifier;->checkActiveSessions()V

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRollbacks(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 237
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 238
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 239
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V

    goto :goto_14

    :catch_24
    move-exception v0

    goto :goto_2d

    .line 242
    :cond_26
    invoke-virtual {p0, p1, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 244
    :cond_29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->dispatchVerifyApex(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    :try_end_2c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_2c} :catch_24

    return-void

    .line 246
    :goto_2d
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;ILjava/lang/String;)V

    return-void
.end method

.method public final onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;ILjava/lang/String;)V
    .registers 6

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result p0

    if-nez p0, :cond_20

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to abort apex session "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageSessionVerifier"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_20
    invoke-interface {p1, p3, p4}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    const/16 p0, -0x16

    .line 273
    invoke-interface {p2, p0, p4}, Lcom/android/server/pm/PackageSessionVerifier$Callback;->onResult(ILjava/lang/String;)V

    return-void
.end method

.method public final onVerificationSuccess(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 262
    invoke-interface {p2, p0, p1}, Lcom/android/server/pm/PackageSessionVerifier$Callback;->onResult(ILjava/lang/String;)V

    return-void
.end method

.method public final retrieveRollbackIdForCommitSession(I)I
    .registers 6

    .line 424
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/rollback/RollbackManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/rollback/RollbackManager;

    .line 426
    invoke-virtual {p0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object p0

    .line 427
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_29

    .line 428
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/RollbackInfo;

    .line 429
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v3

    if-ne v3, p1, :cond_26

    .line 430
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p0

    return p0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 433
    :cond_29
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find rollback id for commit session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x16

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public storeSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 257
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public final submitSessionToApexService(Lcom/android/server/pm/StagingManager$StagedSession;I)V
    .registers 11

    .line 383
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 384
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 385
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 386
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 387
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    goto :goto_13

    .line 391
    :cond_2d
    new-instance v1, Landroid/apex/ApexSessionParams;

    invoke-direct {v1}, Landroid/apex/ApexSessionParams;-><init>()V

    .line 392
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    iput v2, v1, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 393
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, v1, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 394
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4d

    .line 395
    iput-boolean v3, v1, Landroid/apex/ApexSessionParams;->isRollback:Z

    .line 396
    iput p2, v1, Landroid/apex/ApexSessionParams;->rollbackId:I

    goto :goto_54

    :cond_4d
    const/4 v0, -0x1

    if-eq p2, v0, :cond_54

    .line 399
    iput-boolean v3, v1, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    .line 400
    iput p2, v1, Landroid/apex/ApexSessionParams;->rollbackId:I

    .line 405
    :cond_54
    :goto_54
    iget-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p2, v1}, Lcom/android/server/pm/ApexManager;->submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;

    move-result-object p2

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    iget-object p2, p2, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_64
    if-ge v3, v1, :cond_bb

    aget-object v4, p2, v3

    .line 409
    :try_start_68
    iget-object v5, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/parsing/PackageParser2;
    :try_end_70
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_68 .. :try_end_70} :catch_8a

    .line 410
    :try_start_70
    new-instance v6, Ljava/io/File;

    iget-object v7, v4, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x400

    .line 411
    invoke-virtual {v5, v6, v7, v2}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v6
    :try_end_7d
    .catchall {:try_start_70 .. :try_end_7d} :catchall_8c

    .line 412
    :try_start_7d
    invoke-virtual {v5}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_80
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_7d .. :try_end_80} :catch_8a

    .line 417
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :catch_8a
    move-exception p0

    goto :goto_98

    :catchall_8c
    move-exception p0

    if-eqz v5, :cond_97

    .line 409
    :try_start_8f
    invoke-virtual {v5}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_97

    :catchall_93
    move-exception p1

    :try_start_94
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_97
    :goto_97
    throw p0
    :try_end_98
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_94 .. :try_end_98} :catch_8a

    .line 413
    :goto_98
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse APEX package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, -0x16

    invoke-direct {p1, v0, p2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 419
    :cond_bb
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Session "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has following APEX packages: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageSessionVerifier"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public verify(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final verifyAPK(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 6

    .line 168
    new-instance v0, Lcom/android/server/pm/PackageSessionVerifier$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$1;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    .line 191
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageSessionVerifier;->createVerifyingSession(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Lcom/android/server/pm/VerifyingSession;

    move-result-object p2

    .line 192
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 193
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p1

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageSessionVerifier;->createVerifyingSession(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Lcom/android/server/pm/VerifyingSession;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 198
    :cond_35
    invoke-virtual {p2, v0}, Lcom/android/server/pm/VerifyingSession;->verifyStage(Ljava/util/List;)V

    return-void

    .line 200
    :cond_39
    invoke-virtual {p2}, Lcom/android/server/pm/VerifyingSession;->verifyStage()V

    return-void
.end method

.method public final verifyApex(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 6

    .line 308
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, -0x1

    if-eqz v0, :cond_39

    .line 312
    const-class v0, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 313
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 317
    :try_start_14
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/rollback/RollbackManagerInternal;->notifyStagedSession(I)I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1c} :catch_1d

    goto :goto_47

    :catch_1d
    move-exception v0

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notifyStagedSession for session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    const-string v3, "PackageSessionVerifier"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 322
    :cond_39
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 323
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSessionVerifier;->retrieveRollbackIdForCommitSession(I)I

    move-result v1

    .line 326
    :cond_47
    :goto_47
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 330
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageSessionVerifier;->submitSessionToApexService(Lcom/android/server/pm/StagingManager$StagedSession;I)V

    :cond_50
    return-void
.end method

.method public final verifyStaged(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting preRebootVerification for session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageSessionVerifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
