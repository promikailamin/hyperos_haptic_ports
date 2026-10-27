.class public abstract Lcom/android/server/backup/utils/RandomAccessFileUtils;
.super Ljava/lang/Object;
.source "RandomAccessFileUtils.java"


# direct methods
.method public static getRandomAccessFile(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .registers 3

    .line 31
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static writeBoolean(Ljava/io/File;Z)V
    .registers 4

    .line 36
    :try_start_0
    invoke-static {p0}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->getRandomAccessFile(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_b

    .line 37
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    .line 38
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    goto :goto_19

    :catchall_d
    move-exception p1

    if-eqz v0, :cond_18

    .line 36
    :try_start_10
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception v0

    :try_start_15
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_18
    throw p1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_b

    .line 39
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupManagerService"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
