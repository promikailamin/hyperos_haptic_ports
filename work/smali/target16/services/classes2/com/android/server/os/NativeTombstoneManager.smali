.class public final Lcom/android/server/os/NativeTombstoneManager;
.super Ljava/lang/Object;
.source "NativeTombstoneManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NativeTombstoneManager"

.field public static final TOMBSTONE_DIR:Ljava/io/File;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final mTombstones:Landroid/util/SparseArray;

.field public final mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;


# direct methods
.method public static synthetic $r8$lambda$Ilusb-pdD7HUoXhBE6Lb5KtDR1U(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 4

    .line 340
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-gez p0, :cond_11

    const/4 p0, -0x1

    return p0

    :cond_11
    if-nez p0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$NfLcxdcUQ8MK1DWiCjJAO5FniXE(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager;->lambda$purge$1(Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d5FKVJLhf8wmcpGmXSaNGRF1qVM(Lcom/android/server/os/NativeTombstoneManager;IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/os/NativeTombstoneManager;->lambda$collectTombstones$3(IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gBT9xmTreiWpNj0UDSi2eO2Yau4(Lcom/android/server/os/NativeTombstoneManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/os/NativeTombstoneManager;->lambda$onSystemReady$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/os/NativeTombstoneManager;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleTombstone(Lcom/android/server/os/NativeTombstoneManager;Ljava/io/File;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/os/NativeTombstoneManager;->handleTombstone(Ljava/io/File;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpurgePackage(Lcom/android/server/os/NativeTombstoneManager;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager;->purgePackage(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpurgeUser(Lcom/android/server/os/NativeTombstoneManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/os/NativeTombstoneManager;->purgeUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTOMBSTONE_DIR()Ljava/io/File;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    .line 91
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    .line 93
    new-instance p1, Lcom/android/server/ServiceThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":tombstoneWatcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 95
    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    .line 96
    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance p1, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    invoke-direct {p1, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    return-void
.end method


# virtual methods
.method public collectTombstones(Ljava/util/ArrayList;III)V
    .registers 13

    .line 296
    new-instance v7, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v7}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 298
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 302
    :cond_c
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 303
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 305
    iget-object p2, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v5, p1

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/NativeTombstoneManager;IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    :try_start_22
    invoke-virtual {v7}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_25
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_22 .. :try_end_25} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception v0

    move-object p0, v0

    .line 356
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final handleProtoTombstone(Ljava/io/File;Z)Ljava/util/Optional;
    .registers 6

    .line 170
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, ".pb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 172
    sget-object p0, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unexpected tombstone name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_28
    const/16 v1, 0xa

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 181
    :try_start_39
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3d} :catch_b9

    if-ltz v0, :cond_9d

    const/16 v1, 0x63

    if-le v0, v1, :cond_44

    goto :goto_9d

    :cond_44
    const/high16 v1, 0x30000000

    .line 193
    :try_start_46
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_4a} :catch_81

    .line 199
    invoke-static {p1}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->parse(Landroid/os/ParcelFileDescriptor;)Ljava/util/Optional;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 201
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 202
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_5c
    if-eqz p2, :cond_80

    .line 206
    iget-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 207
    :try_start_61
    iget-object p2, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    if-eqz p2, :cond_71

    .line 209
    invoke-virtual {p2}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->dispose()V

    goto :goto_71

    :catchall_6f
    move-exception p0

    goto :goto_7e

    .line 212
    :cond_71
    :goto_71
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    monitor-exit p1

    return-object v1

    :goto_7e
    monitor-exit p1
    :try_end_7f
    .catchall {:try_start_61 .. :try_end_7f} :catchall_6f

    throw p0

    :cond_80
    return-object v1

    :catch_81
    move-exception p0

    .line 195
    sget-object p2, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 183
    :cond_9d
    :goto_9d
    :try_start_9d
    sget-object p0, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unexpected tombstone name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0
    :try_end_b8
    .catch Ljava/lang/NumberFormatException; {:try_start_9d .. :try_end_b8} :catch_b9

    return-object p0

    .line 187
    :catch_b9
    sget-object p0, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unexpected tombstone name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final handleTombstone(Ljava/io/File;)V
    .registers 7

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 127
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 129
    :try_start_11
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a

    .line 131
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1a
    move-exception p1

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 132
    throw p1

    .line 136
    :cond_21
    const-string/jumbo v1, "tombstone_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_33

    .line 140
    :cond_2b
    const-string v1, ".pb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    :goto_33
    return-void

    :cond_34
    if-eqz v0, :cond_38

    move-object v2, p1

    goto :goto_50

    .line 148
    :cond_38
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    :goto_50
    invoke-virtual {p0, v2, v0}, Lcom/android/server/os/NativeTombstoneManager;->handleProtoTombstone(Ljava/io/File;Z)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda3;-><init>()V

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "UNKNOWN"

    .line 152
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v1, p1, v0, v2}, Lcom/android/server/BootReceiver;->filterAndAddTombstoneToDropBox(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 166
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic lambda$collectTombstones$3(IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V
    .registers 19

    move-object/from16 v1, p4

    .line 308
    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 309
    :try_start_5
    iget-object v3, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_e
    if-ge v5, v3, :cond_6b

    .line 313
    iget-object v7, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v8

    if-eqz v8, :cond_34

    if-eqz p3, :cond_3a

    .line 315
    iget v8, v7, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    if-eq v8, p3, :cond_3a

    :cond_34
    :goto_34
    move/from16 v9, p5

    goto :goto_68

    :catchall_37
    move-exception v0

    move-object p0, v0

    goto :goto_7d

    .line 320
    :cond_3a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v4

    :goto_3f
    if-ge v9, v8, :cond_58

    .line 322
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ApplicationExitInfo;

    .line 323
    invoke-virtual {v7, v10}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Landroid/app/ApplicationExitInfo;)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 324
    invoke-virtual {v7}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->getPfdRetriever()Landroid/app/IParcelFileDescriptorRetriever;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/app/ApplicationExitInfo;->setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V

    goto :goto_34

    :cond_55
    add-int/lit8 v9, v9, 0x1

    goto :goto_3f

    .line 329
    :cond_58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v9, p5

    if-ge v8, v9, :cond_68

    .line 331
    invoke-virtual {v7}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->toAppExitInfo()Landroid/app/ApplicationExitInfo;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :cond_68
    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 335
    :cond_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_5 .. :try_end_6c} :catchall_37

    if-eqz v6, :cond_76

    .line 338
    new-instance p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_76
    const/4 p0, 0x0

    move-object/from16 p1, p6

    .line 350
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 335
    :goto_7d
    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_37

    throw p0
.end method

.method public final synthetic lambda$onSystemReady$0()V
    .registers 4

    .line 113
    sget-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    if-eqz v0, :cond_1c

    .line 114
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 115
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 116
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/server/os/NativeTombstoneManager;->handleTombstone(Ljava/io/File;)V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-void
.end method

.method public final synthetic lambda$purge$1(Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 7

    .line 227
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_3
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_29

    .line 229
    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 230
    invoke-virtual {v2, p1, p2}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 231
    invoke-virtual {v2}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->purge()V

    .line 232
    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_2b

    :cond_26
    :goto_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 235
    :cond_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_24

    throw p0
.end method

.method public onSystemReady()V
    .registers 3

    .line 102
    invoke-virtual {p0}, Lcom/android/server/os/NativeTombstoneManager;->registerForUserRemoval()V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/os/NativeTombstoneManager;->registerForPackageRemoval()V

    .line 107
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 109
    invoke-static {}, Lcom/android/server/BootReceiver;->initDropboxRateLimiter()V

    .line 112
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public purge(Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final purgePackage(IZ)V
    .registers 4

    .line 240
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eqz p2, :cond_b

    .line 243
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    goto :goto_17

    .line 245
    :cond_b
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    .line 247
    :goto_17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager;->purge(Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method public final purgeUser(I)V
    .registers 3

    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/os/NativeTombstoneManager;->purge(Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method public final registerForPackageRemoval()V
    .registers 5

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/os/NativeTombstoneManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/os/NativeTombstoneManager$1;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerForUserRemoval()V
    .registers 5

    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/os/NativeTombstoneManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/os/NativeTombstoneManager$2;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
