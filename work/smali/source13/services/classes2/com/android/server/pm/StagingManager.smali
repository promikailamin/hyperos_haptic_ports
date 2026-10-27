.class public Lcom/android/server/pm/StagingManager;
.super Ljava/lang/Object;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/StagingManager$Lifecycle;,
        Lcom/android/server/pm/StagingManager$StagedSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StagingManager"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mBootCompleted:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFailedPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFailureReason:Ljava/lang/String;

.field private final mFailureReasonFile:Ljava/io/File;

.field private mNativeFailureReason:Ljava/lang/String;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mStagedApexObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/IStagedApexObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mStagedSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuccessfulStagedSessionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmStagedApexObservers(Lcom/android/server/pm/StagingManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmarkBootCompleted(Lcom/android/server/pm/StagingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->markBootCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmarkStagedSessionsAsSuccessful(Lcom/android/server/pm/StagingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->markStagedSessionsAsSuccessful()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/ApexManager;)V

    .line 136
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/ApexManager;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apexManager"    # Lcom/android/server/pm/ApexManager;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "/metadata/staged-install/failure_reason.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    .line 92
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    .line 105
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    .line 140
    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 143
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 146
    :try_start_44
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4e} :catch_63

    move-object v0, v1

    .line 147
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_59

    .line 148
    :try_start_55
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_63

    goto :goto_64

    .line 146
    :catchall_59
    move-exception v1

    :try_start_5a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v2

    :try_start_5f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "apexManager":Lcom/android/server/pm/ApexManager;
    :goto_62
    throw v1
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_63} :catch_63

    .line 148
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "apexManager":Lcom/android/server/pm/ApexManager;
    :catch_63
    move-exception v0

    .line 150
    :cond_64
    :goto_64
    return-void
.end method

.method private abortCheckpoint(Ljava/lang/String;ZZ)V
    .registers 8
    .param p1, "failureReason"    # Ljava/lang/String;
    .param p2, "supportsCheckpoint"    # Z
    .param p3, "needsCheckpoint"    # Z

    .line 217
    const-string v0, "StagingManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz p2, :cond_5e

    if-eqz p3, :cond_5e

    .line 221
    :try_start_9
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_26

    .line 223
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_15
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1c

    .line 224
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_26

    .line 226
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2c

    .line 221
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    :catchall_1c
    move-exception v2

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v3

    :try_start_22
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "failureReason":Ljava/lang/String;
    .end local p2    # "supportsCheckpoint":Z
    .end local p3    # "needsCheckpoint":Z
    :goto_25
    throw v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_26

    .line 224
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "failureReason":Ljava/lang/String;
    .restart local p2    # "supportsCheckpoint":Z
    .restart local p3    # "needsCheckpoint":Z
    :catch_26
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    :try_start_27
    const-string v2, "Failed to save failure reason: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2c
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 230
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 233
    :cond_39
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    const-string v2, "abort-staged-install"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/storage/IStorageManager;->abortChanges(Ljava/lang/String;Z)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_43} :catch_44

    goto :goto_5e

    .line 236
    :catch_44
    move-exception v1

    .line 237
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Failed to abort checkpoint"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 240
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 242
    :cond_57
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_5f

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5e
    :goto_5e
    nop

    .line 244
    :goto_5f
    return-void
.end method

