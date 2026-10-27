.class public Lcom/android/server/pm/StagingManager;
.super Ljava/lang/Object;
.source "StagingManager.java"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mBootCompleted:Ljava/util/concurrent/CompletableFuture;

.field public final mContext:Landroid/content/Context;

.field public final mFailedPackageNames:Ljava/util/List;

.field public mFailureReason:Ljava/lang/String;

.field public final mFailureReasonFile:Ljava/io/File;

.field public mNativeFailureReason:Ljava/lang/String;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mStagedApexObservers:Ljava/util/List;

.field public final mStagedSessions:Landroid/util/SparseArray;

.field public final mSuccessfulStagedSessionIds:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$Ldle5dZCHLvvxS28rKveGkH5GoQ(Landroid/apex/ApexInfo;)Landroid/content/pm/StagedApexInfo;
    .registers 4

    .line 896
    new-instance v0, Landroid/content/pm/StagedApexInfo;

    invoke-direct {v0}, Landroid/content/pm/StagedApexInfo;-><init>()V

    .line 897
    iget-object v1, p0, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/StagedApexInfo;->moduleName:Ljava/lang/String;

    .line 898
    iget-object v1, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/StagedApexInfo;->diskImagePath:Ljava/lang/String;

    .line 899
    iget-wide v1, p0, Landroid/apex/ApexInfo;->versionCode:J

    iput-wide v1, v0, Landroid/content/pm/StagedApexInfo;->versionCode:J

    .line 900
    iget-object v1, p0, Landroid/apex/ApexInfo;->versionName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/StagedApexInfo;->versionName:Ljava/lang/String;

    .line 901
    iget-boolean p0, p0, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    iput-boolean p0, v0, Landroid/content/pm/StagedApexInfo;->hasClassPathJars:Z

    return-object v0
.end method

