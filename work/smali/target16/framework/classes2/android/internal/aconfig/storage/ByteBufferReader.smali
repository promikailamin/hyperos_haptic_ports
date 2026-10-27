.class public Landroid/internal/aconfig/storage/ByteBufferReader;
.super Ljava/lang/Object;
.source "ByteBufferReader.java"


# instance fields
.field private blacklist mByteBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mPosition:I


# direct methods
.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 32
    iget-object p1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    return-void
.end method

.method private blacklist getArray(I[BII)V
    .registers 6

    .line 85
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 86
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 88
    add-int/2addr p4, p3

    .line 89
    nop

    :goto_f
    if-ge p3, p4, :cond_1e

    .line 90
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    aput-byte v0, p2, p3

    .line 89
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    .line 92
    :cond_1e
    return-void
.end method

.method private blacklist nextGetIndex(I)I
    .registers 4

    .line 79
    iget v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    .line 80
    iget v1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    .line 81
    return v0
.end method


# virtual methods
.method public blacklist position()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    return v0
.end method

.method public blacklist position(I)V
    .registers 2

    .line 71
    iput p1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    .line 72
    return-void
.end method

.method public blacklist readBoolean()Z
    .registers 3

    .line 36
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readByte()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public blacklist readByte()I
    .registers 3

    .line 40
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method

.method public blacklist readByte(I)I
    .registers 3

    .line 67
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p1

    return p1
.end method

.method public blacklist readInt()I
    .registers 3

    .line 48
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public blacklist readLong()J
    .registers 3

    .line 52
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readShort()I
    .registers 3

    .line 44
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    return v0
.end method

.method public blacklist readString()Ljava/lang/String;
    .registers 5

    .line 56
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v0

    .line 57
    const/16 v1, 0x400

    if-gt v0, v1, :cond_1a

    .line 61
    new-array v1, v0, [B

    .line 62
    invoke-direct {p0, v0}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v0}, Landroid/internal/aconfig/storage/ByteBufferReader;->getArray(I[BII)V

    .line 63
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 58
    :cond_1a
    new-instance v1, Landroid/internal/aconfig/storage/AconfigStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String length exceeds maximum allowed size (1024 bytes): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
