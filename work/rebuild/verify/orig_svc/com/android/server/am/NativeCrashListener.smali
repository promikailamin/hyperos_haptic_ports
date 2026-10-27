.class public final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public static readExactly(Ljava/io/FileDescriptor;[BII)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-lez p3, :cond_10

    add-int v1, p2, v0

    .line 187
    invoke-static {p0, p1, v1, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    if-gtz v1, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_10
    return v0
.end method

.method public static unpackInt([BI)I
    .registers 5

    .line 176
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 177
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 178
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    .line 179
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .registers 14

    const/16 v0, 0x1000

    .line 203
    new-array v1, v0, [B

    .line 204
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const-wide/16 v3, 0x2710

    .line 207
    :try_start_b
    invoke-static {v3, v4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v3

    .line 208
    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v4, v5, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 209
    sget v5, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v4, v5, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    const/16 v3, 0x9

    const/4 v4, 0x0

    .line 221
    invoke-static {p1, v1, v4, v3}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    if-eq v5, v3, :cond_2c

    .line 224
    const-string p0, "NativeCrashListener"

    const-string p1, "Unable to read from debuggerd"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 228
    :cond_2c
    invoke-static {v1, v4}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v3

    const/4 v5, 0x4

    .line 229
    invoke-static {v1, v5}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v9

    const/16 v5, 0x8

    .line 230
    aget-byte v5, v1, v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3e

    move v10, v6

    goto :goto_3f

    :cond_3e
    move v10, v4

    :goto_3f
    if-gez v3, :cond_49

    .line 236
    const-string p0, "NativeCrashListener"

    const-string p1, "Bogus pid!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 242
    :cond_49
    iget-object v5, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v5
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4e} :catch_d7

    .line 243
    :try_start_4e
    iget-object v7, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v7, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    .line 244
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_d3

    if-nez v8, :cond_70

    .line 246
    :try_start_59
    const-string p0, "NativeCrashListener"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 251
    :cond_70
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_77

    return-void

    .line 261
    :cond_77
    invoke-static {p1, v1, v4, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    if-lez v3, :cond_8a

    add-int/lit8 v5, v3, -0x1

    .line 268
    aget-byte v7, v1, v5

    if-nez v7, :cond_87

    .line 269
    invoke-virtual {v2, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8c

    .line 273
    :cond_87
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_8a
    if-gtz v3, :cond_77

    :goto_8c
    if-nez v10, :cond_be

    .line 287
    iget-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_94} :catch_d7

    .line 288
    :try_start_94
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_af

    .line 289
    :try_start_9c
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 290
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessErrorStateRecord;->setForceCrashReport(Z)V

    .line 291
    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_9c .. :try_end_a7} :catchall_b2

    :try_start_a7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 292
    monitor-exit p1
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_af

    :try_start_ab
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_d7

    goto :goto_be

    :catchall_af
    move-exception v0

    move-object p0, v0

    goto :goto_b9

    :catchall_b2
    move-exception v0

    move-object p0, v0

    .line 291
    :try_start_b4
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b2

    :try_start_b5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 292
    :goto_b9
    monitor-exit p1
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_af

    :try_start_ba
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 298
    :cond_be
    :goto_be
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-direct {v11, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 299
    new-instance v6, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;IZLjava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_d2} :catch_d7

    return-void

    :catchall_d3
    move-exception v0

    move-object p0, v0

    .line 244
    :try_start_d5
    monitor-exit v5
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d3

    :try_start_d6
    throw p0
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d7} :catch_d7

    :catch_d7
    move-exception v0

    move-object p0, v0

    .line 301
    const-string p1, "NativeCrashListener"

    const-string v0, "Exception dealing with report"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public run()V
    .registers 9

    .line 111
    const-string v0, "NativeCrashListener"

    const/4 v1, 0x1

    new-array v2, v1, [B

    .line 119
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/ndebugsocket"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 126
    :cond_15
    :try_start_15
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    sget v5, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 127
    invoke-static {v4}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v5

    .line 129
    invoke-static {v3, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 130
    invoke-static {v3, v1}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    const/16 v5, 0x1ff

    .line 131
    invoke-static {v4, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_45

    :catch_2d
    :cond_2d
    :goto_2d
    const/4 v4, 0x0

    .line 137
    :try_start_2e
    invoke-static {v3, v4}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_3a
    .catchall {:try_start_2e .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception p0

    goto :goto_4f

    :catch_3a
    move-exception v5

    goto :goto_47

    :cond_3c
    :goto_3c
    if-eqz v4, :cond_2d

    .line 151
    :goto_3e
    :try_start_3e
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_41

    .line 159
    :catch_41
    :try_start_41
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_44
    .catch Landroid/system/ErrnoException; {:try_start_41 .. :try_end_44} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_2d

    :catch_45
    move-exception p0

    goto :goto_58

    .line 145
    :goto_47
    :try_start_47
    const-string v7, "Error handling connection"

    invoke-static {v0, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_38

    if-eqz v4, :cond_2d

    goto :goto_3e

    :goto_4f
    if-eqz v4, :cond_57

    .line 151
    :try_start_51
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_54

    .line 159
    :catch_54
    :try_start_54
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_57
    .catch Landroid/system/ErrnoException; {:try_start_54 .. :try_end_57} :catch_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_45

    .line 166
    :catch_57
    :cond_57
    :try_start_57
    throw p0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_58} :catch_45

    .line 169
    :goto_58
    const-string v1, "Unable to init native debug socket!"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