.method public static synthetic $r8$lambda$Tc-8JeWCdIuusiZU02QNaF3RrX8(Lcom/android/server/pm/StagingManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->lambda$onBootCompletedBroadcastReceived$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$axgArnItf5JtFcCgzNksy5jg12Y(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 1

    .line 613
    invoke-interface {p0}, Lcom/android/server/pm/StagingManager$StagedSession;->verifySession()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmStagedApexObservers(Lcom/android/server/pm/StagingManager;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmarkBootCompleted(Lcom/android/server/pm/StagingManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->markBootCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmarkStagedSessionsAsSuccessful(Lcom/android/server/pm/StagingManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->markStagedSessionsAsSuccessful()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 132
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/ApexManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/ApexManager;)V
    .registers 5

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/io/File;

    const-string v1, "/metadata/staged-install/failure_reason.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    .line 89
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    .line 137
    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 140
    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 143
    :try_start_44
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/FileReader;

    invoke-direct {p2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4e} :catch_62

    .line 144
    :try_start_4e
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_58

    .line 145
    :try_start_54
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_62

    return-void

    :catchall_58
    move-exception p0

    .line 143
    :try_start_59
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception p1

    :try_start_5e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_61
    throw p0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_62} :catch_62

    :catch_62
    :cond_62
    return-void
.end method

.method public static isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z
    .registers 2

    .line 590
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    if-nez v0, :cond_17

    iget-boolean p0, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final abortCheckpoint(Ljava/lang/String;ZZ)V
    .registers 6

    .line 214
    const-string v0, "StagingManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_60

    if-eqz p3, :cond_60

    .line 218
    :try_start_9
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance p3, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-direct {p3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_1c

    .line 220
    :try_start_15
    invoke-virtual {p2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1e

    .line 221
    :try_start_18
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_2d

    :catch_1c
    move-exception p1

    goto :goto_28

    :catchall_1e
    move-exception p1

    .line 218
    :try_start_1f
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p2

    :try_start_24
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_27
    throw p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_1c

    .line 222
    :goto_28
    :try_start_28
    const-string p2, "Failed to save failure reason: "

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :goto_2d
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 227
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    goto :goto_3d

    :catch_3b
    move-exception p1

    goto :goto_48

    .line 230
    :cond_3d
    :goto_3d
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object p1

    const-string p2, "abort-staged-install"

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/os/storage/IStorageManager;->abortChanges(Ljava/lang/String;Z)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_47} :catch_3b

    goto :goto_60

    .line 234
    :goto_48
    const-string p2, "Failed to abort checkpoint"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 237
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 239
    :cond_5a
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public abortCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 6

    .line 526
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    .line 527
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v1

    const-string v2, "StagingManager"

    if-eqz v1, :cond_21

    .line 528
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot abort session in final state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 531
    :cond_21
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to abort apex session "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_45
    invoke-virtual {p0, v0}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/StagingManager$StagedSession;

    move-result-object v1

    if-nez v1, :cond_65

    .line 550
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Session "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has been abandoned already, or not committed yet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 556
    :cond_65
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 557
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->notifyStagedApexObservers()V

    .line 562
    :cond_74
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    return-void

    .line 532
    :cond_78
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Committed session must be destroyed before aborting it from StagingManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abortSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 3

    .line 517
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 518
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 519
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final checkDuplicateApkInApex(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 8

    .line 460
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_92

    .line 463
    :cond_8
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 464
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 465
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result v3

    if-nez v3, :cond_15

    .line 466
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 469
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object p1

    .line 470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 471
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 472
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 473
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    goto :goto_51

    .line 474
    :cond_64
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in session: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has duplicate apk-in-apex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, -0x80

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_92
    :goto_92
    return-void
.end method

.method public final checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 5

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object p1

    .line 269
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_49

    .line 273
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 274
    invoke-interface {v0}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ApexManager;->getApkInApexInstallError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    goto :goto_f

    .line 277
    :cond_28
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to install apk-in-apex of "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x80

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_49
    :goto_49
    return-void
.end method

.method public commitSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 2

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 500
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->handleCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    return-void
.end method

.method public createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 4

    .line 511
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 512
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 513
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 5

    .line 571
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 574
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 575
    invoke-virtual {p0, v0}, Lcom/android/server/pm/StagingManager;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_26

    .line 578
    :cond_1b
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result p0

    return p0

    :cond_26
    :goto_26
    return v1
.end method

.method public final extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;
    .registers 4

    .line 247
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 249
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 250
    invoke-interface {v0}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 251
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_29
    return-object p0

    .line 255
    :cond_2a
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getReasonForRevert()Ljava/lang/String;
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 447
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    return-object p0

    .line 449
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session reverted due to crashing native process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 452
    :cond_27
    const-string p0, ""

    return-object p0
.end method

.method public getStagedApexInfos()Ljava/util/List;
    .registers 6

    .line 887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 888
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 889
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 890
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 891
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 892
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v4

    if-nez v4, :cond_4e

    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v4

    if-nez v4, :cond_32

    goto :goto_4e

    .line 895
    :cond_32
    invoke-virtual {p0, v3}, Lcom/android/server/pm/StagingManager;->getStagedApexInfos(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 903
    new-instance v4, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_4e

    :catchall_4c
    move-exception p0

    goto :goto_53

    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 905
    :cond_51
    monitor-exit v1

    return-object v0

    :goto_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_9 .. :try_end_54} :catchall_4c

    throw p0
.end method

.method public getStagedApexInfos(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ")",
            "Ljava/util/List<",
            "Landroid/apex/ApexInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 854
    :goto_6
    const-string v2, "Session is null"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 855
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v1

    xor-int/2addr v0, v1

    .line 856
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 855
    const-string v2, "%d session has parent session"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 857
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    .line 858
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 857
    const-string v2, "%d session does not contain apex"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 862
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_8c

    .line 866
    :cond_43
    new-instance v0, Landroid/apex/ApexSessionParams;

    invoke-direct {v0}, Landroid/apex/ApexSessionParams;-><init>()V

    .line 867
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    iput v1, v0, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 868
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 869
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 870
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_61
    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 871
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 872
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/IntArray;->add(I)V

    goto :goto_61

    .line 876
    :cond_7b
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    iput-object p1, v0, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 877
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ApexManager;->getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 863
    :cond_8c
    :goto_8c
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getStagedSession(I)Lcom/android/server/pm/StagingManager$StagedSession;
    .registers 3

    .line 840
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 841
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 842
    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final handleCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 3

    .line 504
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 505
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->notifyStagedApexObservers()V

    :cond_f
    return-void
.end method

.method public final handleNonReadyAndDestroyedSessions(Ljava/util/List;)V
    .registers 7

    .line 596
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5d

    .line 602
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 603
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 605
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->abandon()V

    add-int/lit8 v3, v0, -0x1

    .line 606
    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 607
    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 609
    :cond_24
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restart verification for session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StagingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    new-instance v4, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/StagingManager$StagedSession;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    add-int/lit8 v3, v0, -0x1

    .line 614
    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 615
    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 622
    :cond_5d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1, v0, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final installApksInSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 2

    .line 488
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->installSession()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 493
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerException;

    throw p0

    :catch_10
    move-exception p0

    .line 491
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z
    .registers 2

    .line 583
    iget-boolean p0, p1, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez p0, :cond_13

    iget-boolean p0, p1, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez p0, :cond_13

    iget-boolean p0, p1, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez p0, :cond_13

    iget-boolean p0, p1, Landroid/apex/ApexSessionInfo;->isReverted:Z

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

.method public final synthetic lambda$onBootCompletedBroadcastReceived$1()V
    .registers 1

    .line 835
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->logFailedApexSessionsIfNecessary()V

    return-void
.end method

.method public final logFailedApexSessionsIfNecessary()V
    .registers 4

    .line 802
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    .line 803
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 804
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/android/server/rollback/ApexdRevertLogger;->logApexdRevert(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    .line 807
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    throw p0
.end method

.method public final markBootCompleted()V
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager;->markBootCompleted()V

    return-void
.end method

.method public final markStagedSessionsAsSuccessful()V
    .registers 5

    .line 811
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 812
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 813
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_20
    move-exception p0

    goto :goto_24

    .line 815
    :cond_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_20

    throw p0
.end method

.method public final notifyStagedApexObservers()V
    .registers 7

    .line 910
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    monitor-enter v0

    .line 911
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->getStagedApexInfos()Ljava/util/List;

    move-result-object v1

    .line 912
    new-instance v2, Landroid/content/pm/ApexStagedEvent;

    invoke-direct {v2}, Landroid/content/pm/ApexStagedEvent;-><init>()V

    .line 914
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/StagedApexInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/StagedApexInfo;

    iput-object v1, v2, Landroid/content/pm/ApexStagedEvent;->stagedApexInfos:[Landroid/content/pm/StagedApexInfo;

    .line 915
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IStagedApexObserver;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_30

    .line 917
    :try_start_2c
    invoke-interface {v1, v2}, Landroid/content/pm/IStagedApexObserver;->onApexStaged(Landroid/content/pm/ApexStagedEvent;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_32
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_20

    :catchall_30
    move-exception p0

    goto :goto_50

    :catch_32
    move-exception v1

    .line 919
    :try_start_33
    const-string v3, "StagingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to contact the observer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 922
    :cond_4e
    monitor-exit v0

    return-void

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_33 .. :try_end_51} :catchall_30

    throw p0
.end method

.method public onBootCompletedBroadcastReceived()V
    .registers 3

    .line 834
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 835
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/StagingManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V
    .registers 7

    .line 426
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to install sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 427
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(Ljava/lang/String;ZZ)V

    .line 431
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result p1

    if-nez p1, :cond_34

    return-void

    .line 435
    :cond_34
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    move-result p1

    const-string p2, "StagingManager"

    if-nez p1, :cond_44

    .line 436
    const-string p0, "Failed to abort APEXd session"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 438
    :cond_44
    const-string p1, "Successfully aborted apexd session. Rebooting device in order to revert to the previous state of APEXd."

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method public final prepareForLoggingApexdRevert(Lcom/android/server/pm/StagingManager$StagedSession;Ljava/lang/String;)V
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    .line 362
    :try_start_3
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    .line 363
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 364
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    .line 366
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    throw p0
.end method

.method public registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_2a

    .line 186
    :cond_3
    invoke-interface {p1}, Landroid/content/pm/IStagedApexObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 188
    :try_start_9
    invoke-interface {p1}, Landroid/content/pm/IStagedApexObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/StagingManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/StagingManager$1;-><init>(Lcom/android/server/pm/StagingManager;Landroid/content/pm/IStagedApexObserver;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_21

    :catch_17
    move-exception v0

    .line 197
    const-string v1, "StagingManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    monitor-enter v0

    .line 201
    :try_start_24
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    monitor-exit v0

    :goto_2a
    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public restoreSessions(Ljava/util/List;Z)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 626
    new-instance v3, Landroid/util/TimingsTraceLog;

    const-string v0, "StagingManagerTiming"

    const-wide/32 v4, 0x40000

    invoke-direct {v3, v0, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 628
    const-string/jumbo v0, "restoreSessions"

    invoke-virtual {v3, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 631
    const-string/jumbo v0, "sys.boot_completed"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_220

    :cond_20
    move v0, v4

    .line 635
    :goto_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v0, v5, :cond_75

    .line 636
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 638
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v7

    xor-int/2addr v7, v6

    .line 639
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 638
    const-string v9, "%d is a child session"

    invoke-static {v7, v9, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 640
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->isCommitted()Z

    move-result v7

    .line 641
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 640
    const-string v9, "%d is not committed"

    invoke-static {v7, v9, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 642
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v7

    xor-int/2addr v6, v7

    .line 643
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 642
    const-string v8, "%d is in terminal state"

    invoke-static {v6, v8, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 645
    invoke-virtual {v1, v5}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_75
    const/16 v0, -0x80

    if-eqz p2, :cond_8d

    .line 652
    :goto_79
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_220

    .line 653
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 654
    const-string v3, "Build fingerprint has changed"

    invoke-interface {v1, v0, v3}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    .line 663
    :cond_8d
    :try_start_8d
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v5

    .line 664
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/os/storage/IStorageManager;->needsCheckpoint()Z

    move-result v7
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_9d} :catch_279

    .line 670
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v6, :cond_ae

    if-eqz v5, :cond_a6

    goto :goto_ae

    .line 671
    :cond_a6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Detected multiple staged sessions on a device without fs-checkpoint support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_ae
    :goto_ae
    iget-object v8, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v8}, Lcom/android/server/pm/ApexManager;->getSessions()Landroid/util/SparseArray;

    move-result-object v8

    .line 678
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v4

    .line 680
    :goto_ba
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_e5

    .line 681
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    move v12, v4

    .line 684
    :goto_c5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_db

    .line 685
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/StagingManager$StagedSession;

    invoke-interface {v13}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v13

    if-ne v13, v11, :cond_d8

    goto :goto_e2

    :cond_d8
    add-int/lit8 v12, v12, 0x1

    goto :goto_c5

    .line 691
    :cond_db
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e2
    add-int/lit8 v10, v10, 0x1

    goto :goto_ba

    .line 698
    :cond_e5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/StagingManager;->handleNonReadyAndDestroyedSessions(Ljava/util/List;)V

    move v10, v4

    move v11, v10

    move v12, v11

    .line 704
    :goto_eb
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const-string v14, "StagingManager"

    if-ge v10, v13, :cond_1df

    .line 705
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 706
    invoke-interface {v13}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v15

    if-nez v15, :cond_101

    goto/16 :goto_1d9

    .line 710
    :cond_101
    invoke-interface {v13}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v15

    invoke-virtual {v8, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/apex/ApexSessionInfo;

    if-eqz v15, :cond_1d3

    .line 711
    iget-boolean v4, v15, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-eqz v4, :cond_113

    goto/16 :goto_1d3

    .line 716
    :cond_113
    invoke-static {v15}, Lcom/android/server/pm/StagingManager;->isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 718
    iget-object v4, v15, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_126

    .line 719
    iget-object v4, v15, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-virtual {v1, v13, v4}, Lcom/android/server/pm/StagingManager;->prepareForLoggingApexdRevert(Lcom/android/server/pm/StagingManager$StagedSession;Ljava/lang/String;)V

    .line 722
    :cond_126
    invoke-virtual {v1}, Lcom/android/server/pm/StagingManager;->getReasonForRevert()Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v6, "APEX activation failed."

    if-nez v12, :cond_147

    .line 724
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Reason: "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_165

    .line 725
    :cond_147
    iget-object v4, v15, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_165

    .line 726
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 728
    :cond_165
    :goto_165
    invoke-static {v14, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-interface {v13, v0, v6}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    :goto_16b
    const/4 v12, 0x1

    goto :goto_1d9

    .line 731
    :cond_16d
    iget-boolean v4, v15, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-nez v4, :cond_1d1

    iget-boolean v4, v15, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-eqz v4, :cond_176

    goto :goto_1d1

    .line 734
    :cond_176
    iget-boolean v4, v15, Landroid/apex/ApexSessionInfo;->isStaged:Z

    if-eqz v4, :cond_1a3

    .line 738
    invoke-interface {v13}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Staged session "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-interface {v13}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " at boot didn\'t activate nor fail. Marking it as failed anyway."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 739
    invoke-interface {v13, v0, v4}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_16b

    .line 743
    :cond_1a3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Apex session "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is in impossible state"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-interface {v13}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    const-string v4, "Impossible state"

    invoke-interface {v13, v0, v4}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_16b

    :cond_1d1
    :goto_1d1
    const/4 v11, 0x1

    goto :goto_1d9

    .line 713
    :cond_1d3
    :goto_1d3
    const-string v4, "apexd did not know anything about a staged session supposed to be activated"

    invoke-interface {v13, v0, v4}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_16b

    :goto_1d9
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_eb

    :cond_1df
    if-eqz v11, :cond_1e9

    if-eqz v12, :cond_1e9

    .line 752
    const-string v0, "Found both applied and failed apex sessions"

    invoke-virtual {v1, v0, v5, v7}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(Ljava/lang/String;ZZ)V

    return-void

    :cond_1e9
    if-eqz v12, :cond_221

    const/4 v3, 0x0

    .line 760
    :goto_1ec
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_207

    .line 761
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 762
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionFailed()Z

    move-result v5

    if-eqz v5, :cond_1ff

    goto :goto_204

    .line 766
    :cond_1ff
    const-string v5, "Another apex session failed"

    invoke-interface {v4, v0, v5}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    :goto_204
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ec

    :cond_207
    const/4 v4, 0x0

    .line 771
    :goto_208
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_220

    .line 772
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_208

    :cond_220
    :goto_220
    return-void

    :cond_221
    const/4 v0, 0x0

    .line 779
    :goto_222
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_23a

    .line 780
    iget-object v4, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_222

    :cond_23a
    const/4 v4, 0x0

    .line 784
    :goto_23b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_275

    .line 785
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 787
    :try_start_248
    invoke-virtual {v1, v6, v5, v7}, Lcom/android/server/pm/StagingManager;->resumeSession(Lcom/android/server/pm/StagingManager$StagedSession;ZZ)V
    :try_end_24b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_248 .. :try_end_24b} :catch_26e
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_24b} :catch_24c

    goto :goto_272

    :catch_24c
    move-exception v0

    .line 791
    const-string v8, "Staged install failed due to unhandled exception"

    invoke-static {v14, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Staged install failed due to unhandled exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v9, -0x6e

    invoke-direct {v8, v9, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v6, v8, v5, v7}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V

    goto :goto_272

    :catch_26e
    move-exception v0

    .line 789
    invoke-virtual {v1, v6, v0, v5, v7}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V

    :goto_272
    add-int/lit8 v4, v4, 0x1

    goto :goto_23b

    .line 798
    :cond_275
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catch_279
    move-exception v0

    .line 667
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get checkpoint status"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final resumeSession(Lcom/android/server/pm/StagingManager$StagedSession;ZZ)V
    .registers 8

    .line 371
    const-string v0, "StagingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    if-eqz p2, :cond_65

    if-nez p3, :cond_65

    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Reverting back to safe state. Marking "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " as failed."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 385
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->getReasonForRevert()Ljava/lang/String;

    move-result-object p0

    .line 386
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5a

    .line 387
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Reason for revert: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 389
    :cond_5a
    const-string p0, "StagingManager"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x6e

    .line 390
    invoke-interface {p1, p0, p2}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    return-void

    :cond_65
    if-eqz v0, :cond_8f

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->checkDuplicateApkInApex(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreForApexSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 399
    const-string p3, "StagingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APEX packages in session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " were successfully activated. Proceeding with APK packages, if any"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_8f
    const-string p3, "StagingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installing APK packages in session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance p3, Landroid/util/TimingsTraceLog;

    const-string v1, "StagingManagerTiming"

    const-wide/32 v2, 0x40000

    invoke-direct {p3, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 406
    const-string v1, "installApksInSession"

    invoke-virtual {p3, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->installApksInSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 408
    invoke-virtual {p3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v0, :cond_e0

    if-eqz p2, :cond_d7

    .line 414
    iget-object p2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter p2

    .line 415
    :try_start_c5
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    monitor-exit p2

    return-void

    :catchall_d4
    move-exception p0

    monitor-exit p2
    :try_end_d6
    .catchall {:try_start_c5 .. :try_end_d6} :catchall_d4

    throw p0

    .line 419
    :cond_d7
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    :cond_e0
    return-void
.end method

.method public final snapshotAndRestoreApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V
    .registers 12

    .line 323
    invoke-static {p2}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v0, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/server/rollback/RollbackManagerInternal;->snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V

    return-void
.end method

.method public final snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V
    .registers 12

    .line 329
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 330
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not find package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "for snapshotting/restoring user data."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StagingManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 339
    :cond_2a
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_50

    .line 341
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    const/4 v0, 0x0

    .line 342
    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v4

    const/4 v0, 0x1

    .line 345
    invoke-static {p0, p2, v0}, Lcom/android/server/pm/pkg/PackageStateUtils;->queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[IZ)[I

    move-result-object p2

    .line 347
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    move-result-object v6

    .line 348
    invoke-static {p2}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    move-object v1, p1

    move-object v0, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/server/rollback/RollbackManagerInternal;->snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V

    :cond_50
    return-void
.end method

.method public final snapshotAndRestoreForApexSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 11

    .line 291
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    .line 292
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 298
    :cond_16
    :goto_16
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object p1

    .line 299
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_66

    .line 303
    :cond_21
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 304
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 305
    const-class v1, Lcom/android/server/rollback/RollbackManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 307
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_3b
    if-ge v4, v2, :cond_66

    .line 308
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/StagingManager$StagedSession;

    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V

    .line 313
    iget-object v6, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 314
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v3

    :goto_55
    if-ge v7, v6, :cond_63

    .line 315
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8, v0, v1}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_66
    :goto_66
    return-void
.end method

.method public systemReady()V
    .registers 5

    .line 819
    new-instance v0, Lcom/android/server/pm/StagingManager$Lifecycle;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/StagingManager$Lifecycle;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/StagingManager$Lifecycle;->startService(Lcom/android/server/pm/StagingManager;)V

    .line 821
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/pm/StagingManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/StagingManager$2;-><init>(Lcom/android/server/pm/StagingManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 829
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public unregisterStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
