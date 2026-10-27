.class public Lcom/android/server/notification/NotificationHistoryDatabase;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;,
        Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;,
        Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;,
        Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;,
        Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_HISTORY_DELETION:Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final DEFAULT_CURRENT_VERSION:I = 0x1

.field private static final EXTRA_KEY:Ljava/lang/String; = "key"

.field private static final HISTORY_RETENTION_DAYS:I = 0x1

.field private static final HISTORY_RETENTION_MS:I = 0x5265c00

.field private static final INVALID_FILE_TIME_MS:J = -0x1L

.field private static final REQUEST_CODE_DELETION:I = 0x1

.field private static final SCHEME_DELETION:Ljava/lang/String; = "delete"

.field private static final TAG:Ljava/lang/String; = "NotiHistoryDatabase"

.field private static final WRITE_BUFFER_INTERVAL_MS:J = 0x124f80L


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field mBuffer:Landroid/app/NotificationHistory;

.field private final mContext:Landroid/content/Context;

.field private mCurrentVersion:I

.field private final mFileCleanupReceiver:Landroid/content/BroadcastReceiver;

.field private final mFileWriteHandler:Landroid/os/Handler;

.field private final mHistoryDir:Ljava/io/File;

.field final mHistoryFiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mVersionFile:Ljava/io/File;

