.class final Landroid/app/SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedPreferencesImpl$EditorImpl;,
        Landroid/app/SharedPreferencesImpl$MemoryCommitResult;,
        Landroid/app/SharedPreferencesImpl$SharedPreferencesThreadFactory;
    }
.end annotation


# static fields
.field private static final blacklist CALLBACK_ON_CLEAR_CHANGE:J = 0x71a0c40L

.field private static final greylist-max-o CONTENT:Ljava/lang/Object;

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o MAX_FSYNC_DURATION_MILLIS:J = 0x100L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SharedPreferencesImpl"

.field private static final blacklist sLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final greylist-max-o mBackupFile:Ljava/io/File;

.field private greylist-max-o mCurrentMemoryStateGeneration:J

.field private greylist-max-o mDiskStateGeneration:J

.field private greylist-max-o mDiskWritesInFlight:I

.field private final greylist mFile:Ljava/io/File;

.field private final greylist-max-o mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLoaded:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMode:I

.field private greylist-max-o mNumSync:I

.field private greylist-max-o mStatSize:J

.field private greylist-max-o mStatTimestamp:Landroid/system/StructTimespec;

.field private final greylist-max-o mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

.field private greylist-max-o mThrowable:Ljava/lang/Throwable;

.field private final greylist-max-o mWritingToDiskLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$gCIQI__z13DI5jNIqnAnYLWLcMc(Landroid/app/SharedPreferencesImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->lambda$startLoadFromDisk$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;)I
    .registers 1

    iget p0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .registers 1

    iget-object p0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMap(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWritingToDiskLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;I)V
    .registers 2

    iput p1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMap(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$menqueueDiskWrite(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToFile(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/SharedPreferencesImpl;->CONTENT:Ljava/lang/Object;

    .line 127
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Landroid/app/SharedPreferencesImpl$SharedPreferencesThreadFactory;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/app/SharedPreferencesImpl$SharedPreferencesThreadFactory;-><init>(Landroid/app/SharedPreferencesImpl-IA;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Landroid/app/SharedPreferencesImpl;->sLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method constructor greylist <init>(Ljava/io/File;I)V
    .registers 6

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    .line 101
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 110
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 123
    new-instance v1, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    .line 125
    iput v0, p0, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    .line 133
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 134
    invoke-static {p1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 135
    iput p2, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    .line 136
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 137
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 138
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    .line 139
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 140
    return-void
.end method

.method private greylist-max-o awaitLoadedLocked()V
    .registers 3

    .line 279
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_b

    .line 283
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 285
    :cond_b
    :goto_b
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_17

    .line 287
    :try_start_f
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_16

    .line 288
    :catch_15
    move-exception v0

    .line 289
    :goto_16
    goto :goto_b

    .line 291
    :cond_17
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    if-nez v0, :cond_1c

    .line 294
    return-void

    .line 292
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static greylist-max-o createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 6

    .line 708
    nop

    .line 710
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_7

    .line 726
    goto :goto_55

    .line 711
    :catch_7
    move-exception v0

    .line 712
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    const-string v2, "SharedPreferencesImpl"

    const/4 v3, 0x0

    if-nez v1, :cond_2c

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t create directory for SharedPreferences file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-object v3

    .line 717
    :cond_2c
    nop

    .line 718
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 717
    const/16 v1, 0x1f9

    const/4 v4, -0x1

    invoke-static {v0, v1, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 722
    :try_start_37
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3c} :catch_3d

    .line 725
    goto :goto_55

    .line 723
    :catch_3d
    move-exception v0

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t create SharedPreferences file "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 727
    :goto_55
    return-object v0
.end method

.method private greylist-max-o enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .registers 7

    .line 674
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 676
    :goto_7
    new-instance v3, Landroid/app/SharedPreferencesImpl$1;

    invoke-direct {v3, p0, p1, v2, p2}, Landroid/app/SharedPreferencesImpl$1;-><init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;ZLjava/lang/Runnable;)V

    .line 693
    if-eqz v2, :cond_21

    .line 694
    nop

    .line 695
    iget-object p1, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 696
    :try_start_12
    iget p2, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-ne p2, v1, :cond_17

    move v0, v1

    .line 697
    :cond_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1e

    .line 698
    if-eqz v0, :cond_21

    .line 699
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 700
    return-void

    .line 697
    :catchall_1e
    move-exception p2

    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p2

    .line 704
    :cond_21
    xor-int/lit8 p1, v2, 0x1

    invoke-static {v3, p1}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    .line 705
    return-void
.end method

.method private greylist-max-o hasFileChangedUnexpectedly()Z
    .registers 9

    .line 238
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    const/4 v2, 0x0

    if-lez v1, :cond_a

    .line 242
    monitor-exit v0

    return v2

    .line 244
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3b

    .line 252
    const/4 v0, 0x1

    :try_start_c
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 253
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_1d} :catch_39

    .line 256
    nop

    .line 258
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 259
    :try_start_21
    iget-object v4, v1, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    iget-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    iget-wide v6, v1, Landroid/system/StructStat;->st_size:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_34

    :cond_33
    move v2, v0

    :cond_34
    monitor-exit v3

    return v2

    .line 260
    :catchall_36
    move-exception v0

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_36

    throw v0

    .line 254
    :catch_39
    move-exception v1

    .line 255
    return v0

    .line 244
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private synthetic blacklist lambda$startLoadFromDisk$0()V
    .registers 1

    .line 149
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->loadFromDisk()V

    .line 150
    return-void
.end method

.method private greylist-max-o loadFromDisk()V
    .registers 8

    .line 154
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-eqz v1, :cond_9

    .line 156
    monitor-exit v0

    return-void

    .line 158
    :cond_9
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 159
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 160
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 162
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_f6

    .line 165
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 166
    const-string v0, "SharedPreferencesImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to read preferences file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_4e
    nop

    .line 170
    nop

    .line 171
    nop

    .line 173
    const/4 v0, 0x0

    :try_start_52
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1
    :try_end_5c
    .catch Landroid/system/ErrnoException; {:try_start_52 .. :try_end_5c} :catch_bb
    .catchall {:try_start_52 .. :try_end_5c} :catchall_b6

    .line 174
    :try_start_5c
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2
    :try_end_62
    .catch Landroid/system/ErrnoException; {:try_start_5c .. :try_end_62} :catch_b3
    .catchall {:try_start_5c .. :try_end_62} :catchall_af

    if-eqz v2, :cond_ad

    .line 175
    nop

    .line 177
    :try_start_65
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x4000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_73} :catch_84
    .catchall {:try_start_65 .. :try_end_73} :catchall_81

    .line 179
    :try_start_73
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v3
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_77} :catch_7f
    .catchall {:try_start_73 .. :try_end_77} :catchall_a8

    .line 183
    :try_start_77
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7a
    .catch Landroid/system/ErrnoException; {:try_start_77 .. :try_end_7a} :catch_7d
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    .line 184
    goto :goto_be

    .line 189
    :catchall_7b
    move-exception v0

    goto :goto_ba

    .line 186
    :catch_7d
    move-exception v2

    goto :goto_be

    .line 180
    :catch_7f
    move-exception v3

    goto :goto_86

    .line 183
    :catchall_81
    move-exception v3

    move-object v2, v0

    goto :goto_a9

    .line 180
    :catch_84
    move-exception v3

    move-object v2, v0

    .line 181
    :goto_86
    :try_start_86
    const-string v4, "SharedPreferencesImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catchall {:try_start_86 .. :try_end_a4} :catchall_a8

    .line 183
    :try_start_a4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 184
    goto :goto_ad

    .line 183
    :catchall_a8
    move-exception v3

    :goto_a9
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 184
    throw v3
    :try_end_ad
    .catch Landroid/system/ErrnoException; {:try_start_a4 .. :try_end_ad} :catch_b3
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_af

    .line 191
    :cond_ad
    :goto_ad
    move-object v3, v0

    goto :goto_be

    .line 189
    :catchall_af
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_ba

    .line 186
    :catch_b3
    move-exception v2

    move-object v3, v0

    goto :goto_be

    .line 189
    :catchall_b6
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 190
    :goto_ba
    goto :goto_bf

    .line 186
    :catch_bb
    move-exception v1

    move-object v1, v0

    move-object v3, v1

    .line 191
    :goto_be
    nop

    .line 193
    :goto_bf
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 194
    const/4 v4, 0x1

    :try_start_c3
    iput-boolean v4, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 195
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_f3

    .line 201
    if-nez v0, :cond_eb

    .line 202
    if-eqz v3, :cond_d6

    .line 203
    :try_start_cb
    iput-object v3, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 204
    iget-object v0, v1, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    .line 205
    iget-wide v0, v1, Landroid/system/StructStat;->st_size:J

    iput-wide v0, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    goto :goto_eb

    .line 207
    :cond_d6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    :try_end_dd
    .catchall {:try_start_cb .. :try_end_dd} :catchall_de

    goto :goto_eb

    .line 212
    :catchall_de
    move-exception v0

    .line 213
    :try_start_df
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;
    :try_end_e1
    .catchall {:try_start_df .. :try_end_e1} :catchall_e4

    .line 215
    :try_start_e1
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    goto :goto_ed

    :catchall_e4
    move-exception v0

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 216
    throw v0

    .line 215
    :cond_eb
    :goto_eb
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    :goto_ed
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 216
    nop

    .line 217
    monitor-exit v2

    .line 218
    return-void

    .line 217
    :catchall_f3
    move-exception v0

    monitor-exit v2
    :try_end_f5
    .catchall {:try_start_e1 .. :try_end_f5} :catchall_f3

    throw v0

    .line 162
    :catchall_f6
    move-exception v1

    :try_start_f7
    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v1
.end method

.method static greylist-max-o makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 221
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ".bak"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist-max-r startLoadFromDisk()V
    .registers 3

    .line 144
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 146
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    .line 148
    sget-object v0, Landroid/app/SharedPreferencesImpl;->sLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroid/app/SharedPreferencesImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/SharedPreferencesImpl$$ExternalSyntheticLambda0;-><init>(Landroid/app/SharedPreferencesImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void

    .line 146
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private greylist-max-o writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    .registers 12

    .line 732
    nop

    .line 733
    nop

    .line 734
    nop

    .line 735
    nop

    .line 736
    nop

    .line 737
    nop

    .line 738
    nop

    .line 739
    nop

    .line 740
    nop

    .line 746
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 756
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7b

    .line 757
    nop

    .line 760
    iget-wide v3, p0, Landroid/app/SharedPreferencesImpl;->mDiskStateGeneration:J

    iget-wide v5, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_33

    .line 761
    if-eqz p2, :cond_20

    .line 762
    move v0, v1

    goto :goto_34

    .line 764
    :cond_20
    iget-object p2, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 767
    :try_start_23
    iget-wide v3, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    iget-wide v5, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_2d

    .line 768
    move v0, v1

    goto :goto_2e

    .line 767
    :cond_2d
    move v0, v2

    .line 770
    :goto_2e
    monitor-exit p2

    goto :goto_34

    :catchall_30
    move-exception p1

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw p1

    .line 760
    :cond_33
    move v0, v2

    .line 774
    :goto_34
    if-nez v0, :cond_3a

    .line 775
    invoke-virtual {p1, v2, v1}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 776
    return-void

    .line 779
    :cond_3a
    iget-object p2, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    .line 785
    if-nez p2, :cond_76

    .line 786
    iget-object p2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_7b

    .line 787
    const-string p2, "SharedPreferencesImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t rename file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to backup file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {p1, v2, v2}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 790
    return-void

    .line 793
    :cond_76
    iget-object p2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 801
    :cond_7b
    :try_start_7b
    iget-object p2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-static {p2}, Landroid/app/SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p2

    .line 807
    if-nez p2, :cond_87

    .line 808
    invoke-virtual {p1, v2, v2}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 809
    return-void

    .line 811
    :cond_87
    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 815
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->sharedpreferencesSkipFsync()Z

    move-result v0

    if-nez v0, :cond_99

    .line 816
    invoke-static {p2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 819
    :cond_99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 821
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 822
    iget-object p2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    invoke-static {p2, v0, v2}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_ab
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7b .. :try_end_ab} :catch_117
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_ab} :catch_10d

    .line 829
    :try_start_ab
    iget-object p2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p2

    .line 830
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_b8
    .catch Landroid/system/ErrnoException; {:try_start_ab .. :try_end_b8} :catch_c5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ab .. :try_end_b8} :catch_117
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b8} :catch_10d

    .line 831
    :try_start_b8
    iget-object v7, p2, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iput-object v7, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    .line 832
    iget-wide v7, p2, Landroid/system/StructStat;->st_size:J

    iput-wide v7, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    .line 833
    monitor-exit v0

    .line 836
    goto :goto_c6

    .line 833
    :catchall_c2
    move-exception p2

    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_b8 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw p2
    :try_end_c5
    .catch Landroid/system/ErrnoException; {:try_start_c4 .. :try_end_c5} :catch_c5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c4 .. :try_end_c5} :catch_117
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c5} :catch_10d

    .line 834
    :catch_c5
    move-exception p2

    .line 843
    :goto_c6
    :try_start_c6
    iget-object p2, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 849
    iget-wide v7, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    iput-wide v7, p0, Landroid/app/SharedPreferencesImpl;->mDiskStateGeneration:J

    .line 851
    invoke-virtual {p1, v1, v1}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 864
    sub-long/2addr v5, v3

    .line 865
    iget-object p2, p0, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    long-to-int v0, v5

    invoke-virtual {p2, v0}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    .line 866
    iget p2, p0, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    add-int/2addr p2, v1

    iput p2, p0, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    .line 868
    iget p2, p0, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    rem-int/lit16 p2, p2, 0x400

    if-eqz p2, :cond_ea

    const-wide/16 v0, 0x100

    cmp-long p2, v5, v0

    if-lez p2, :cond_10c

    .line 869
    :cond_ea
    iget-object p2, p0, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const-string v0, "SharedPreferencesImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time required to fsync "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_10c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c6 .. :try_end_10c} :catch_117
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_10c} :catch_10d

    .line 872
    :cond_10c
    return-void

    .line 875
    :catch_10d
    move-exception p2

    .line 876
    const-string v0, "SharedPreferencesImpl"

    const-string/jumbo v1, "writeToFile: Got exception:"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_121

    .line 873
    :catch_117
    move-exception p2

    .line 874
    const-string v0, "SharedPreferencesImpl"

    const-string/jumbo v1, "writeToFile: Got exception:"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    nop

    .line 880
    :goto_121
    iget-object p2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_14b

    .line 881
    iget-object p2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_14b

    .line 882
    const-string p2, "SharedPreferencesImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t clean up partially-written file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_14b
    invoke-virtual {p1, v2, v2}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 886
    return-void
