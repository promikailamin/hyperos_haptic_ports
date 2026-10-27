.class public final Lcom/android/server/am/AppExitInfoTracker;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;,
        Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;,
        Lcom/android/server/am/AppExitInfoTracker$KillHandler;,
        Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;,
        Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;,
        Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;
    }
.end annotation


# static fields
.field static final APP_EXIT_INFO_FILE:Ljava/lang/String; = "procexitinfo"

.field private static final APP_EXIT_INFO_PERSIST_INTERVAL:J

.field private static final APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

.field private static final APP_EXIT_RAW_INFO_POOL_SIZE:I = 0x8

.field static final APP_EXIT_STORE_DIR:Ljava/lang/String; = "procexitstore"

.field private static final APP_TRACE_FILE_SUFFIX:Ljava/lang/String; = ".gz"

.field private static final FOREACH_ACTION_NONE:I = 0x0

.field private static final FOREACH_ACTION_REMOVE_ITEM:I = 0x1

.field private static final FOREACH_ACTION_STOP_ITERATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final mActiveAppStateSummary:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "[B>;>;"
        }
    .end annotation
.end field

.field final mActiveAppTraces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppExitInfoHistoryListSize:I

.field mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAppExitInfoPersistTask:Ljava/lang/Runnable;

.field final mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field final mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field final mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

.field private final mData:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;"
        }
    .end annotation
.end field

.field final mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

.field private mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

.field private mLastAppExitInfoPersistTimestamp:J

.field private final mLock:Ljava/lang/Object;

.field mProcExitInfoFile:Ljava/io/File;

.field mProcExitStoreDir:Ljava/io/File;