.field private final mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHistoryDir(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mscheduleDeletion(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/io/File;JI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationHistoryDatabase;->scheduleDeletion(Ljava/io/File;JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteLocked(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetACTION_HISTORY_DELETION()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/notification/NotificationHistoryDatabase;->ACTION_HISTORY_DELETION:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smreadLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 61
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    sput-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CLEANUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationHistoryDatabase;->ACTION_HISTORY_DELETION:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileWriteHandler"    # Landroid/os/Handler;
    .param p3, "dir"    # Ljava/io/File;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    .line 375
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationHistoryDatabase$1;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileCleanupReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mContext:Landroid/content/Context;

    .line 92
    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mAlarmManager:Landroid/app/AlarmManager;

    .line 93
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    .line 94
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    .line 95
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "version"

    invoke-direct {v1, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    .line 96
    new-instance v1, Ljava/io/File;

    const-string v2, "history"

    invoke-direct {v1, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    .line 97
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    .line 98
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    .line 99
    new-instance v1, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    .line 101
    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/server/notification/NotificationHistoryDatabase;->ACTION_HISTORY_DELETION:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "deletionFilter":Landroid/content/IntentFilter;
    const-string v2, "delete"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method private checkVersionAndBuildLocked()V
    .registers 5

    .line 142
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_22

    .line 143
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_18

    .line 144
    .local v1, "version":I
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_17} :catch_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_22

    .line 146
    .end local v0    # "reader":Ljava/io/BufferedReader;
    goto :goto_24

    .line 142
    .end local v1    # "version":I
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :catchall_18
    move-exception v1

    :try_start_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase;
    :goto_21
    throw v1
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_22} :catch_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_22

    .line 144
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase;
    :catch_22
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "version":I
    :goto_24
    iget v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    if-eq v1, v0, :cond_69

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 149
    :try_start_30
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3c} :catch_5b

    .line 150
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_3c
    iget v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 151
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_51

    .line 153
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_5b

    .line 156
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    goto :goto_69

    .line 149
    .restart local v0    # "writer":Ljava/io/BufferedWriter;
    :catchall_51
    move-exception v2

    :try_start_52
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception v3

    :try_start_57
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "version":I
    .end local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase;
    :goto_5a
    throw v2
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5b} :catch_5b

    .line 153
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "version":I
    .restart local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase;
    :catch_5b
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "NotiHistoryDatabase"

    const-string v3, "Failed to write new version"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    :cond_69
    :goto_69
    return-void
.end method

.method private deleteFile(Landroid/util/AtomicFile;)V
    .registers 4
    .param p1, "file"    # Landroid/util/AtomicFile;

    .line 301
    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotiHistoryDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_24
    invoke-virtual {p1}, Landroid/util/AtomicFile;->delete()V

    .line 306
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->removeFilePathFromHistory(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private indexFilesLocked()V
    .registers 7

    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 126
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 127
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_e

    .line 128
    return-void

    .line 132
    :cond_e
    new-instance v1, Lcom/android/server/notification/NotificationHistoryDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/notification/NotificationHistoryDatabase$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 135
    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 136
    .local v3, "file":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 135
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 138
    :cond_29
    return-void
.end method

.method static synthetic lambda$indexFilesLocked$0(Ljava/io/File;Ljava/io/File;)I
    .registers 6
    .param p0, "lhs"    # Ljava/io/File;
    .param p1, "rhs"    # Ljava/io/File;

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 133
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/notification/NotificationHistoryDatabase;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 132
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private static readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .registers 8
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "notificationsOut"    # Landroid/app/NotificationHistory;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationHistoryFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    const/4 v0, 0x0

    .line 346
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 347
    invoke-static {v0, p1, p2}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->read(Ljava/io/InputStream;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_11
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    .line 352
    if-eqz v0, :cond_e

    .line 353
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 356
    :cond_e
    return-void

    .line 352
    :catchall_f
    move-exception v1

    goto :goto_34

    .line 348
    :catch_11
    move-exception v1

    .line 349
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_12
    const-string v2, "NotiHistoryDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    nop

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local p0    # "file":Landroid/util/AtomicFile;
    .end local p1    # "notificationsOut":Landroid/app/NotificationHistory;
    .end local p2    # "filter":Lcom/android/server/notification/NotificationHistoryFilter;
    throw v1
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_f

    .line 352
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "file":Landroid/util/AtomicFile;
    .restart local p1    # "notificationsOut":Landroid/app/NotificationHistory;
    .restart local p2    # "filter":Lcom/android/server/notification/NotificationHistoryFilter;
    :goto_34
    if-eqz v0, :cond_39

    .line 353
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 355
    :cond_39
    throw v1
.end method

.method private static safeParseLong(Ljava/lang/String;)J
    .registers 4
    .param p0, "fileName"    # Ljava/lang/String;

    .line 369
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    .line 370
    :catch_5
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private scheduleDeletion(Ljava/io/File;J)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "deletionTime"    # J

    .line 315
    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling deletion for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotiHistoryDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_2a
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/server/notification/NotificationHistoryDatabase;->ACTION_HISTORY_DELETION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 321
    const-string v4, "delete"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 322
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 323
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 324
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0xc000000

    .line 318
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 326
    .local v0, "pi":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, p3, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 327
    return-void
.end method

.method private scheduleDeletion(Ljava/io/File;JI)V
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "creationTime"    # J
    .param p4, "retentionDays"    # I

    .line 310
    const v0, 0x5265c00

    mul-int/2addr v0, p4

    int-to-long v0, v0

    add-long/2addr v0, p2

    .line 311
    .local v0, "deletionTime":J
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationHistoryDatabase;->scheduleDeletion(Ljava/io/File;J)V

    .line 312
    return-void
.end method

.method private writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    .registers 5
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "notifications"    # Landroid/app/NotificationHistory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 333
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    iget v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    invoke-static {v0, p2, v1}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->write(Ljava/io/OutputStream;Landroid/app/NotificationHistory;I)V

    .line 334
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_12

    .line 335
    const/4 v0, 0x0

    .line 338
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 339
    nop

    .line 340
    return-void

    .line 338
    :catchall_12
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 339
    throw v1
.end method


# virtual methods
.method public addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 7
    .param p1, "notification"    # Landroid/app/NotificationHistory$HistoricalNotification;

    .line 185
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v1, p1}, Landroid/app/NotificationHistory;->addNewNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    .line 188
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 189
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    const-wide/32 v3, 0x124f80

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    :cond_1b
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public deleteConversations(Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p2, "conversationIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/util/Set;)V

    .line 176
    .local v0, "rcr":Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v0, "rcr":Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public deleteNotificationHistoryItem(Ljava/lang/String;J)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "postedTime"    # J

    .line 170
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;J)V

    .line 171
    .local v0, "rnr":Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method public disableHistory()V
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;

    .line 241
    .local v2, "file":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 242
    .end local v2    # "file":Landroid/util/AtomicFile;
    goto :goto_9

    .line 243
    :cond_19
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 244
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 245
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public forceWriteToDisk()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method

.method public init()V
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_1c

    .line 111
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "could not create history directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase;
    throw v1

    .line 113
    .restart local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase;
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_24
    .catchall {:try_start_3 .. :try_end_21} :catchall_22

    .line 116
    goto :goto_2c

    .line 121
    :catchall_22
    move-exception v1

    goto :goto_3c

    .line 114
    :catch_24
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    :try_start_25
    const-string v2, "NotiHistoryDatabase"

    const-string v3, "could not create needed files"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2c
    invoke-direct {p0}, Lcom/android/server/notification/NotificationHistoryDatabase;->checkVersionAndBuildLocked()V

    .line 119
    invoke-direct {p0}, Lcom/android/server/notification/NotificationHistoryDatabase;->indexFilesLocked()V

    .line 120
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->prune(IJ)V

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_22

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;)V

    .line 166
    .local v0, "rpr":Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method prune(IJ)V
    .registers 13
    .param p1, "retentionDays"    # I
    .param p2, "currentTimeMillis"    # J

    .line 252
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_3
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 254
    .local v1, "retentionBoundary":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 255
    const/4 v2, 0x5

    mul-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 257
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_75

    .line 258
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    .line 259
    .local v3, "currentOldestFile":Landroid/util/AtomicFile;
    nop

    .line 260
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-static {v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 261
    .local v4, "creationTime":J
    sget-boolean v6, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v6, :cond_5e

    .line 262
    const-string v6, "NotiHistoryDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " created on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_5e
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_6a

    .line 267
    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteFile(Landroid/util/AtomicFile;)V

    goto :goto_72

    .line 270
    :cond_6a
    nop

    .line 271
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    .line 270
    invoke-direct {p0, v6, v4, v5, p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->scheduleDeletion(Ljava/io/File;JI)V

    .line 257
    .end local v3    # "currentOldestFile":Landroid/util/AtomicFile;
    .end local v4    # "creationTime":J
    :goto_72
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 274
    .end local v1    # "retentionBoundary":Ljava/util/GregorianCalendar;
    .end local v2    # "i":I
    :cond_75
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_77

    throw v1
.end method

.method public readNotificationHistory()Landroid/app/NotificationHistory;
    .registers 9

    .line 195
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    .line 197
    .local v1, "notifications":Landroid/app/NotificationHistory;
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v1, v2}, Landroid/app/NotificationHistory;->addNotificationsToWrite(Landroid/app/NotificationHistory;)V

    .line 199
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_50

    .line 201
    .local v3, "file":Landroid/util/AtomicFile;
    :try_start_1f
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 202
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v4

    .line 201
    invoke-static {v3, v1, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2b} :catch_2c
    .catchall {:try_start_1f .. :try_end_2b} :catchall_50

    .line 205
    goto :goto_4d

    .line 203
    :catch_2c
    move-exception v4

    .line 204
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2d
    const-string v5, "NotiHistoryDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v3    # "file":Landroid/util/AtomicFile;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_4d
    goto :goto_13

    .line 208
    :cond_4e
    monitor-exit v0

    return-object v1

    .line 209
    .end local v1    # "notifications":Landroid/app/NotificationHistory;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_2d .. :try_end_52} :catchall_50

    throw v1
.end method

.method public readNotificationHistory(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationHistory;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "maxNotifications"    # I

    .line 214
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    .line 217
    .local v1, "notifications":Landroid/app/NotificationHistory;
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5e

    .line 219
    .local v3, "file":Landroid/util/AtomicFile;
    :try_start_1a
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 221
    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->setPackage(Ljava/lang/String;)Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    move-result-object v4

    .line 222
    invoke-virtual {v4, p1, p2}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->setChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    move-result-object v4

    .line 223
    invoke-virtual {v4, p3}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->setMaxNotifications(I)Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    move-result-object v4

    .line 224
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v4

    .line 219
    invoke-static {v3, v1, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 225
    invoke-virtual {v1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v4
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_36} :catch_3a
    .catchall {:try_start_1a .. :try_end_36} :catchall_5e

    if-ne p3, v4, :cond_39

    .line 227
    goto :goto_5c

    .line 231
    :cond_39
    goto :goto_5b

    .line 229
    :catch_3a
    move-exception v4

    .line 230
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3b
    const-string v5, "NotiHistoryDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v3    # "file":Landroid/util/AtomicFile;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_5b
    goto :goto_e

    .line 234
    :cond_5c
    :goto_5c
    monitor-exit v0

    return-object v1

    .line 235
    .end local v1    # "notifications":Landroid/app/NotificationHistory;
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3b .. :try_end_60} :catchall_5e

    throw v1
.end method

.method removeFilePathFromHistory(Ljava/lang/String;)V
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 286
    if-nez p1, :cond_3

    .line 287
    return-void

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 291
    .local v0, "historyFileItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/AtomicFile;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .line 293
    .local v1, "af":Landroid/util/AtomicFile;
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 294
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 295
    return-void

    .line 297
    .end local v1    # "af":Landroid/util/AtomicFile;
    :cond_29
    goto :goto_9

    .line 298
    :cond_2a
    return-void
.end method

.method public unregisterFileCleanupReceiver()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 360
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileCleanupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 362
    :cond_9
    return-void
.end method