.method private checkDuplicateApkInApex(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 11
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 463
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 464
    return-void

    .line 466
    :cond_7
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 467
    .local v0, "apkNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 468
    .local v2, "s":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 469
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    .end local v2    # "s":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_2d
    goto :goto_14

    .line 472
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object v1

    .line 473
    .local v1, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 474
    .local v3, "apexSession":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_97

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 476
    .local v6, "apkInApex":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 484
    .end local v6    # "apkInApex":Ljava/lang/String;
    goto :goto_50

    .line 477
    .restart local v6    # "apkInApex":Ljava/lang/String;
    :cond_63
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v5, -0x80

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 480
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has duplicate apk-in-apex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v2, v5, v7, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 485
    .end local v3    # "apexSession":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "apkInApex":Ljava/lang/String;
    :cond_97
    goto :goto_36

    .line 486
    :cond_98
    return-void
.end method

.method private checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 10
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object v0

    .line 272
    .local v0, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 273
    return-void

    .line 276
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 277
    .local v2, "apexSession":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ApexManager;->getApkInApexInstallError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "errorMsg":Ljava/lang/String;
    if-nez v4, :cond_28

    .line 283
    .end local v2    # "apexSession":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "errorMsg":Ljava/lang/String;
    goto :goto_f

    .line 280
    .restart local v2    # "apexSession":Lcom/android/server/pm/StagingManager$StagedSession;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "errorMsg":Ljava/lang/String;
    :cond_28
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v5, -0x80

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to install apk-in-apex of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 284
    .end local v2    # "apexSession":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_4d
    return-void
.end method

.method private ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 567
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 568
    return v1

    .line 570
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v0

    .line 571
    .local v0, "apexSession":Landroid/apex/ApexSessionInfo;
    if-eqz v0, :cond_26

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_26

    .line 574
    :cond_1b
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result v1

    return v1

    .line 572
    :cond_26
    :goto_26
    return v1
.end method

.method private extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 252
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 253
    .local v2, "s":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v2    # "s":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_28
    goto :goto_13

    :cond_29
    goto :goto_2d

    .line 258
    :cond_2a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :goto_2d
    return-object v0
.end method

.method private getReasonForRevert()Ljava/lang/String;
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 450
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    return-object v0

    .line 452
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session reverted due to crashing native process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 455
    :cond_29
    const-string v0, ""

    return-object v0
.end method

.method private getStagedSession(I)Lcom/android/server/pm/StagingManager$StagedSession;
    .registers 4
    .param p1, "sessionId"    # I

    .line 804
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 805
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 806
    .local v1, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    monitor-exit v0

    .line 807
    return-object v1

    .line 806
    .end local v1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private handleCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 3
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 507
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 508
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->notifyStagedApexObservers()V

    .line 510
    :cond_f
    return-void
.end method

.method private handleNonReadyAndDestroyedSessions(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;)V"
        }
    .end annotation

    .line 592
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 593
    .local v0, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_63

    .line 598
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 599
    .local v2, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 601
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->abandon()V

    .line 602
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 603
    .local v3, "session2":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 604
    nop

    .end local v3    # "session2":Lcom/android/server/pm/StagingManager$StagedSession;
    add-int/lit8 v0, v0, -0x1

    .line 605
    goto :goto_62

    :cond_25
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v3

    if-nez v3, :cond_60

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restart verification for session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StagingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    new-instance v4, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/StagingManager$StagedSession;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    .line 610
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 611
    .restart local v3    # "session2":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 612
    nop

    .end local v3    # "session2":Lcom/android/server/pm/StagingManager$StagedSession;
    add-int/lit8 v0, v0, -0x1

    .line 613
    goto :goto_62

    .line 614
    :cond_60
    add-int/lit8 v1, v1, 0x1

    .line 616
    .end local v2    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :goto_62
    goto :goto_5

    .line 618
    .end local v1    # "i":I
    :cond_63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 619
    return-void
.end method

.method private installApksInSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 491
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->installSession()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_7} :catch_9

    .line 497
    nop

    .line 498
    return-void

    .line 495
    :catch_9
    move-exception v0

    .line 496
    .local v0, "ee":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerException;

    throw v1

    .line 492
    .end local v0    # "ee":Ljava/util/concurrent/ExecutionException;
    :catch_11
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z
    .registers 2
    .param p0, "apexSessionInfo"    # Landroid/apex/ApexSessionInfo;

    .line 586
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z
    .registers 3
    .param p1, "session"    # Landroid/apex/ApexSessionInfo;

    .line 579
    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isReverted:Z

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

