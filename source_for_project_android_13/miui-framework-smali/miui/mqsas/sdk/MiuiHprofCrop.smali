.class public Lmiui/mqsas/sdk/MiuiHprofCrop;
.super Ljava/lang/Object;
.source "MiuiHprofCrop.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11
    const-string v0, "crop"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cropHprofData(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p0}, Lmiui/mqsas/sdk/MiuiHprofCrop;->isHprofValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 20
    invoke-static {p0, p1, p2}, Lmiui/mqsas/sdk/MiuiHprofCrop;->nCropHprof(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 24
    return-void

    .line 22
    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad hprof file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized blacklist dumpHprofData(Ljava/lang/String;Z)V
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lmiui/mqsas/sdk/MiuiHprofCrop;

    monitor-enter v0

    .line 14
    :try_start_3
    invoke-static {p0, p1}, Lmiui/mqsas/sdk/MiuiHprofCrop;->nOpenProxy(Ljava/lang/String;Z)V

    .line 15
    invoke-static {p0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lmiui/mqsas/sdk/MiuiHprofCrop;->nCloseProxy()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 17
    monitor-exit v0

    return-void

    .line 13
    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "isGzip":Z
    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static blacklist isHprofValid(Ljava/lang/String;)Z
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "file":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 29
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x9

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 30
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_18} :catch_33
    .catchall {:try_start_2 .. :try_end_18} :catchall_27

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1d

    const/4 v1, 0x1

    .line 34
    :cond_1d
    nop

    .line 36
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    .line 39
    goto :goto_26

    .line 37
    :catchall_22
    move-exception v2

    .line 38
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_26
    return v1

    .line 34
    :catchall_27
    move-exception v1

    if-eqz v0, :cond_32

    .line 36
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    .line 39
    goto :goto_32

    .line 37
    :catchall_2e
    move-exception v2

    .line 38
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_32
    :goto_32
    throw v1

    .line 31
    :catch_33
    move-exception v2

    .line 32
    .local v2, "e":Ljava/io/IOException;
    nop

    .line 34
    if-eqz v0, :cond_3f

    .line 36
    :try_start_37
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    .line 39
    goto :goto_3f

    .line 37
    :catchall_3b
    move-exception v3

    .line 38
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_3f
    :goto_3f
    return v1
.end method

.method static native blacklist nCloseProxy()V
.end method

.method static native blacklist nCropHprof(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method static native blacklist nOpenProxy(Ljava/lang/String;Z)V
.end method