.end method


# virtual methods
.method public whitelist contains(Ljava/lang/String;)Z
    .registers 4

    .line 360
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 362
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 363
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public whitelist edit()Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 375
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 377
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_d

    .line 379
    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/SharedPreferencesImpl;)V

    return-object v0

    .line 377
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist getAll()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 301
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    .line 302
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .registers 5

    .line 351
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 353
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 354
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_14
    monitor-exit v0

    return p2

    .line 355
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public whitelist getFloat(Ljava/lang/String;F)F
    .registers 5

    .line 343
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 345
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 346
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_14
    monitor-exit v0

    return p2

    .line 347
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .registers 5

    .line 327
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 329
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 330
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_14
    monitor-exit v0

    return p2

    .line 331
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public whitelist getLong(Ljava/lang/String;J)J
    .registers 6

    .line 335
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 337
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 338
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_14
    monitor-exit v0

    return-wide p2

    .line 339
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 308
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 310
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 311
    if-eqz p1, :cond_11

    move-object p2, p1

    :cond_11
    monitor-exit v0

    return-object p2

    .line 312
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public whitelist getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 320
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 321
    if-eqz p1, :cond_11

    move-object p2, p1

    :cond_11
    monitor-exit v0

    return-object p2

    .line 322
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public whitelist registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 5

    .line 265
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v2, Landroid/app/SharedPreferencesImpl;->CONTENT:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method greylist startReloadIfChangedUnexpectedly()V
    .registers 3

    .line 226
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->hasFileChangedUnexpectedly()Z

    move-result v1

    if-nez v1, :cond_b

    .line 229
    monitor-exit v0

    return-void

    .line 231
    :cond_b
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 232
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4

    .line 272
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
