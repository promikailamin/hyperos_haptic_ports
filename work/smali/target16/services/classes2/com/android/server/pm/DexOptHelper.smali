.class public final Lcom/android/server/pm/DexOptHelper;
.super Ljava/lang/Object;
.source "DexOptHelper.java"


# static fields
.field public static sArtManagerLocalIsInitialized:Z

.field public static final sDexoptExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final mInstallScenarioHelper:Lcom/android/server/pm/dex/InstallScenarioHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$Afyz6Bg-MbHo9RJ4z_u3MvoghsM(Ljava/lang/Throwable;)Ljava/lang/Void;
    .registers 3

    .line 368
    const-string v0, "PackageManager"

    const-string v1, "Dexopt encountered a fatal error"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VUbJuU_rIge_7A69vm4AK0Fc5dE(Lcom/android/server/pm/DexOptHelper;Lcom/android/server/pm/InstallRequest;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->lambda$performDexoptIfNeededAsync$0(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 88
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/android/server/pm/DexOptHelper;->sDexoptExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    .line 92
    sput-boolean v1, Lcom/android/server/pm/DexOptHelper;->sArtManagerLocalIsInitialized:Z

    .line 99
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowsCoreThreadTimeOut()Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 104
    new-instance v0, Lcom/android/server/pm/dex/InstallScenarioHelper;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/android/server/pm/dex/InstallScenarioHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mInstallScenarioHelper:Lcom/android/server/pm/dex/InstallScenarioHelper;

    return-void
.end method

.method public static artManagerLocalIsInitialized()Z
    .registers 1

    .line 309
    sget-boolean v0, Lcom/android/server/pm/DexOptHelper;->sArtManagerLocalIsInitialized:Z

    return v0
.end method

.method public static checkUncompressedDexInApk(Ljava/lang/String;)Z
    .registers 13

    .line 423
    const-string v0, "PackageManager"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 425
    :try_start_4
    new-instance v3, Landroid/util/jar/StrictJarFile;

    invoke-direct {v3, p0, v1, v1}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_85
    .catchall {:try_start_4 .. :try_end_9} :catchall_83

    .line 427
    :try_start_9
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    .line 429
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 431
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 432
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v6
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2a} :catch_51
    .catchall {:try_start_9 .. :try_end_2a} :catchall_4e

    const-string v7, "APK "

    if-eqz v6, :cond_53

    .line 434
    :try_start_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has compressed dex code "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 434
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    move v4, v1

    goto :goto_e

    :catchall_4e
    move-exception p0

    move-object v2, v3

    goto :goto_9f

    :catch_51
    move-object v2, v3

    goto :goto_85

    .line 436
    :cond_53
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v8

    const-wide/16 v10, 0x3

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_e

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has unaligned dex code "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 438
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_7e} :catch_51
    .catchall {:try_start_2e .. :try_end_7e} :catchall_4e

    goto :goto_4c

    .line 450
    :cond_7f
    :try_start_7f
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_82

    :catch_82
    return v4

    :catchall_83
    move-exception p0

    goto :goto_9f

    .line 445
    :catch_85
    :goto_85
    :try_start_85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when parsing APK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_85 .. :try_end_99} :catchall_83

    if-eqz v2, :cond_9e

    .line 450
    :try_start_9b
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9e

    :catch_9e
    :cond_9e
    return v1

    :goto_9f
    if-eqz v2, :cond_a4

    :try_start_a1
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a4

    .line 453
    :catch_a4
    :cond_a4
    throw p0
.end method

