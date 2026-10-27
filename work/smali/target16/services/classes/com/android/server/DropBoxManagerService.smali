.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# static fields
.field public static final DEFAULT_QUOTA_KB:I

.field public static final DISABLED_BY_DEFAULT_TAGS:Ljava/util/List;

.field public static final sDropboxEntryAddedExtrasMerger:Landroid/os/BundleMerger;


# instance fields
.field public mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field public mBlockSize:I

.field public volatile mBooted:Z

.field public mCachedQuotaBlocks:I

.field public mCachedQuotaUptimeMillis:J

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDropBoxDir:Ljava/io/File;

.field public mFilesByTag:Landroid/util/ArrayMap;

.field public final mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

.field public mLowPriorityRateLimitPeriod:J

.field public mLowPriorityTags:Landroid/util/ArraySet;

.field public mMaxFiles:I

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mStatFs:Landroid/os/StatFs;

.field public final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBooted(Lcom/android/server/DropBoxManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowPriorityRateLimitPeriod(Lcom/android/server/DropBoxManagerService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmReceiver(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCachedQuotaUptimeMillis(Lcom/android/server/DropBoxManagerService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddLowPriorityTag(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService;->addLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minit(Lcom/android/server/DropBoxManagerService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveLowPriorityTag(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService;->removeLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreDefaults(Lcom/android/server/DropBoxManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->restoreDefaults()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLowPriorityRateLimit(Lcom/android/server/DropBoxManagerService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DropBoxManagerService;->setLowPriorityRateLimit(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtrimToFit(Lcom/android/server/DropBoxManagerService;)J
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsDropboxEntryAddedExtrasMerger()Landroid/os/BundleMerger;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/DropBoxManagerService;->sDropboxEntryAddedExtrasMerger:Landroid/os/BundleMerger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 110
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x5000

    goto :goto_9

    :cond_7
    const/16 v0, 0x2800

    :goto_9
    sput v0, Lcom/android/server/DropBoxManagerService;->DEFAULT_QUOTA_KB:I

    .line 124
    const-string/jumbo v0, "system_app_wtf"

    const-string/jumbo v1, "system_server_wtf"

    .line 125
    const-string v2, "data_app_wtf"

    invoke-static {v2, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/DropBoxManagerService;->DISABLED_BY_DEFAULT_TAGS:Ljava/util/List;

    .line 182
    new-instance v0, Landroid/os/BundleMerger;

    invoke-direct {v0}, Landroid/os/BundleMerger;-><init>()V

    sput-object v0, Lcom/android/server/DropBoxManagerService;->sDropboxEntryAddedExtrasMerger:Landroid/os/BundleMerger;

    const/4 v1, 0x1

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/BundleMerger;->setDefaultMergeStrategy(I)V

    .line 184
    const-string/jumbo v1, "time"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/BundleMerger;->setMergeStrategy(Ljava/lang/String;I)V

    .line 186
    const-string v1, "android.os.extra.DROPPED_COUNT"

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/os/BundleMerger;->setMergeStrategy(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 400
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 7

    .line 412
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 138
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 141
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 145
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    const/4 v2, 0x0

    .line 146
    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 147
    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 148
    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 150
    iput-boolean v2, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    const/4 v0, -0x1

    .line 155
    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 158
    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 413
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 414
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 415
    new-instance p2, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    .line 416
    new-instance p2, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;

    invoke-direct {p2, p0, p1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;-><init>(Lcom/android/server/DropBoxManagerService;Lcom/android/server/DropBoxManagerService-IA;)V

    const-class p0, Lcom/android/server/DropBoxManagerInternal;

    invoke-static {p0, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static createDropBoxEntry(Ljava/lang/String;J)Lcom/android/internal/os/IDropBoxManagerService$Entry;
    .registers 4

    if-eqz p0, :cond_14

    .line 685
    new-instance v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;

    invoke-direct {v0}, Lcom/android/internal/os/IDropBoxManagerService$Entry;-><init>()V

    .line 686
    iput-object p0, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->tag:Ljava/lang/String;

    .line 687
    iput-wide p1, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->timestampMillis:J

    const/4 p0, 0x0

    .line 688
    iput-object p0, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->data:[B

    .line 689
    iput-object p0, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->fd:Landroid/os/ParcelFileDescriptor;

    const/4 p0, 0x1

    .line 690
    iput p0, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->flags:I

    return-object v0

    .line 683
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "createDropBoxEntry tag == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createDropBoxEntry(Ljava/lang/String;JLjava/io/File;I)Lcom/android/internal/os/IDropBoxManagerService$Entry;
    .registers 6

    if-eqz p0, :cond_34

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_1d

    .line 706
    new-instance v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;

    invoke-direct {v0}, Lcom/android/internal/os/IDropBoxManagerService$Entry;-><init>()V

    .line 707
    iput-object p0, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->tag:Ljava/lang/String;

    .line 708
    iput-wide p1, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->timestampMillis:J

    const/4 p0, 0x0

    .line 709
    iput-object p0, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->data:[B

    const/high16 p0, 0x10000000

    .line 710
    invoke-static {p3, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->fd:Landroid/os/ParcelFileDescriptor;

    .line 711
    iput p4, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->flags:I

    return-object v0

    .line 703
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad flags: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 701
    :cond_34
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "createDropBoxEntry (with file) tag == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private declared-synchronized init()V
    .registers 8

    monitor-enter p0

    .line 1130
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_5f

    .line 1131
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_32

    .line 1132
    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    goto/16 :goto_d4

    .line 1135
    :cond_32
    :goto_32
    :try_start_32
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 1136
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_45} :catch_46
    .catchall {:try_start_32 .. :try_end_45} :catchall_2f

    goto :goto_5f

    .line 1138
    :catch_46
    :try_start_46
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t statfs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1142
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_d2

    .line 1143
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 1146
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService-IA;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 1147
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 1150
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7c
    if-ge v2, v1, :cond_d2

    aget-object v3, v0, v2

    .line 1151
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 1152
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_b6

    .line 1157
    :cond_a6
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 1159
    invoke-virtual {v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 1162
    invoke-virtual {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    :cond_b6
    :goto_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 1144
    :cond_b9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t list files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d2
    .catchall {:try_start_46 .. :try_end_d2} :catchall_2f

    .line 1166
    :cond_d2
    monitor-exit p0

    return-void

    :goto_d4
    :try_start_d4
    monitor-exit p0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_2f

    throw v0
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .registers 10

    .line 459
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p2, p2

    int-to-long v3, p2

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Ljava/io/InputStream;JI)V

    return-void
.end method

.method public addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V
    .registers 14

    .line 531
    const-string v0, "DropBoxManagerService"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 533
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isTagEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 533
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_e3

    .line 537
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3c} :catch_80
    .catchall {:try_start_5 .. :try_end_3c} :catchall_7d

    if-nez v4, :cond_42

    .line 580
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 543
    :cond_42
    :try_start_42
    invoke-interface {p2}, Lcom/android/server/DropBoxManagerInternal$EntrySource;->length()J

    move-result-wide v4

    .line 544
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_82

    .line 547
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " > "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes)"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x6

    .line 548
    invoke-virtual {p0, v4, p1, v1, v2}, Lcom/android/server/DropBoxManagerService;->logDropboxDropped(ILjava/lang/String;J)V

    move-object v4, v3

    goto :goto_b6

    :catchall_7d
    move-exception p0

    goto/16 :goto_10a

    :catch_80
    move-exception p3

    goto :goto_e9

    .line 553
    :cond_82
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_a7} :catch_80
    .catchall {:try_start_42 .. :try_end_a7} :catchall_7d

    .line 554
    :try_start_a7
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ac} :catch_d6
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_d3

    .line 555
    :try_start_ac
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/server/DropBoxManagerInternal$EntrySource;->writeTo(Ljava/io/FileDescriptor;)V
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_d9

    .line 556
    :try_start_b3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 560
    :goto_b6
    invoke-virtual {p0, v4, p1, p3}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v4
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_ba} :catch_d6
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_d3

    .line 567
    :try_start_ba
    iget-object p3, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    if-eqz p3, :cond_ca

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_ca

    .line 569
    iget-object p3, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {p3, p1, v4, v5}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->maybeDeferBroadcast(Ljava/lang/String;J)V

    goto :goto_cf

    .line 571
    :cond_ca
    iget-object p3, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {p3, p1, v4, v5}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->sendBroadcast(Ljava/lang/String;J)V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_cf} :catch_80
    .catchall {:try_start_ba .. :try_end_cf} :catchall_7d

    .line 580
    :goto_cf
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_d3
    move-exception p0

    move-object v3, v4

    goto :goto_10a

    :catch_d6
    move-exception p3

    move-object v3, v4

    goto :goto_e9

    :catchall_d9
    move-exception p3

    .line 554
    :try_start_da
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_de

    goto :goto_e2

    :catchall_de
    move-exception v3

    :try_start_df
    invoke-virtual {p3, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e2
    throw p3
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e3} :catch_d6
    .catchall {:try_start_df .. :try_end_e3} :catchall_d3

    .line 535
    :cond_e3
    :try_start_e3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-direct {p3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p3
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e9} :catch_80
    .catchall {:try_start_e3 .. :try_end_e9} :catchall_7d

    .line 574
    :goto_e9
    :try_start_e9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x5

    .line 575
    invoke-virtual {p0, p3, p1, v1, v2}, Lcom/android/server/DropBoxManagerService;->logDropboxDropped(ILjava/lang/String;J)V
    :try_end_101
    .catchall {:try_start_e9 .. :try_end_101} :catchall_7d

    .line 580
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_109

    .line 581
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_109
    return-void

    .line 580
    :goto_10a
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_112

    .line 581
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 582
    :cond_112
    throw p0
.end method

.method public addEntry(Ljava/lang/String;Ljava/io/InputStream;JI)V
    .registers 8

    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_e

    const-wide/16 v0, 0x4000

    cmp-long v0, p3, v0

    if-lez v0, :cond_e

    or-int/lit8 p5, p5, 0x4

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 488
    :goto_f
    new-instance v1, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;

    invoke-direct {v1, p2, p3, p4, v0}, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;-><init>(Ljava/io/InputStream;JZ)V

    invoke-virtual {p0, p1, v1, p5}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V

    return-void
.end method

.method public addFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .registers 12

    .line 465
    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    .line 468
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v1
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_e} :catch_36

    if-eqz v1, :cond_1e

    .line 475
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-wide v5, v0, Landroid/system/StructStat;->st_size:J

    move-object v2, p0

    move-object v3, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Ljava/io/InputStream;JI)V

    return-void

    :cond_1e
    move-object v3, p1

    .line 469
    :try_start_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " entry must be real file"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_36
    .catch Landroid/system/ErrnoException; {:try_start_1f .. :try_end_36} :catch_36

    :catch_36
    move-exception v0

    move-object p0, v0

    .line 472
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final declared-synchronized addLowPriorityTag(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 720
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 721
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final checkPermission(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14

    .line 609
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PEEK_DROPBOX_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    return v1

    :cond_e
    const-wide/32 v2, 0x11a58811

    .line 617
    invoke-static {v2, v3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 618
    const-string v0, "android.permission.READ_DROPBOX_DATA"

    goto :goto_1c

    .line 622
    :cond_1a
    const-string v0, "android.permission.READ_LOGS"

    :goto_1c
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DropBoxManagerService"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AppOpsManager;

    const/16 v5, 0x2b

    const/4 v9, 0x0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4c

    const/4 p2, 0x3

    if-eq p1, p2, :cond_43

    const/4 p0, 0x0

    return p0

    .line 632
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    return v1
.end method

.method public final declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 22

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1189
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1195
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 1197
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_30

    .line 1198
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1199
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    goto :goto_31

    :catchall_2d
    move-exception v0

    goto/16 :goto_d4

    :cond_30
    const/4 v4, 0x0

    .line 1202
    :goto_31
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    const-wide/16 v5, 0x1

    if-nez v0, :cond_4e

    .line 1203
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    add-long/2addr v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_4e
    if-eqz v4, :cond_b0

    .line 1207
    array-length v0, v4

    const/4 v7, 0x0

    move-wide v12, v2

    :goto_53
    if-ge v7, v0, :cond_ae

    aget-object v2, v4, v7

    .line 1208
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v8, v9

    iput v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1209
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v8, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    if-eqz v3, :cond_7b

    .line 1210
    iget-object v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v8, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 1211
    iget v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v8, v9

    iput v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1213
    :cond_7b
    iget v3, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_9c

    .line 1214
    new-instance v8, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v11, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v16, v12, v5

    iget v14, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v15, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct/range {v8 .. v15}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-virtual {v1, v8}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v12, v16

    goto :goto_ab

    .line 1217
    :cond_9c
    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v8, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v9, v12, v5

    invoke-direct {v3, v8, v2, v12, v13}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-virtual {v1, v3}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v12, v9

    :goto_ab
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    :cond_ae
    move-wide v6, v12

    goto :goto_b1

    :cond_b0
    move-wide v6, v2

    :goto_b1
    if-nez p1, :cond_c0

    .line 1223
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v2, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v5, p2

    invoke-direct {v0, v2, v5, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    goto :goto_d2

    :cond_c0
    move-object/from16 v5, p2

    .line 1225
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v4, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v9, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v3, p1

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-virtual {v1, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_d2
    .catchall {:try_start_3 .. :try_end_d2} :catchall_2d

    .line 1227
    :goto_d2
    monitor-exit p0

    return-wide v6

    :goto_d4
    :try_start_d4
    monitor-exit p0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_2d

    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 732
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DropBoxManagerService"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_92

    if-nez v0, :cond_15

    monitor-exit p0

    return-void

    .line 735
    :cond_15
    :try_start_15
    invoke-direct {v1}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_2ec
    .catchall {:try_start_15 .. :try_end_18} :catchall_92

    .line 744
    :try_start_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 747
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_26
    const/4 v10, 0x1

    if-eqz v3, :cond_c7

    .line 748
    array-length v11, v3

    if-ge v0, v11, :cond_c7

    .line 749
    aget-object v11, v3, v0

    const-string v12, "-p"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c2

    aget-object v11, v3, v0

    const-string v12, "--print"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_42

    goto/16 :goto_c2

    .line 751
    :cond_42
    aget-object v11, v3, v0

    const-string v12, "-f"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c0

    aget-object v11, v3, v0

    const-string v12, "--file"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_57

    goto :goto_c0

    .line 753
    :cond_57
    aget-object v11, v3, v0

    const-string v12, "--proto"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_63

    move v7, v10

    goto :goto_c3

    .line 755
    :cond_63
    aget-object v10, v3, v0

    const-string v11, "-h"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9b

    aget-object v10, v3, v0

    const-string v11, "--help"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_78

    goto :goto_9b

    .line 764
    :cond_78
    aget-object v10, v3, v0

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 765
    const-string v10, "Unknown argument: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v3, v0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c3

    :catchall_92
    move-exception v0

    goto/16 :goto_30a

    .line 767
    :cond_95
    aget-object v10, v3, v0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 756
    :cond_9b
    :goto_9b
    const-string v0, "Dropbox (dropbox) dump options:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    const-string v0, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    const-string v0, "    -h|--help: print this help"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    const-string v0, "    -p|--print: print full contents of each entry"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    const-string v0, "    -f|--file: print path of each entry\'s file"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    const-string v0, "    --proto: dump data to proto"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    const-string v0, "  [timestamp] optionally filters to only those entries."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_be
    .catchall {:try_start_18 .. :try_end_be} :catchall_92

    .line 763
    monitor-exit p0

    return-void

    :cond_c0
    :goto_c0
    move v9, v10

    goto :goto_c3

    :cond_c2
    :goto_c2
    move v8, v10

    :goto_c3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_26

    :cond_c7
    if-eqz v7, :cond_d0

    move-object/from16 v0, p1

    .line 772
    :try_start_cb
    invoke-virtual {v1, v0, v5}, Lcom/android/server/DropBoxManagerService;->dumpProtoLocked(Ljava/io/FileDescriptor;Ljava/util/ArrayList;)V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_92

    .line 773
    monitor-exit p0

    return-void

    .line 776
    :cond_d0
    :try_start_d0
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    const-string v0, "Max entries: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    const-string v0, "Low priority rate limit period: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget-wide v11, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const-string v0, "Low priority tags: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13a

    .line 784
    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_122
    if-ge v7, v0, :cond_135

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    check-cast v11, Ljava/lang/String;

    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_122

    .line 786
    :cond_135
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_13a
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v0, 0x0

    :goto_148
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2cb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 792
    invoke-virtual {v1, v11, v5}, Lcom/android/server/DropBoxManagerService;->matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_15b

    goto :goto_148

    :cond_15b
    add-int/lit8 v12, v0, 0x1

    if-eqz v8, :cond_164

    .line 795
    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    :cond_164
    iget-wide v13, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v13, v14}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_178

    const-string v0, "(no tag)"

    :cond_178
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v11, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v17

    if-nez v17, :cond_18d

    .line 802
    const-string v0, " (no file)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_188
    move-object/from16 p1, v7

    const/4 v14, 0x0

    goto/16 :goto_2c6

    .line 804
    :cond_18d
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_198

    .line 805
    const-string v0, " (contents lost)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_188

    .line 808
    :cond_198
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1a8

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    :cond_1a8
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b2

    const-string/jumbo v0, "text"

    goto :goto_1b4

    :cond_1b2
    const-string v0, "data"

    :goto_1b4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_1d2

    if-eqz v8, :cond_1e5

    .line 814
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1e5

    :cond_1d2
    if-nez v8, :cond_1d9

    .line 815
    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :cond_1d9
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :cond_1e5
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_1e7
    .catchall {:try_start_d0 .. :try_end_1e7} :catchall_92

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2bc

    if-eqz v8, :cond_2bc

    const/16 v19, 0x0

    .line 823
    :try_start_1ef
    new-instance v13, Landroid/os/DropBoxManager$Entry;

    iget-object v14, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_1f3
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_1f3} :catch_27a
    .catchall {:try_start_1ef .. :try_end_1f3} :catchall_26f

    move-object/from16 p1, v7

    :try_start_1f5
    iget-wide v6, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move/from16 v18, v0

    move-wide v15, v6

    invoke-direct/range {v13 .. v18}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_1ff
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_1ff} :catch_273
    .catchall {:try_start_1f5 .. :try_end_1ff} :catchall_26f

    move-object/from16 v6, v17

    if-eqz v8, :cond_22c

    .line 827
    :try_start_203
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v13}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_203 .. :try_end_20c} :catch_261
    .catchall {:try_start_203 .. :try_end_20c} :catchall_25d

    const/16 v0, 0x1000

    .line 828
    :try_start_20e
    new-array v0, v0, [C

    const/4 v11, 0x0

    .line 831
    :goto_211
    invoke-virtual {v7, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v14
    :try_end_215
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_215} :catch_255
    .catchall {:try_start_20e .. :try_end_215} :catchall_21f

    if-gtz v14, :cond_22e

    if-nez v11, :cond_22a

    .line 842
    :try_start_219
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21e
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_21e} :catch_224
    .catchall {:try_start_219 .. :try_end_21e} :catchall_21f

    goto :goto_22a

    :catchall_21f
    move-exception v0

    :goto_220
    move-object/from16 v19, v13

    goto/16 :goto_2b1

    :catch_224
    move-exception v0

    move-object/from16 v19, v13

    const/4 v14, 0x0

    goto/16 :goto_27e

    :cond_22a
    :goto_22a
    move-object/from16 v19, v7

    :cond_22c
    const/4 v14, 0x0

    goto :goto_266

    :cond_22e
    const/4 v11, 0x0

    .line 833
    :try_start_22f
    invoke-virtual {v4, v0, v11, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_232
    .catch Ljava/io/IOException; {:try_start_22f .. :try_end_232} :catch_25a
    .catchall {:try_start_22f .. :try_end_232} :catchall_21f

    add-int/lit8 v14, v14, -0x1

    .line 834
    :try_start_234
    aget-char v11, v0, v14

    const/16 v14, 0xa

    if-ne v11, v14, :cond_23c

    move v11, v10

    goto :goto_23d

    :cond_23c
    const/4 v11, 0x0

    .line 837
    :goto_23d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/high16 v15, 0x10000

    if-le v14, v15, :cond_258

    .line 838
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_24c
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_24c} :catch_255
    .catchall {:try_start_234 .. :try_end_24c} :catchall_21f

    const/4 v14, 0x0

    .line 839
    :try_start_24d
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_250
    .catch Ljava/io/IOException; {:try_start_24d .. :try_end_250} :catch_251
    .catchall {:try_start_24d .. :try_end_250} :catchall_21f

    goto :goto_211

    :catch_251
    move-exception v0

    :goto_252
    move-object/from16 v19, v13

    goto :goto_27e

    :catch_255
    move-exception v0

    const/4 v14, 0x0

    goto :goto_252

    :cond_258
    const/4 v14, 0x0

    goto :goto_211

    :catch_25a
    move-exception v0

    move v14, v11

    goto :goto_252

    :catchall_25d
    move-exception v0

    move-object/from16 v7, v19

    goto :goto_220

    :catch_261
    move-exception v0

    const/4 v14, 0x0

    move-object/from16 v7, v19

    goto :goto_252

    .line 848
    :goto_266
    :try_start_266
    invoke-virtual {v13}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_269
    .catchall {:try_start_266 .. :try_end_269} :catchall_92

    if-eqz v19, :cond_2bf

    .line 851
    :try_start_26b
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_26e
    .catch Ljava/io/IOException; {:try_start_26b .. :try_end_26e} :catch_2bf
    .catchall {:try_start_26b .. :try_end_26e} :catchall_92

    goto :goto_2bf

    :catchall_26f
    move-exception v0

    move-object/from16 v7, v19

    goto :goto_2b1

    :catch_273
    move-exception v0

    :goto_274
    move-object/from16 v6, v17

    const/4 v14, 0x0

    move-object/from16 v7, v19

    goto :goto_27e

    :catch_27a
    move-exception v0

    move-object/from16 p1, v7

    goto :goto_274

    .line 845
    :goto_27e
    :try_start_27e
    const-string v11, "*** "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    const-string v11, "DropBoxManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t read: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a5
    .catchall {:try_start_27e .. :try_end_2a5} :catchall_2b0

    if-eqz v19, :cond_2aa

    .line 848
    :try_start_2a7
    invoke-virtual/range {v19 .. v19}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2aa
    .catchall {:try_start_2a7 .. :try_end_2aa} :catchall_92

    :cond_2aa
    if-eqz v7, :cond_2bf

    .line 851
    :try_start_2ac
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_2ac .. :try_end_2af} :catch_2bf
    .catchall {:try_start_2ac .. :try_end_2af} :catchall_92

    goto :goto_2bf

    :catchall_2b0
    move-exception v0

    :goto_2b1
    if-eqz v19, :cond_2b6

    .line 848
    :try_start_2b3
    invoke-virtual/range {v19 .. v19}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2b6
    .catchall {:try_start_2b3 .. :try_end_2b6} :catchall_92

    :cond_2b6
    if-eqz v7, :cond_2bb

    .line 851
    :try_start_2b8
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_2bb
    .catch Ljava/io/IOException; {:try_start_2b8 .. :try_end_2bb} :catch_2bb
    .catchall {:try_start_2b8 .. :try_end_2bb} :catchall_92

    .line 855
    :catch_2bb
    :cond_2bb
    :try_start_2bb
    throw v0

    :cond_2bc
    move-object/from16 p1, v7

    const/4 v14, 0x0

    :catch_2bf
    :cond_2bf
    :goto_2bf
    if-eqz v8, :cond_2c6

    .line 858
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c6
    :goto_2c6
    move-object/from16 v7, p1

    move v0, v12

    goto/16 :goto_148

    :cond_2cb
    if-nez v0, :cond_2d2

    .line 861
    const-string v0, "(No entries found.)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d2
    if-eqz v3, :cond_2d7

    .line 863
    array-length v0, v3

    if-nez v0, :cond_2e3

    :cond_2d7
    if-nez v8, :cond_2de

    .line 864
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    :cond_2de
    const-string v0, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_2e3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_2ea
    .catchall {:try_start_2bb .. :try_end_2ea} :catchall_92

    .line 870
    monitor-exit p0

    return-void

    :catch_2ec
    move-exception v0

    .line 737
    :try_start_2ed
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t initialize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    const-string v2, "DropBoxManagerService"

    const-string v3, "Can\'t init"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_308
    .catchall {:try_start_2ed .. :try_end_308} :catchall_92

    .line 739
    monitor-exit p0

    return-void

    :goto_30a
    :try_start_30a
    monitor-exit p0
    :try_end_30b
    .catchall {:try_start_30a .. :try_end_30b} :catchall_92

    throw v0
.end method

.method public final dumpProtoLocked(Ljava/io/FileDescriptor;Ljava/util/ArrayList;)V
    .registers 14

    .line 884
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 886
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object p1, p1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 887
    invoke-virtual {p0, v0, p2}, Lcom/android/server/DropBoxManagerService;->matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_d

    .line 889
    :cond_20
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 890
    iget v2, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2f

    goto :goto_d

    :cond_2f
    const-wide v2, 0x20b00000001L

    .line 894
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    const-wide v2, 0x10300000001L

    .line 895
    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 897
    :try_start_42
    new-instance v3, Landroid/os/DropBoxManager$Entry;

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v8, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v3 .. v8}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4d} :catch_8a

    .line 899
    :try_start_4d
    invoke-virtual {v3}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_7e

    if-eqz v2, :cond_81

    const/high16 v0, 0x40000

    .line 902
    :try_start_55
    new-array v4, v0, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_59
    if-ltz v5, :cond_68

    add-int/2addr v6, v5

    if-ge v6, v0, :cond_68

    sub-int v5, v0, v6

    .line 906
    invoke-virtual {v2, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    goto :goto_59

    :catchall_65
    move-exception v0

    move-object v4, v0

    goto :goto_75

    .line 909
    :cond_68
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-wide v4, 0x10c00000002L

    .line 908
    invoke-virtual {v1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V
    :try_end_74
    .catchall {:try_start_55 .. :try_end_74} :catchall_65

    goto :goto_81

    .line 896
    :goto_75
    :try_start_75
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7d

    :catchall_79
    move-exception v0

    :try_start_7a
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7d
    throw v4

    :catchall_7e
    move-exception v0

    move-object v2, v0

    goto :goto_8c

    :cond_81
    :goto_81
    if-eqz v2, :cond_86

    .line 911
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_7e

    :cond_86
    :try_start_86
    invoke-virtual {v3}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_ab

    :catch_8a
    move-exception v0

    goto :goto_95

    .line 896
    :goto_8c
    :try_start_8c
    invoke-virtual {v3}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception v0

    :try_start_91
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_94
    throw v2
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_95} :catch_8a

    .line 912
    :goto_95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DropBoxManagerService"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    :goto_ab
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_d

    .line 918
    :cond_b0
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public final declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 5

    monitor-enter p0

    .line 1170
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1171
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1176
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_47

    iget v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_47

    .line 1177
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_3b

    .line 1179
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService-IA;)V

    .line 1180
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :catchall_39
    move-exception p1

    goto :goto_49

    .line 1182
    :cond_3b
    :goto_3b
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1183
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget p1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_39

    .line 1185
    :cond_47
    monitor-exit p0

    return-void

    :goto_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_39

    throw p1
.end method

.method public final getLowPriorityResourceConfigs()V
    .registers 6

    .line 1346
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 1349
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1351
    array-length v1, v0

    if-nez v1, :cond_20

    const/4 v0, 0x0

    .line 1353
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    return-void

    .line 1356
    :cond_20
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_34

    .line 1358
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_34
    return-void
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/IDropBoxManagerService$Entry;
    .registers 8

    monitor-enter p0

    .line 645
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/DropBoxManagerService;->checkPermission(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p4
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    const/4 p5, 0x0

    if-nez p4, :cond_e

    .line 646
    monitor-exit p0

    return-object p5

    .line 650
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_81
    .catchall {:try_start_e .. :try_end_11} :catchall_16

    if-nez p1, :cond_18

    .line 656
    :try_start_13
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    goto :goto_20

    :catchall_16
    move-exception p1

    goto :goto_8b

    :cond_18
    iget-object p4, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_16

    :goto_20
    if-nez p1, :cond_24

    .line 657
    monitor-exit p0

    return-object p5

    .line 659
    :cond_24
    :try_start_24
    iget-object p1, p1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance p4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-direct {p4, p2, p3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {p1, p4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 660
    iget-object p3, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez p3, :cond_47

    goto :goto_36

    .line 661
    :cond_47
    iget p4, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_55

    .line 662
    iget-wide p1, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {p3, p1, p2}, Lcom/android/server/DropBoxManagerService;->createDropBoxEntry(Ljava/lang/String;J)Lcom/android/internal/os/IDropBoxManagerService$Entry;

    move-result-object p1
    :try_end_53
    .catchall {:try_start_24 .. :try_end_53} :catchall_16

    monitor-exit p0

    return-object p1

    .line 664
    :cond_55
    :try_start_55
    iget-object p3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {p2, p3}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p3
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_16

    .line 666
    :try_start_5b
    iget-object p4, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v0, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget p2, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-static {p4, v0, v1, p3, p2}, Lcom/android/server/DropBoxManagerService;->createDropBoxEntry(Ljava/lang/String;JLjava/io/File;I)Lcom/android/internal/os/IDropBoxManagerService$Entry;

    move-result-object p1
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_65} :catch_67
    .catchall {:try_start_5b .. :try_end_65} :catchall_16

    monitor-exit p0

    return-object p1

    :catch_67
    move-exception p2

    .line 668
    :try_start_68
    const-string p4, "DropBoxManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_68 .. :try_end_7e} :catchall_16

    goto :goto_36

    .line 673
    :cond_7f
    monitor-exit p0

    return-object p5

    :catch_81
    move-exception p1

    .line 652
    :try_start_82
    const-string p2, "DropBoxManagerService"

    const-string p3, "Can\'t init"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_16

    .line 653
    monitor-exit p0

    return-object p5

    :goto_8b
    :try_start_8b
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_16

    throw p1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 7

    .line 590
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 592
    :try_start_4
    sget-object v2, Lcom/android/server/DropBoxManagerService;->DISABLED_BY_DEFAULT_TAGS:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_2d

    const-string v3, "dropbox:"

    if-eqz v2, :cond_2f

    .line 593
    :try_start_e
    const-string v2, "enabled"

    iget-object p0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_2d

    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2d
    move-exception p0

    goto :goto_50

    .line 596
    :cond_2f
    :try_start_2f
    const-string v2, "disabled"

    iget-object p0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_2d

    xor-int/lit8 p0, p0, 0x1

    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    throw p0
.end method

.method public final logDropboxDropped(ILjava/lang/String;J)V
    .registers 5

    const/16 p0, 0x1ab

    .line 586
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    return-void
.end method

.method public final matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z
    .registers 9

    .line 873
    iget-wide v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v0, v1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object p0

    .line 875
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_e
    if-ge v3, v0, :cond_2d

    if-eqz v4, :cond_2d

    .line 877
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 878
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_29

    :cond_27
    move v4, v2

    goto :goto_2a

    :cond_29
    :goto_29
    move v4, v1

    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2d
    return v4
.end method

.method public onBootPhase(I)V
    .registers 6

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_a

    return-void

    .line 448
    :cond_a
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return-void

    .line 431
    :cond_d
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 432
    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 435
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/DropBoxManagerService$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 421
    const-string v0, "dropbox"

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final declared-synchronized removeLowPriorityTag(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 724
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 725
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final declared-synchronized restoreDefaults()V
    .registers 2

    monitor-enter p0

    .line 728
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 729
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public final declared-synchronized setLowPriorityRateLimit(J)V
    .registers 3

    monitor-enter p0

    .line 716
    :try_start_1
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 717
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public final declared-synchronized trimToFit()J
    .registers 15

    monitor-enter p0

    .line 1237
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "dropbox_age_seconds"

    const v2, 0x3f480

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1239
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "dropbox_max_files"

    .line 1241
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    const/16 v4, 0x3e8

    if-eqz v3, :cond_1b

    const/16 v3, 0x12c

    goto :goto_1c

    :cond_1b
    move v3, v4

    .line 1239
    :goto_1c
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 1243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/2addr v0, v4

    int-to-long v3, v0

    sub-long v3, v1, v3

    .line 1245
    :goto_2a
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 1246
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1247
    iget-wide v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_54

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    iget v6, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    if-ge v5, v6, :cond_54

    goto :goto_92

    :catchall_51
    move-exception v0

    goto/16 :goto_1ca

    .line 1251
    :cond_54
    iget-object v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    sub-long v6, v1, v6

    const/4 v8, 0x4

    invoke-virtual {p0, v8, v5, v6, v7}, Lcom/android/server/DropBoxManagerService;->logDropboxDropped(ILjava/lang/String;J)V

    .line 1256
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$FileList;

    if-eqz v5, :cond_79

    .line 1257
    iget-object v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1258
    :cond_79
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1259
    :cond_8c
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    goto :goto_2a

    .line 1267
    :cond_92
    :goto_92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1268
    iget-wide v5, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v7, 0x1388

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    const/4 v5, 0x0

    if-lez v0, :cond_114

    .line 1269
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "dropbox_quota_percent"

    const/16 v7, 0xa

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1271
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dropbox_reserve_percent"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1273
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "dropbox_quota_kb"

    sget v9, Lcom/android/server/DropBoxManagerService;->DEFAULT_QUOTA_KB:I

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1276
    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8
    :try_end_c2
    .catchall {:try_start_1 .. :try_end_c2} :catchall_51

    .line 1278
    :try_start_c2
    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v9, v8}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c2 .. :try_end_c7} :catch_fb
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_51

    .line 1282
    :try_start_c7
    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    .line 1283
    iget-object v10, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v10

    int-to-long v12, v6

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x64

    div-long/2addr v10, v12

    sub-long/2addr v8, v10

    int-to-long v10, v0

    mul-long/2addr v8, v10

    .line 1284
    div-long/2addr v8, v12

    const-wide/32 v10, 0x7fffffff

    .line 1286
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    .line 1285
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    mul-int/lit16 v7, v7, 0x400

    .line 1287
    iget v6, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v7, v6

    .line 1288
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 1289
    iput-wide v3, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    goto :goto_114

    .line 1280
    :catch_fb
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t restat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1306
    :cond_114
    :goto_114
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v3, :cond_1c2

    .line 1309
    new-instance v3, Ljava/util/TreeSet;

    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1310
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_148

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/DropBoxManagerService$FileList;

    if-lez v5, :cond_142

    .line 1311
    iget v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v8, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v8, v0

    div-int/2addr v8, v5

    if-gt v7, v8, :cond_142

    goto :goto_148

    .line 1314
    :cond_142
    iget v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_12b

    .line 1317
    :cond_148
    :goto_148
    iget v4, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v4, v0

    div-int/2addr v4, v5

    .line 1320
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_150
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1321
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v6, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v5, v6, :cond_165

    goto :goto_1c2

    .line 1322
    :cond_165
    :goto_165
    iget v5, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-le v5, v4, :cond_150

    iget-object v5, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_150

    .line 1323
    iget-object v5, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1324
    iget-object v6, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v7, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    sub-long v7, v1, v7

    const/4 v9, 0x3

    invoke-virtual {p0, v9, v6, v7, v8}, Lcom/android/server/DropBoxManagerService;->logDropboxDropped(ILjava/lang/String;J)V

    .line 1329
    iget-object v6, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_192

    iget v6, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v6, v7

    iput v6, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1330
    :cond_192
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a5

    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v8, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_1a5
    .catchall {:try_start_c7 .. :try_end_1a5} :catchall_51

    .line 1333
    :cond_1a5
    :try_start_1a5
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1334
    new-instance v6, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v8, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v9, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-virtual {p0, v6}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1b8} :catch_1b9
    .catchall {:try_start_1a5 .. :try_end_1b8} :catchall_51

    goto :goto_165

    :catch_1b9
    move-exception v5

    .line 1336
    :try_start_1ba
    const-string v6, "DropBoxManagerService"

    const-string v7, "Can\'t write tombstone file"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_165

    .line 1342
    :cond_1c2
    :goto_1c2
    iget v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iget v1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1c6
    .catchall {:try_start_1ba .. :try_end_1c6} :catchall_51

    mul-int/2addr v0, v1

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :goto_1ca
    :try_start_1ca
    monitor-exit p0
    :try_end_1cb
    .catchall {:try_start_1ca .. :try_end_1cb} :catchall_51

    throw v0
.end method
