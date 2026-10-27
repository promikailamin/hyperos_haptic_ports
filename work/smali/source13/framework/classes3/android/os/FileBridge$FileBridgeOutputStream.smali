.class public Landroid/os/FileBridge$FileBridgeOutputStream;
.super Ljava/io/OutputStream;
.source "FileBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FileBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileBridgeOutputStream"
.end annotation


# instance fields
.field private final greylist-max-o mClient:Ljava/io/FileDescriptor;

.field private final greylist-max-o mClientPfd:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mTemp:[B

.field private final blacklist mTempBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "clientPfd"    # Landroid/os/ParcelFileDescriptor;

    .line 161
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 156
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 158
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_18

    .line 159
    :cond_16
    new-array v0, v0, [B

    :goto_18
    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    .line 162
    iput-object p1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    .line 163
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    .line 164
    return-void
.end method

.method private greylist-max-o writeCommandAndBlock(ILjava/lang/String;)V
    .registers 7
    .param p1, "cmd"    # I
    .param p2, "cmdString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 181
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 184
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    invoke-static {v0, v1, v2, v3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-ne v0, v3, :cond_26

    .line 185
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    if-ne v0, p1, :cond_26

    .line 186
    return-void

    .line 190
    :cond_26
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to execute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " across bridge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x3

    :try_start_1
    const-string v1, "close()"

    invoke-direct {p0, v0, v1}, Landroid/os/FileBridge$FileBridgeOutputStream;->writeCommandAndBlock(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_d

    .line 171
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 172
    nop

    .line 173
    return-void

    .line 171
    :catchall_d
    move-exception v0

    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 172
    throw v0
.end method

.method public greylist-max-o fsync()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x2

    const-string v1, "fsync()"

    invoke-direct {p0, v0, v1}, Landroid/os/FileBridge$FileBridgeOutputStream;->writeCommandAndBlock(ILjava/lang/String;)V

    .line 177
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 2
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    .line 205
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/internal/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 196
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 197
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x4

    invoke-static {v0, v3, p3, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 198
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 199
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 200
    return-void
.end method