.method static synthetic lambda$handleNonReadyAndDestroyedSessions$0(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 1
    .param p0, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 609
    invoke-interface {p0}, Lcom/android/server/pm/StagingManager$StagedSession;->verifySession()V

    return-void
.end method

.method private logFailedApexSessionsIfNecessary()V
    .registers 5

    .line 766
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    .line 767
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 768
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logApexdRevert(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 771
    :cond_14
    monitor-exit v0

    .line 772
    return-void

    .line 771
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private markBootCompleted()V
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->markBootCompleted()V

    .line 183
    return-void
.end method

.method private markStagedSessionsAsSuccessful()V
    .registers 5

    .line 775
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter v0

    .line 776
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 777
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    .line 776
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 779
    .end local v1    # "i":I
    :cond_20
    monitor-exit v0

    .line 780
    return-void

    .line 779
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private notifyStagedApexObservers()V
    .registers 9

    .line 897
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    monitor-enter v0

    .line 898
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IStagedApexObserver;

    .line 899
    .local v2, "observer":Landroid/content/pm/IStagedApexObserver;
    new-instance v3, Landroid/content/pm/ApexStagedEvent;

    invoke-direct {v3}, Landroid/content/pm/ApexStagedEvent;-><init>()V

    .line 900
    .local v3, "event":Landroid/content/pm/ApexStagedEvent;
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->getStagedApexModuleNames()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ApexStagedEvent;->stagedApexModuleNames:[Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_4d

    .line 902
    :try_start_29
    invoke-interface {v2, v3}, Landroid/content/pm/IStagedApexObserver;->onApexStaged(Landroid/content/pm/ApexStagedEvent;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2d
    .catchall {:try_start_29 .. :try_end_2c} :catchall_4d

    .line 905
    goto :goto_4a

    .line 903
    :catch_2d
    move-exception v4

    .line 904
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2e
    const-string v5, "StagingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to contact the observer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    .end local v2    # "observer":Landroid/content/pm/IStagedApexObserver;
    .end local v3    # "event":Landroid/content/pm/ApexStagedEvent;
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_4a
    goto :goto_9

    .line 907
    :cond_4b
    monitor-exit v0

    .line 908
    return-void

    .line 907
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private prepareForLoggingApexdRevert(Lcom/android/server/pm/StagingManager$StagedSession;Ljava/lang/String;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "nativeFailureReason"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    .line 365
    :try_start_3
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    .line 366
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 367
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_14
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private resumeSession(Lcom/android/server/pm/StagingManager$StagedSession;ZZ)V
    .registers 9
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "supportsCheckpoint"    # Z
    .param p3, "needsCheckpoint"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 374
    const-string v0, "StagingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    .line 385
    .local v0, "hasApex":Z
    if-eqz p2, :cond_6d

    if-nez p3, :cond_6d

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reverting back to safe state. Marking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "revertMsg":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->getReasonForRevert()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "reasonForRevert":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Reason for revert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    :cond_62
    const-string v3, "StagingManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/16 v3, -0x6e

    invoke-interface {p1, v3, v1}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 394
    return-void

    .line 398
    .end local v1    # "revertMsg":Ljava/lang/String;
    .end local v2    # "reasonForRevert":Ljava/lang/String;
    :cond_6d
    if-eqz v0, :cond_9a

    .line 399
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 400
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->checkDuplicateApkInApex(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreForApexSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 402
    const-string v1, "StagingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APEX packages in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " were successfully activated. Proceeding with APK packages, if any"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_9a
    const-string v1, "StagingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing APK packages in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v1, Landroid/util/TimingsTraceLog;

    const-string v2, "StagingManagerTiming"

    const-wide/32 v3, 0x40000

    invoke-direct {v1, v2, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 409
    .local v1, "t":Landroid/util/TimingsTraceLog;
    const-string v2, "installApksInSession"

    invoke-virtual {v1, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->installApksInSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 411
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 413
    if-eqz v0, :cond_ed

    .line 414
    if-eqz p2, :cond_e4

    .line 417
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter v2

    .line 418
    :try_start_d2
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    monitor-exit v2

    goto :goto_ed

    :catchall_e1
    move-exception v3

    monitor-exit v2
    :try_end_e3
    .catchall {:try_start_d2 .. :try_end_e3} :catchall_e1

    throw v3

    .line 422
    :cond_e4
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    .line 425
    :cond_ed
    :goto_ed
    return-void
.end method

.method private snapshotAndRestoreApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # [I
    .param p3, "rm"    # Lcom/android/server/rollback/RollbackManagerInternal;

    .line 326
    invoke-static {p2}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/server/rollback/RollbackManagerInternal;->snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V

    .line 328
    return-void
.end method

.method private snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # [I
    .param p3, "rm"    # Lcom/android/server/rollback/RollbackManagerInternal;

    .line 332
    move-object/from16 v8, p1

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    .line 333
    .local v9, "mPmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v10

    .line 334
    .local v10, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v10, :cond_30

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "for snapshotting/restoring user data."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StagingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void

    .line 340
    :cond_30
    const/4 v0, -0x1

    .line 341
    .local v0, "appId":I
    const-wide/16 v1, -0x1

    .line 342
    .local v1, "ceDataInode":J
    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 343
    .local v11, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v11, :cond_64

    .line 344
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v12

    .line 345
    .end local v0    # "appId":I
    .local v12, "appId":I
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getCeDataInode()J

    move-result-wide v13

    .line 348
    .end local v1    # "ceDataInode":J
    .local v13, "ceDataInode":J
    const/4 v0, 0x1

    move-object/from16 v15, p2

    invoke-static {v11, v15, v0}, Lcom/android/server/pm/pkg/PackageStateUtils;->queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[IZ)[I

    move-result-object v16

    .line 350
    .local v16, "installedUsers":[I
    invoke-static {v10, v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v17

    .line 351
    .local v17, "seInfo":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move v3, v12

    move-wide v4, v13

    move-object/from16 v6, v17

    invoke-interface/range {v0 .. v7}, Lcom/android/server/rollback/RollbackManagerInternal;->snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V

    move v0, v12

    move-wide v1, v13

    goto :goto_66

    .line 343
    .end local v12    # "appId":I
    .end local v13    # "ceDataInode":J
    .end local v16    # "installedUsers":[I
    .end local v17    # "seInfo":Ljava/lang/String;
    .restart local v0    # "appId":I
    .restart local v1    # "ceDataInode":J
    :cond_64
    move-object/from16 v15, p2

    .line 354
    :goto_66
    return-void
.end method

.method private snapshotAndRestoreForApexSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 14
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 293
    nop

    .line 294
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-nez v0, :cond_18

    .line 295
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    .line 296
    .local v0, "doSnapshotOrRestore":Z
    :goto_19
    if-nez v0, :cond_1c

    .line 297
    return-void

    .line 301
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object v1

    .line 302
    .local v1, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 303
    return-void

    .line 306
    :cond_27
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 307
    .local v2, "um":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    .line 308
    .local v3, "allUsers":[I
    const-class v4, Lcom/android/server/rollback/RollbackManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 310
    .local v4, "rm":Lcom/android/server/rollback/RollbackManagerInternal;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "sessionsSize":I
    :goto_40
    if-ge v5, v6, :cond_6b

    .line 311
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/StagingManager$StagedSession;

    invoke-interface {v7}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7, v3, v4}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V

    .line 316
    iget-object v8, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 317
    .local v8, "apksInApex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "apksSize":I
    :goto_5a
    if-ge v9, v10, :cond_68

    .line 318
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11, v3, v4}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V

    .line 317
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 310
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "apksInApex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "j":I
    .end local v10    # "apksSize":I
    :cond_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 321
    .end local v5    # "i":I
    .end local v6    # "sessionsSize":I
    :cond_6b
    return-void
.end method


# virtual methods
.method abortCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 529
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    .line 530
    .local v0, "sessionId":I
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v1

    const-string v2, "StagingManager"

    if-eqz v1, :cond_23

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot abort session in final state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 534
    :cond_23
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 538
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/StagingManager$StagedSession;

    move-result-object v1

    if-nez v1, :cond_4c

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has been abandoned already"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void

    .line 544
    :cond_4c
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 545
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to abort apex session "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_72
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 552
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->notifyStagedApexObservers()V

    .line 558
    :cond_7b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 559
    return-void

    .line 535
    :cond_7f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Committed session must be destroyed before aborting it from StagingManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method abortSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 520
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 521
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 522
    monitor-exit v0

    .line 523
    return-void

    .line 522
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method commitSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 2
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 502
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 503
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->handleCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 504
    return-void
.end method

.method createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 5
    .param p1, "sessionInfo"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 514
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 515
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 516
    monitor-exit v0

    .line 517
    return-void

    .line 516
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method getStagedApexInfo(Ljava/lang/String;)Landroid/content/pm/StagedApexInfo;
    .registers 9
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 874
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 875
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 876
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 877
    .local v2, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_54

    .line 878
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v3

    if-nez v3, :cond_54

    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 879
    goto :goto_54

    .line 881
    :cond_2d
    invoke-virtual {p0, v2}, Lcom/android/server/pm/StagingManager;->getStagedApexInfos(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/apex/ApexInfo;

    .line 882
    .local v3, "ai":Landroid/apex/ApexInfo;
    if-eqz v3, :cond_54

    .line 883
    new-instance v4, Landroid/content/pm/StagedApexInfo;

    invoke-direct {v4}, Landroid/content/pm/StagedApexInfo;-><init>()V

    .line 884
    .local v4, "info":Landroid/content/pm/StagedApexInfo;
    iget-object v5, v3, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/StagedApexInfo;->moduleName:Ljava/lang/String;

    .line 885
    iget-object v5, v3, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/StagedApexInfo;->diskImagePath:Ljava/lang/String;

    .line 886
    iget-wide v5, v3, Landroid/apex/ApexInfo;->versionCode:J

    iput-wide v5, v4, Landroid/content/pm/StagedApexInfo;->versionCode:J

    .line 887
    iget-object v5, v3, Landroid/apex/ApexInfo;->versionName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/StagedApexInfo;->versionName:Ljava/lang/String;

    .line 888
    iget-boolean v5, v3, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    iput-boolean v5, v4, Landroid/content/pm/StagedApexInfo;->hasClassPathJars:Z

    .line 889
    monitor-exit v0

    return-object v4

    .line 875
    .end local v2    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local v3    # "ai":Landroid/apex/ApexInfo;
    .end local v4    # "info":Landroid/content/pm/StagedApexInfo;
    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 892
    .end local v1    # "i":I
    :cond_57
    monitor-exit v0

    .line 893
    const/4 v0, 0x0

    return-object v0

    .line 892
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method getStagedApexInfos(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/Map;
    .registers 10
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/apex/ApexInfo;",
            ">;"
        }
    .end annotation

    .line 819
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    const-string v3, "Session is null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 820
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v2

    xor-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " session has parent session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 820
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 822
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " session does not contain apex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 822
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 827
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_56

    goto :goto_ad

    .line 831
    :cond_56
    new-instance v1, Landroid/apex/ApexSessionParams;

    invoke-direct {v1}, Landroid/apex/ApexSessionParams;-><init>()V

    .line 832
    .local v1, "params":Landroid/apex/ApexSessionParams;
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    iput v2, v1, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 833
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 834
    .local v2, "childSessionIds":Landroid/util/IntArray;
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 835
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_74
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 836
    .local v4, "s":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 837
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    .line 839
    .end local v4    # "s":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_8d
    goto :goto_74

    .line 841
    :cond_8e
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    iput-object v3, v1, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 843
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/ApexManager;->getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;

    move-result-object v3

    .line 844
    .local v3, "infos":[Landroid/apex/ApexInfo;
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 845
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/apex/ApexInfo;>;"
    array-length v5, v3

    :goto_a0
    if-ge v0, v5, :cond_ac

    aget-object v6, v3, v0

    .line 846
    .local v6, "info":Landroid/apex/ApexInfo;
    iget-object v7, v6, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    .end local v6    # "info":Landroid/apex/ApexInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a0

    .line 848
    :cond_ac
    return-object v4

    .line 828
    .end local v1    # "params":Landroid/apex/ApexSessionParams;
    .end local v2    # "childSessionIds":Landroid/util/IntArray;
    .end local v3    # "infos":[Landroid/apex/ApexInfo;
    .end local v4    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/apex/ApexInfo;>;"
    :cond_ad
    :goto_ad
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getStagedApexModuleNames()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 857
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 858
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 859
    .local v3, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 860
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v4

    if-nez v4, :cond_32

    .line 861
    goto :goto_3d

    .line 863
    :cond_32
    invoke-virtual {p0, v3}, Lcom/android/server/pm/StagingManager;->getStagedApexInfos(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 857
    .end local v3    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 865
    .end local v2    # "i":I
    :cond_40
    monitor-exit v1

    .line 866
    return-object v0

    .line 865
    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_9 .. :try_end_44} :catchall_42

    throw v2
.end method

.method synthetic lambda$onBootCompletedBroadcastReceived$1$com-android-server-pm-StagingManager()V
    .registers 1

    .line 799
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->logFailedApexSessionsIfNecessary()V

    return-void
.end method

.method onBootCompletedBroadcastReceived()V
    .registers 3

    .line 798
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 799
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/StagingManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 800
    return-void
.end method

.method onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V
    .registers 7
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "e"    # Lcom/android/server/pm/PackageManagerException;
    .param p3, "supportsCheckpoint"    # Z
    .param p4, "needsCheckpoint"    # Z

    .line 429
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to install sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(Ljava/lang/String;ZZ)V

    .line 434
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    if-nez v0, :cond_38

    .line 435
    return-void

    .line 438
    :cond_38
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    move-result v0

    const-string v1, "StagingManager"

    if-nez v0, :cond_48

    .line 439
    const-string v0, "Failed to abort APEXd session"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 441
    :cond_48
    const-string v0, "Successfully aborted apexd session. Rebooting device in order to revert to the previous state of APEXd."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 446
    :goto_53
    return-void
.end method

.method registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/content/pm/IStagedApexObserver;

    .line 186
    if-nez p1, :cond_3

    .line 187
    return-void

    .line 189
    :cond_3
    invoke-interface {p1}, Landroid/content/pm/IStagedApexObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 191
    :try_start_9
    invoke-interface {p1}, Landroid/content/pm/IStagedApexObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/StagingManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/StagingManager$1;-><init>(Lcom/android/server/pm/StagingManager;Landroid/content/pm/IStagedApexObserver;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 201
    goto :goto_21

    .line 199
    :catch_17
    move-exception v0

    .line 200
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "StagingManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    monitor-enter v0

    .line 204
    :try_start_24
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method restoreSessions(Ljava/util/List;Z)V
    .registers 19
    .param p2, "isDeviceUpgrading"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;Z)V"
        }
    .end annotation

    .line 622
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v3, "StagingManagerTiming"

    const-wide/32 v4, 0x40000

    invoke-direct {v0, v3, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    move-object v3, v0

    .line 624
    .local v3, "t":Landroid/util/TimingsTraceLog;
    const-string/jumbo v0, "restoreSessions"

    invoke-virtual {v3, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 627
    const-string/jumbo v0, "sys.boot_completed"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 628
    return-void

    .line 631
    :cond_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_90

    .line 632
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 634
    .local v4, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v6

    xor-int/2addr v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is a child session"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 634
    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 636
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isCommitted()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 637
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not committed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 636
    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 638
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v6

    xor-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is in terminal state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 638
    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 641
    invoke-virtual {v1, v4}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 631
    .end local v4    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 644
    .end local v0    # "i":I
    :cond_90
    const/16 v0, -0x80

    if-eqz p2, :cond_aa

    .line 648
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_95
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a9

    .line 649
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 650
    .local v5, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    const-string v6, "Build fingerprint has changed"

    invoke-interface {v5, v0, v6}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 648
    .end local v5    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    add-int/lit8 v4, v4, 0x1

    goto :goto_95

    .line 653
    .end local v4    # "i":I
    :cond_a9
    return-void

    .line 656
    :cond_aa
    const/4 v4, 0x0

    .line 657
    .local v4, "needsCheckpoint":Z
    const/4 v6, 0x0

    .line 659
    .local v6, "supportsCheckpoint":Z
    :try_start_ac
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v7

    move v6, v7

    .line 660
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/os/storage/IStorageManager;->needsCheckpoint()Z

    move-result v7
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_bd} :catch_248

    move v4, v7

    .line 664
    nop

    .line 666
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_d0

    if-eqz v6, :cond_c8

    goto :goto_d0

    .line 667
    :cond_c8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Detected multiple staged sessions on a device without fs-checkpoint support"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_d0
    :goto_d0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/StagingManager;->handleNonReadyAndDestroyedSessions(Ljava/util/List;)V

    .line 678
    iget-object v5, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v5}, Lcom/android/server/pm/ApexManager;->getSessions()Landroid/util/SparseArray;

    move-result-object v5

    .line 679
    .local v5, "apexSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/apex/ApexSessionInfo;>;"
    const/4 v7, 0x0

    .line 680
    .local v7, "hasFailedApexSession":Z
    const/4 v8, 0x0

    .line 681
    .local v8, "hasAppliedApexSession":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_dc
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    const-string v11, "StagingManager"

    if-ge v9, v10, :cond_1d4

    .line 682
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 683
    .local v10, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v10}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v12

    if-nez v12, :cond_f2

    .line 685
    goto/16 :goto_1ce

    .line 687
    :cond_f2
    invoke-interface {v10}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/apex/ApexSessionInfo;

    .line 688
    .local v12, "apexSession":Landroid/apex/ApexSessionInfo;
    if-eqz v12, :cond_1c5

    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-eqz v13, :cond_104

    goto/16 :goto_1c5

    .line 693
    :cond_104
    invoke-static {v12}, Lcom/android/server/pm/StagingManager;->isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z

    move-result v13

    if-eqz v13, :cond_166

    .line 694
    const/4 v7, 0x1

    .line 695
    iget-object v13, v12, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_118

    .line 696
    iget-object v13, v12, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-direct {v1, v10, v13}, Lcom/android/server/pm/StagingManager;->prepareForLoggingApexdRevert(Lcom/android/server/pm/StagingManager$StagedSession;Ljava/lang/String;)V

    .line 698
    :cond_118
    const-string v13, "APEX activation failed."

    .line 699
    .local v13, "errorMsg":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/StagingManager;->getReasonForRevert()Ljava/lang/String;

    move-result-object v14

    .line 700
    .local v14, "reasonForRevert":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_13c

    .line 701
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v0, " Reason: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_15d

    .line 702
    :cond_13c
    iget-object v0, v12, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15d

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " Error: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v15, v12, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 705
    :cond_15d
    :goto_15d
    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/16 v0, -0x80

    invoke-interface {v10, v0, v13}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 707
    goto :goto_1ce

    .line 708
    .end local v13    # "errorMsg":Ljava/lang/String;
    .end local v14    # "reasonForRevert":Ljava/lang/String;
    :cond_166
    iget-boolean v0, v12, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-nez v0, :cond_1c2

    iget-boolean v0, v12, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-eqz v0, :cond_16f

    goto :goto_1c2

    .line 711
    :cond_16f
    iget-boolean v0, v12, Landroid/apex/ApexSessionInfo;->isStaged:Z

    if-eqz v0, :cond_198

    .line 714
    const/4 v0, 0x1

    .line 715
    .end local v7    # "hasFailedApexSession":Z
    .local v0, "hasFailedApexSession":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Staged session "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 716
    invoke-interface {v10}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " at boot didn\'t activate nor fail. Marking it as failed anyway."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 715
    const/16 v11, -0x80

    invoke-interface {v10, v11, v7}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    move v7, v0

    goto :goto_1ce

    .line 719
    .end local v0    # "hasFailedApexSession":Z
    .restart local v7    # "hasFailedApexSession":Z
    :cond_198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Apex session "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v10}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " is in impossible state"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v0, 0x1

    .line 721
    .end local v7    # "hasFailedApexSession":Z
    .restart local v0    # "hasFailedApexSession":Z
    const-string v7, "Impossible state"

    const/16 v11, -0x80

    invoke-interface {v10, v11, v7}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    move v7, v0

    goto :goto_1ce

    .line 709
    .end local v0    # "hasFailedApexSession":Z
    .restart local v7    # "hasFailedApexSession":Z
    :cond_1c2
    :goto_1c2
    const/4 v0, 0x1

    .line 710
    .end local v8    # "hasAppliedApexSession":Z
    .local v0, "hasAppliedApexSession":Z
    move v8, v0

    goto :goto_1ce

    .line 689
    .end local v0    # "hasAppliedApexSession":Z
    .restart local v8    # "hasAppliedApexSession":Z
    :cond_1c5
    :goto_1c5
    const/4 v0, 0x1

    .line 690
    .end local v7    # "hasFailedApexSession":Z
    .local v0, "hasFailedApexSession":Z
    const-string v7, "apexd did not know anything about a staged session supposed to be activated"

    const/16 v11, -0x80

    invoke-interface {v10, v11, v7}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 692
    move v7, v0

    .line 681
    .end local v0    # "hasFailedApexSession":Z
    .end local v10    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local v12    # "apexSession":Landroid/apex/ApexSessionInfo;
    .restart local v7    # "hasFailedApexSession":Z
    :goto_1ce
    add-int/lit8 v9, v9, 0x1

    const/16 v0, -0x80

    goto/16 :goto_dc

    .line 726
    .end local v9    # "i":I
    :cond_1d4
    if-eqz v8, :cond_1de

    if-eqz v7, :cond_1de

    .line 727
    const-string v0, "Found both applied and failed apex sessions"

    invoke-direct {v1, v0, v6, v4}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(Ljava/lang/String;ZZ)V

    .line 729
    return-void

    .line 732
    :cond_1de
    if-eqz v7, :cond_201

    .line 735
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_200

    .line 736
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 737
    .local v9, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v9}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionFailed()Z

    move-result v10

    if-eqz v10, :cond_1f6

    .line 739
    const/16 v11, -0x80

    goto :goto_1fd

    .line 741
    :cond_1f6
    const-string v10, "Another apex session failed"

    const/16 v11, -0x80

    invoke-interface {v9, v11, v10}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 735
    .end local v9    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :goto_1fd
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e1

    .line 744
    .end local v0    # "i":I
    :cond_200
    return-void

    .line 748
    :cond_201
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_203
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_244

    .line 749
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 751
    .restart local v10    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :try_start_210
    invoke-direct {v1, v10, v6, v4}, Lcom/android/server/pm/StagingManager;->resumeSession(Lcom/android/server/pm/StagingManager$StagedSession;ZZ)V
    :try_end_213
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_210 .. :try_end_213} :catch_23a
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_213} :catch_214

    .line 760
    :goto_213
    goto :goto_241

    .line 754
    :catch_214
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    const-string v12, "Staged install failed due to unhandled exception"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    new-instance v12, Lcom/android/server/pm/PackageManagerException;

    const/16 v13, -0x6e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Staged install failed due to unhandled exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10, v12, v6, v4}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V

    goto :goto_241

    .line 752
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_23a
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 753
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-virtual {v1, v10, v0, v6, v4}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V

    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    goto :goto_213

    .line 748
    .end local v10    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :goto_241
    add-int/lit8 v9, v9, 0x1

    goto :goto_203

    .line 762
    .end local v9    # "i":I
    :cond_244
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 763
    return-void

    .line 661
    .end local v5    # "apexSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/apex/ApexSessionInfo;>;"
    .end local v7    # "hasFailedApexSession":Z
    .end local v8    # "hasAppliedApexSession":Z
    :catch_248
    move-exception v0

    .line 663
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v7, "Failed to get checkpoint status"

    invoke-direct {v5, v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method systemReady()V
    .registers 5

    .line 783
    new-instance v0, Lcom/android/server/pm/StagingManager$Lifecycle;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/StagingManager$Lifecycle;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/StagingManager$Lifecycle;->startService(Lcom/android/server/pm/StagingManager;)V

    .line 785
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/pm/StagingManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/StagingManager$2;-><init>(Lcom/android/server/pm/StagingManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 793
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 794
    return-void
.end method

.method unregisterStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/content/pm/IStagedApexObserver;

    .line 209
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    monitor-enter v0

    .line 210
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
