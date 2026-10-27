.class public Landroid/os/FileBridge;
.super Ljava/lang/Thread;
.source "FileBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileBridge$FileBridgeOutputStream;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o CMD_CLOSE:I = 0x3

.field private static final greylist-max-o CMD_FSYNC:I = 0x2

.field private static final greylist-max-o CMD_WRITE:I = 0x1

.field private static final blacklist DEFAULT_READ_BUFFER_SIZE:I = 0x2000

.field private static final greylist-max-o MSG_LENGTH:I = 0x8

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FileBridge"


# instance fields
.field private blacklist mClient:Landroid/os/ParcelFileDescriptor;

.field private volatile greylist-max-o mClosed:Z

.field private blacklist mReadBufferSize:I

.field private blacklist mServer:Landroid/os/ParcelFileDescriptor;

.field private blacklist mTarget:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    const/16 v0, 0x2000

    iput v0, p0, Landroid/os/FileBridge;->mReadBufferSize:I

    .line 74
    :try_start_7
    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->createSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 75
    .local v0, "fds":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    .line 76
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/os/FileBridge;->mClient:Landroid/os/ParcelFileDescriptor;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_19

    .line 79
    .end local v0    # "fds":[Landroid/os/ParcelFileDescriptor;
    nop

    .line 80
    return-void

    .line 77
    :catch_19
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create bridge"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public greylist-max-o forceClose()V
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 88
    iget-object v0, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    .line 90
    return-void
.end method

.method public blacklist getClientSocket()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public greylist-max-o isClosed()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return v0
.end method

.method public whitelist test-api run()V
    .registers 9

    .line 111
    iget v0, p0, Landroid/os/FileBridge;->mReadBufferSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    .local v0, "tempBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    goto :goto_15

    :cond_11
    iget v1, p0, Landroid/os/FileBridge;->mReadBufferSize:I

    new-array v1, v1, [B

    .line 114
    .local v1, "temp":[B
    :goto_15
    :try_start_15
    iget-object v2, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    if-ne v2, v3, :cond_a8

    .line 116
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v4, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    .line 117
    .local v2, "cmd":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_73

    .line 119
    const/4 v3, 0x4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v3, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v3

    .line 120
    .local v3, "len":I
    :goto_34
    if-lez v3, :cond_72

    .line 121
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    array-length v6, v1

    .line 122
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 121
    invoke-static {v5, v1, v4, v6}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    .line 123
    .local v5, "n":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_53

    .line 127
    iget-object v6, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6, v1, v4, v5}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 128
    sub-int/2addr v3, v5

    .line 129
    .end local v5    # "n":I
    goto :goto_34

    .line 124
    .restart local v5    # "n":I
    :cond_53
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected EOF; still expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tempBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "temp":[B
    .end local p0    # "this":Landroid/os/FileBridge;
    throw v4

    .line 131
    .end local v3    # "len":I
    .end local v5    # "n":I
    .restart local v0    # "tempBuffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "temp":[B
    .restart local p0    # "this":Landroid/os/FileBridge;
    :cond_72
    goto :goto_a6

    :cond_73
    const/4 v6, 0x2

    if-ne v2, v6, :cond_89

    .line 133
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 134
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v1, v4, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    goto :goto_a6

    .line 136
    :cond_89
    const/4 v6, 0x3

    if-ne v2, v6, :cond_a6

    .line 138
    iget-object v6, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 139
    iget-object v6, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 140
    iput-boolean v5, p0, Landroid/os/FileBridge;->mClosed:Z

    .line 141
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v1, v4, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_a5
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_a5} :catch_af
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_a5} :catch_af
    .catchall {:try_start_15 .. :try_end_a5} :catchall_ad

    .line 142
    goto :goto_a8

    .line 144
    .end local v2    # "cmd":I
    :cond_a6
    :goto_a6
    goto/16 :goto_15

    .line 149
    :cond_a8
    :goto_a8
    nop

    :goto_a9
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    .line 150
    goto :goto_b9

    .line 149
    :catchall_ad
    move-exception v2

    goto :goto_ba

    .line 146
    :catch_af
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    :try_start_b0
    const-string v3, "FileBridge"

    const-string v4, "Failed during bridge"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_ad

    .line 149
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_a9

    .line 151
    :goto_b9
    return-void

    .line 149
    :goto_ba
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    .line 150
    throw v2
.end method

.method public blacklist setReadBufferSize(I)V
    .registers 3
    .param p1, "size"    # I

    .line 104
    const/16 v0, 0x2000

    if-le p1, v0, :cond_6

    .line 105
    iput p1, p0, Landroid/os/FileBridge;->mReadBufferSize:I

    .line 107
    :cond_6
    return-void
.end method

.method public blacklist setTargetFile(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "target"    # Landroid/os/ParcelFileDescriptor;

    .line 93
    iput-object p1, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    .line 94
    return-void
.end method