.field private final mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field final mTmpInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpInfoList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetExitInfoLocked(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mperformLogToStatsdLocked(Lcom/android/server/am/AppExitInfoTracker;Landroid/app/ApplicationExitInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateExitInfoIfNecessaryLocked(Lcom/android/server/am/AppExitInfoTracker;IILjava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->updateExitInfoIfNecessaryLocked(IILjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smfindAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->findAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 105
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    .line 119
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 150
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 175
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 206
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 212
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    const-string/jumbo v2, "zygote"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 218
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 219
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "lmkd"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 231
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 242
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 248
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    .line 251
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 252
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    .line 253
    return-void
.end method

.method private addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "info"    # Landroid/app/ApplicationExitInfo;

    .line 853
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 854
    .local v0, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-nez v0, :cond_3c

    .line 855
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    move-object v0, v1

    .line 856
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 857
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 858
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_2f

    .line 859
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->-$$Nest$fputmUid(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)V

    .line 861
    .end local v1    # "k":Ljava/lang/Integer;
    :cond_2f
    goto :goto_37

    .line 862
    :cond_30
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->-$$Nest$fputmUid(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)V

    .line 864
    :goto_37
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 866
    :cond_3c
    invoke-virtual {v0, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)V

    .line 867
    return-void
.end method

.method private addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;
    .registers 7
    .param p1, "raw"    # Landroid/app/ApplicationExitInfo;

    .line 427
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_11

    .line 428
    const-string v0, "ActivityManager"

    const-string v1, "Skipping saving the exit info due to ongoing loading from storage"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v0, 0x0

    return-object v0

    .line 432
    :cond_11
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationExitInfo;-><init>(Landroid/app/ApplicationExitInfo;)V

    .line 433
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "packages":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v2

    .line 435
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 436
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v3, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v3

    .line 437
    .local v3, "k":Ljava/lang/Integer;
    if-eqz v3, :cond_30

    .line 438
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 441
    .end local v3    # "k":Ljava/lang/Integer;
    :cond_30
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    array-length v4, v1

    if-ge v3, v4, :cond_3c

    .line 442
    aget-object v4, v1, v3

    invoke-direct {p0, v4, v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 445
    .end local v3    # "i":I
    :cond_3c
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 447
    return-object v0
.end method

.method private static copyToGzFile(Ljava/io/File;Ljava/io/File;JJ)Z
    .registers 16
    .param p0, "inFile"    # Ljava/io/File;
    .param p1, "outFile"    # Ljava/io/File;
    .param p2, "start"    # J
    .param p4, "length"    # J

    .line 1128
    move-wide v0, p4

    .line 1130
    .local v0, "remaining":J
    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_63

    .line 1131
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_c
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_59

    .line 1133
    .local v4, "out":Ljava/util/zip/GZIPOutputStream;
    const/16 v5, 0x2000

    :try_start_1d
    new-array v5, v5, [B

    .line 1134
    .local v5, "buffer":[B
    invoke-virtual {v3, p2, p3}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 1135
    :goto_22
    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-lez v8, :cond_3c

    .line 1136
    array-length v8, v5

    int-to-long v8, v8

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v3, v5, v2, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .line 1137
    .local v8, "t":I
    if-gez v8, :cond_36

    .line 1138
    goto :goto_3c

    .line 1140
    :cond_36
    invoke-virtual {v4, v5, v2, v8}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_4f

    .line 1141
    int-to-long v6, v8

    sub-long/2addr v0, v6

    .line 1142
    .end local v8    # "t":I
    goto :goto_22

    .line 1143
    .end local v5    # "buffer":[B
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_59

    .end local v4    # "out":Ljava/util/zip/GZIPOutputStream;
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_63

    .line 1148
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    nop

    .line 1149
    cmp-long v3, v0, v6

    if-nez v3, :cond_4e

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4e

    const/4 v2, 0x1

    :cond_4e
    return v2

    .line 1129
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "out":Ljava/util/zip/GZIPOutputStream;
    :catchall_4f
    move-exception v5

    :try_start_50
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v6

    :try_start_55
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "remaining":J
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local p0    # "inFile":Ljava/io/File;
    .end local p1    # "outFile":Ljava/io/File;
    .end local p2    # "start":J
    .end local p4    # "length":J
    :goto_58
    throw v5
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    .end local v4    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "remaining":J
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local p0    # "inFile":Ljava/io/File;
    .restart local p1    # "outFile":Ljava/io/File;
    .restart local p2    # "start":J
    .restart local p4    # "length":J
    :catchall_59
    move-exception v4

    :try_start_5a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v5

    :try_start_5f
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "remaining":J
    .end local p0    # "inFile":Ljava/io/File;
    .end local p1    # "outFile":Ljava/io/File;
    .end local p2    # "start":J
    .end local p4    # "length":J
    :goto_62
    throw v4
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_63

    .line 1143
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v0    # "remaining":J
    .restart local p0    # "inFile":Ljava/io/File;
    .restart local p1    # "outFile":Ljava/io/File;
    .restart local p2    # "start":J
    .restart local p4    # "length":J
    :catch_63
    move-exception v3

    .line 1144
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v4, :cond_8a

    .line 1145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in copying ANR trace from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1147
    :cond_8a
    return v2
.end method

.method private dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "sdf"    # Landroid/icu/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;",
            "Landroid/icu/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 843
    .local p4, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 845
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v0, :cond_5f

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Historical Process Exit for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    .line 845
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 849
    .end local v1    # "i":I
    :cond_5f
    return-void
.end method

.method private static findAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .registers 8
    .param p1, "outerKey"    # I
    .param p2, "innerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;II)TU;"
        }
    .end annotation

    .line 1268
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1269
    .local v0, "idx":I
    const/4 v1, 0x0

    if-ltz v0, :cond_27

    .line 1270
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1271
    .local v2, "p":Landroid/util/SparseArray;, "TT;"
    if-nez v2, :cond_10

    .line 1272
    return-object v1

    .line 1274
    :cond_10
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 1275
    .local v3, "innerIdx":I
    if-ltz v3, :cond_27

    .line 1276
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 1277
    .local v1, "ret":Ljava/lang/Object;, "TU;"
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1278
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_26

    .line 1279
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1281
    :cond_26
    return-object v1

    .line 1284
    .end local v1    # "ret":Ljava/lang/Object;, "TU;"
    .end local v2    # "p":Landroid/util/SparseArray;, "TT;"
    .end local v3    # "innerIdx":I
    :cond_27
    return-object v1
.end method

.method private forEachPackageLocked(Ljava/util/function/BiFunction;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 907
    .local p1, "callback":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_4d

    .line 908
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 909
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_4d

    .line 910
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_4e

    goto :goto_4a

    .line 919
    :pswitch_2a
    const/4 v1, 0x0

    .line 920
    goto :goto_4a

    .line 912
    :pswitch_2c
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 913
    .local v2, "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_38
    if-ltz v3, :cond_46

    .line 914
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 913
    add-int/lit8 v3, v3, -0x1

    goto :goto_38

    .line 916
    .end local v3    # "j":I
    :cond_46
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 917
    nop

    .line 909
    .end local v2    # "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    :goto_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 927
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;>;"
    .end local v1    # "i":I
    :cond_4d
    return-void

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2a
    .end packed-switch
.end method

.method private static forEachSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1223
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TU;>;"
    if-eqz p1, :cond_28

    .line 1224
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_28

    .line 1225
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1226
    .local v1, "innerArray":Landroid/util/SparseArray;, "TT;"
    if-nez v1, :cond_13

    .line 1227
    goto :goto_25

    .line 1229
    :cond_13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_19
    if-ltz v2, :cond_25

    .line 1230
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1229
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 1224
    .end local v1    # "innerArray":Landroid/util/SparseArray;, "TT;"
    .end local v2    # "j":I
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1234
    .end local v0    # "i":I
    :cond_28
    return-void
.end method

.method private getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterUid"    # I
    .param p3, "filterPid"    # I

    .line 577
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 578
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 579
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V

    .line 581
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 582
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    :goto_1d
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 583
    return-object v0
.end method

.method static synthetic lambda$getExitInfo$4(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 6
    .param p0, "a"    # Landroid/app/ApplicationExitInfo;
    .param p1, "b"    # Landroid/app/ApplicationExitInfo;

    .line 554
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$handleLogAnrTrace$11(Ljava/io/File;)V
    .registers 1
    .param p0, "v"    # Ljava/io/File;

    .line 1111
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic lambda$persistProcessExitInfo$5(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 10
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 735
    const-wide v0, 0x20b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 736
    .local v2, "token":J
    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 737
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 738
    .local v4, "uidArraySize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_16
    if-ge v5, v4, :cond_24

    .line 739
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v6, p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 738
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 741
    .end local v5    # "j":I
    :cond_24
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 742
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$12(Landroid/util/ArraySet;Ljava/io/File;)Z
    .registers 4
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "f"    # Ljava/io/File;

    .line 1159
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "name":Ljava/lang/String;
    const-string v1, "anr_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1161
    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 1162
    .local v1, "trace":Z
    :goto_17
    if-eqz v1, :cond_1c

    .line 1163
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1165
    :cond_1c
    return v1
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$13(Landroid/util/ArraySet;Ljava/lang/Integer;Landroid/app/ApplicationExitInfo;)Ljava/lang/Integer;
    .registers 5
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "pid"    # Ljava/lang/Integer;
    .param p2, "info"    # Landroid/app/ApplicationExitInfo;

    .line 1175
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v0

    .line 1176
    .local v0, "traceFile":Ljava/io/File;
    if-eqz v0, :cond_d

    .line 1177
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1179
    :cond_d
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$14(Landroid/util/ArraySet;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 6
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 1172
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_19

    .line 1173
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 1174
    .local v1, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->forEachRecordLocked(Ljava/util/function/BiFunction;)V

    .line 1172
    .end local v1    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1182
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$15(Landroid/util/ArraySet;Ljava/io/File;)V
    .registers 3
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "v"    # Ljava/io/File;

    .line 1185
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$removeByUserIdLocked$10(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 6
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 980
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_22

    .line 981
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p0, :cond_1f

    .line 982
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 983
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 984
    goto :goto_22

    .line 980
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 987
    .end local v0    # "i":I
    :cond_22
    :goto_22
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$removeByUserIdLocked$7(ILjava/lang/Integer;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "v"    # Ljava/lang/Integer;

    .line 976
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$removeByUserIdLocked$8(ILjava/lang/Integer;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "v"    # Ljava/lang/Integer;

    .line 978
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$removeByUserIdLocked$9(Ljava/io/File;)V
    .registers 1
    .param p0, "v"    # Ljava/io/File;

    .line 978
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic lambda$setLmkdKillListener$1(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5
    .param p0, "listener"    # Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;
    .param p1, "pid"    # Ljava/lang/Integer;
    .param p2, "uid"    # Ljava/lang/Integer;

    .line 341
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;->onLmkdKillOccurred(II)V

    return-void
.end method

.method private loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 699
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 700
    .local v0, "token":J
    const-string v2, ""

    .line 701
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    .line 702
    .local v3, "next":I
    :goto_a
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3d

    .line 704
    packed-switch v3, :pswitch_data_42

    goto :goto_38

    .line 709
    :pswitch_11
    new-instance v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    .line 711
    .local v4, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    const-wide v5, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->readFromProto(Landroid/util/proto/ProtoInputStream;J)I

    move-result v5

    .line 712
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 713
    :try_start_24
    iget-object v7, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7, v2, v5, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 714
    monitor-exit v6

    goto :goto_38

    :catchall_2b
    move-exception v7

    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2b

    throw v7

    .line 706
    .end local v4    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    .end local v5    # "uid":I
    :pswitch_2e
    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 707
    nop

    .line 703
    :goto_38
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    goto :goto_a

    .line 718
    .end local v3    # "next":I
    :cond_3d
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 719
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_11
    .end packed-switch
.end method

.method private performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 13
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;

    .line 885
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->isLoggedInStatsd()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 886
    return-void

    .line 888
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setLoggedInStatsd(Z)V

    .line 889
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 891
    .local v1, "processName":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 893
    const/4 v1, 0x0

    goto :goto_2d

    .line 894
    :cond_1b
    if-eqz v1, :cond_2d

    if-eqz v0, :cond_2d

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 896
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 898
    :cond_2d
    :goto_2d
    const/16 v2, 0x175

    .line 899
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v5

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v6

    .line 900
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v7

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v9

    long-to-int v9, v9

    .line 901
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->hasForegroundServices()Z

    move-result v10

    .line 898
    move-object v4, v1

    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIIIIZ)V

    .line 902
    return-void
.end method

.method private pruneAnrTracesIfNecessaryLocked()V
    .registers 7

    .line 1157
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1158
    .local v0, "allFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1167
    .local v1, "files":[Ljava/io/File;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1168
    return-void

    .line 1171
    :cond_17
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;-><init>(Landroid/util/ArraySet;)V

    invoke-direct {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 1185
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->forEachSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    .line 1188
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_2f
    if-ltz v2, :cond_44

    .line 1189
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1188
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 1191
    .end local v2    # "i":I
    :cond_44
    return-void
.end method

.method private static putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .registers 9
    .param p1, "outerKey"    # I
    .param p2, "innerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;IITU;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1199
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TU;"
    .local p4, "newInstance":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p5, "actionToOldValue":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TU;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1200
    .local v0, "idx":I
    const/4 v1, 0x0

    .line 1201
    .local v1, "innerArray":Landroid/util/SparseArray;, "TT;"
    if-gez v0, :cond_12

    .line 1202
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/util/SparseArray;

    .line 1203
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 1205
    :cond_12
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/util/SparseArray;

    .line 1207
    :goto_19
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1208
    if-ltz v0, :cond_2c

    .line 1209
    if-eqz p5, :cond_28

    .line 1210
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1212
    :cond_28
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_2f

    .line 1214
    :cond_2c
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1216
    :goto_2f
    return-void
.end method

.method private registerForPackageRemoval()V
    .registers 6

    .line 629
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 630
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$2;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 646
    return-void
.end method

.method private registerForUserRemoval()V
    .registers 6

    .line 616
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 617
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$1;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 626
    return-void
.end method

.method private removeByUserIdLocked(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 968
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    .line 969
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 970
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 971
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 972
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 973
    return-void

    .line 975
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 977
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda13;-><init>(I)V

    new-instance v3, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;

    invoke-direct {v3}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 979
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 989
    return-void
.end method

.method private static removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1242
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "outerPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .local p2, "innerPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TU;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_54

    .line 1243
    if-eqz p1, :cond_18

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1244
    :cond_18
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1245
    .local v1, "innerArray":Landroid/util/SparseArray;, "TT;"
    if-nez v1, :cond_21

    .line 1246
    goto :goto_51

    .line 1248
    :cond_21
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_27
    if-ltz v2, :cond_48

    .line 1249
    if-eqz p2, :cond_39

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1250
    :cond_39
    if-eqz p3, :cond_42

    .line 1251
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1253
    :cond_42
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1248
    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 1256
    .end local v2    # "j":I
    :cond_48
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_51

    .line 1257
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1242
    .end local v1    # "innerArray":Landroid/util/SparseArray;, "TT;"
    :cond_51
    :goto_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1261
    .end local v0    # "i":I
    :cond_54
    return-void
.end method

.method private removePackageLocked(Ljava/lang/String;IZI)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "removeUid"    # Z
    .param p4, "userId"    # I

    .line 931
    if-eqz p3, :cond_30

    .line 932
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 933
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 934
    .local v0, "idx":I
    if-ltz v0, :cond_30

    .line 935
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 936
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/io/File;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1d
    if-ltz v2, :cond_2b

    .line 937
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 936
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 939
    .end local v2    # "i":I
    :cond_2b
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 942
    .end local v0    # "idx":I
    .end local v1    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/io/File;>;"
    :cond_30
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 943
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 944
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    if-nez v1, :cond_3f

    .line 945
    return-void

    .line 947
    :cond_3f
    const/4 v2, -0x1

    if-ne p4, v2, :cond_60

    .line 948
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_48
    if-ltz v2, :cond_56

    .line 949
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 948
    add-int/lit8 v2, v2, -0x1

    goto :goto_48

    .line 951
    .end local v2    # "i":I
    :cond_56
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    .line 953
    :cond_60
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_66
    if-ltz v2, :cond_82

    .line 954
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p4, :cond_7f

    .line 955
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 956
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 957
    goto :goto_82

    .line 953
    :cond_7f
    add-int/lit8 v2, v2, -0x1

    goto :goto_66

    .line 960
    .end local v2    # "i":I
    :cond_82
    :goto_82
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_8b

    .line 961
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    :cond_8b
    :goto_8b
    return-void
.end method

.method private scheduleChildProcDied(III)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # I

    .line 352
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 354
    return-void
.end method

.method private scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V
    .registers 7
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;
    .param p2, "immediate"    # Z

    .line 871
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->isLoggedInStatsd()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 872
    return-void

    .line 874
    :cond_7
    const/16 v0, 0x1009

    if-eqz p2, :cond_14

    .line 875
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->removeMessages(ILjava/lang/Object;)V

    .line 876
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V

    goto :goto_27

    .line 877
    :cond_14
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 878
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-wide v2, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 881
    :cond_27
    :goto_27
    return-void
.end method

.method private updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;
    .param p2, "status"    # Ljava/lang/Integer;
    .param p3, "reason"    # Ljava/lang/Integer;

    .line 456
    if-eqz p1, :cond_73

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_73

    .line 460
    :cond_d
    const/4 v0, 0x0

    .line 461
    .local v0, "immediateLog":Z
    if-eqz p2, :cond_5e

    .line 462
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WIFEXITED(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 463
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 464
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WEXITSTATUS(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 465
    const/4 v0, 0x1

    goto :goto_5e

    .line 466
    :cond_2b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WIFSIGNALED(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 467
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    if-nez v1, :cond_4b

    .line 468
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 469
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    goto :goto_5e

    .line 470
    :cond_4b
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5e

    .line 471
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 472
    const/4 v0, 0x1

    .line 476
    :cond_5e
    :goto_5e
    if-eqz p3, :cond_6f

    .line 477
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 478
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6f

    .line 479
    const/4 v0, 0x1

    .line 482
    :cond_6f
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    .line 483
    return-void

    .line 458
    .end local v0    # "immediateLog":Z
    :cond_73
    :goto_73
    return-void
.end method

.method private updateExitInfoIfNecessaryLocked(IILjava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 15
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # Ljava/lang/Integer;
    .param p4, "reason"    # Ljava/lang/Integer;

    .line 493
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    .line 494
    .local v0, "k":Ljava/lang/Integer;
    if-eqz v0, :cond_c

    .line 495
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 497
    :cond_c
    iget-object v8, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 498
    .local v8, "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 499
    move v3, p2

    .line 500
    .local v3, "targetUid":I
    new-instance v9, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;

    move-object v1, v9

    move-object v2, p0

    move-object v4, v8

    move v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;)V

    invoke-direct {p0, v9}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 520
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method


# virtual methods
.method clearHistoryProcessExitInfo(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 798
    const-class v0, Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/NativeTombstoneManager;

    .line 800
    .local v0, "tombstoneService":Lcom/android/server/os/NativeTombstoneManager;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    .line 802
    .local v1, "appId":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    .line 803
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 804
    :try_start_16
    invoke-direct {p0, p2}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    .line 805
    monitor-exit v2

    goto :goto_3c

    :catchall_1b
    move-exception v3

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw v3

    .line 807
    :cond_1e
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v4, 0x20000

    invoke-virtual {v2, p1, v4, v5, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    .line 809
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 810
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 811
    :try_start_38
    invoke-direct {p0, p1, v2, v3, p2}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 812
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_4b

    .line 815
    .end local v2    # "uid":I
    :goto_3c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/os/NativeTombstoneManager;->purge(Ljava/util/Optional;Ljava/util/Optional;)V

    .line 816
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 817
    return-void

    .line 812
    .restart local v2    # "uid":I
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3
.end method

.method clearProcessExitInfo(Z)V
    .registers 5
    .param p1, "removeFile"    # Z

    .line 779
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_13

    .line 781
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 782
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 784
    :cond_13
    if-eqz p1, :cond_1c

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    if-eqz v1, :cond_1c

    .line 785
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 787
    :cond_1c
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 788
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 789
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 790
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 791
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method dumpHistoryProcessExitInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 820
    const-string v0, "ACTIVITY MANAGER PROCESS EXIT INFO (dumpsys activity exit-info)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 822
    .local v0, "sdf":Landroid/icu/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 823
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last Timestamp of Persistence Into Persistent Storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 824
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 823
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 826
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    invoke-direct {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    goto :goto_59

    .line 831
    :cond_40
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move-object v8, v2

    .line 832
    .local v8, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    if-eqz v8, :cond_59

    .line 833
    const-string v4, "  "

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v8

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 836
    .end local v8    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    :cond_59
    :goto_59
    monitor-exit v1

    .line 837
    return-void

    .line 836
    :catchall_5b
    move-exception v2

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_10 .. :try_end_5d} :catchall_5b

    throw v2
.end method

.method getExitInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterUid"    # I
    .param p3, "filterPid"    # I
    .param p4, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)V"
        }
    .end annotation

    .line 529
    .local p5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 531
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_56

    .line 532
    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 533
    .local v3, "emptyPackageName":Z
    if-nez v3, :cond_1b

    .line 535
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 536
    .local v4, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-eqz v4, :cond_1a

    .line 537
    invoke-virtual {v4, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfoLocked(IILjava/util/ArrayList;)V

    .line 539
    .end local v4    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    :cond_1a
    goto :goto_4d

    .line 541
    :cond_1b
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 542
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 544
    new-instance v5, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p2, v4, p3}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v5}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 553
    new-instance v5, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 555
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 556
    .local v5, "size":I
    if-lez p4, :cond_3b

    .line 557
    invoke-static {v5, p4}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v6

    .line 559
    :cond_3b
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3c
    if-ge v6, v5, :cond_4a

    .line 560
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 562
    .end local v6    # "i":I
    :cond_4a
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 564
    .end local v3    # "emptyPackageName":Z
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    .end local v5    # "size":I
    :goto_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_53

    .line 566
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    nop

    .line 568
    return-void

    .line 564
    :catchall_53
    move-exception v3

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPid":I
    .end local p4    # "maxNum":I
    .end local p5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    :try_start_55
    throw v3
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 566
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPid":I
    .restart local p4    # "maxNum":I
    .restart local p5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    :catchall_56
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    throw v2
.end method

.method getProcessStateSummary(II)[B
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 1047
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1049
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_10

    .line 1050
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move p1, v2

    .line 1052
    :cond_10
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 1053
    .local v2, "index":I
    if-gez v2, :cond_1b

    .line 1054
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 1056
    :cond_1b
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    monitor-exit v0

    return-object v3

    .line 1057
    .end local v1    # "k":Ljava/lang/Integer;
    .end local v2    # "index":I
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method handleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .registers 28
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "traceFile"    # Ljava/io/File;
    .param p5, "startOff"    # J
    .param p7, "endOff"    # J

    .line 1076
    move-object/from16 v1, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move/from16 v2, p2

    goto/16 :goto_f7

    .line 1079
    :cond_16
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 1080
    .local v10, "size":J
    sub-long v12, p7, p5

    .line 1081
    .local v12, "length":J
    cmp-long v0, p5, v10

    if-gez v0, :cond_f2

    cmp-long v0, p7, v10

    if-gtz v0, :cond_f2

    const-wide/16 v2, 0x0

    cmp-long v0, v12, v2

    if-gtz v0, :cond_2e

    move/from16 v2, p2

    goto/16 :goto_f4

    .line 1085
    :cond_2e
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".gz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v0

    .line 1088
    .local v14, "outFile":Ljava/io/File;
    move-object/from16 v2, p4

    move-object v3, v14

    move-wide/from16 v4, p5

    move-wide v6, v12

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->copyToGzFile(Ljava/io/File;Ljava/io/File;JJ)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1090
    iget-object v15, v1, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1091
    :try_start_5c
    iget-object v0, v1, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;
    :try_end_5e
    .catchall {:try_start_5c .. :try_end_5e} :catchall_e7

    move/from16 v2, p2

    :try_start_60
    invoke-virtual {v0, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1092
    .local v0, "k":Ljava/lang/Integer;
    if-eqz v0, :cond_6d

    .line 1093
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_e5

    move v2, v3

    move v7, v2

    .end local p2    # "uid":I
    .local v2, "uid":I
    goto :goto_6e

    .line 1092
    .end local v2    # "uid":I
    .restart local p2    # "uid":I
    :cond_6d
    move v7, v2

    .line 1095
    .end local p2    # "uid":I
    .local v7, "uid":I
    :goto_6e
    :try_start_6e
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_e1

    if-eqz v2, :cond_9e

    .line 1096
    :try_start_72
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stored ANR traces of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_72 .. :try_end_9e} :catchall_ed

    .line 1098
    :cond_9e
    const/4 v2, 0x1

    .line 1100
    .local v2, "pending":Z
    const/4 v3, 0x0

    move/from16 v16, v2

    .end local v2    # "pending":Z
    .local v3, "i":I
    .local v16, "pending":Z
    :goto_a2
    :try_start_a2
    array-length v2, v9
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_e1

    if-ge v3, v2, :cond_bd

    .line 1101
    :try_start_a5
    iget-object v2, v1, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    aget-object v4, v9, v3

    invoke-virtual {v2, v4, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 1103
    .local v2, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-eqz v2, :cond_ba

    invoke-virtual {v2, v8, v14}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->appendTraceIfNecessaryLocked(ILjava/io/File;)Z

    move-result v4
    :try_end_b5
    .catchall {:try_start_a5 .. :try_end_b5} :catchall_ed

    if-eqz v4, :cond_ba

    .line 1105
    const/4 v4, 0x0

    move/from16 v16, v4

    .line 1100
    .end local v2    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    :cond_ba
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 1108
    .end local v3    # "i":I
    :cond_bd
    if-eqz v16, :cond_d7

    .line 1110
    :try_start_bf
    iget-object v2, v1, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;-><init>()V

    new-instance v17, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;-><init>()V
    :try_end_cb
    .catchall {:try_start_bf .. :try_end_cb} :catchall_e1

    move v3, v7

    move/from16 v4, p1

    move-object v5, v14

    move/from16 v18, v7

    .end local v7    # "uid":I
    .local v18, "uid":I
    move-object/from16 v7, v17

    :try_start_d3
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    goto :goto_d9

    .line 1108
    .end local v18    # "uid":I
    .restart local v7    # "uid":I
    :cond_d7
    move/from16 v18, v7

    .line 1113
    .end local v0    # "k":Ljava/lang/Integer;
    .end local v7    # "uid":I
    .end local v16    # "pending":Z
    .restart local v18    # "uid":I
    :goto_d9
    monitor-exit v15
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_dd

    move/from16 v2, v18

    goto :goto_f1

    :catchall_dd
    move-exception v0

    move/from16 v7, v18

    goto :goto_eb

    .end local v18    # "uid":I
    .restart local v7    # "uid":I
    :catchall_e1
    move-exception v0

    move/from16 v18, v7

    .end local v7    # "uid":I
    .restart local v18    # "uid":I
    goto :goto_eb

    .end local v18    # "uid":I
    .restart local p2    # "uid":I
    :catchall_e5
    move-exception v0

    goto :goto_ea

    :catchall_e7
    move-exception v0

    move/from16 v2, p2

    :goto_ea
    move v7, v2

    .end local p2    # "uid":I
    .restart local v7    # "uid":I
    :goto_eb
    :try_start_eb
    monitor-exit v15
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ed

    throw v0

    :catchall_ed
    move-exception v0

    goto :goto_eb

    .line 1088
    .end local v7    # "uid":I
    .restart local p2    # "uid":I
    :cond_ef
    move/from16 v2, p2

    .line 1115
    .end local p2    # "uid":I
    .local v2, "uid":I
    :goto_f1
    return-void

    .line 1081
    .end local v2    # "uid":I
    .end local v14    # "outFile":Ljava/io/File;
    .restart local p2    # "uid":I
    :cond_f2
    move/from16 v2, p2

    .line 1082
    :goto_f4
    return-void

    .line 1076
    .end local v10    # "size":J
    .end local v12    # "length":J
    :cond_f5
    move/from16 v2, p2

    .line 1077
    :goto_f7
    return-void
.end method

.method handleNoteAppKillLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 5
    .param p1, "raw"    # Landroid/app/ApplicationExitInfo;

    .line 409
    nop

    .line 410
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 409
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 412
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    if-nez v0, :cond_18

    .line 413
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    goto :goto_38

    .line 416
    :cond_18
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 417
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 418
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 420
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 422
    :goto_38
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    .line 423
    return-void
.end method

.method handleNoteProcessDiedLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 7
    .param p1, "raw"    # Landroid/app/ApplicationExitInfo;

    .line 372
    if-eqz p1, :cond_99

    .line 373
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_44

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update process exit info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 375
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_44
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 378
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 382
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 383
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v3

    .line 382
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v1

    .line 384
    .local v1, "zygote":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 385
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v4

    .line 384
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v2

    .line 386
    .local v2, "lmkd":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeIsolatedUidLocked(I)I

    .line 388
    if-nez v0, :cond_7f

    .line 389
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 392
    :cond_7f
    const/4 v3, 0x0

    if-eqz v2, :cond_8b

    .line 393
    const/4 v4, 0x3

    .line 394
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 393
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_99

    .line 395
    :cond_8b
    if-eqz v1, :cond_95

    .line 396
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_99

    .line 398
    :cond_95
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    .line 401
    .end local v0    # "info":Landroid/app/ApplicationExitInfo;
    .end local v1    # "zygote":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    .end local v2    # "lmkd":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    :cond_99
    :goto_99
    return-void
.end method

.method handleZygoteSigChld(III)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # I

    .line 358
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_34

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got SIGCHLD from zygote: pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 360
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->scheduleChildProcDied(III)V

    .line 363
    return-void
.end method

.method init(Lcom/android/server/am/ActivityManagerService;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 256
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 257
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "ActivityManager:killHandler"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 259
    .local v0, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 260
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;-><init>(Lcom/android/server/am/AppExitInfoTracker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 262
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "procexitstore"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    .line 263
    invoke-static {v1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 267
    :cond_49
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    const-string/jumbo v3, "procexitinfo"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    .line 269
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    .line 271
    return-void
.end method

.method isFresh(J)Z
    .registers 7
    .param p1, "timestamp"    # J

    .line 1667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1669
    .local v0, "now":J
    const-wide/32 v2, 0x493e0

    add-long/2addr v2, p1

    cmp-long v2, v2, v0

    if-ltz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method synthetic lambda$dumpHistoryProcessExitInfo$6$com-android-server-am-AppExitInfoTracker(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Landroid/icu/text/SimpleDateFormat;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "records"    # Landroid/util/SparseArray;

    .line 827
    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 828
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getExitInfo$3$com-android-server-am-AppExitInfoTracker(ILjava/util/ArrayList;ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 8
    .param p1, "filterUid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "filterPid"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "records"    # Landroid/util/SparseArray;

    .line 545
    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 546
    .local v0, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-eqz v0, :cond_16

    .line 547
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 548
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->toListLocked(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 550
    :cond_16
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$onSystemReady$0$com-android-server-am-AppExitInfoTracker()V
    .registers 3

    .line 278
    nop

    .line 279
    const-string/jumbo v0, "sys.lmk.reportkills"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string/jumbo v1, "persist.sys.lmk.reportkills"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->loadExistingProcessExitInfo()V

    .line 281
    return-void
.end method

.method synthetic lambda$updateExitInfoIfNecessaryLocked$2$com-android-server-am-AppExitInfoTracker(ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 12
    .param p1, "targetUid"    # I
    .param p2, "tlist"    # Ljava/util/ArrayList;
    .param p3, "pid"    # I
    .param p4, "status"    # Ljava/lang/Integer;
    .param p5, "reason"    # Ljava/lang/Integer;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "records"    # Landroid/util/SparseArray;

    .line 501
    invoke-virtual {p7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 502
    .local v0, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    const/4 v1, 0x0

    .line 503
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 502
    if-nez v0, :cond_e

    .line 503
    return-object v2

    .line 505
    :cond_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 506
    const/4 v3, 0x1

    invoke-virtual {v0, p3, v3, p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfoLocked(IILjava/util/ArrayList;)V

    .line 507
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1c

    .line 508
    return-object v2

    .line 510
    :cond_1c
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 511
    .local v1, "info":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v3

    if-eq v3, p1, :cond_2c

    .line 512
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 513
    return-object v2

    .line 516
    :cond_2c
    invoke-direct {p0, v1, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 518
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method loadExistingProcessExitInfo()V
    .registers 9

    .line 653
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 654
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 655
    return-void

    .line 658
    :cond_f
    const/4 v0, 0x0

    .line 660
    .local v0, "fin":Ljava/io/FileInputStream;
    :try_start_10
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 661
    .local v2, "af":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v0, v3

    .line 662
    new-instance v3, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v3, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 663
    .local v3, "proto":Landroid/util/proto/ProtoInputStream;
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    .line 664
    .local v4, "next":I
    :goto_25
    const/4 v5, -0x1

    if-eq v4, v5, :cond_4a

    .line 666
    packed-switch v4, :pswitch_data_90

    goto :goto_44

    .line 674
    :pswitch_2c
    int-to-long v5, v4

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/am/AppExitInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_44

    .line 668
    :pswitch_31
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_34} :catch_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_34} :catch_56
    .catch Landroid/util/proto/ProtoParseException; {:try_start_10 .. :try_end_34} :catch_56
    .catchall {:try_start_10 .. :try_end_34} :catchall_54

    .line 669
    const-wide v6, 0x10300000001L

    .line 670
    :try_start_39
    invoke-virtual {v3, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 671
    monitor-exit v5

    .line 672
    goto :goto_44

    .line 671
    :catchall_41
    move-exception v6

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_41

    .end local v0    # "fin":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :try_start_43
    throw v6

    .line 665
    .restart local v0    # "fin":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :goto_44
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_48} :catch_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_48} :catch_56
    .catch Landroid/util/proto/ProtoParseException; {:try_start_43 .. :try_end_48} :catch_56
    .catchall {:try_start_43 .. :try_end_48} :catchall_54

    move v4, v5

    goto :goto_25

    .line 684
    .end local v2    # "af":Landroid/util/AtomicFile;
    .end local v3    # "proto":Landroid/util/proto/ProtoInputStream;
    .end local v4    # "next":I
    :cond_4a
    if-eqz v0, :cond_52

    .line 686
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 688
    :goto_4f
    goto :goto_52

    .line 687
    :catch_50
    move-exception v2

    goto :goto_4f

    .line 691
    :cond_52
    :goto_52
    move-object v2, v0

    goto :goto_78

    .line 684
    :catchall_54
    move-exception v1

    goto :goto_88

    .line 681
    :catch_56
    move-exception v2

    .line 682
    .local v2, "e":Ljava/lang/Exception;
    :try_start_57
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in loading historical app exit info from persistent storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_57 .. :try_end_6f} :catchall_54

    .line 684
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_52

    .line 686
    :try_start_72
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_4f

    .line 687
    :catch_76
    move-exception v2

    goto :goto_4f

    .line 691
    .end local v0    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    :goto_78
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 692
    :try_start_7b
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 693
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 694
    monitor-exit v3

    .line 695
    return-void

    .line 694
    :catchall_85
    move-exception v0

    monitor-exit v3
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_85

    throw v0

    .line 684
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "fin":Ljava/io/FileInputStream;
    :goto_88
    if-eqz v0, :cond_8f

    .line 686
    :try_start_8a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    .line 688
    goto :goto_8f

    .line 687
    :catch_8e
    move-exception v2

    .line 690
    :cond_8f
    :goto_8f
    throw v1

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method

.method obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timestamp"    # J

    .line 993
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 994
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    if-nez v0, :cond_10

    .line 995
    new-instance v1, Landroid/app/ApplicationExitInfo;

    invoke-direct {v1}, Landroid/app/ApplicationExitInfo;-><init>()V

    move-object v0, v1

    .line 998
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 999
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    .line 1000
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    goto :goto_29

    :cond_28
    move v2, v3

    .line 1001
    .local v2, "definingUid":I
    :goto_29
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    .line 1002
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    .line 1003
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    .line 1004
    if-lez v2, :cond_40

    move v4, v2

    goto :goto_44

    :cond_40
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_44
    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    .line 1005
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 1006
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setConnectionGroup(I)V

    .line 1007
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 1010
    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 1011
    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 1012
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    .line 1013
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    .line 1014
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastRss()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    .line 1015
    invoke-virtual {v0, p2, p3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 1016
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->hasReportedForegroundServices()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setHasForegroundServices(Z)V

    .line 1017
    .end local v2    # "definingUid":I
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_15 .. :try_end_98} :catchall_9c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1019
    return-object v0

    .line 1017
    :catchall_9c
    move-exception v2

    :try_start_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method onPackageRemoved(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "allUsers"    # Z

    .line 599
    if-eqz p1, :cond_39

    .line 600
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 601
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 602
    .local v0, "removeUid":Z
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    if-eqz v0, :cond_25

    .line 604
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 605
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 606
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeAppUid(IZ)V

    goto :goto_25

    .line 611
    :catchall_23
    move-exception v2

    goto :goto_37

    .line 608
    :cond_25
    :goto_25
    nop

    .line 609
    if-eqz p3, :cond_2a

    const/4 v2, -0x1

    goto :goto_2e

    :cond_2a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 608
    :goto_2e
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 610
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 611
    monitor-exit v1

    goto :goto_39

    :goto_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_23

    throw v2

    .line 613
    .end local v0    # "removeUid":Z
    :cond_39
    :goto_39
    return-void
.end method

.method onSystemReady()V
    .registers 3

    .line 274
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->registerForUserRemoval()V

    .line 275
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->registerForPackageRemoval()V

    .line 276
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void
.end method

.method onUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 588
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 589
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 590
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeByUserId(I)V

    .line 591
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    .line 593
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 594
    monitor-exit v0

    .line 595
    return-void

    .line 594
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method persistProcessExitInfo()V
    .registers 9

    .line 726
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 727
    .local v0, "af":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 728
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 730
    .local v2, "now":J
    :try_start_c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v1, v4

    .line 731
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 732
    .local v4, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v5, 0x10300000001L

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 733
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_21} :catch_36

    .line 734
    :try_start_21
    new-instance v6, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda18;

    invoke-direct {v6, v4}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda18;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-direct {p0, v6}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 744
    iput-wide v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 745
    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_33

    .line 746
    :try_start_2c
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 747
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_32} :catch_36

    .line 751
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_52

    .line 745
    .restart local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    :catchall_33
    move-exception v6

    :try_start_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "now":J
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :try_start_35
    throw v6
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_36

    .line 748
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v0    # "af":Landroid/util/AtomicFile;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "now":J
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :catch_36
    move-exception v4

    .line 749
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to write historical app exit info into persistent storage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 752
    .end local v4    # "e":Ljava/io/IOException;
    :goto_52
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 753
    const/4 v5, 0x0

    :try_start_56
    iput-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 754
    monitor-exit v4

    .line 755
    return-void

    .line 754
    :catchall_5a
    move-exception v5

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5a

    throw v5
.end method

.method recycleRawRecord(Landroid/app/ApplicationExitInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;

    .line 1024
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1029
    return-void
.end method

.method scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .registers 18
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "traceFile"    # Ljava/io/File;
    .param p5, "startOff"    # J
    .param p7, "endOff"    # J

    .line 1065
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    .line 1066
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1067
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1065
    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1068
    return-void
.end method

.method scheduleNoteAppKill(IIIILjava/lang/String;)V
    .registers 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "reason"    # I
    .param p4, "subReason"    # I
    .param p5, "msg"    # Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 315
    return-void

    .line 318
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 319
    :try_start_e
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 320
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_4a

    .line 321
    if-nez v1, :cond_46

    .line 322
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_49

    .line 323
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping saving the kill reason for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") since its process record is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 327
    :cond_46
    invoke-virtual {p0, v1, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 329
    :cond_49
    :goto_49
    return-void

    .line 320
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # I
    .param p3, "subReason"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 299
    return-void

    .line 301
    :cond_9
    if-eqz p1, :cond_2d

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_10

    goto :goto_2d

    .line 305
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 306
    .local v0, "raw":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v0, p2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 307
    invoke-virtual {v0, p3}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 308
    invoke-virtual {v0, p4}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v2, 0x1008

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 310
    return-void

    .line 302
    .end local v0    # "raw":Landroid/app/ApplicationExitInfo;
    :cond_2d
    :goto_2d
    return-void
.end method

.method scheduleNoteLmkdProcKilled(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 347
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v1, 0x1005

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 349
    return-void
.end method

.method scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 285
    if-eqz p1, :cond_24

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_7

    goto :goto_24

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    .line 290
    return-void

    .line 292
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v1, 0x1007

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    move-result-object v2

    .line 292
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 294
    return-void

    .line 286
    :cond_24
    :goto_24
    return-void
.end method

.method schedulePersistProcessExitInfo(Z)V
    .registers 7
    .param p1, "immediately"    # Z

    .line 762
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_9

    if-eqz p1, :cond_2b

    .line 764
    :cond_9
    if-eqz v1, :cond_14

    .line 765
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 767
    :cond_14
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 768
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 769
    if-eqz p1, :cond_26

    const-wide/16 v3, 0x0

    goto :goto_28

    :cond_26
    sget-wide v3, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    .line 768
    :goto_28
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 771
    :cond_2b
    monitor-exit v0

    .line 772
    return-void

    .line 771
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method setLmkdKillListener(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;

    .line 339
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->setOnProcDiedListener(Ljava/util/function/BiConsumer;)V

    .line 342
    monitor-exit v0

    .line 343
    return-void

    .line 342
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method setProcessStateSummary(II[B)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "data"    # [B

    .line 1036
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1037
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1038
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_10

    .line 1039
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move p1, v2

    .line 1041
    :cond_10
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;-><init>()V

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 1042
    .end local v1    # "k":Ljava/lang/Integer;
    monitor-exit v0

    .line 1043
    return-void

    .line 1042
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method
