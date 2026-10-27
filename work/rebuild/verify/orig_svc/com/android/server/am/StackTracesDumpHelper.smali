.class public abstract Lcom/android/server/am/StackTracesDumpHelper;
.super Ljava/lang/Object;
.source "StackTracesDumpHelper.java"


# static fields
.field public static final ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final NATIVE_DUMP_TIMEOUT_MS:I

.field public static final TEMP_DUMP_TIME_LIMIT:I


# direct methods
.method public static synthetic $r8$lambda$2_q5NUHgU36R91F13viImtf0R_c(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/util/ArrayList;
    .registers 3

    .line 209
    invoke-static {p0, p1, p2}, Lcom/android/server/am/StackTracesDumpHelper;->getExtraPids(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss-SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/StackTracesDumpHelper;->ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 78
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v0, 0x7d0

    sput v1, Lcom/android/server/am/StackTracesDumpHelper;->NATIVE_DUMP_TIMEOUT_MS:I

    mul-int/lit16 v0, v0, 0x2710

    .line 82
    sput v0, Lcom/android/server/am/StackTracesDumpHelper;->TEMP_DUMP_TIME_LIMIT:I

    return-void
.end method

.method public static appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 674
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_1e

    .line 675
    :try_start_6
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 676
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 677
    array-length p0, p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_14

    .line 678
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1e

    return p0

    :catchall_14
    move-exception p0

    .line 674
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception p1

    :try_start_1a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception p0

    .line 679
    const-string p1, "ActivityManager"

    const-string v0, "Exception writing to ANR dump file:"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static collectPids(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5

    .line 695
    const-string v0, "ActivityManager"

    if-nez p0, :cond_5

    goto :goto_3d

    .line 701
    :cond_5
    :try_start_5
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_b} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    goto :goto_10

    :catch_e
    move-exception p0

    goto :goto_25

    .line 705
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted while collecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 703
    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to collect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static copyFirstPidTempDump(Ljava/lang/String;Ljava/util/concurrent/Future;JLcom/android/internal/os/anr/AnrLatencyTracker;)Z
    .registers 9

    .line 507
    const-string v0, "ActivityManager"

    const/4 v1, 0x0

    .line 508
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_9} :catch_4d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_9} :catch_4a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_47
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_9} :catch_44
    .catchall {:try_start_3 .. :try_end_9} :catchall_42

    if-eqz p4, :cond_11

    .line 510
    :try_start_b
    invoke-virtual {p4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidStarted()V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_50

    .line 512
    :cond_11
    :goto_11
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, p0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    if-eqz p0, :cond_39

    .line 514
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 516
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_f

    .line 521
    :try_start_25
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_25 .. :try_end_28} :catch_37
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_35
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_33
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_25 .. :try_end_28} :catch_31
    .catchall {:try_start_25 .. :try_end_28} :catchall_2e

    if-eqz p4, :cond_2d

    .line 537
    invoke-virtual {p4, v3}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    :cond_2d
    return v3

    :catchall_2e
    move-exception p0

    move v1, v3

    goto :goto_89

    :catch_31
    move-exception p0

    goto :goto_59

    :catch_33
    move-exception p0

    goto :goto_64

    :catch_35
    move-exception p0

    goto :goto_6f

    :catch_37
    move-exception p0

    goto :goto_7a

    .line 521
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_39 .. :try_end_3c} :catch_4d
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_4a
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_47
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_39 .. :try_end_3c} :catch_44
    .catchall {:try_start_39 .. :try_end_3c} :catchall_42

    if-eqz p4, :cond_41

    .line 537
    invoke-virtual {p4, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    :cond_41
    return v1

    :catchall_42
    move-exception p0

    goto :goto_89

    :catch_44
    move-exception p0

    move v3, v1

    goto :goto_59

    :catch_47
    move-exception p0

    move v3, v1

    goto :goto_64

    :catch_4a
    move-exception p0

    move v3, v1

    goto :goto_6f

    :catch_4d
    move-exception p0

    move v3, v1

    goto :goto_7a

    .line 508
    :goto_50
    :try_start_50
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception p1

    :try_start_55
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_58
    throw p0
    :try_end_59
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_55 .. :try_end_59} :catch_4d
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_59} :catch_4a
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_59} :catch_47
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_55 .. :try_end_59} :catch_44
    .catchall {:try_start_55 .. :try_end_59} :catchall_42

    .line 533
    :goto_59
    :try_start_59
    const-string p1, "Copying the first pid timed out"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_2e

    if-eqz p4, :cond_63

    .line 537
    invoke-virtual {p4, v3}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    :cond_63
    return v1

    .line 530
    :goto_64
    :try_start_64
    const-string p1, "Failed to read the first pid\'s predump file"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_2e

    if-eqz p4, :cond_6e

    .line 537
    invoke-virtual {p4, v3}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    :cond_6e
    return v1

    .line 526
    :goto_6f
    :try_start_6f
    const-string p1, "Interrupted while collecting the first pid\'s predump to the main ANR file"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_2e

    if-eqz p4, :cond_79

    .line 537
    invoke-virtual {p4, v3}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    :cond_79
    return v1

    .line 522
    :goto_7a
    :try_start_7a
    const-string p1, "Failed to collect the first pid\'s predump to the main ANR file"

    .line 523
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 522
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_2e

    if-eqz p4, :cond_88

    .line 537
    invoke-virtual {p4, v3}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    :cond_88
    return v1

    :goto_89
    if-eqz p4, :cond_8e

    invoke-virtual {p4, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    .line 539
    :cond_8e
    throw p0
.end method

.method public static declared-synchronized createAnrDumpFile(Ljava/io/File;)Ljava/io/File;
    .registers 6

    const-class v0, Lcom/android/server/am/StackTracesDumpHelper;

    monitor-enter v0

    .line 543
    :try_start_3
    sget-object v1, Lcom/android/server/am/StackTracesDumpHelper;->ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 544
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anr_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_38

    .line 547
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x180

    const/4 v3, -0x1

    invoke-static {p0, v1, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_36

    .line 548
    monitor-exit v0

    return-object v2

    :catchall_36
    move-exception p0

    goto :goto_40

    .line 550
    :cond_38
    :try_start_38
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Unable to create ANR dump file: createNewFile failed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_36

    throw p0
.end method

.method public static dumpJavaTracesTombstoned(ILjava/lang/String;J)J
    .registers 12

    .line 644
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 645
    invoke-static {p0, p1}, Lcom/android/server/am/StackTracesDumpHelper;->writeUptimeStartHeaderForPid(ILjava/lang/String;)I

    move-result v2

    const-wide/16 v3, 0x3e8

    .line 646
    div-long/2addr p2, v3

    long-to-int p2, p2

    invoke-static {p0, p1, p2}, Landroid/os/Debug;->dumpJavaBacktraceToFileTimeout(ILjava/lang/String;I)Z

    move-result p2

    .line 648
    const-string p3, "ActivityManager"

    if-eqz p2, :cond_33

    const/4 v3, 0x0

    .line 652
    :try_start_15
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    int-to-long v6, v2

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x64

    cmp-long v2, v4, v6

    if-gez v2, :cond_33

    .line 654
    const-string p2, "Successfully created Java ANR file is empty!"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2b} :catch_2c

    goto :goto_32

    :catch_2c
    move-exception p2

    .line 658
    const-string v2, "Unable to get ANR file size"

    invoke-static {p3, v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    move p2, v3

    :cond_33
    if-nez p2, :cond_49

    .line 663
    const-string p2, "Dumping Java threads failed, initiating native stack dump."

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    sget p2, Lcom/android/server/am/StackTracesDumpHelper;->NATIVE_DUMP_TIMEOUT_MS:I

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p0, p1, p2}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_49

    .line 666
    const-string p0, "Native stack dump failed!"

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static dumpJavaTracesTombstoned(ILjava/lang/String;JLcom/android/internal/os/anr/AnrLatencyTracker;)J
    .registers 5

    if-eqz p4, :cond_8

    .line 626
    :try_start_2
    invoke-virtual {p4, p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    goto :goto_8

    :catchall_6
    move-exception p0

    goto :goto_12

    .line 628
    :cond_8
    :goto_8
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;J)J

    move-result-wide p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_6

    if-eqz p4, :cond_11

    .line 631
    invoke-virtual {p4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    :cond_11
    return-wide p0

    :goto_12
    if-eqz p4, :cond_17

    invoke-virtual {p4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    .line 633
    :cond_17
    throw p0
.end method

.method public static dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)J
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dumping to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget v5, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v5, v5, 0x4e20

    int-to-long v7, v5

    .line 308
    const-string v5, "); deadline exceeded."

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_87

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_87

    .line 309
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 311
    invoke-static {v1, v3, v7, v8, v4}, Lcom/android/server/am/StackTracesDumpHelper;->copyFirstPidTempDump(Ljava/lang/String;Ljava/util/concurrent/Future;JLcom/android/internal/os/anr/AnrLatencyTracker;)Z

    move-result v3

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    sub-long v17, v17, v15

    sub-long v7, v7, v17

    cmp-long v15, v7, v9

    if-gtz v15, :cond_6c

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborting stack trace dump (currently copying primary pid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v11

    :cond_6c
    if-eqz v3, :cond_7b

    .line 321
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v14, v15, :cond_7b

    .line 322
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    :cond_7b
    if-eqz v3, :cond_88

    if-eqz v4, :cond_88

    .line 327
    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpAsCommaSeparatedArrayWithHeader()Ljava/lang/String;

    move-result-object v14

    .line 326
    invoke-static {v1, v14}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    :cond_87
    move v3, v13

    :cond_88
    :goto_88
    if-eqz v0, :cond_103

    if-eqz v4, :cond_8f

    .line 333
    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingFirstPidsStarted()V

    .line 336
    :cond_8f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    :goto_93
    if-ge v3, v14, :cond_fb

    .line 338
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-wide/from16 v16, v9

    if-nez v3, :cond_a9

    .line 340
    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v9, v15, :cond_a9

    const/4 v9, 0x1

    goto :goto_aa

    :cond_a9
    move v9, v13

    .line 341
    :goto_aa
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Collecting stacks for pid "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {v15, v1, v7, v8, v4}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;JLcom/android/internal/os/anr/AnrLatencyTracker;)J

    move-result-wide v19

    sub-long v7, v7, v19

    cmp-long v10, v7, v16

    if-gtz v10, :cond_e0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborting stack trace dump (current firstPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v11

    :cond_e0
    if-eqz v9, :cond_f5

    .line 352
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    if-eqz v4, :cond_f4

    .line 356
    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpAsCommaSeparatedArrayWithHeader()Ljava/lang/String;

    move-result-object v11

    .line 355
    invoke-static {v1, v11}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    move-wide v11, v9

    :cond_f5
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v9, v16

    const/4 v13, 0x0

    goto :goto_93

    :cond_fb
    move-wide/from16 v16, v9

    if-eqz v4, :cond_105

    .line 364
    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingFirstPidsEnded()V

    goto :goto_105

    :cond_103
    move-wide/from16 v16, v9

    .line 369
    :cond_105
    :goto_105
    const-string/jumbo v0, "native pids"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/android/server/am/StackTracesDumpHelper;->collectPids(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dumpStackTraces nativepids="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_195

    if-eqz v4, :cond_129

    .line 375
    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingNativePidsStarted()V

    .line 377
    :cond_129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x0

    :cond_12e
    if-ge v9, v3, :cond_190

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 378
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Collecting stacks for native pid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget v13, Lcom/android/server/am/StackTracesDumpHelper;->NATIVE_DUMP_TIMEOUT_MS:I

    int-to-long v13, v13

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    if-eqz v4, :cond_15c

    .line 382
    invoke-virtual {v4, v10}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    .line 384
    :cond_15c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    .line 385
    div-long v13, v13, v21

    long-to-int v13, v13

    invoke-static {v10, v1, v13}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v13, v13, v19

    if-eqz v4, :cond_173

    .line 389
    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    :cond_173
    sub-long/2addr v7, v13

    cmp-long v13, v7, v16

    if-gtz v13, :cond_12e

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborting stack trace dump (current native pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v11

    :cond_190
    if-eqz v4, :cond_195

    .line 403
    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingNativePidsEnded()V

    .line 408
    :cond_195
    const-string v0, "extra pids"

    invoke-static {v2, v0}, Lcom/android/server/am/StackTracesDumpHelper;->collectPids(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v2, :cond_1b8

    .line 412
    :try_start_19d
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1a3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_19d .. :try_end_1a3} :catch_1a7
    .catch Ljava/lang/InterruptedException; {:try_start_19d .. :try_end_1a3} :catch_1a5

    move-object v3, v0

    goto :goto_1b8

    :catch_1a5
    move-exception v0

    goto :goto_1a9

    :catch_1a7
    move-exception v0

    goto :goto_1af

    .line 416
    :goto_1a9
    const-string v2, "Interrupted while collecting extra pids"

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b8

    .line 414
    :goto_1af
    const-string v2, "Failed to collect extra pids"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    :cond_1b8
    :goto_1b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpStackTraces extraPids="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_220

    if-eqz v4, :cond_1d3

    .line 423
    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingExtraPidsStarted()V

    .line 425
    :cond_1d3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x0

    :cond_1d8
    if-ge v13, v0, :cond_21b

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v13, v13, 0x1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 426
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Collecting stacks for extra pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {v2, v1, v7, v8, v4}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;JLcom/android/internal/os/anr/AnrLatencyTracker;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v9, v7, v16

    if-gtz v9, :cond_1d8

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborting stack trace dump (current extra pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v11

    :cond_21b
    if-eqz v4, :cond_220

    .line 441
    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingExtraPidsEnded()V

    .line 445
    :cond_220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- dumping ended at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v0, "Done dumping"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v11
.end method

.method public static dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;
    .registers 23

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p9

    .line 129
    invoke-static/range {v0 .. v12}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;Lcom/android/internal/os/TimeoutRecord;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;Lcom/android/internal/os/TimeoutRecord;)Ljava/io/File;
    .registers 26

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v8, p11

    .line 200
    const-string v5, "ActivityManager"

    if-eqz v8, :cond_16

    .line 201
    :try_start_e
    invoke-virtual {v8}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesStarted()V

    goto :goto_16

    :catchall_12
    move-exception v0

    move-object p0, v0

    goto/16 :goto_f6

    .line 204
    :cond_16
    :goto_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpStackTraces pids="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-eqz p1, :cond_33

    .line 209
    new-instance v7, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1, p2, v8}, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)V

    goto :goto_34

    :cond_33
    move-object v7, v6

    :goto_34
    if-eqz v7, :cond_3d

    move-object/from16 p1, p9

    .line 213
    invoke-static {v7, p1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    goto :goto_3e

    :cond_3d
    move-object p1, v6

    .line 216
    :goto_3e
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/anr"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_e .. :try_end_45} :catchall_12

    .line 223
    :try_start_45
    invoke-static {v0}, Lcom/android/server/am/StackTracesDumpHelper;->createAnrDumpFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_d5
    .catchall {:try_start_45 .. :try_end_49} :catchall_12

    .line 236
    :try_start_49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_12

    .line 237
    const-string v6, "\n"

    if-eqz v3, :cond_5d

    .line 238
    :try_start_52
    const-string v7, "Subject: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    if-eqz p12, :cond_8f

    .line 241
    invoke-static/range {p12 .. p12}, Lcom/android/server/utils/AnrTimer;->expiredTimer(Lcom/android/internal/os/TimeoutRecord;)Lcom/android/server/utils/AnrTimer$ExpiredTimer;

    move-result-object v3

    const-wide/16 v9, 0x0

    if-eqz v3, :cond_7a

    .line 242
    iget-wide v11, v3, Lcom/android/server/utils/AnrTimer$ExpiredTimer;->mDurationMs:J

    cmp-long v7, v11, v9

    if-lez v7, :cond_7a

    .line 243
    const-string v7, "Timeout: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v3, Lcom/android/server/utils/AnrTimer$ExpiredTimer;->mDurationMs:J

    .line 244
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7a
    if-eqz v3, :cond_8f

    .line 247
    iget-wide v11, v3, Lcom/android/server/utils/AnrTimer$ExpiredTimer;->mStartMs:J

    cmp-long v7, v11, v9

    if-lez v7, :cond_8f

    .line 248
    const-string v7, "TimeoutStart: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Lcom/android/server/utils/AnrTimer$ExpiredTimer;->mStartMs:J

    .line 249
    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8f
    if-eqz p8, :cond_a3

    .line 253
    invoke-virtual/range {p8 .. p8}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a3

    .line 254
    invoke-static/range {p8 .. p8}, Lcom/android/server/am/StackTracesDumpHelper;->stringifyHeaders(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a3
    if-eqz v4, :cond_a8

    .line 257
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_a8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b9

    .line 260
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_b9
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p10

    .line 263
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)J

    move-result-wide p0

    if-eqz v2, :cond_cc

    .line 267
    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 271
    :cond_cc
    invoke-static {v0}, Lcom/android/server/am/StackTracesDumpHelper;->maybePruneOldTraces(Ljava/io/File;)V
    :try_end_cf
    .catchall {:try_start_52 .. :try_end_cf} :catchall_12

    if-eqz p11, :cond_d4

    .line 276
    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesEnded()V

    :cond_d4
    return-object v1

    :catch_d5
    move-exception v0

    move-object p0, v0

    .line 225
    :try_start_d7
    const-string p1, "Exception creating ANR dump file:"

    invoke-static {v5, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_eb

    .line 227
    const-string p1, "----- Exception creating ANR dump file -----\n"

    invoke-virtual {v1, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 229
    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_eb
    if-eqz p11, :cond_f0

    .line 232
    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkippedDumpStackTraces()V
    :try_end_f0
    .catchall {:try_start_d7 .. :try_end_f0} :catchall_12

    :cond_f0
    if-eqz p11, :cond_f5

    .line 276
    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesEnded()V

    :cond_f5
    return-object v6

    :goto_f6
    if-eqz p11, :cond_fb

    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesEnded()V

    .line 278
    :cond_fb
    throw p0
.end method

.method public static dumpStackTracesTempFile(ILcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;
    .registers 8

    .line 458
    const-string v0, "ActivityManager"

    if-eqz p1, :cond_b

    .line 459
    :try_start_4
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileStarted()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception p0

    goto/16 :goto_a3

    .line 464
    :cond_b
    :goto_b
    :try_start_b
    const-string/jumbo v1, "temp_anr_"

    const-string v2, ".txt"

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/anr"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created ANR temporary file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_33} :catch_91
    .catchall {:try_start_b .. :try_end_33} :catchall_8

    .line 475
    :try_start_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collecting stacks for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " into temporary file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_58

    .line 478
    invoke-virtual {p1, p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    .line 480
    :cond_58
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/server/am/StackTracesDumpHelper;->TEMP_DUMP_TIME_LIMIT:I

    int-to-long v4, v3

    invoke-static {p0, v2, v4, v5}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;J)J

    move-result-wide v4

    if-eqz p1, :cond_68

    .line 483
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    :cond_68
    int-to-long v2, v3

    cmp-long v2, v2, v4

    if-gtz v2, :cond_8b

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborted stack trace dump (current primary pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "); deadline exceeded."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8b

    .line 489
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileTimedOut()V
    :try_end_8b
    .catchall {:try_start_33 .. :try_end_8b} :catchall_8

    :cond_8b
    if-eqz p1, :cond_90

    .line 499
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    :cond_90
    return-object v1

    :catch_91
    move-exception p0

    .line 468
    :try_start_92
    const-string v1, "Exception creating temporary ANR dump file:"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_9c

    .line 470
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileCreationFailed()V
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_8

    :cond_9c
    if-eqz p1, :cond_a1

    .line 499
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    :cond_a1
    const/4 p0, 0x0

    return-object p0

    :goto_a3
    if-eqz p1, :cond_a8

    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    .line 501
    :cond_a8
    throw p0
.end method

.method public static getExtraPids(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/util/ArrayList;
    .registers 10

    if-eqz p2, :cond_5

    .line 557
    invoke-virtual {p2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->processCpuTrackerMethodsCalled()V

    .line 559
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    monitor-enter p0

    .line 561
    :try_start_b
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 562
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_62

    const-wide/16 v1, 0xc8

    .line 564
    :try_start_11
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_14

    .line 568
    :catch_14
    monitor-enter p0

    .line 569
    :try_start_15
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v1

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_59

    .line 572
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_59

    .line 573
    invoke-virtual {p0, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v3

    .line 574
    iget v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_3e

    .line 579
    iget v3, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :catchall_3c
    move-exception p1

    goto :goto_60

    .line 581
    :cond_3e
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping next CPU consuming process, not a java proc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 586
    :cond_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_15 .. :try_end_5a} :catchall_3c

    if-eqz p2, :cond_5f

    .line 588
    invoke-virtual {p2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->processCpuTrackerMethodsReturned()V

    :cond_5f
    return-object v0

    .line 586
    :goto_60
    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_3c

    throw p1

    :catchall_62
    move-exception p1

    .line 562
    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p1
.end method

.method public static maybePruneOldTraces(Ljava/io/File;)V
    .registers 10

    .line 601
    const-string v0, "ActivityManager"

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_5f

    .line 604
    :cond_9
    const-string/jumbo v1, "tombstoned.max_anr_count"

    const/16 v2, 0x40

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 607
    :try_start_16
    new-instance v4, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v4}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {p0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    .line 608
    :goto_27
    array-length v5, p0

    if-ge v4, v5, :cond_5f

    if-gt v4, v1, :cond_3e

    .line 609
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/32 v7, 0x5265c00

    cmp-long v5, v5, v7

    if-lez v5, :cond_5c

    goto :goto_3e

    :catch_3c
    move-exception p0

    goto :goto_60

    .line 610
    :cond_3e
    :goto_3e
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 611
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to prune stale trace file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_5c} :catch_3c

    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_5f
    :goto_5f
    return-void

    .line 618
    :goto_60
    const-string/jumbo v1, "tombstone modification times changed while sorting; not pruning"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static stringifyHeaders(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .registers 4

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 713
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 714
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 718
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeUptimeStartHeaderForPid(ILjava/lang/String;)I
    .registers 5

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- dumping pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " at "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 688
    invoke-static {p1, p0}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
