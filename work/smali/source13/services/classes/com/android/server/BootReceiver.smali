.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final ERROR_REPORT_TRACE_PIPE:Ljava/lang/String; = "/sys/kernel/tracing/instances/bootreceiver/trace_pipe"

.field private static final FSCK_FS_MODIFIED:Ljava/lang/String; = "FILE SYSTEM WAS MODIFIED"

.field private static final FSCK_PASS_PATTERN:Ljava/lang/String; = "Pass ([1-9]E?):"

.field private static final FSCK_TREE_OPTIMIZATION_PATTERN:Ljava/lang/String; = "Inode [0-9]+ extent tree.*could be shorter"

.field private static final FS_STAT_FS_FIXED:I = 0x400

.field private static final FS_STAT_PATTERN:Ljava/lang/String; = "fs_stat,[^,]*/([^/,]+),(0x[0-9a-fA-F]+)"

.field private static final GMSCORE_LASTK_LOG_SIZE:I = 0x30000

.field private static final LASTK_LOG_SIZE:I

.field private static final LAST_HEADER_FILE:Ljava/lang/String; = "last-header.txt"

.field private static final LAST_KMSG_FILES:[Ljava/lang/String;

.field private static final LAST_SHUTDOWN_TIME_PATTERN:Ljava/lang/String; = "powerctl_shutdown_time_ms:([0-9]+):([0-9]+)"

.field private static final LOG_FILES_FILE:Ljava/lang/String; = "log-files.xml"

.field private static final LOG_SIZE:I

.field private static final MAX_ERROR_REPORTS:I = 0x8

.field private static final METRIC_SHUTDOWN_TIME_START:Ljava/lang/String; = "begin_shutdown"

.field private static final METRIC_SYSTEM_SERVER:Ljava/lang/String; = "shutdown_system_server"

.field private static final MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

.field private static final OLD_UPDATER_CLASS:Ljava/lang/String; = "com.google.android.systemupdater.SystemUpdateReceiver"

.field private static final OLD_UPDATER_PACKAGE:Ljava/lang/String; = "com.google.android.systemupdater"

.field private static final SHUTDOWN_METRICS_FILE:Ljava/lang/String; = "/data/system/shutdown-metrics.txt"

.field private static final SHUTDOWN_TRON_METRICS_PREFIX:Ljava/lang/String; = "shutdown_"

.field private static final TAG:Ljava/lang/String; = "BootReceiver"

.field private static final TAG_TOMBSTONE:Ljava/lang/String; = "SYSTEM_TOMBSTONE"

.field private static final TAG_TOMBSTONE_PROTO:Ljava/lang/String; = "SYSTEM_TOMBSTONE_PROTO"

.field private static final TAG_TRUNCATED:Ljava/lang/String; = "[[TRUNCATED]]\n"

.field private static final UMOUNT_STATUS_NOT_AVAILABLE:I = 0x4

.field private static final lastHeaderFile:Ljava/io/File;

.field private static final sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

.field private static final sFile:Landroid/util/AtomicFile;

.field private static sSentReports:I


# direct methods
.method static bridge synthetic -$$Nest$mlogBootEvents(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveOldUpdatePackages(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsSentReports()I
    .registers 1

    sget v0, Lcom/android/server/BootReceiver;->sSentReports:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputsSentReports(I)V
    .registers 1

    sput p0, Lcom/android/server/BootReceiver;->sSentReports:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 77
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/high16 v3, 0x10000

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    const v2, 0x18000

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    sput v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 79
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1c

    const/high16 v3, 0x30000

    :cond_1c
    sput v3, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    .line 94
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    .line 95
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "log-files.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "log-files"

    invoke-direct {v0, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 97
    new-instance v0, Ljava/io/File;

    .line 98
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "last-header.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    .line 108
    const-string v0, "early"

    const-string v2, "default"

    const-string/jumbo v3, "late"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootReceiver;->MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

    .line 111
    const-string v0, "/sys/fs/pstore/console-ramoops"

    const-string v2, "/proc/last_kmsg"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootReceiver;->LAST_KMSG_FILES:[Ljava/lang/String;

    .line 130
    sput v1, Lcom/android/server/BootReceiver;->sSentReports:I

    .line 312
    new-instance v0, Lcom/android/server/am/DropboxRateLimiter;

    invoke-direct {v0}, Lcom/android/server/am/DropboxRateLimiter;-><init>()V

    sput-object v0, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .registers 21
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    if-eqz v0, :cond_e0

    invoke-virtual {v0, v2}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v10, p2

    move/from16 v8, p3

    goto/16 :goto_e4

    .line 426
    :cond_14
    const-string v3, "BootReceiver"

    const-string v4, "Copying audit failures to DropBox"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/last_kmsg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 430
    .local v5, "fileTime":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_48

    .line 431
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/fs/pstore/console-ramoops"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v9

    .line 432
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 433
    cmp-long v9, v5, v7

    if-gtz v9, :cond_48

    .line 434
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/fs/pstore/console-ramoops-0"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v9

    .line 435
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 439
    :cond_48
    cmp-long v7, v5, v7

    if-gtz v7, :cond_4d

    return-void

    .line 441
    :cond_4d
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-nez v7, :cond_62

    .line 442
    return-void

    .line 445
    :cond_62
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v7, "[[TRUNCATED]]\n"

    move/from16 v8, p3

    invoke-static {v4, v8, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 448
    .local v7, "log":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_7e
    if-ge v13, v12, :cond_a1

    aget-object v14, v11, v13

    .line 450
    .local v14, "line":Ljava/lang/String;
    const-string v15, "audit"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9e

    .line 451
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .end local v14    # "line":Ljava/lang/String;
    :cond_9e
    add-int/lit8 v13, v13, 0x1

    goto :goto_7e

    .line 454
    :cond_a1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Copied "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " worth of audits to DropBox"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, p2

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void

    .line 425
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileTime":J
    .end local v7    # "log":Ljava/lang/String;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_e0
    move-object/from16 v10, p2

    move/from16 v8, p3

    :goto_e4
    return-void
.end method

.method private static addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "maxSize"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    return-void
.end method

.method private static addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "footers"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "maxSize"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p0, :cond_55

    invoke-virtual {p0, p6}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_55

    .line 385
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "file":Ljava/io/File;
    invoke-static {v0, p1}, Lcom/android/server/BootReceiver;->recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 387
    return-void

    .line 390
    :cond_15
    const-string v1, "[[TRUNCATED]]\n"

    invoke-static {v0, p5, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "fileContents":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "text":Ljava/lang/String;
    const-string v3, "SYSTEM_TOMBSTONE"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    const-string v4, ">>> system_server <<<"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 394
    const-string/jumbo v4, "system_server_native_crash"

    invoke-static {p0, v4, v2, p4, p5}, Lcom/android/server/BootReceiver;->addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 396
    :cond_46
    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 397
    const/16 v3, 0xba

    invoke-static {v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 399
    :cond_51
    invoke-static {p0, p6, v2, p4, p5}, Lcom/android/server/BootReceiver;->addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 400
    return-void

    .line 383
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileContents":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    :cond_55
    :goto_55
    return-void
.end method

.method private static addFsckErrorsToDropBoxAndLogFsStat(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .registers 25
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v6, p0

    const/4 v0, 0x1

    .line 462
    .local v0, "uploadEnabled":Z
    if-eqz v6, :cond_10

    move-object/from16 v7, p4

    invoke-virtual {v6, v7}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_12

    :cond_e
    move v8, v0

    goto :goto_14

    :cond_10
    move-object/from16 v7, p4

    .line 463
    :goto_12
    const/4 v0, 0x0

    move v8, v0

    .line 465
    .end local v0    # "uploadEnabled":Z
    .local v8, "uploadEnabled":Z
    :goto_14
    const/4 v0, 0x0

    .line 466
    .local v0, "uploadNeeded":Z
    const-string v1, "BootReceiver"

    const-string v2, "Checking for fsck errors"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/fscklogs/log"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    .line 469
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 470
    .local v10, "fileTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gtz v2, :cond_2f

    return-void

    .line 472
    :cond_2f
    const-string v2, "[[TRUNCATED]]\n"

    move/from16 v12, p3

    invoke-static {v9, v12, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 473
    .local v13, "log":Ljava/lang/String;
    const-string v2, "fs_stat,[^,]*/([^/,]+),(0x[0-9a-fA-F]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 474
    .local v14, "pattern":Ljava/util/regex/Pattern;
    const-string v2, "\n"

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 475
    .local v15, "lines":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 476
    .local v2, "lineNumber":I
    const/4 v3, 0x0

    .line 477
    .local v3, "lastFsStatLineNumber":I
    array-length v4, v15

    const/4 v5, 0x0

    move/from16 v16, v0

    move v0, v5

    move v5, v2

    .end local v0    # "uploadNeeded":Z
    .end local v2    # "lineNumber":I
    .local v5, "lineNumber":I
    .local v16, "uploadNeeded":Z
    :goto_4b
    if-ge v0, v4, :cond_9b

    aget-object v2, v15, v0

    .line 478
    .local v2, "line":Ljava/lang/String;
    move/from16 v17, v4

    const-string v4, "FILE SYSTEM WAS MODIFIED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 479
    const/4 v4, 0x1

    move/from16 v16, v4

    .end local v16    # "uploadNeeded":Z
    .local v4, "uploadNeeded":Z
    goto :goto_93

    .line 480
    .end local v4    # "uploadNeeded":Z
    .restart local v16    # "uploadNeeded":Z
    :cond_5d
    const-string v4, "fs_stat"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 481
    invoke-virtual {v14, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 482
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_74

    .line 483
    invoke-static {v4, v15, v3, v5}, Lcom/android/server/BootReceiver;->handleFsckFsStat(Ljava/util/regex/Matcher;[Ljava/lang/String;II)V

    .line 484
    move v3, v5

    goto :goto_93

    .line 486
    :cond_74
    move/from16 v18, v3

    .end local v3    # "lastFsStatLineNumber":I
    .local v18, "lastFsStatLineNumber":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .local v19, "matcher":Ljava/util/regex/Matcher;
    const-string v4, "cannot parse fs_stat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 480
    .end local v18    # "lastFsStatLineNumber":I
    .end local v19    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "lastFsStatLineNumber":I
    :cond_8f
    move/from16 v18, v3

    .line 489
    .end local v3    # "lastFsStatLineNumber":I
    .restart local v18    # "lastFsStatLineNumber":I
    :goto_91
    move/from16 v3, v18

    .end local v18    # "lastFsStatLineNumber":I
    .restart local v3    # "lastFsStatLineNumber":I
    :goto_93
    nop

    .end local v2    # "line":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 477
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v17

    goto :goto_4b

    .line 492
    :cond_9b
    move/from16 v18, v3

    .end local v3    # "lastFsStatLineNumber":I
    .restart local v18    # "lastFsStatLineNumber":I
    if-eqz v8, :cond_b5

    if-eqz v16, :cond_b5

    .line 493
    const-string v3, "/dev/fscklogs/log"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v17, v18

    .end local v18    # "lastFsStatLineNumber":I
    .local v17, "lastFsStatLineNumber":I
    move/from16 v4, p3

    move/from16 v18, v5

    .end local v5    # "lineNumber":I
    .local v18, "lineNumber":I
    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_b9

    .line 492
    .end local v17    # "lastFsStatLineNumber":I
    .restart local v5    # "lineNumber":I
    .local v18, "lastFsStatLineNumber":I
    :cond_b5
    move/from16 v17, v18

    move/from16 v18, v5

    .line 497
    .end local v5    # "lineNumber":I
    .restart local v17    # "lastFsStatLineNumber":I
    .local v18, "lineNumber":I
    :goto_b9
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 498
    return-void
.end method

.method private static addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "footers"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "maxSize"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "[[TRUNCATED]]\n"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    .local v0, "extraSize":I
    sget v1, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    add-int/2addr v1, v0

    const/high16 v2, 0x30000

    if-le v1, v2, :cond_1d

    .line 364
    if-le v2, v0, :cond_1c

    .line 365
    sub-int/2addr v2, v0

    neg-int p5, v2

    goto :goto_1d

    .line 367
    :cond_1c
    const/4 p5, 0x0

    .line 370
    :cond_1d
    :goto_1d
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    return-void
.end method

.method private static addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "maxSize"    # I

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to DropBox ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootReceiver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0, p1, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const v1, 0x13c6a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 420
    return-void
.end method

.method public static addTombstoneToDropBox(Landroid/content/Context;Ljava/io/File;ZLjava/lang/String;)V
    .registers 14
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "tombstone"    # Ljava/io/File;
    .param p2, "proto"    # Z
    .param p3, "processName"    # Ljava/lang/String;

    .line 324
    const-class v0, Landroid/os/DropBoxManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 325
    .local v0, "db":Landroid/os/DropBoxManager;
    const-string v7, "BootReceiver"

    if-nez v0, :cond_12

    .line 326
    const-string v1, "Can\'t log tombstone: DropBoxManager not available"

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 333
    :cond_12
    sget-object v1, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    .line 334
    const-string v2, "SYSTEM_TOMBSTONE"

    invoke-virtual {v1, v2, p3}, Lcom/android/server/am/DropboxRateLimiter;->shouldRateLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    move-result-object v8

    .line 335
    .local v8, "rateLimitResult":Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;
    invoke-virtual {v8}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->shouldRateLimit()Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    .line 337
    :cond_21
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    move-result-object v9

    .line 339
    .local v9, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p2, :cond_34

    .line 340
    :try_start_27
    invoke-static {p1, v9}, Lcom/android/server/BootReceiver;->recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 341
    const-string v1, "SYSTEM_TOMBSTONE_PROTO"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V

    goto :goto_5a

    .line 345
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/BootReceiver;->getBootHeadersToLogAndUpdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    invoke-virtual {v8}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->createHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "headers":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    const-string v6, "SYSTEM_TOMBSTONE"

    move-object v1, v0

    move-object v2, v9

    invoke-static/range {v1 .. v6}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_5a} :catch_5b

    .line 352
    .end local v3    # "headers":Ljava/lang/String;
    :cond_5a
    :goto_5a
    goto :goto_61

    .line 350
    :catch_5b
    move-exception v1

    .line 351
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Can\'t log tombstone"

    invoke-static {v7, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    .end local v1    # "e":Ljava/io/IOException;
    :goto_61
    invoke-static {v9}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    .line 354
    return-void
.end method

.method public static fixFsckFsStat(Ljava/lang/String;I[Ljava/lang/String;II)I
    .registers 23
    .param p0, "partition"    # Ljava/lang/String;
    .param p1, "statOrg"    # I
    .param p2, "lines"    # [Ljava/lang/String;
    .param p3, "startLineNumber"    # I
    .param p4, "endLineNumber"    # I

    .line 690
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 691
    .local v1, "stat":I
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_1ab

    .line 694
    const-string v2, "Pass ([1-9]E?):"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 695
    .local v2, "passPattern":Ljava/util/regex/Pattern;
    const-string v3, "Inode [0-9]+ extent tree.*could be shorter"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 696
    .local v3, "treeOptPattern":Ljava/util/regex/Pattern;
    const-string v4, ""

    .line 697
    .local v4, "currentPass":Ljava/lang/String;
    const/4 v5, 0x0

    .line 698
    .local v5, "foundTreeOptimization":Z
    const/4 v6, 0x0

    .line 699
    .local v6, "foundQuotaFix":Z
    const/4 v7, 0x0

    .line 700
    .local v7, "foundTimestampAdjustment":Z
    const/4 v8, 0x0

    .line 701
    .local v8, "foundOtherFix":Z
    const/4 v9, 0x0

    .line 702
    .local v9, "otherFixLine":Ljava/lang/String;
    move/from16 v10, p3

    .local v10, "i":I
    :goto_1d
    const-string v11, "fs_stat, partition:"

    const-string v12, "BootReceiver"

    move/from16 v13, p4

    if-ge v10, v13, :cond_144

    .line 703
    aget-object v14, p2, v10

    .line 704
    .local v14, "line":Ljava/lang/String;
    const-string v15, "FILE SYSTEM WAS MODIFIED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_35

    .line 705
    move-object/from16 v17, v2

    move/from16 v16, v6

    goto/16 :goto_148

    .line 706
    :cond_35
    const-string v15, "Pass "

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    move/from16 v16, v6

    .end local v6    # "foundQuotaFix":Z
    .local v16, "foundQuotaFix":Z
    const/4 v6, 0x1

    if-eqz v15, :cond_54

    .line 707
    invoke-virtual {v2, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 708
    .local v11, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_4e

    .line 709
    invoke-virtual {v11, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 711
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    :cond_4e
    move-object/from16 v17, v2

    move/from16 v6, v16

    goto/16 :goto_13e

    :cond_54
    const-string v15, "Inode "

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    const-string v6, "1"

    if-eqz v15, :cond_9b

    .line 712
    invoke-virtual {v3, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 713
    .local v15, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_93

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 714
    const/4 v5, 0x1

    .line 715
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " found tree optimization:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .end local v15    # "matcher":Ljava/util/regex/Matcher;
    move-object/from16 v17, v2

    move/from16 v6, v16

    goto/16 :goto_13e

    .line 718
    .restart local v15    # "matcher":Ljava/util/regex/Matcher;
    :cond_93
    const/4 v8, 0x1

    .line 719
    move-object v9, v14

    .line 720
    move-object/from16 v17, v2

    move/from16 v6, v16

    goto/16 :goto_14a

    .line 722
    .end local v15    # "matcher":Ljava/util/regex/Matcher;
    :cond_9b
    const-string v15, "[QUOTA WARNING]"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v17, v2

    .end local v2    # "passPattern":Ljava/util/regex/Pattern;
    .local v17, "passPattern":Ljava/util/regex/Pattern;
    const-string v2, "5"

    if-eqz v15, :cond_d1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d1

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " found quota warning:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v6, 0x1

    .line 726
    .end local v16    # "foundQuotaFix":Z
    .restart local v6    # "foundQuotaFix":Z
    if-nez v5, :cond_13e

    .line 727
    move-object v9, v14

    .line 728
    goto/16 :goto_14a

    .line 730
    .end local v6    # "foundQuotaFix":Z
    .restart local v16    # "foundQuotaFix":Z
    :cond_d1
    const-string v15, "Update quota info"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    goto :goto_13c

    .line 732
    :cond_e0
    const-string v2, "Timestamp(s) on inode"

    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 733
    const-string v2, "beyond 2310-04-04 are likely pre-1970"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 734
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " found timestamp adjustment:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    add-int/lit8 v2, v10, 0x1

    aget-object v2, p2, v2

    const-string v6, "Fix? yes"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_122

    .line 739
    add-int/lit8 v10, v10, 0x1

    .line 741
    :cond_122
    const/4 v2, 0x1

    move v7, v2

    move/from16 v6, v16

    .end local v7    # "foundTimestampAdjustment":Z
    .local v2, "foundTimestampAdjustment":Z
    goto :goto_13e

    .line 743
    .end local v2    # "foundTimestampAdjustment":Z
    .restart local v7    # "foundTimestampAdjustment":Z
    :cond_127
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 745
    .end local v14    # "line":Ljava/lang/String;
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13c

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13c

    .line 746
    const/4 v8, 0x1

    .line 747
    move-object v9, v2

    .line 748
    move/from16 v6, v16

    goto :goto_14a

    .line 702
    .end local v2    # "line":Ljava/lang/String;
    :cond_13c
    :goto_13c
    move/from16 v6, v16

    .end local v16    # "foundQuotaFix":Z
    .restart local v6    # "foundQuotaFix":Z
    :cond_13e
    :goto_13e
    const/4 v2, 0x1

    add-int/2addr v10, v2

    move-object/from16 v2, v17

    goto/16 :goto_1d

    .end local v17    # "passPattern":Ljava/util/regex/Pattern;
    .local v2, "passPattern":Ljava/util/regex/Pattern;
    :cond_144
    move-object/from16 v17, v2

    move/from16 v16, v6

    .line 752
    .end local v2    # "passPattern":Ljava/util/regex/Pattern;
    .end local v6    # "foundQuotaFix":Z
    .end local v10    # "i":I
    .restart local v16    # "foundQuotaFix":Z
    .restart local v17    # "passPattern":Ljava/util/regex/Pattern;
    :goto_148
    move/from16 v6, v16

    .end local v16    # "foundQuotaFix":Z
    .restart local v6    # "foundQuotaFix":Z
    :goto_14a
    if-eqz v8, :cond_16d

    .line 753
    if-eqz v9, :cond_1ad

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " fix:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ad

    .line 756
    :cond_16d
    if-eqz v6, :cond_188

    if-nez v5, :cond_188

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fs_stat, got quota fix without tree optimization, partition:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ad

    .line 759
    :cond_188
    if-eqz v5, :cond_18c

    if-nez v6, :cond_18e

    :cond_18c
    if-eqz v7, :cond_1ad

    .line 761
    :cond_18e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " fix ignored"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    and-int/lit16 v1, v1, -0x401

    goto :goto_1ad

    .line 691
    .end local v3    # "treeOptPattern":Ljava/util/regex/Pattern;
    .end local v4    # "currentPass":Ljava/lang/String;
    .end local v5    # "foundTreeOptimization":Z
    .end local v6    # "foundQuotaFix":Z
    .end local v7    # "foundTimestampAdjustment":Z
    .end local v8    # "foundOtherFix":Z
    .end local v9    # "otherFixLine":Ljava/lang/String;
    .end local v17    # "passPattern":Ljava/util/regex/Pattern;
    :cond_1ab
    move/from16 v13, p4

    .line 765
    :cond_1ad
    :goto_1ad
    return v1
.end method

.method private static getBootHeadersToLogAndUpdate()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-static {}, Lcom/android/server/BootReceiver;->getPreviousBootHeaders()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "oldHeaders":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BootReceiver;->getCurrentBootHeaders()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "newHeaders":Ljava/lang/String;
    :try_start_8
    sget-object v2, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_e

    .line 251
    goto :goto_29

    .line 249
    :catch_e
    move-exception v2

    .line 250
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BootReceiver"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v2    # "e":Ljava/io/IOException;
    :goto_29
    if-nez v0, :cond_40

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPrevious: false\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 259
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPrevious: true\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getCurrentBootHeaders()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 231
    const-string v1, "Build: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 232
    const-string v2, "Hardware: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 233
    const-string v2, "Revision: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    const-string/jumbo v2, "ro.revision"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    const-string v2, "Bootloader: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    const-string v2, "Radio: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    const-string v2, "Kernel: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/version"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    const/16 v3, 0x400

    const-string v4, "...\n"

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    return-object v0
.end method

.method private static getPreviousBootHeaders()Ljava/lang/String;
    .registers 3

    .line 223
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_9

    return-object v0

    .line 224
    :catch_9
    move-exception v1

    .line 225
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method private static handleFsckFsStat(Ljava/util/regex/Matcher;[Ljava/lang/String;II)V
    .registers 10
    .param p0, "match"    # Ljava/util/regex/Matcher;
    .param p1, "lines"    # [Ljava/lang/String;
    .param p2, "startLineNumber"    # I
    .param p3, "endLineNumber"    # I

    .line 770
    const-string v0, "BootReceiver"

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "partition":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_8
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_14} :catch_55

    .line 777
    .local v2, "stat":I
    nop

    .line 778
    invoke-static {v1, v2, p1, p2, p3}, Lcom/android/server/BootReceiver;->fixFsckFsStat(Ljava/lang/String;I[Ljava/lang/String;II)I

    move-result v2

    .line 779
    const-string/jumbo v3, "userdata"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "data"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 780
    :cond_2a
    const/16 v3, 0xf2

    const/4 v4, 0x3

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 785
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fs_stat, partition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stat:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void

    .line 774
    .end local v2    # "stat":I
    :catch_55
    move-exception v3

    .line 775
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot parse fs_stat: partition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-void
.end method

.method private logBootEvents(Landroid/content/Context;)V
    .registers 18
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    const-string v0, "dropbox"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 264
    .local v0, "db":Landroid/os/DropBoxManager;
    invoke-static {}, Lcom/android/server/BootReceiver;->getBootHeadersToLogAndUpdate()Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, "headers":Ljava/lang/String;
    const-string/jumbo v2, "ro.boot.bootreason"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 267
    .local v10, "bootReason":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/os/RecoverySystem;->handleAftermath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 268
    .local v11, "recovery":Ljava/lang/String;
    if-eqz v11, :cond_34

    if-eqz v0, :cond_34

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SYSTEM_RECOVERY_LOG"

    invoke-virtual {v0, v3, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_34
    const-string v2, ""

    .line 273
    .local v2, "lastKmsgFooter":Ljava/lang/String;
    if-eqz v10, :cond_5f

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 275
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 276
    const-string v5, "Boot info:\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 277
    const-string v5, "Last boot reason: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 278
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_60

    .line 273
    :cond_5f
    move-object v12, v2

    .line 281
    .end local v2    # "lastKmsgFooter":Ljava/lang/String;
    .local v12, "lastKmsgFooter":Ljava/lang/String;
    :goto_60
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    move-result-object v13

    .line 283
    .local v13, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string/jumbo v2, "ro.runtime.firstboot"

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_ba

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 285
    .local v14, "now":Ljava/lang/String;
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    if-eqz v0, :cond_83

    const-string v2, "SYSTEM_BOOT"

    invoke-virtual {v0, v2, v9}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_83
    sget v15, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    neg-int v7, v15

    const-string v6, "/proc/last_kmsg"

    const-string v8, "SYSTEM_LAST_KMSG"

    move-object v2, v0

    move-object v3, v13

    move-object v4, v9

    move-object v5, v12

    invoke-static/range {v2 .. v8}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    neg-int v7, v15

    const-string v6, "/sys/fs/pstore/console-ramoops"

    const-string v8, "SYSTEM_LAST_KMSG"

    invoke-static/range {v2 .. v8}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    neg-int v7, v15

    const-string v6, "/sys/fs/pstore/console-ramoops-0"

    const-string v8, "SYSTEM_LAST_KMSG"

    invoke-static/range {v2 .. v8}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    sget v8, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v6, v8

    const-string v5, "/cache/recovery/log"

    const-string v7, "SYSTEM_RECOVERY_LOG"

    invoke-static/range {v2 .. v7}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    neg-int v6, v8

    const-string v5, "/cache/recovery/last_kmsg"

    const-string v7, "SYSTEM_RECOVERY_KMSG"

    invoke-static/range {v2 .. v7}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    neg-int v2, v8

    const-string v3, "SYSTEM_AUDIT"

    invoke-static {v0, v13, v9, v2, v3}, Lcom/android/server/BootReceiver;->addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    .end local v14    # "now":Ljava/lang/String;
    goto :goto_c1

    .line 301
    :cond_ba
    if-eqz v0, :cond_c1

    const-string v2, "SYSTEM_RESTART"

    invoke-virtual {v0, v2, v9}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_c1
    :goto_c1
    invoke-static {}, Lcom/android/server/BootReceiver;->logFsShutdownTime()V

    .line 306
    invoke-static {}, Lcom/android/server/BootReceiver;->logFsMountTime()V

    .line 307
    sget v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v2, v2

    const-string v3, "SYSTEM_FSCK"

    invoke-static {v0, v13, v9, v2, v3}, Lcom/android/server/BootReceiver;->addFsckErrorsToDropBoxAndLogFsStat(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/android/server/BootReceiver;->logSystemServerShutdownTimeMetrics()V

    .line 309
    invoke-static {v13}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    .line 310
    return-void
.end method

.method private static logFsMountTime()V
    .registers 8

    .line 501
    sget-object v0, Lcom/android/server/BootReceiver;->MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_5f

    aget-object v4, v0, v3

    .line 502
    .local v4, "propPostfix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ro.boottime.init.mount_all."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 503
    .local v5, "duration":I
    if-eqz v5, :cond_5c

    .line 505
    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_60

    :cond_2b
    goto :goto_4a

    :sswitch_2c
    const-string v7, "default"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    const/4 v6, 0x1

    goto :goto_4a

    :sswitch_36
    const-string v7, "early"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    move v6, v2

    goto :goto_4a

    :sswitch_40
    const-string/jumbo v7, "late"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    const/4 v6, 0x2

    :goto_4a
    packed-switch v6, :pswitch_data_6e

    .line 522
    goto :goto_5c

    .line 517
    :pswitch_4e
    const/16 v6, 0xc

    .line 520
    .local v6, "eventType":I
    goto :goto_57

    .line 512
    .end local v6    # "eventType":I
    :pswitch_51
    const/16 v6, 0xa

    .line 515
    .restart local v6    # "eventType":I
    goto :goto_57

    .line 507
    .end local v6    # "eventType":I
    :pswitch_54
    const/16 v6, 0xb

    .line 510
    .restart local v6    # "eventType":I
    nop

    .line 524
    :goto_57
    const/16 v7, 0xef

    invoke-static {v7, v6, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 501
    .end local v4    # "propPostfix":Ljava/lang/String;
    .end local v5    # "duration":I
    .end local v6    # "eventType":I
    :cond_5c
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 528
    :cond_5f
    return-void

    :sswitch_data_60
    .sparse-switch
        0x3292a6 -> :sswitch_40
        0x5bd1763 -> :sswitch_36
        0x5c13d641 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_54
        :pswitch_51
        :pswitch_4e
    .end packed-switch
.end method

.method private static logFsShutdownTime()V
    .registers 12

    .line 634
    const-string v0, "BootReceiver"

    const/4 v1, 0x0

    .line 635
    .local v1, "f":Ljava/io/File;
    sget-object v2, Lcom/android/server/BootReceiver;->LAST_KMSG_FILES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_1b

    aget-object v5, v2, v4

    .line 636
    .local v5, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_19

    .line 635
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 638
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    :cond_19
    move-object v1, v6

    .line 639
    nop

    .line 641
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    :cond_1b
    if-nez v1, :cond_1e

    .line 642
    return-void

    .line 645
    :cond_1e
    const/16 v2, 0x4000

    .line 649
    .local v2, "maxReadSize":I
    const/16 v3, -0x4000

    const/4 v4, 0x0

    :try_start_23
    invoke-static {v1, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_8d

    .line 653
    .local v3, "lines":Ljava/lang/String;
    nop

    .line 654
    const/16 v4, 0x8

    const-string/jumbo v5, "powerctl_shutdown_time_ms:([0-9]+):([0-9]+)"

    invoke-static {v5, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 655
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 656
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    const/16 v7, 0xf2

    const/4 v8, 0x2

    if-eqz v6, :cond_83

    .line 657
    const/16 v6, 0xef

    const/16 v9, 0x9

    .line 659
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 657
    invoke-static {v6, v9, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 660
    nop

    .line 662
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 660
    invoke-static {v7, v8, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 663
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "boot_fs_shutdown,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 668
    :cond_83
    const/4 v6, 0x4

    invoke-static {v7, v8, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 671
    const-string v6, "boot_fs_shutdown, string not found"

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_8c
    return-void

    .line 650
    .end local v3    # "lines":Ljava/lang/String;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :catch_8d
    move-exception v3

    .line 651
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "cannot read last msg"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    return-void
.end method

.method private static logStatsdShutdownAtom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p0, "rebootStr"    # Ljava/lang/String;
    .param p1, "reasonStr"    # Ljava/lang/String;
    .param p2, "startStr"    # Ljava/lang/String;
    .param p3, "durationStr"    # Ljava/lang/String;

    .line 588
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    .line 589
    .local v0, "reboot":Z
    const-string v3, "<EMPTY>"

    .line 590
    .local v3, "reason":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 591
    .local v4, "start":J
    const-wide/16 v6, 0x0

    .line 593
    .local v6, "duration":J
    const-string v8, "BootReceiver"

    if-eqz v1, :cond_3b

    .line 594
    const-string/jumbo v9, "y"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 595
    const/4 v0, 0x1

    move v9, v0

    goto :goto_41

    .line 596
    :cond_1b
    const-string/jumbo v9, "n"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_40

    .line 597
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected value for reboot : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 600
    :cond_3b
    const-string v9, "No value received for reboot"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_40
    :goto_40
    move v9, v0

    .end local v0    # "reboot":Z
    .local v9, "reboot":Z
    :goto_41
    if-eqz p1, :cond_46

    .line 604
    move-object/from16 v3, p1

    goto :goto_4b

    .line 606
    :cond_46
    const-string v0, "No value received for shutdown reason"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :goto_4b
    if-eqz v2, :cond_6d

    .line 611
    :try_start_4d
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_51} :catch_53

    move-wide v4, v10

    .line 614
    :goto_52
    goto :goto_72

    .line 612
    :catch_53
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 613
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot parse shutdown start time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_52

    .line 616
    :cond_6d
    const-string v0, "No value received for shutdown start time"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_72
    if-eqz p3, :cond_94

    .line 621
    :try_start_74
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_78} :catch_7a

    move-wide v6, v10

    .line 624
    :goto_79
    goto :goto_99

    .line 622
    :catch_7a
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 623
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot parse shutdown duration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_79

    .line 626
    :cond_94
    const-string v0, "No value received for shutdown duration"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_99
    const/16 v10, 0x38

    move v11, v9

    move-object v12, v3

    move-wide v13, v4

    move-wide v15, v6

    invoke-static/range {v10 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;JJ)V

    .line 631
    return-void
.end method

.method private static logSystemServerShutdownTimeMetrics()V
    .registers 16

    .line 532
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/shutdown-metrics.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, "metricsFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 534
    .local v1, "metricsStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "BootReceiver"

    const/4 v4, 0x0

    if-eqz v2, :cond_2f

    .line 536
    const/4 v2, 0x0

    :try_start_12
    invoke-static {v0, v4, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_18

    move-object v1, v2

    .line 539
    goto :goto_2f

    .line 537
    :catch_18
    move-exception v2

    .line 538
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2f
    :goto_2f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b4

    .line 542
    const/4 v2, 0x0

    .line 543
    .local v2, "reboot":Ljava/lang/String;
    const/4 v5, 0x0

    .line 544
    .local v5, "reason":Ljava/lang/String;
    const/4 v6, 0x0

    .line 545
    .local v6, "start_time":Ljava/lang/String;
    const/4 v7, 0x0

    .line 546
    .local v7, "duration":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 547
    .local v8, "array":[Ljava/lang/String;
    array-length v9, v8

    move v10, v4

    :goto_41
    if-ge v10, v9, :cond_b1

    aget-object v11, v8, v10

    .line 548
    .local v11, "keyValueStr":Ljava/lang/String;
    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 549
    .local v12, "keyValue":[Ljava/lang/String;
    array-length v13, v12

    const/4 v14, 0x2

    if-eq v13, v14, :cond_66

    .line 550
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Wrong format of shutdown metrics - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    goto :goto_ae

    .line 554
    :cond_66
    aget-object v13, v12, v4

    const-string/jumbo v14, "shutdown_"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_86

    .line 555
    aget-object v13, v12, v4

    aget-object v15, v12, v14

    invoke-static {v13, v15}, Lcom/android/server/BootReceiver;->logTronShutdownMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    aget-object v13, v12, v4

    const-string/jumbo v15, "shutdown_system_server"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_86

    .line 557
    aget-object v7, v12, v14

    .line 560
    :cond_86
    aget-object v13, v12, v4

    const-string/jumbo v15, "reboot"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_94

    .line 561
    aget-object v2, v12, v14

    goto :goto_ae

    .line 562
    :cond_94
    aget-object v13, v12, v4

    const-string/jumbo v15, "reason"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a2

    .line 563
    aget-object v5, v12, v14

    goto :goto_ae

    .line 564
    :cond_a2
    aget-object v13, v12, v4

    const-string v15, "begin_shutdown"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ae

    .line 565
    aget-object v6, v12, v14

    .line 547
    .end local v11    # "keyValueStr":Ljava/lang/String;
    .end local v12    # "keyValue":[Ljava/lang/String;
    :cond_ae
    :goto_ae
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 568
    :cond_b1
    invoke-static {v2, v5, v6, v7}, Lcom/android/server/BootReceiver;->logStatsdShutdownAtom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .end local v2    # "reboot":Ljava/lang/String;
    .end local v5    # "reason":Ljava/lang/String;
    .end local v6    # "start_time":Ljava/lang/String;
    .end local v7    # "duration":Ljava/lang/String;
    .end local v8    # "array":[Ljava/lang/String;
    :cond_b4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 571
    return-void
.end method

.method private static logTronShutdownMetric(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "metricName"    # Ljava/lang/String;
    .param p1, "valueStr"    # Ljava/lang/String;

    .line 576
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_c

    .line 580
    .local v0, "value":I
    nop

    .line 581
    if-ltz v0, :cond_b

    .line 582
    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 584
    :cond_b
    return-void

    .line 577
    .end local v0    # "value":I
    :catch_c
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse metric "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int value - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BootReceiver"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void
.end method

.method private static readTimestamps()Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 789
    sget-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 790
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_144

    .line 791
    .local v1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 792
    .local v2, "success":Z
    :try_start_9
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_d} :catch_113
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_f6
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_d} :catch_da
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_d} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_d} :catch_a2
    .catchall {:try_start_9 .. :try_end_d} :catchall_9f

    .line 793
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_d
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4

    .line 796
    .local v4, "parser":Landroid/util/TypedXmlPullParser;
    :goto_11
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1d

    if-eq v6, v7, :cond_1d

    goto :goto_11

    .line 801
    :cond_1d
    if-ne v6, v8, :cond_8a

    .line 805
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 806
    .local v5, "outerDepth":I
    :cond_23
    :goto_23
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v8

    move v6, v8

    if-eq v8, v7, :cond_7d

    const/4 v8, 0x3

    if-ne v6, v8, :cond_33

    .line 807
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_7d

    .line 808
    :cond_33
    if-eq v6, v8, :cond_23

    const/4 v8, 0x4

    if-ne v6, v8, :cond_39

    .line 809
    goto :goto_23

    .line 812
    :cond_39
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 813
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "log"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 814
    const-string v9, "filename"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 815
    .local v9, "filename":Ljava/lang/String;
    const-string/jumbo v11, "timestamp"

    invoke-interface {v4, v10, v11}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 816
    .local v10, "timestamp":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    nop

    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "timestamp":J
    goto :goto_7c

    .line 818
    :cond_5d
    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7c
    .catchall {:try_start_d .. :try_end_7c} :catchall_93

    .line 821
    .end local v8    # "tagName":Ljava/lang/String;
    :goto_7c
    goto :goto_23

    .line 822
    :cond_7d
    const/4 v2, 0x1

    .line 823
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v5    # "outerDepth":I
    .end local v6    # "type":I
    if-eqz v3, :cond_83

    :try_start_80
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_83} :catch_113
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_f6
    .catch Ljava/lang/IllegalStateException; {:try_start_80 .. :try_end_83} :catch_da
    .catch Ljava/lang/NullPointerException; {:try_start_80 .. :try_end_83} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_83} :catch_a2
    .catchall {:try_start_80 .. :try_end_83} :catchall_9f

    .line 835
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :cond_83
    if-nez v2, :cond_13c

    .line 836
    :goto_85
    :try_start_85
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_144

    goto/16 :goto_13c

    .line 802
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v6    # "type":I
    :cond_8a
    :try_start_8a
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "success":Z
    .end local v3    # "stream":Ljava/io/FileInputStream;
    throw v5
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_93

    .line 792
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v6    # "type":I
    .restart local v1    # "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v2    # "success":Z
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_93
    move-exception v4

    if-eqz v3, :cond_9e

    :try_start_96
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception v5

    :try_start_9b
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "success":Z
    :cond_9e
    :goto_9e
    throw v4
    :try_end_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_9b .. :try_end_9f} :catch_113
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9f} :catch_f6
    .catch Ljava/lang/IllegalStateException; {:try_start_9b .. :try_end_9f} :catch_da
    .catch Ljava/lang/NullPointerException; {:try_start_9b .. :try_end_9f} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9b .. :try_end_9f} :catch_a2
    .catchall {:try_start_9b .. :try_end_9f} :catchall_9f

    .line 835
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v2    # "success":Z
    :catchall_9f
    move-exception v3

    goto/16 :goto_13e

    .line 832
    :catch_a2
    move-exception v3

    .line 833
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_a3
    const-string v4, "BootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v2, :cond_13c

    .line 836
    goto :goto_85

    .line 830
    :catch_be
    move-exception v3

    .line 831
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v4, "BootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v3    # "e":Ljava/lang/NullPointerException;
    if-nez v2, :cond_13c

    .line 836
    goto :goto_85

    .line 828
    :catch_da
    move-exception v3

    .line 829
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string v4, "BootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    if-nez v2, :cond_13c

    .line 836
    goto :goto_85

    .line 826
    :catch_f6
    move-exception v3

    .line 827
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v3    # "e":Ljava/io/IOException;
    if-nez v2, :cond_13c

    .line 836
    goto/16 :goto_85

    .line 823
    :catch_113
    move-exception v3

    .line 824
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "BootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No existing last log timestamp file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; starting empty"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catchall {:try_start_a3 .. :try_end_138} :catchall_9f

    .line 835
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-nez v2, :cond_13c

    .line 836
    goto/16 :goto_85

    .line 839
    :cond_13c
    :goto_13c
    :try_start_13c
    monitor-exit v0

    return-object v1

    .line 835
    :goto_13e
    if-nez v2, :cond_143

    .line 836
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 838
    :cond_143
    throw v3

    .line 840
    .end local v1    # "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "success":Z
    :catchall_144
    move-exception v1

    monitor-exit v0
    :try_end_146
    .catchall {:try_start_13c .. :try_end_146} :catchall_144

    throw v1
.end method

.method private static recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z
    .registers 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 403
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 404
    .local v0, "fileTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_c

    return v3

    .line 406
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "filename":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_25

    .line 408
    return v3

    .line 411
    :cond_25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const/4 v3, 0x1

    return v3
.end method

.method private removeOldUpdatePackages(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 218
    const-string v0, "com.google.android.systemupdater"

    const-string v1, "com.google.android.systemupdater.SystemUpdateReceiver"

    invoke-static {p1, v0, v1}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private static writeTimestamps(Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 844
    .local p0, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 847
    :try_start_3
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_83
    .catchall {:try_start_3 .. :try_end_7} :catchall_81

    .line 851
    .local v1, "stream":Ljava/io/FileOutputStream;
    nop

    .line 854
    :try_start_8
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 855
    .local v2, "out":Landroid/util/TypedXmlSerializer;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 856
    const-string/jumbo v3, "log-files"

    invoke-interface {v2, v4, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 858
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 859
    .local v3, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 860
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 861
    .local v5, "filename":Ljava/lang/String;
    const-string/jumbo v6, "log"

    invoke-interface {v2, v4, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 862
    const-string v6, "filename"

    invoke-interface {v2, v4, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 863
    const-string/jumbo v6, "timestamp"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v2, v4, v6, v7, v8}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 864
    const-string/jumbo v6, "log"

    invoke-interface {v2, v4, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 865
    nop

    .end local v5    # "filename":Ljava/lang/String;
    goto :goto_23

    .line 867
    :cond_52
    const-string/jumbo v5, "log-files"

    invoke-interface {v2, v4, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 868
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 870
    sget-object v4, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_60} :catch_61
    .catchall {:try_start_8 .. :try_end_60} :catchall_81

    .line 874
    .end local v2    # "out":Landroid/util/TypedXmlSerializer;
    .end local v3    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto :goto_7f

    .line 871
    :catch_61
    move-exception v2

    .line 872
    .local v2, "e":Ljava/io/IOException;
    :try_start_62
    const-string v3, "BootReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write timestamp file, using the backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    sget-object v3, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 875
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_7f
    monitor-exit v0

    .line 876
    return-void

    .line 875
    :catchall_81
    move-exception v1

    goto :goto_9e

    .line 848
    :catch_83
    move-exception v1

    .line 849
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write timestamp file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    monitor-exit v0

    return-void

    .line 875
    .end local v1    # "e":Ljava/io/IOException;
    :goto_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_62 .. :try_end_9f} :catchall_81

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 135
    new-instance v0, Lcom/android/server/BootReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BootReceiver$1;-><init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V

    .line 158
    invoke-virtual {v0}, Lcom/android/server/BootReceiver$1;->start()V

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "tracefd":Ljava/io/FileDescriptor;
    :try_start_9
    const-string v1, "/sys/kernel/tracing/instances/bootreceiver/trace_pipe"

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    const/16 v3, 0x180

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_13} :catch_2b

    move-object v0, v1

    .line 166
    nop

    .line 176
    new-instance v1, Lcom/android/server/BootReceiver$2;

    invoke-direct {v1, p0}, Lcom/android/server/BootReceiver$2;-><init>(Lcom/android/server/BootReceiver;)V

    .line 212
    .local v1, "traceCallback":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v1}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 215
    return-void

    .line 163
    .end local v1    # "traceCallback":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    :catch_2b
    move-exception v1

    .line 164
    .local v1, "e":Landroid/system/ErrnoException;
    const-string v2, "BootReceiver"

    const-string v3, "Could not open /sys/kernel/tracing/instances/bootreceiver/trace_pipe"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    return-void
.end method
