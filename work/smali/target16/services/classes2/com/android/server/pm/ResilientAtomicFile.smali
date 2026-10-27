.class public final Lcom/android/server/pm/ResilientAtomicFile;
.super Ljava/lang/Object;
.source "ResilientAtomicFile.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public mCurrentFile:Ljava/io/File;

.field public mCurrentInStream:Ljava/io/FileInputStream;

.field public final mDebugName:Ljava/lang/String;

.field public final mFile:Ljava/io/File;

.field public final mFileMode:I

.field public mMainInStream:Ljava/io/FileInputStream;

.field public mMainOutStream:Ljava/io/FileOutputStream;

.field public final mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

.field public final mReserveCopy:Ljava/io/File;

.field public mReserveInStream:Ljava/io/FileInputStream;

.field public mReserveOutStream:Ljava/io/FileOutputStream;

.field public final mTemporaryBackup:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V
    .registers 8

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 54
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 55
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 56
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    .line 59
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 60
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 72
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 73
    iput-object p2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 74
    iput-object p3, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 75
    iput p4, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFileMode:I

    .line 76
    iput-object p5, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    .line 77
    iput-object p6, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 264
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 266
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 267
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 268
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    .line 269
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 270
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    return-void
.end method

.method public delete()V
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 254
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 255
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V
    .registers 6

    .line 234
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    if-ne v0, p1, :cond_5f

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 238
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 240
    iget-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    if-eqz p1, :cond_3b

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    .line 241
    invoke-interface {p1, v1, p2}, Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;->logEvent(ILjava/lang/String;)V

    .line 246
    :cond_3b
    iget-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 249
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    return-void

    .line 247
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_5f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid incoming stream."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    if-ne v0, p1, :cond_30

    .line 175
    invoke-virtual {p0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 178
    iget-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 179
    iget-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2f

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to clean up mangled file: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResilientAtomicFile"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void

    .line 171
    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid incoming stream."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final finalizeOutStream(Ljava/io/FileOutputStream;)V
    .registers 3

    .line 64
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 65
    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 66
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iget p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFileMode:I

    const/4 v0, -0x1

    invoke-static {p1, p0, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    return-void
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .registers 3

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;Z)V

    return-void
.end method

.method public finishWrite(Ljava/io/FileOutputStream;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const-string v0, "ResilientAtomicFile"

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    if-ne v1, p1, :cond_e5

    const/4 p1, 0x0

    .line 136
    :try_start_7
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ResilientAtomicFile;->finalizeOutStream(Ljava/io/FileOutputStream;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d9

    if-eqz v1, :cond_11

    .line 138
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 140
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 142
    :try_start_16
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_18} :catch_94

    .line 143
    :try_start_18
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_8c

    .line 144
    :try_start_1a
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 145
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    .line 148
    iget-object v3, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_2e

    .line 149
    :try_start_20
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 150
    invoke-static {v1, v3}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 151
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ResilientAtomicFile;->finalizeOutStream(Ljava/io/FileOutputStream;)V
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_96

    if-eqz v3, :cond_31

    .line 152
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_31

    :catchall_2e
    move-exception p1

    goto/16 :goto_a2

    :cond_31
    :goto_31
    if-eqz p2, :cond_86

    .line 156
    :try_start_33
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3b} :catch_57
    .catchall {:try_start_33 .. :try_end_3b} :catchall_2e

    .line 157
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_4f

    .line 158
    :try_start_43
    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Landroid/os/ParcelFileDescriptor;)V

    .line 159
    invoke-static {p2}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Landroid/os/ParcelFileDescriptor;)V
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_59

    if-eqz p2, :cond_51

    .line 160
    :try_start_4b
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_51

    :catchall_4f
    move-exception p2

    goto :goto_65

    :cond_51
    :goto_51
    if-eqz p1, :cond_86

    :try_start_53
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57
    .catchall {:try_start_53 .. :try_end_56} :catchall_2e

    goto :goto_86

    :catch_57
    move-exception p1

    goto :goto_70

    :catchall_59
    move-exception v3

    if-eqz p2, :cond_64

    .line 156
    :try_start_5c
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception p2

    :try_start_61
    invoke-virtual {v3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    throw v3
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_4f

    :goto_65
    if-eqz p1, :cond_6f

    :try_start_67
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception p1

    :try_start_6c
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6f
    :goto_6f
    throw p2
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_57
    .catchall {:try_start_6c .. :try_end_70} :catchall_2e

    .line 161
    :goto_70
    :try_start_70
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to verity-protect "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_70 .. :try_end_86} :catchall_2e

    :cond_86
    :goto_86
    if-eqz v2, :cond_8e

    .line 164
    :try_start_88
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_8e

    :catchall_8c
    move-exception p1

    goto :goto_ad

    :cond_8e
    :goto_8e
    if-eqz v1, :cond_d8

    :try_start_90
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_d8

    :catch_94
    move-exception p1

    goto :goto_b8

    :catchall_96
    move-exception p1

    if-eqz v3, :cond_a1

    .line 148
    :try_start_99
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9d

    goto :goto_a1

    :catchall_9d
    move-exception p2

    :try_start_9e
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a1
    :goto_a1
    throw p1
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_2e

    :goto_a2
    if-eqz v2, :cond_ac

    .line 142
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    goto :goto_ac

    :catchall_a8
    move-exception p2

    :try_start_a9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ac
    :goto_ac
    throw p1
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_8c

    :goto_ad
    if-eqz v1, :cond_b7

    :try_start_af
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_b7

    :catchall_b3
    move-exception p2

    :try_start_b4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b7
    :goto_b7
    throw p1
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b8} :catch_94

    .line 165
    :goto_b8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to write reserve copy "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d8
    :goto_d8
    return-void

    :catchall_d9
    move-exception p0

    if-eqz v1, :cond_e4

    .line 135
    :try_start_dc
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_e0

    goto :goto_e4

    :catchall_e0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e4
    :goto_e4
    throw p0

    .line 131
    :cond_e5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid incoming stream."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBaseFile()Ljava/io/File;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    return-object p0
.end method

.method public openRead()Ljava/io/FileInputStream;
    .registers 6

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, " file"

    const/4 v2, 0x4

    if-eqz v0, :cond_69

    .line 188
    :try_start_b
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 189
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 190
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    if-eqz v0, :cond_35

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to read from backup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;->logEvent(ILjava/lang/String;)V

    .line 194
    :cond_35
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 198
    const-string v0, "ResilientAtomicFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 202
    :cond_64
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_69} :catch_69

    .line 208
    :catch_69
    :cond_69
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_6e

    return-object v0

    .line 212
    :cond_6e
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 214
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    goto :goto_b6

    .line 215
    :cond_84
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 217
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 218
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    if-eqz v0, :cond_b6

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to read from reserve copy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;->logEvent(ILjava/lang/String;)V

    .line 224
    :cond_b6
    :goto_b6
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    if-nez v0, :cond_d7

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    if-eqz v0, :cond_d7

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;->logEvent(ILjava/lang/String;)V

    .line 230
    :cond_d7
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    return-object p0
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_9e

    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 96
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 97
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_6d

    .line 98
    :cond_2d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to backup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " file, current changes will be lost at reboot"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_4b
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preserving older "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResilientAtomicFile"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 112
    :try_start_72
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 113
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 114
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 115
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_96} :catch_99

    .line 121
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    return-object p0

    :catch_99
    move-exception v0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 118
    throw v0

    .line 86
    :cond_9e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Duplicate startWrite call?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
