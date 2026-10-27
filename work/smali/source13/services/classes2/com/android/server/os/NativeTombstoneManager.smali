.class public final Lcom/android/server/os/NativeTombstoneManager;
.super Ljava/lang/Object;
.source "NativeTombstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;,
        Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOMBSTONE_DIR:Ljava/io/File;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mTombstones:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/os/NativeTombstoneManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleTombstone(Lcom/android/server/os/NativeTombstoneManager;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/os/NativeTombstoneManager;->handleTombstone(Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpurgePackage(Lcom/android/server/os/NativeTombstoneManager;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager;->purgePackage(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpurgeUser(Lcom/android/server/os/NativeTombstoneManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/os/NativeTombstoneManager;->purgeUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTOMBSTONE_DIR()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 69
    const-class v0, Lcom/android/server/os/NativeTombstoneManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    .line 84
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/android/server/ServiceThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":tombstoneWatcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 88
    .local v0, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 89
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    invoke-direct {v1, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    iput-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    .line 92
    invoke-virtual {v1}, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->startWatching()V

    .line 93
    return-void
.end method

.method private handleProtoTombstone(Ljava/io/File;Z)Ljava/util/Optional;
    .registers 13
    .param p1, "path"    # Ljava/io/File;
    .param p2, "addToList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/Optional<",
            "Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "filename":Ljava/lang/String;
    const-string v1, ".pb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 130
    sget-object v1, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected tombstone name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 134
    :cond_2a
    const-string/jumbo v1, "tombstone_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "suffix":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "numberStr":Ljava/lang/String;
    :try_start_40
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_44} :catch_c4

    .line 140
    .local v3, "number":I
    if-ltz v3, :cond_a6

    const/16 v4, 0x63

    if-le v3, v4, :cond_4b

    goto :goto_a6

    .line 147
    :cond_4b
    nop

    .line 151
    const/high16 v4, 0x30000000

    :try_start_4e
    invoke-static {p1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_52} :catch_88

    .line 155
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 157
    invoke-static {v4}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->parse(Landroid/os/ParcelFileDescriptor;)Ljava/util/Optional;

    move-result-object v5

    .line 158
    .local v5, "parsedTombstone":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;>;"
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-nez v6, :cond_65

    .line 159
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6

    return-object v6

    .line 163
    :cond_65
    if-eqz p2, :cond_87

    .line 164
    iget-object v6, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 165
    :try_start_6a
    iget-object v7, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 166
    .local v7, "previous":Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
    if-eqz v7, :cond_77

    .line 167
    invoke-virtual {v7}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->dispose()V

    .line 170
    :cond_77
    iget-object v8, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    invoke-virtual {v8, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    .end local v7    # "previous":Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
    monitor-exit v6

    goto :goto_87

    :catchall_84
    move-exception v7

    monitor-exit v6
    :try_end_86
    .catchall {:try_start_6a .. :try_end_86} :catchall_84

    throw v7

    .line 174
    :cond_87
    :goto_87
    return-object v5

    .line 152
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "parsedTombstone":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;>;"
    :catch_88
    move-exception v4

    .line 153
    .local v4, "ex":Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    return-object v5

    .line 141
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :cond_a6
    :goto_a6
    :try_start_a6
    sget-object v4, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected tombstone name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4
    :try_end_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_a6 .. :try_end_c3} :catch_c4

    return-object v4

    .line 144
    .end local v3    # "number":I
    :catch_c4
    move-exception v3

    .line 145
    .local v3, "ex":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected tombstone name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4

    return-object v4
.end method

.method private handleTombstone(Ljava/io/File;)V
    .registers 9
    .param p1, "path"    # Ljava/io/File;

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "filename":Ljava/lang/String;
    const-string/jumbo v1, "tombstone_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 113
    return-void

    .line 116
    :cond_e
    const-string v1, "UNKNOWN"

    .line 117
    .local v1, "processName":Ljava/lang/String;
    const-string v2, ".pb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 118
    .local v3, "isProtoFile":Z
    if-eqz v3, :cond_1a

    move-object v4, p1

    goto :goto_34

    :cond_1a
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_34
    move-object v2, v4

    .line 120
    .local v2, "protoPath":Ljava/io/File;
    invoke-direct {p0, v2, v3}, Lcom/android/server/os/NativeTombstoneManager;->handleProtoTombstone(Ljava/io/File;Z)Ljava/util/Optional;

    move-result-object v4

    .line 121
    .local v4, "parsedTombstone":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;>;"
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 122
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    invoke-virtual {v5}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_49
    iget-object v5, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v3, v1}, Lcom/android/server/BootReceiver;->addTombstoneToDropBox(Landroid/content/Context;Ljava/io/File;ZLjava/lang/String;)V

    .line 125
    return-void
.end method

.method static synthetic lambda$collectTombstones$2(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 7
    .param p0, "lhs"    # Landroid/app/ApplicationExitInfo;
    .param p1, "rhs"    # Landroid/app/ApplicationExitInfo;

    .line 298
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 299
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_11

    .line 300
    const/4 v2, -0x1

    return v2

    .line 301
    :cond_11
    cmp-long v2, v0, v2

    if-nez v2, :cond_17

    .line 302
    const/4 v2, 0x0

    return v2

    .line 304
    :cond_17
    const/4 v2, 0x1

    return v2
.end method

.method private purgePackage(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "allUsers"    # Z

    .line 198
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 200
    .local v0, "appId":I
    if-eqz p2, :cond_b

    .line 201
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    .local v1, "userId":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    goto :goto_17

    .line 203
    .end local v1    # "userId":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :cond_b
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 205
    .restart local v1    # "userId":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :goto_17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/os/NativeTombstoneManager;->purge(Ljava/util/Optional;Ljava/util/Optional;)V

    .line 206
    return-void
.end method

.method private purgeUser(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/os/NativeTombstoneManager;->purge(Ljava/util/Optional;Ljava/util/Optional;)V

    .line 210
    return-void
.end method

.method private registerForPackageRemoval()V
    .registers 6

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/os/NativeTombstoneManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/os/NativeTombstoneManager$1;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    iget-object v3, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 228
    return-void
.end method

.method private registerForUserRemoval()V
    .registers 6

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/os/NativeTombstoneManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/os/NativeTombstoneManager$2;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    iget-object v3, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 242
    return-void
.end method


# virtual methods
.method public collectTombstones(Ljava/util/ArrayList;III)V
    .registers 18
    .param p2, "callingUid"    # I
    .param p3, "pid"    # I
    .param p4, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;III)V"
        }
    .end annotation

    .line 254
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    new-instance v8, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v8}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 256
    .local v8, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 257
    return-void

    .line 260
    :cond_c
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 261
    .local v9, "userId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    .line 263
    .local v10, "appId":I
    move-object v11, p0

    iget-object v0, v11, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda1;

    move-object v1, v12

    move-object v2, p0

    move v3, v9

    move v4, v10

    move/from16 v5, p3

    move-object v6, p1

    move/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/os/NativeTombstoneManager;IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    :try_start_28
    invoke-virtual {v8}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_28 .. :try_end_2b} :catch_2d
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2d

    .line 315
    nop

    .line 316
    return-void

    .line 313
    :catch_2d
    move-exception v0

    .line 314
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic lambda$collectTombstones$3$com-android-server-os-NativeTombstoneManager(IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "appId"    # I
    .param p3, "pid"    # I
    .param p4, "output"    # Ljava/util/ArrayList;
    .param p5, "maxNum"    # I
    .param p6, "future"    # Ljava/util/concurrent/CompletableFuture;

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "appendedTombstones":Z
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_4
    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 270
    .local v2, "tombstonesSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_61

    .line 271
    iget-object v4, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 272
    .local v4, "tombstone":Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 273
    if-eqz p3, :cond_32

    iget v5, v4, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    if-eq v5, p3, :cond_32

    .line 274
    goto :goto_5e

    .line 278
    :cond_32
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 279
    .local v5, "outputSize":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_37
    if-ge v6, v5, :cond_50

    .line 280
    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ApplicationExitInfo;

    .line 281
    .local v7, "exitInfo":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v4, v7}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Landroid/app/ApplicationExitInfo;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 282
    invoke-virtual {v4}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->getPfdRetriever()Landroid/app/IParcelFileDescriptorRetriever;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ApplicationExitInfo;->setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V

    .line 283
    goto :goto_5e

    .line 279
    .end local v7    # "exitInfo":Landroid/app/ApplicationExitInfo;
    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 287
    .end local v6    # "j":I
    :cond_50
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p5, :cond_5e

    .line 288
    const/4 v0, 0x1

    .line 289
    invoke-virtual {v4}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->toAppExitInfo()Landroid/app/ApplicationExitInfo;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v4    # "tombstone":Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
    .end local v5    # "outputSize":I
    :cond_5e
    :goto_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 293
    .end local v2    # "tombstonesSize":I
    .end local v3    # "i":I
    :cond_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_71

    .line 295
    if-eqz v0, :cond_6c

    .line 296
    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 308
    :cond_6c
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 309
    return-void

    .line 293
    :catchall_71
    move-exception v2

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v2
.end method

.method synthetic lambda$onSystemReady$0$com-android-server-os-NativeTombstoneManager()V
    .registers 4

    .line 101
    sget-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 102
    .local v0, "tombstoneFiles":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-eqz v0, :cond_1c

    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 103
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 104
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/server/os/NativeTombstoneManager;->handleTombstone(Ljava/io/File;)V

    .line 102
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 107
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method synthetic lambda$purge$1$com-android-server-os-NativeTombstoneManager(Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 7
    .param p1, "userId"    # Ljava/util/Optional;
    .param p2, "appId"    # Ljava/util/Optional;

    .line 185
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_26

    .line 187
    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 188
    .local v2, "tombstone":Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 189
    invoke-virtual {v2}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->purge()V

    .line 190
    iget-object v3, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 186
    .end local v2    # "tombstone":Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 193
    .end local v1    # "i":I
    :cond_26
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method onSystemReady()V
    .registers 3

    .line 96
    invoke-direct {p0}, Lcom/android/server/os/NativeTombstoneManager;->registerForUserRemoval()V

    .line 97
    invoke-direct {p0}, Lcom/android/server/os/NativeTombstoneManager;->registerForPackageRemoval()V

    .line 100
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method public purge(Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "userId":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .local p2, "appId":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method
