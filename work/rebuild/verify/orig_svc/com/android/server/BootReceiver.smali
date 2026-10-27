.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field public static final LASTK_LOG_SIZE:I

.field public static final LAST_KMSG_FILES:[Ljava/lang/String;

.field public static final LOG_SIZE:I

.field public static final MAX_TOMBSTONE_SIZE_BYTES:J

.field public static final MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

.field public static final TOMBSTONE_TMP_DIR:Ljava/io/File;

.field public static final lastHeaderFile:Ljava/io/File;

.field public static final sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

.field public static final sFile:Landroid/util/AtomicFile;

.field public static sSentReports:I


# direct methods
.method public static synthetic $r8$lambda$Zri2IuICrAGgYshGpGnJP6dYFvU(Ljava/lang/Integer;)Z
    .registers 2

    .line 489
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogBootEvents(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveOldUpdatePackages(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsSentReports()I
    .registers 1

    .line 0
    sget v0, Lcom/android/server/BootReceiver;->sSentReports:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfputsSentReports(I)V
    .registers 1

    .line 0
    sput p0, Lcom/android/server/BootReceiver;->sSentReports:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 91
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

    .line 93
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1c

    const/high16 v3, 0x30000

    :cond_1c
    sput v3, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    .line 102
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/tombstones"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_TMP_DIR:Ljava/io/File;

    .line 113
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    .line 114
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "log-files.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "log-files"

    invoke-direct {v0, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 116
    new-instance v0, Ljava/io/File;

    .line 117
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "last-header.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    .line 129
    const-string v0, "default"

    const-string/jumbo v2, "late"

    const-string v3, "early"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootReceiver;->MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

    .line 132
    const-string v0, "/sys/fs/pstore/console-ramoops"

    const-string v2, "/proc/last_kmsg"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootReceiver;->LAST_KMSG_FILES:[Ljava/lang/String;

    .line 151
    sput v1, Lcom/android/server/BootReceiver;->sSentReports:I

    .line 154
    sget v0, Lcom/android/server/DropBoxManagerService;->DEFAULT_QUOTA_KB:I

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/BootReceiver;->MAX_TOMBSTONE_SIZE_BYTES:J

    .line 342
    new-instance v0, Lcom/android/server/am/DropboxRateLimiter;

    invoke-direct {v0}, Lcom/android/server/am/DropboxRateLimiter;-><init>()V

    sput-object v0, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12

    if-eqz p0, :cond_c9

    .line 662
    invoke-virtual {p0, p4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_c9

    .line 663
    :cond_a
    const-string v0, "Copying audit failures to DropBox"

    const-string v1, "BootReceiver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc/last_kmsg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3c

    .line 668
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/fs/pstore/console-ramoops"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3c

    .line 671
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/fs/pstore/console-ramoops-0"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    :cond_3c
    cmp-long v4, v2, v4

    if-gtz v4, :cond_42

    goto/16 :goto_c9

    .line 678
    :cond_42
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_57

    goto :goto_c9

    .line 682
    :cond_57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string p1, "[[TRUNCATED]]\n"

    invoke-static {v0, p3, p1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 685
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_71
    if-ge v3, v2, :cond_92

    aget-object v4, p1, v3

    .line 687
    const-string v5, "audit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 688
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 691
    :cond_92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Copied "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " worth of audits to DropBox"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    return-void
.end method

.method public static addAugmentedProtoToDropbox(Ljava/io/File;Landroid/os/DropBoxManager;Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;)V
    .registers 9

    .line 543
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/BootReceiver;->MAX_TOMBSTONE_SIZE_BYTES:J

    cmp-long v0, v0, v2

    const-string v1, "BootReceiver"

    if-lez v0, :cond_25

    .line 544
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tombstone too large to add to DropBox: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 554
    :cond_25
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 555
    :try_start_2a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_cc

    .line 556
    :try_start_2f
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->transferTo(Ljava/io/OutputStream;)J

    .line 557
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_ce

    .line 558
    :try_start_36
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_cc

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 560
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".tmp"

    sget-object v2, Lcom/android/server/BootReceiver;->TOMBSTONE_TMP_DIR:Ljava/io/File;

    .line 559
    invoke-static {p0, v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 562
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const-string/jumbo v2, "rw-rw----"

    .line 563
    invoke-static {v2}, Ljava/nio/file/attribute/PosixFilePermissions;->fromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 561
    invoke-static {v0, v2}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    const/high16 v0, 0x30000000

    .line 566
    :try_start_58
    invoke-static {p0, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_5c} :catch_8d
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_5c} :catch_8b
    .catchall {:try_start_58 .. :try_end_5c} :catchall_89

    .line 568
    :try_start_5c
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    .line 569
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-wide v4, 0x10c00000001L

    .line 570
    invoke-virtual {v2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 573
    invoke-virtual {p2}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->droppedCountSinceRateLimitActivated()I

    move-result p2

    const-wide v3, 0x10500000002L

    .line 571
    invoke-virtual {v2, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 574
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 577
    const-string p2, "SYSTEM_TOMBSTONE_PROTO_WITH_HEADERS"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, p0, v2}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_82
    .catchall {:try_start_5c .. :try_end_82} :catchall_8f

    .line 578
    :try_start_82
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_85
    .catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_85} :catch_8d
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_85} :catch_8b
    .catchall {:try_start_82 .. :try_end_85} :catchall_89

    .line 588
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_89
    move-exception p1

    goto :goto_c8

    :catch_8b
    move-exception p1

    goto :goto_9b

    :catch_8d
    move-exception p1

    goto :goto_b3

    :catchall_8f
    move-exception p1

    if-eqz v0, :cond_9a

    .line 566
    :try_start_92
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception p2

    :try_start_97
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    throw p1
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_9b} :catch_8d
    .catch Ljava/lang/RuntimeException; {:try_start_97 .. :try_end_9b} :catch_8b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_89

    .line 584
    :goto_9b
    :try_start_9b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to flush proto tombstone: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_9b .. :try_end_af} :catchall_89

    .line 588
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 579
    :goto_b3
    :try_start_b3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to open for write: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    throw p1
    :try_end_c8
    .catchall {:try_start_b3 .. :try_end_c8} :catchall_89

    .line 588
    :goto_c8
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 590
    throw p1

    :catchall_cc
    move-exception p0

    goto :goto_d8

    :catchall_ce
    move-exception p0

    .line 554
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d3

    goto :goto_d7

    :catchall_d3
    move-exception p1

    :try_start_d4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d7
    throw p0
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_cc

    :goto_d8
    :try_start_d8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_dc

    goto :goto_e0

    :catchall_dc
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e0
    throw p0
.end method

.method public static addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13

    .line 613
    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    if-eqz p0, :cond_51

    .line 620
    invoke-virtual {p0, p6}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_51

    .line 622
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-static {v0, p1}, Lcom/android/server/BootReceiver;->recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_51

    .line 627
    :cond_15
    const-string p1, "[[TRUNCATED]]\n"

    invoke-static {v0, p5, p1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 630
    const-string p3, "SYSTEM_TOMBSTONE"

    invoke-virtual {p6, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, ">>> system_server <<<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 631
    const-string/jumbo p1, "system_server_native_crash"

    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/server/BootReceiver;->addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 633
    :cond_43
    invoke-virtual {p6, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    const/16 p1, 0xba

    .line 634
    invoke-static {p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 636
    :cond_4e
    invoke-static {p0, p6, p2, p4, p5}, Lcom/android/server/BootReceiver;->addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_51
    :goto_51
    return-void
.end method

.method public static addFsckErrorsToDropBoxAndLogFsStat(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v5, p4

    if-eqz v0, :cond_10

    .line 699
    invoke-virtual {v0, v5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_10

    :cond_e
    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    :goto_10
    move v3, v1

    .line 703
    :goto_11
    const-string v4, "Checking for fsck errors"

    const-string v6, "BootReceiver"

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance v7, Ljava/io/File;

    const-string v4, "/dev/fscklogs/log"

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-gtz v4, :cond_2a

    return-void

    .line 709
    :cond_2a
    const-string v4, "[[TRUNCATED]]\n"

    move/from16 v8, p3

    invoke-static {v7, v8, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 710
    const-string v9, "fs_stat,[^,]*/([^/,]+),(0x[0-9a-fA-F]+)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 711
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 714
    array-length v10, v4

    move v11, v1

    move v12, v11

    move v13, v12

    :goto_42
    if-ge v1, v10, :cond_89

    aget-object v14, v4, v1

    .line 715
    const-string v15, "FILE SYSTEM WAS MODIFIED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_83

    const-string v15, "[FSCK] Unreachable"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_57

    goto :goto_83

    .line 717
    :cond_57
    const-string v15, "fs_stat"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_84

    .line 718
    invoke-virtual {v9, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 719
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_6e

    .line 720
    invoke-static {v15, v4, v12, v13}, Lcom/android/server/BootReceiver;->handleFsckFsStat(Ljava/util/regex/Matcher;[Ljava/lang/String;II)V

    move v12, v13

    goto :goto_84

    .line 723
    :cond_6e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse fs_stat:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :cond_83
    :goto_83
    const/4 v11, 0x1

    :cond_84
    :goto_84
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_89
    if-eqz v3, :cond_97

    if-eqz v11, :cond_97

    .line 730
    const-string v3, "/dev/fscklogs/log"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 734
    :cond_97
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/fscklogs/fsck"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v7, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public static addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    .line 597
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 600
    sget v1, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    add-int/2addr v1, v0

    const/high16 v2, 0x30000

    if-le v1, v2, :cond_16

    if-le v2, v0, :cond_1e

    sub-int/2addr v2, v0

    neg-int p5, v2

    :cond_16
    :goto_16
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    goto :goto_20

    :cond_1e
    const/4 p5, 0x0

    goto :goto_16

    .line 607
    :goto_20
    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to DropBox ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootReceiver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {p0, p1, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p3, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x13c6a

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static addTextTombstoneFromProtoToDropbox(Ljava/io/File;Landroid/os/DropBoxManager;Ljava/util/HashMap;Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;)V
    .registers 13

    .line 502
    const-string v1, "BootReceiver"

    const/4 v2, 0x0

    .line 505
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".pb.txt.tmp"

    sget-object v4, Lcom/android/server/BootReceiver;->TOMBSTONE_TMP_DIR:Ljava/io/File;

    invoke-static {v0, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 509
    new-instance v0, Ljava/lang/ProcessBuilder;

    const-string v3, "/system/bin/pbtombstone"

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 511
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0

    .line 514
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {p0, v3, v4, v0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 515
    const-string/jumbo p1, "pbtombstone timed out"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p0}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_38} :catch_41
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_38} :catch_41
    .catchall {:try_start_3 .. :try_end_38} :catchall_3e

    if-eqz v2, :cond_94

    .line 533
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void

    :catchall_3e
    move-exception v0

    move-object p0, v0

    goto :goto_95

    :catch_41
    move-exception v0

    move-object p0, v0

    goto :goto_8a

    .line 520
    :cond_44
    :try_start_44
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0

    if-eqz p0, :cond_60

    .line 522
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "pbtombstone failed with exit code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 524
    :cond_60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/BootReceiver;->getBootHeadersToLogAndUpdate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p3}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->createHeader()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 526
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    const-string v8, "SYSTEM_TOMBSTONE"

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_84} :catch_41
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_84} :catch_41
    .catchall {:try_start_44 .. :try_end_84} :catchall_3e

    :goto_84
    if-eqz v2, :cond_94

    .line 533
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void

    .line 530
    :goto_8a
    :try_start_8a
    const-string p1, "Failed to process tombstone with pbtombstone"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_3e

    if-eqz v2, :cond_94

    .line 533
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_94
    return-void

    :goto_95
    if-eqz v2, :cond_9a

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 535
    :cond_9a
    throw p0
.end method

.method public static createTempTombstoneWithoutMemory(Ljava/io/File;)Ljava/io/File;
    .registers 6

    .line 487
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pb.tmp"

    sget-object v2, Lcom/android/server/BootReceiver;->TOMBSTONE_TMP_DIR:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 488
    new-instance v1, Landroid/util/proto/ProtoFieldFilter;

    new-instance v2, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoFieldFilter;-><init>(Ljava/util/function/Predicate;)V

    .line 491
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 492
    :try_start_1b
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_3a

    .line 493
    :try_start_20
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_3c

    .line 494
    :try_start_25
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_3e

    .line 495
    :try_start_2a
    invoke-virtual {v1, p0, v4}, Landroid/util/proto/ProtoFieldFilter;->filter(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_40

    .line 497
    :try_start_2d
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3e

    :try_start_30
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3c

    :try_start_33
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3a

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :catchall_3a
    move-exception p0

    goto :goto_5c

    :catchall_3c
    move-exception v0

    goto :goto_53

    :catchall_3e
    move-exception v0

    goto :goto_4a

    :catchall_40
    move-exception v0

    .line 491
    :try_start_41
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v1

    :try_start_46
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw v0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_3e

    :goto_4a
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v1

    :try_start_4f
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_52
    throw v0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_3c

    :goto_53
    :try_start_53
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception p0

    :try_start_58
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_3a

    :goto_5c
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_64
    throw p0
.end method

.method public static filterAndAddTombstoneToDropBox(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;)V
    .registers 10

    .line 424
    const-string v0, " to dropbox"

    const-class v1, Landroid/os/DropBoxManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/DropBoxManager;

    .line 425
    const-string v1, "BootReceiver"

    if-nez p0, :cond_14

    .line 426
    const-string p0, "Can\'t log tombstone: DropBoxManager not available"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :cond_14
    sget-object v2, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    const-string v3, "SYSTEM_TOMBSTONE_PROTO_WITH_HEADERS"

    .line 432
    invoke-virtual {v2, v3, p2}, Lcom/android/server/am/DropboxRateLimiter;->shouldRateLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    move-result-object p2

    .line 433
    invoke-virtual {p2}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->shouldRateLimit()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_2d

    .line 435
    :cond_23
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    move-result-object v2

    .line 439
    invoke-static {p1, v2}, Lcom/android/server/BootReceiver;->recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z

    move-result v3

    if-nez v3, :cond_2e

    :goto_2d
    return-void

    :cond_2e
    const/4 v3, 0x0

    .line 444
    :try_start_2f
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filtering tombstone file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {p1}, Lcom/android/server/BootReceiver;->createTempTombstoneWithoutMemory(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generated tombstone file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding tombstone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {v3, p0, p2}, Lcom/android/server/BootReceiver;->addAugmentedProtoToDropbox(Ljava/io/File;Landroid/os/DropBoxManager;Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;)V

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding text tombstone version of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {v3, p0, v2, p2}, Lcom/android/server/BootReceiver;->addTextTombstoneFromProtoToDropbox(Ljava/io/File;Landroid/os/DropBoxManager;Ljava/util/HashMap;Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_a2} :catch_ab
    .catch Landroid/util/proto/ProtoParseException; {:try_start_2f .. :try_end_a2} :catch_ab
    .catchall {:try_start_2f .. :try_end_a2} :catchall_a9

    .line 468
    :goto_a2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 470
    :cond_a5
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_d3

    :catchall_a9
    move-exception p0

    goto :goto_d7

    :catch_ab
    move-exception p0

    .line 464
    :try_start_ac
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to log tombstone \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to DropBox. Error during processing or writing: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 464
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d0
    .catchall {:try_start_ac .. :try_end_d0} :catchall_a9

    if-eqz v3, :cond_a5

    goto :goto_a2

    .line 472
    :goto_d3
    invoke-static {v2}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    return-void

    :goto_d7
    if-eqz v3, :cond_dc

    .line 468
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 470
    :cond_dc
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 471
    throw p0
.end method

.method public static fixFsckFsStat(Ljava/lang/String;I[Ljava/lang/String;II)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_183

    .line 932
    const-string v2, "Pass ([1-9]E?):"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 933
    const-string v3, "Inode [0-9]+ extent tree.*could be shorter"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 940
    const-string v5, ""

    move-object v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v5, p3

    :goto_1c
    const-string v10, "fs_stat, partition:"

    const-string v11, "BootReceiver"

    move/from16 v12, p4

    if-ge v5, v12, :cond_129

    .line 941
    aget-object v13, p2, v5

    .line 942
    const-string v14, "FILE SYSTEM WAS MODIFIED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_129

    const-string v14, "[FSCK] Unreachable"

    .line 943
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_38

    goto/16 :goto_129

    .line 945
    :cond_38
    const-string v14, "Pass "

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_53

    .line 946
    invoke-virtual {v2, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 947
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 948
    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    :cond_4f
    move/from16 p3, v15

    goto/16 :goto_125

    .line 950
    :cond_53
    const-string v14, "Inode "

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const-string v4, "1"

    if-eqz v14, :cond_90

    .line 951
    invoke-virtual {v3, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 952
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_8d

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 954
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " found tree optimization:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 p3, v15

    move/from16 v7, p3

    goto/16 :goto_125

    :cond_8d
    move v4, v15

    goto/16 :goto_12b

    .line 961
    :cond_90
    const-string v14, "[QUOTA WARNING]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    move/from16 p3, v15

    const-string v15, "5"

    if-eqz v14, :cond_c3

    invoke-virtual {v6, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c3

    .line 962
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " found quota warning:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, p3

    if-nez v7, :cond_125

    :goto_c0
    const/4 v4, 0x0

    goto/16 :goto_12b

    .line 969
    :cond_c3
    const-string v14, "Update quota info"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d2

    invoke-virtual {v6, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d2

    goto :goto_125

    .line 971
    :cond_d2
    const-string v14, "Timestamp(s) on inode"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_112

    const-string v14, "beyond 2310-04-04 are likely pre-1970"

    .line 972
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_112

    .line 973
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_112

    .line 974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " found timestamp adjustment:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v5, 0x1

    .line 977
    aget-object v9, p2, v4

    const-string v10, "Fix? yes"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10f

    move v5, v4

    :cond_10f
    move/from16 v9, p3

    goto :goto_125

    .line 982
    :cond_112
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 984
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_125

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_125

    move/from16 v4, p3

    goto :goto_12b

    :cond_125
    :goto_125
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1c

    :cond_129
    :goto_129
    const/4 v13, 0x0

    goto :goto_c0

    :goto_12b
    if-eqz v4, :cond_14a

    if-eqz v13, :cond_183

    .line 993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fix:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_14a
    if-eqz v8, :cond_163

    if-nez v7, :cond_163

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fs_stat, got quota fix without tree optimization, partition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_163
    if-eqz v7, :cond_167

    if-nez v8, :cond_169

    :cond_167
    if-eqz v9, :cond_183

    .line 1000
    :cond_169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fix ignored"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v0, v1, -0x401

    return v0

    :cond_183
    return v1
.end method

.method public static getBootHeadersToLogAndUpdate()Ljava/lang/String;
    .registers 5

    .line 274
    invoke-static {}, Lcom/android/server/BootReceiver;->getPreviousBootHeaders()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {}, Lcom/android/server/BootReceiver;->getCurrentBootHeaders()Ljava/lang/String;

    move-result-object v1

    .line 278
    :try_start_8
    sget-object v2, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_27

    :catch_e
    move-exception v2

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BootReceiver"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    if-nez v0, :cond_3c

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPrevious: false\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 289
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPrevious: true\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentBootHeaders()Ljava/lang/String;
    .registers 6

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Build: "

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Hardware: "

    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Revision: "

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ro.revision"

    const-string v3, ""

    .line 257
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Bootloader: "

    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Radio: "

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Kernel: "

    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/version"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    const-string v4, "...\n"

    .line 261
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    sget v2, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v2}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1000

    cmp-long v4, v2, v4

    if-eqz v4, :cond_81

    .line 266
    const-string v4, "PageSize: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreviousBootHeaders()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 246
    :try_start_1
    sget-object v1, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_8

    :catch_8
    return-object v0
.end method

.method public static handleFsckFsStat(Ljava/util/regex/Matcher;[Ljava/lang/String;II)V
    .registers 8

    .line 1009
    const-string v0, "BootReceiver"

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 1012
    :try_start_8
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_14} :catch_50

    .line 1017
    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/server/BootReceiver;->fixFsckFsStat(Ljava/lang/String;I[Ljava/lang/String;II)I

    move-result p0

    .line 1018
    const-string/jumbo p1, "userdata"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    const-string p1, "data"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    :cond_29
    const/16 p1, 0xf2

    const/4 p2, 0x3

    .line 1019
    invoke-static {p1, p2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1024
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fs_stat, partition:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " stat:0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1014
    :catch_50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot parse fs_stat: partition:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " stat:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initDropboxRateLimiter()V
    .registers 1

    .line 346
    sget-object v0, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    invoke-virtual {v0}, Lcom/android/server/am/DropboxRateLimiter;->init()V

    return-void
.end method

.method public static logFsMountTime()V
    .registers 8

    .line 739
    sget-object v0, Lcom/android/server/BootReceiver;->MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_62

    aget-object v4, v0, v3

    .line 740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ro.boottime.init.mount_all."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5f

    .line 743
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_64

    goto :goto_4e

    :sswitch_2d
    const-string v6, "default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_4e

    :cond_36
    const/4 v7, 0x2

    goto :goto_4e

    :sswitch_38
    const-string v6, "early"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_4e

    :cond_41
    const/4 v7, 0x1

    goto :goto_4e

    :sswitch_43
    const-string/jumbo v6, "late"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_4e

    :cond_4d
    move v7, v2

    :goto_4e
    packed-switch v7, :pswitch_data_72

    goto :goto_5f

    :pswitch_52
    const/16 v4, 0xa

    goto :goto_5a

    :pswitch_55
    const/16 v4, 0xb

    goto :goto_5a

    :pswitch_58
    const/16 v4, 0xc

    :goto_5a
    const/16 v6, 0xef

    .line 762
    invoke-static {v6, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    :cond_5f
    :goto_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_62
    return-void

    nop

    :sswitch_data_64
    .sparse-switch
        0x3292a6 -> :sswitch_43
        0x5bd1763 -> :sswitch_38
        0x5c13d641 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
    .end packed-switch
.end method

.method public static logFsShutdownTime()V
    .registers 8

    .line 872
    const-string v0, "BootReceiver"

    .line 873
    sget-object v1, Lcom/android/server/BootReceiver;->LAST_KMSG_FILES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x0

    if-ge v3, v2, :cond_19

    aget-object v5, v1, v3

    .line 874
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1a

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_19
    move-object v6, v4

    :cond_1a
    if-nez v6, :cond_1d

    return-void

    :cond_1d
    const/16 v1, -0x4000

    .line 887
    :try_start_1f
    invoke-static {v6, v1, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_83

    .line 892
    const-string/jumbo v2, "powerctl_shutdown_time_ms:([0-9]+):([0-9]+)"

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 893
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 894
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/16 v3, 0xf2

    const/4 v4, 0x2

    if-eqz v2, :cond_79

    const/4 v2, 0x1

    .line 897
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xef

    const/16 v7, 0x9

    .line 895
    invoke-static {v6, v7, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 900
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 898
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boot_fs_shutdown,"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_79
    const/4 v1, 0x4

    .line 906
    invoke-static {v3, v4, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 909
    const-string v1, "boot_fs_shutdown, string not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_83
    move-exception v1

    .line 889
    const-string v2, "cannot read last msg"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static logStatsdShutdownAtom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 831
    const-string v0, "BootReceiver"

    if-eqz p0, :cond_2e

    .line 832
    const-string/jumbo v1, "y"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, 0x1

    :goto_e
    move v2, p0

    goto :goto_35

    .line 834
    :cond_10
    const-string/jumbo v1, "n"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value for reboot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 838
    :cond_2e
    const-string p0, "No value received for reboot"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    const/4 p0, 0x0

    goto :goto_e

    :goto_35
    if-eqz p1, :cond_39

    :goto_37
    move-object v3, p1

    goto :goto_41

    .line 844
    :cond_39
    const-string p0, "No value received for shutdown reason"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "<EMPTY>"

    goto :goto_37

    :goto_41
    const-wide/16 p0, 0x0

    if-eqz p2, :cond_5f

    .line 849
    :try_start_45
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_49} :catch_4a

    goto :goto_65

    .line 851
    :catch_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse shutdown start time: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 854
    :cond_5f
    const-string v1, "No value received for shutdown start time"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    move-wide v4, p0

    :goto_65
    if-eqz p3, :cond_82

    .line 859
    :try_start_67
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_6b} :catch_6d

    :goto_6b
    move-wide v6, p0

    goto :goto_88

    .line 861
    :catch_6d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot parse shutdown duration: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 864
    :cond_82
    const-string p2, "No value received for shutdown duration"

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :goto_88
    const/16 v1, 0x38

    .line 867
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;JJ)V

    return-void
.end method

.method public static logSystemServerShutdownTimeMetrics()V
    .registers 15

    .line 770
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/shutdown-metrics.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "BootReceiver"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2b

    .line 774
    :try_start_11
    invoke-static {v0, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_2c

    :catch_16
    move-exception v1

    .line 776
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    move-object v1, v4

    .line 779
    :goto_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ae

    .line 784
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 785
    array-length v6, v5

    move v10, v3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    :goto_3d
    if-ge v10, v6, :cond_ab

    aget-object v11, v5, v10

    .line 786
    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 787
    array-length v12, v11

    const/4 v13, 0x2

    if-eq v12, v13, :cond_60

    .line 788
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wrong format of shutdown metrics - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 792
    :cond_60
    aget-object v12, v11, v3

    const-string/jumbo v13, "shutdown_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_80

    .line 793
    aget-object v12, v11, v3

    aget-object v14, v11, v13

    invoke-static {v12, v14}, Lcom/android/server/BootReceiver;->logTronShutdownMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    aget-object v12, v11, v3

    const-string/jumbo v14, "shutdown_system_server"

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_80

    .line 795
    aget-object v9, v11, v13

    .line 798
    :cond_80
    aget-object v12, v11, v3

    const-string/jumbo v14, "reboot"

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8e

    .line 799
    aget-object v4, v11, v13

    goto :goto_a8

    .line 800
    :cond_8e
    aget-object v12, v11, v3

    const-string/jumbo v14, "reason"

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9c

    .line 801
    aget-object v7, v11, v13

    goto :goto_a8

    .line 802
    :cond_9c
    aget-object v12, v11, v3

    const-string v14, "begin_shutdown"

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a8

    .line 803
    aget-object v8, v11, v13

    :cond_a8
    :goto_a8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    .line 806
    :cond_ab
    invoke-static {v4, v7, v8, v9}, Lcom/android/server/BootReceiver;->logStatsdShutdownAtom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_ae
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static logTronShutdownMetric(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 814
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_b

    if-ltz p1, :cond_a

    const/4 v0, 0x0

    .line 820
    invoke-static {v0, p0, p1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_a
    return-void

    .line 816
    :catch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot parse metric "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " int value - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BootReceiver"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static readTimestamps()Ljava/util/HashMap;
    .registers 10

    .line 1028
    sget-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 1029
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d9

    const/4 v2, 0x0

    .line 1031
    :try_start_9
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_d} :catch_127
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_b7
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_d} :catch_b3
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_d} :catch_af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_d} :catch_ab
    .catchall {:try_start_9 .. :try_end_d} :catchall_a6

    .line 1032
    :try_start_d
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v4

    .line 1035
    :goto_11
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1c

    if-eq v5, v7, :cond_1c

    goto :goto_11

    :cond_1c
    if-ne v5, v6, :cond_92

    .line 1044
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 1045
    :cond_22
    :goto_22
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    if-eq v6, v7, :cond_7b

    const/4 v8, 0x3

    if-ne v6, v8, :cond_34

    .line 1046
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_7b

    goto :goto_34

    :catchall_32
    move-exception v4

    goto :goto_9b

    :cond_34
    :goto_34
    if-eq v6, v8, :cond_22

    const/4 v8, 0x4

    if-ne v6, v8, :cond_3a

    goto :goto_22

    .line 1051
    :cond_3a
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1052
    const-string/jumbo v8, "log"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 1053
    const-string v6, "filename"

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1054
    const-string/jumbo v9, "timestamp"

    invoke-interface {v4, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 1055
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 1057
    :cond_5d
    const-string v6, "BootReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7a
    .catchall {:try_start_d .. :try_end_7a} :catchall_32

    goto :goto_22

    :cond_7b
    if-eqz v3, :cond_14b

    .line 1062
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_80} :catch_8f
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_7d .. :try_end_80} :catch_89
    .catch Ljava/lang/NullPointerException; {:try_start_7d .. :try_end_80} :catch_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_80} :catch_85
    .catchall {:try_start_7d .. :try_end_80} :catchall_82

    goto/16 :goto_14b

    :catchall_82
    move-exception v2

    goto/16 :goto_14d

    :catch_85
    move-exception v2

    goto :goto_bc

    :catch_87
    move-exception v2

    goto :goto_dc

    :catch_89
    move-exception v2

    goto/16 :goto_f5

    :catch_8c
    move-exception v2

    goto/16 :goto_10e

    :catch_8f
    move v2, v7

    goto/16 :goto_127

    .line 1041
    :cond_92
    :try_start_92
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "no start tag found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_32

    :goto_9b
    if-eqz v3, :cond_bb

    .line 1031
    :try_start_9d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    goto :goto_bb

    :catchall_a1
    move-exception v3

    :try_start_a2
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_bb

    :catchall_a6
    move-exception v3

    move v7, v2

    move-object v2, v3

    goto/16 :goto_14d

    :catch_ab
    move-exception v3

    move v7, v2

    move-object v2, v3

    goto :goto_bc

    :catch_af
    move-exception v3

    move v7, v2

    move-object v2, v3

    goto :goto_dc

    :catch_b3
    move-exception v3

    move v7, v2

    move-object v2, v3

    goto :goto_f5

    :catch_b7
    move-exception v3

    move v7, v2

    move-object v2, v3

    goto :goto_10e

    :cond_bb
    :goto_bb
    throw v4
    :try_end_bc
    .catch Ljava/io/FileNotFoundException; {:try_start_a2 .. :try_end_bc} :catch_127
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_bc} :catch_b7
    .catch Ljava/lang/IllegalStateException; {:try_start_a2 .. :try_end_bc} :catch_b3
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_bc} :catch_af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_bc} :catch_ab
    .catchall {:try_start_a2 .. :try_end_bc} :catchall_a6

    .line 1072
    :goto_bc
    :try_start_bc
    const-string v3, "BootReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catchall {:try_start_bc .. :try_end_d2} :catchall_82

    if-nez v7, :cond_14b

    .line 1075
    :goto_d4
    :try_start_d4
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d9

    goto/16 :goto_14b

    :catchall_d9
    move-exception v1

    goto/16 :goto_153

    .line 1070
    :goto_dc
    :try_start_dc
    const-string v3, "BootReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_14b

    goto :goto_d4

    .line 1068
    :goto_f5
    const-string v3, "BootReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_14b

    goto :goto_d4

    .line 1066
    :goto_10e
    const-string v3, "BootReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catchall {:try_start_dc .. :try_end_124} :catchall_82

    if-nez v7, :cond_14b

    goto :goto_d4

    .line 1063
    :catch_127
    :goto_127
    :try_start_127
    const-string v3, "BootReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No existing last log timestamp file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; starting empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catchall {:try_start_127 .. :try_end_148} :catchall_a6

    if-nez v2, :cond_14b

    goto :goto_d4

    .line 1078
    :cond_14b
    :goto_14b
    :try_start_14b
    monitor-exit v0

    return-object v1

    :goto_14d
    if-nez v7, :cond_152

    .line 1075
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1077
    :cond_152
    throw v2

    .line 1079
    :goto_153
    monitor-exit v0
    :try_end_154
    .catchall {:try_start_14b .. :try_end_154} :catchall_d9

    throw v1
.end method

.method public static recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z
    .registers 8

    .line 640
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_c

    return v3

    .line 643
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 644
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_25

    return v3

    .line 648
    :cond_25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static resetDropboxRateLimiter()V
    .registers 1

    .line 354
    sget-object v0, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    invoke-virtual {v0}, Lcom/android/server/am/DropboxRateLimiter;->reset()V

    return-void
.end method

.method public static writeTimestamps(Ljava/util/HashMap;)V
    .registers 10

    .line 1083
    sget-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 1086
    :try_start_3
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_7d
    .catchall {:try_start_3 .. :try_end_7} :catchall_4d

    .line 1093
    :try_start_7
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v2

    .line 1094
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1095
    const-string/jumbo v3, "log-files"

    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1097
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1098
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1099
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1100
    const-string/jumbo v6, "log"

    invoke-interface {v2, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1101
    const-string v6, "filename"

    invoke-interface {v2, v4, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1102
    const-string/jumbo v6, "timestamp"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v2, v4, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1103
    const-string/jumbo v5, "log"

    invoke-interface {v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1f

    :catchall_4d
    move-exception p0

    goto :goto_96

    :catch_4f
    move-exception p0

    goto :goto_60

    .line 1106
    :cond_51
    const-string/jumbo p0, "log-files"

    invoke-interface {v2, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1107
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 1109
    sget-object p0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_5f} :catch_4f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_4d

    goto :goto_7b

    .line 1111
    :goto_60
    :try_start_60
    const-string v2, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write timestamp file, using the backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    sget-object p0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1114
    :goto_7b
    monitor-exit v0

    goto :goto_95

    :catch_7d
    move-exception p0

    .line 1088
    const-string v1, "BootReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write timestamp file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    monitor-exit v0

    :goto_95
    return-void

    .line 1114
    :goto_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_60 .. :try_end_97} :catchall_4d

    throw p0
.end method


# virtual methods
.method public final logBootEvents(Landroid/content/Context;)V
    .registers 10

    .line 293
    const-string p0, "dropbox"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 294
    invoke-static {}, Lcom/android/server/BootReceiver;->getBootHeadersToLogAndUpdate()Ljava/lang/String;

    move-result-object v2

    .line 295
    const-string/jumbo p0, "ro.boot.bootreason"

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 297
    invoke-static {p1}, Landroid/os/RecoverySystem;->handleAftermath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_31

    if-eqz v0, :cond_31

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SYSTEM_RECOVERY_LOG"

    invoke-virtual {v0, v1, p1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    if-eqz p0, :cond_55

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 305
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Boot info:\n"

    .line 306
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Last boot reason: "

    .line 307
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_53
    move-object v3, p0

    goto :goto_58

    .line 303
    :cond_55
    const-string p0, ""

    goto :goto_53

    .line 311
    :goto_58
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    move-result-object v1

    .line 313
    const-string/jumbo p0, "ro.runtime.firstboot"

    const-wide/16 v4, 0x0

    invoke-static {p0, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-nez p1, :cond_ae

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7b

    .line 316
    const-string p0, "SYSTEM_BOOT"

    invoke-virtual {v0, p0, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_7b
    sget p0, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    neg-int v5, p0

    const-string v6, "SYSTEM_LAST_KMSG"

    const-string v4, "/proc/last_kmsg"

    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    neg-int v5, p0

    .line 321
    const-string v6, "SYSTEM_LAST_KMSG"

    const-string v4, "/sys/fs/pstore/console-ramoops"

    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    neg-int v5, p0

    .line 323
    const-string v6, "SYSTEM_LAST_KMSG"

    const-string v4, "/sys/fs/pstore/console-ramoops-0"

    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    sget p0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v4, p0

    const-string v5, "SYSTEM_RECOVERY_LOG"

    const-string v3, "/cache/recovery/log"

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    neg-int v4, p0

    .line 327
    const-string v5, "SYSTEM_RECOVERY_KMSG"

    const-string v3, "/cache/recovery/last_kmsg"

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    neg-int p0, p0

    .line 329
    const-string p1, "SYSTEM_AUDIT"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/BootReceiver;->addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_b5

    :cond_ae
    if-eqz v0, :cond_b5

    .line 331
    const-string p0, "SYSTEM_RESTART"

    invoke-virtual {v0, p0, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_b5
    :goto_b5
    invoke-static {}, Lcom/android/server/BootReceiver;->logFsShutdownTime()V

    .line 336
    invoke-static {}, Lcom/android/server/BootReceiver;->logFsMountTime()V

    .line 337
    sget p0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int p0, p0

    const-string p1, "SYSTEM_FSCK"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/BootReceiver;->addFsckErrorsToDropBoxAndLogFsStat(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/android/server/BootReceiver;->logSystemServerShutdownTimeMetrics()V

    .line 339
    invoke-static {v1}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 159
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    return-void

    .line 164
    :cond_d
    new-instance p2, Lcom/android/server/BootReceiver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/BootReceiver$1;-><init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V

    .line 179
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 183
    :try_start_15
    const-string p1, "/sys/kernel/tracing/instances/bootreceiver/trace_pipe"

    sget p2, Landroid/system/OsConstants;->O_RDONLY:I

    const/16 v0, 0x180

    invoke-static {p1, p2, v0}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_1f
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_1f} :catch_35

    .line 197
    new-instance p2, Lcom/android/server/BootReceiver$2;

    invoke-direct {p2, p0}, Lcom/android/server/BootReceiver$2;-><init>(Lcom/android/server/BootReceiver;)V

    .line 235
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    return-void

    :catch_35
    move-exception p0

    .line 185
    const-string p1, "BootReceiver"

    const-string p2, "Could not open /sys/kernel/tracing/instances/bootreceiver/trace_pipe"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final removeOldUpdatePackages(Landroid/content/Context;)V
    .registers 3

    .line 241
    const-string p0, "com.google.android.systemupdater"

    const-string v0, "com.google.android.systemupdater.SystemUpdateReceiver"

    invoke-static {p1, p0, v0}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
