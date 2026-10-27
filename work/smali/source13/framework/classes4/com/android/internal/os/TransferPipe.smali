.class public Lcom/android/internal/os/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field static final blacklist DEFAULT_TIMEOUT:J = 0x1388L

.field static final blacklist TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field blacklist ifOutFdSet:Z

.field blacklist mBufferPrefix:Ljava/lang/String;

.field blacklist mComplete:Z

.field blacklist mEndTime:J

.field blacklist mFailure:Ljava/lang/String;

.field final blacklist mFds:[Landroid/os/ParcelFileDescriptor;

.field blacklist mOutFd:Ljava/io/FileDescriptor;

.field final blacklist mThread:Ljava/lang/Thread;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/TransferPipe;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "bufferPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const-string v0, "TransferPipe"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/TransferPipe;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "bufferPrefix"    # Ljava/lang/String;
    .param p2, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/TransferPipe;->ifOutFdSet:Z

    .line 75
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    .line 76
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    .line 77
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static blacklist dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static varargs blacklist dumpAsync(Landroid/os/IBinder;[Ljava/lang/String;)[B
    .registers 10
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 109
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_6
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {p0, v3, p1}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 112
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 113
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 115
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 116
    .local v3, "buffer":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_60

    .line 117
    .local v4, "combinedBuffer":Ljava/io/ByteArrayOutputStream;
    :try_start_20
    new-instance v5, Ljava/io/FileInputStream;

    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_56

    .line 119
    .local v5, "is":Ljava/io/FileInputStream;
    :goto_2b
    :try_start_2b
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v6
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_4c

    .line 120
    .local v6, "numRead":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_48

    .line 121
    nop

    .line 126
    .end local v6    # "numRead":I
    :try_start_33
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 128
    .end local v5    # "is":Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_56

    .line 129
    :try_start_3a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_60

    .line 131
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 132
    aget-object v1, v0, v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 128
    return-object v5

    .line 124
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "numRead":I
    :cond_48
    :try_start_48
    invoke-virtual {v4, v3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    .line 125
    .end local v6    # "numRead":I
    goto :goto_2b

    .line 117
    :catchall_4c
    move-exception v6

    :try_start_4d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v7

    :try_start_52
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "buffer":[B
    .end local v4    # "combinedBuffer":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "binder":Landroid/os/IBinder;
    .end local p1    # "args":[Ljava/lang/String;
    :goto_55
    throw v6
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    .line 116
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "buffer":[B
    .restart local v4    # "combinedBuffer":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "binder":Landroid/os/IBinder;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_56
    move-exception v5

    :try_start_57
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v6

    :try_start_5c
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local p0    # "binder":Landroid/os/IBinder;
    .end local p1    # "args":[Ljava/lang/String;
    :goto_5f
    throw v5
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_60

    .line 131
    .end local v3    # "buffer":[B
    .end local v4    # "combinedBuffer":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "binder":Landroid/os/IBinder;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_60
    move-exception v3

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 132
    aget-object v1, v0, v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 133
    throw v3
.end method

.method static blacklist go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const-wide/16 v5, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/TransferPipe;->go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 139
    return-void
.end method

.method static blacklist go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .registers 10
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_e

    .line 146
    :try_start_8
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 148
    goto :goto_d

    .line 147
    :catch_c
    move-exception v0

    .line 149
    :goto_d
    return-void

    .line 152
    :cond_e
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 153
    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_13
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, p1, v1, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p2, p5, p6}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_25

    .line 155
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V

    .line 156
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    return-void

    .line 152
    .restart local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_25
    move-exception v1

    :try_start_26
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v1
.end method

.method static blacklist goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    .line 161
    return-void
.end method

.method static blacklist goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .registers 8
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    instance-of v0, p0, Landroid/os/Binder;

    if-eqz v0, :cond_a

    .line 168
    :try_start_4
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 170
    goto :goto_9

    .line 169
    :catch_8
    move-exception v0

    .line 171
    :goto_9
    return-void

    .line 174
    :cond_a
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 175
    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_f
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_21

    .line 177
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V

    .line 178
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    return-void

    .line 174
    .restart local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_21
    move-exception v1

    :try_start_22
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 264
    return-void
.end method

.method blacklist closeFd(I)V
    .registers 4
    .param p1, "num"    # I

    .line 251
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    if-eqz v0, :cond_10

    .line 254
    :try_start_6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    .line 256
    goto :goto_b

    .line 255
    :catch_a
    move-exception v0

    .line 257
    :goto_b
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 259
    :cond_10
    return-void
.end method

.method protected blacklist getNewOutputStream()Ljava/io/OutputStream;
    .registers 3

    .line 274
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method blacklist getReadFd()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist getWriteFd()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist go(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    .line 197
    return-void
.end method

.method public blacklist go(Ljava/io/FileDescriptor;J)V
    .registers 8
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_58
    .catchall {:try_start_0 .. :try_end_1} :catchall_56

    .line 203
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/os/TransferPipe;->ifOutFdSet:Z

    if-nez v0, :cond_7

    .line 204
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    .line 207
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 218
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 222
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v0, :cond_47

    iget-boolean v1, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    if-nez v1, :cond_47

    .line 223
    iget-wide v0, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_53

    sub-long/2addr v0, v2

    .line 224
    .local v0, "waitTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3a

    .line 231
    :try_start_34
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_53

    .line 233
    goto :goto_39

    .line 232
    :catch_38
    move-exception v2

    .line 234
    .end local v0    # "waitTime":J
    :goto_39
    goto :goto_1f

    .line 226
    .restart local v0    # "waitTime":J
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 227
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/os/TransferPipe;
    .end local p1    # "out":Ljava/io/FileDescriptor;
    .end local p2    # "timeout":J
    throw v2

    .line 237
    .end local v0    # "waitTime":J
    .restart local p0    # "this":Lcom/android/internal/os/TransferPipe;
    .restart local p1    # "out":Ljava/io/FileDescriptor;
    .restart local p2    # "timeout":J
    :cond_47
    if-nez v0, :cond_4b

    .line 240
    monitor-exit p0

    .line 246
    goto :goto_72

    .line 238
    :cond_4b
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/os/TransferPipe;
    .end local p1    # "out":Ljava/io/FileDescriptor;
    .end local p2    # "timeout":J
    throw v0

    .line 240
    .restart local p0    # "this":Lcom/android/internal/os/TransferPipe;
    .restart local p1    # "out":Ljava/io/FileDescriptor;
    .restart local p2    # "timeout":J
    :catchall_53
    move-exception v0

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_53

    .end local p0    # "this":Lcom/android/internal/os/TransferPipe;
    .end local p1    # "out":Ljava/io/FileDescriptor;
    .end local p2    # "timeout":J
    :try_start_55
    throw v0
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_56} :catch_58
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 246
    .restart local p0    # "this":Lcom/android/internal/os/TransferPipe;
    .restart local p1    # "out":Ljava/io/FileDescriptor;
    .restart local p2    # "timeout":J
    :catchall_56
    move-exception v0

    goto :goto_77

    .line 242
    :catch_58
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    :try_start_59
    const-string v1, "TransferPipe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kill pipe thread , the reason is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_56

    .line 246
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_72
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 247
    nop

    .line 248
    return-void

    .line 246
    :goto_77
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 247
    throw v0
.end method

.method public blacklist kill()V
    .registers 2

    .line 267
    monitor-enter p0

    .line 268
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 269
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 270
    monitor-exit p0

    .line 271
    return-void

    .line 270
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public whitelist test-api run()V
    .registers 12

    .line 279
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 283
    .local v0, "buffer":[B
    monitor-enter p0

    .line 284
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 285
    .local v1, "readFd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_14

    .line 286
    const-string v2, "TransferPipe"

    const-string v3, "Pipe has been closed..."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    monitor-exit p0

    return-void

    .line 289
    :cond_14
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 290
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getNewOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    move-object v1, v3

    .line 291
    .local v1, "fos":Ljava/io/OutputStream;
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_a4

    .line 294
    const/4 v3, 0x0

    .line 295
    .local v3, "bufferPrefix":[B
    const/4 v4, 0x1

    .line 296
    .local v4, "needPrefix":Z
    iget-object v5, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    if-eqz v5, :cond_2d

    .line 297
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 302
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "size":I
    const/4 v7, 0x1

    if-lez v5, :cond_68

    .line 304
    if-nez v3, :cond_3c

    .line 305
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2d

    .line 307
    :cond_3c
    const/4 v5, 0x0

    .line 308
    .local v5, "start":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3e
    if-ge v8, v6, :cond_60

    .line 309
    aget-byte v9, v0, v8

    const/16 v10, 0xa

    if-eq v9, v10, :cond_5e

    .line 310
    if-le v8, v5, :cond_4d

    .line 311
    sub-int v9, v8, v5

    invoke-virtual {v1, v0, v5, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 313
    :cond_4d
    move v5, v8

    .line 314
    if-eqz v4, :cond_54

    .line 315
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 316
    const/4 v4, 0x0

    .line 319
    :cond_54
    add-int/2addr v8, v7

    .line 320
    if-ge v8, v6, :cond_5b

    aget-byte v9, v0, v8

    if-ne v9, v10, :cond_54

    .line 321
    :cond_5b
    if-ge v8, v6, :cond_5e

    .line 322
    const/4 v4, 0x1

    .line 308
    :cond_5e
    add-int/2addr v8, v7

    goto :goto_3e

    .line 326
    .end local v8    # "i":I
    :cond_60
    if-le v6, v5, :cond_67

    .line 327
    sub-int v7, v6, v5

    invoke-virtual {v1, v0, v5, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 329
    .end local v5    # "start":I
    :cond_67
    goto :goto_2d

    .line 332
    :cond_68
    iget-object v5, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_6d} :catch_79

    .line 345
    nop

    .line 347
    monitor-enter p0

    .line 348
    :try_start_6f
    iput-boolean v7, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 350
    monitor-exit p0

    .line 351
    return-void

    .line 350
    :catchall_76
    move-exception v5

    monitor-exit p0
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_76

    throw v5

    .line 335
    .end local v6    # "size":I
    :catch_79
    move-exception v5

    .line 336
    .local v5, "e":Ljava/io/IOException;
    monitor-enter p0

    .line 338
    :try_start_7b
    const-string v6, "TransferPipe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TransferPipe occured Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 341
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 343
    monitor-exit p0

    return-void

    .line 344
    :catchall_a1
    move-exception v6

    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_7b .. :try_end_a3} :catchall_a1

    throw v6

    .line 291
    .end local v1    # "fos":Ljava/io/OutputStream;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "bufferPrefix":[B
    .end local v4    # "needPrefix":Z
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_a4
    move-exception v1

    :try_start_a5
    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v1
.end method

.method public blacklist setBufferPrefix(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public blacklist startFdRead(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 5
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "name"    # Ljava/lang/String;

    .line 183
    monitor-enter p0

    .line 184
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/TransferPipe;->ifOutFdSet:Z

    .line 186
    if-eqz p2, :cond_d

    .line 187
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 189
    :cond_d
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 190
    const-string v0, "TransferPipe"

    const-string/jumbo v1, "start dumpGfxInfo Transferpipe thread"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    monitor-exit p0

    .line 192
    return-void

    .line 191
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method