.method public static dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;)V
    .registers 4

    .line 171
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageManagerLocal;->withUnownedFilteredSnapshot(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p1

    if-eqz p2, :cond_14

    .line 176
    :try_start_a
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/art/ArtManagerLocal;->dumpPackage(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)V

    goto :goto_1b

    :catchall_12
    move-exception p0

    goto :goto_21

    .line 187
    :cond_14
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/android/server/art/ArtManagerLocal;->dump(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;)V
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_12

    :goto_1b
    if-eqz p1, :cond_20

    .line 189
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    :cond_20
    return-void

    :goto_21
    if-eqz p1, :cond_2b

    .line 170
    :try_start_23
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    throw p0
.end method

.method public static getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;
    .registers 2

    .line 317
    :try_start_0
    const-class v0, Lcom/android/server/art/ArtManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/art/ArtManagerLocal;
    :try_end_8
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 319
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getBcpApexes()Ljava/util/List;
    .registers 8

    .line 196
    const-string v0, "BOOTCLASSPATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 198
    const-string v0, "PackageManager"

    const-string v1, "Unable to get BOOTCLASSPATH"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 202
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_24
    if-ge v4, v2, :cond_54

    aget-object v5, v0, v4

    .line 204
    new-array v6, v3, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 207
    invoke-interface {v5}, Ljava/nio/file/Path;->getNameCount()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_51

    invoke-interface {v5, v3}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "apex"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    const/4 v6, 0x1

    .line 208
    invoke-interface {v5, v6}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_54
    return-object v1
.end method

.method public static getDexUseManagerLocal()Lcom/android/server/art/DexUseManagerLocal;
    .registers 2

    .line 235
    :try_start_0
    const-class v0, Lcom/android/server/art/DexUseManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/art/DexUseManagerLocal;
    :try_end_8
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hasBcpApexesChanged()Z
    .registers 4

    .line 220
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getBcpApexes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 221
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 223
    iget-object v3, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-boolean v2, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method public static initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .registers 6

    .line 284
    new-instance v0, Lcom/android/server/art/ArtManagerLocal;

    invoke-direct {v0, p0}, Lcom/android/server/art/ArtManagerLocal;-><init>(Landroid/content/Context;)V

    .line 285
    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;

    .line 286
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDexOptHelper()Lcom/android/server/pm/DexOptHelper;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;-><init>(Lcom/android/server/pm/DexOptHelper;Lcom/android/server/pm/DexOptHelper-IA;)V

    const/4 p1, 0x0

    .line 285
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/art/ArtManagerLocal;->addDexoptDoneCallback(ZLjava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    .line 287
    const-class p1, Lcom/android/server/art/ArtManagerLocal;

    invoke-static {p1, v0}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 288
    sput-boolean p1, Lcom/android/server/pm/DexOptHelper;->sArtManagerLocalIsInitialized:Z

    .line 292
    new-instance p1, Lcom/android/server/pm/DexOptHelper$1;

    invoke-direct {p1, v0}, Lcom/android/server/pm/DexOptHelper$1;-><init>(Lcom/android/server/art/ArtManagerLocal;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper$StagedApexObserver;->registerForStagedApexUpdates(Lcom/android/server/art/ArtManagerLocal;)V

    return-void
.end method

.method public static requestCopyPreoptedFiles()V
    .registers 9

    .line 141
    const-string/jumbo v0, "ro.cp_system_other_odex"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    .line 142
    const-string/jumbo v0, "requested"

    const-string/jumbo v1, "sys.cppreopt"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x186a0

    add-long/2addr v4, v2

    move-wide v6, v2

    .line 147
    :cond_1d
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "finished"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "PackageManager"

    if-nez v0, :cond_43

    const-wide/16 v6, 0x64

    .line 149
    :try_start_2d
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_30

    .line 153
    :catch_30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_1d

    .line 155
    const-string/jumbo v0, "timed-out"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "cppreopt did not finish!"

    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cppreopts took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return-void
.end method

.method public static shouldCallArtService(Lcom/android/server/pm/InstallRequest;)Z
    .registers 7

    .line 399
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v0

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    .line 402
    :goto_e
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_18

    move v3, v2

    goto :goto_19

    :cond_18
    move v3, v1

    .line 403
    :goto_19
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 404
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    .line 406
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->isRollback()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 408
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    const-string v5, "android"

    .line 410
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_38

    :cond_36
    move p0, v1

    goto :goto_39

    :cond_38
    :goto_38
    move p0, v2

    :goto_39
    if-nez v3, :cond_42

    if-eqz v4, :cond_42

    if-nez v0, :cond_42

    if-eqz p0, :cond_42

    return v2

    :cond_42
    return v1
.end method

.method public static shouldSkipDexopt(Lcom/android/server/pm/InstallRequest;)Z
    .registers 2

    .line 387
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 388
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    .line 389
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_1d

    .line 390
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final dexoptPackageUsingArtService(Lcom/android/server/pm/InstallRequest;)Lcom/android/server/art/model/DexoptResult;
    .registers 4

    .line 375
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 377
    const-class v1, Lcom/android/server/pm/PackageManagerLocal;

    .line 378
    invoke-static {v1}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerLocal;

    .line 380
    invoke-static {v1, v0}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;Lcom/android/server/pm/pkg/PackageState;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object v1

    .line 381
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->getDexoptParamsByInstallRequest(Lcom/android/server/pm/InstallRequest;)Lcom/android/server/art/model/DexoptParams;

    move-result-object p0

    .line 382
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, p0}, Lcom/android/server/art/ArtManagerLocal;->dexoptPackage(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/DexoptResult;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_26

    if-eqz v1, :cond_25

    .line 383
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    :cond_25
    return-object p0

    :catchall_26
    move-exception p0

    if-eqz v1, :cond_31

    .line 379
    :try_start_29
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    throw p0
.end method

.method public final getDexoptParamsByInstallRequest(Lcom/android/server/pm/InstallRequest;)Lcom/android/server/art/model/DexoptParams;
    .registers 4

    .line 324
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper;->mInstallScenarioHelper:Lcom/android/server/pm/dex/InstallScenarioHelper;

    .line 326
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getInstallScenario()I

    move-result v0

    .line 325
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/InstallScenarioHelper;->getCompilationReasonForInstallScenario(I)Ljava/lang/String;

    move-result-object p0

    .line 327
    new-instance v0, Lcom/android/server/art/model/DexoptParams$Builder;

    invoke-direct {v0, p0}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1d

    .line 329
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_22

    :cond_1d
    const/16 p0, 0x50

    .line 330
    invoke-virtual {v0, p0}, Lcom/android/server/art/model/DexoptParams$Builder;->setPriorityClass(I)Lcom/android/server/art/model/DexoptParams$Builder;

    .line 332
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getDexoptCompilerFilter()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 333
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getDexoptCompilerFilter()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/art/model/DexoptParams$Builder;->setCompilerFilter(Ljava/lang/String;)Lcom/android/server/art/model/DexoptParams$Builder;

    goto :goto_3c

    .line 334
    :cond_30
    invoke-static {p1}, Lcom/android/server/pm/DexOptHelper;->shouldSkipDexopt(Lcom/android/server/pm/InstallRequest;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 335
    const-string/jumbo p0, "skip"

    invoke-virtual {v0, p0}, Lcom/android/server/art/model/DexoptParams$Builder;->setCompilerFilter(Ljava/lang/String;)Lcom/android/server/art/model/DexoptParams$Builder;

    .line 337
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result p0

    const/high16 p1, 0x10000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_4a

    const/16 p0, 0x80

    .line 339
    invoke-virtual {v0, p0, p0}, Lcom/android/server/art/model/DexoptParams$Builder;->setFlags(II)Lcom/android/server/art/model/DexoptParams$Builder;

    .line 341
    :cond_4a
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$performDexoptIfNeededAsync$0(Lcom/android/server/pm/InstallRequest;)V
    .registers 5

    const-wide/32 v0, 0x40000

    .line 353
    :try_start_3
    const-string v2, "dexopt"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->dexoptPackageUsingArtService(Lcom/android/server/pm/InstallRequest;)Lcom/android/server/art/model/DexoptResult;

    move-result-object p0

    .line 358
    invoke-virtual {p1, p0}, Lcom/android/server/pm/InstallRequest;->onDexoptFinished(Lcom/android/server/art/model/DexoptResult;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 360
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 361
    throw p0
.end method

.method public performDexoptIfNeededAsync(Lcom/android/server/pm/InstallRequest;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    .line 346
    invoke-static {p1}, Lcom/android/server/pm/DexOptHelper;->shouldCallArtService(Lcom/android/server/pm/InstallRequest;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    .line 347
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 350
    :cond_c
    new-instance v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/DexOptHelper;Lcom/android/server/pm/InstallRequest;)V

    sget-object p0, Lcom/android/server/pm/DexOptHelper;->sDexoptExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 364
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public performPackageDexOptUpgradeIfNeeded()V
    .registers 3

    .line 112
    const-string v0, "Only the system can request package update"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 117
    const-string p0, "first-boot"

    goto :goto_23

    .line 118
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 119
    const-string p0, "boot-after-ota"

    goto :goto_23

    .line 120
    :cond_1b
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->hasBcpApexesChanged()Z

    move-result p0

    if-eqz p0, :cond_41

    .line 121
    const-string p0, "boot-after-mainline-update"

    .line 126
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting boot dexopt for reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v0

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, p0, v1, v1}, Lcom/android/server/art/ArtManagerLocal;->onBoot(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :cond_41
    return-void
.end method
