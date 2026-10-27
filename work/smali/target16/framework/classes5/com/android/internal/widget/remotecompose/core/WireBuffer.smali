.class public Lcom/android/internal/widget/remotecompose/core/WireBuffer;
.super Ljava/lang/Object;
.source "WireBuffer.java"


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x100000


# instance fields
.field blacklist mBuffer:[B

.field blacklist mIndex:I

.field blacklist mMaxSize:I

.field blacklist mSize:I

.field blacklist mStartingIndex:I

.field blacklist mValidOperations:[Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 28
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    .line 29
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 30
    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mValidOperations:[Z

    .line 38
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    .line 39
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    .line 40
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mValidOperations:[Z

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 41
    return-void
.end method

.method private blacklist resize(I)V
    .registers 4

    .line 49
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    if-lt v0, v1, :cond_1e

    .line 50
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    .line 51
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    .line 53
    :cond_1e
    return-void
.end method


# virtual methods
.method public blacklist available()Z
    .registers 3

    .line 163
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist cloneBytes()[B
    .registers 4

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist endWithSize()V
    .registers 4

    .line 127
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    sub-int/2addr v0, v1

    .line 128
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 129
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 131
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 132
    return-void
.end method

.method public blacklist getBuffer()[B
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    return-object v0
.end method

.method public blacklist getIndex()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return v0
.end method

.method public blacklist getMax_size()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    return v0
.end method

.method public blacklist getSize()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return v0
.end method

.method public blacklist peekInt()I
    .registers 6

    .line 218
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 219
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 220
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 221
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 222
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    .line 223
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    return v0
.end method

.method public blacklist readBoolean()Z
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    .line 186
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 187
    if-ne v0, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return v2
.end method

.method public blacklist readBuffer()[B
    .registers 5

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 282
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 283
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 284
    return-object v1
.end method

.method public blacklist readBuffer(I)[B
    .registers 6

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 296
    if-ltz v0, :cond_19

    if-gt v0, p1, :cond_19

    .line 300
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v2, v0

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 301
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 302
    return-object p1

    .line 297
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt read a buff of invalid size 0 <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist readByte()I
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 197
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 198
    return v0
.end method

.method public blacklist readDouble()D
    .registers 3

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFloat()F
    .registers 2

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist readInt()I
    .registers 7

    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 233
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 234
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 235
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    .line 236
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    return v0
.end method

.method public blacklist readLong()J
    .registers 21

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v1, v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    .line 246
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    .line 247
    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v8, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v7, v7, v8

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    .line 248
    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v10, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v9, v9, v10

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    .line 249
    iget-object v11, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v13, 0x18

    shl-long/2addr v11, v13

    .line 250
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v14, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v13, v13, v14

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/16 v15, 0x10

    shl-long/2addr v13, v15

    .line 251
    iget-object v15, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    move-wide/from16 v16, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, v15, v3

    int-to-long v3, v3

    and-long v3, v3, v16

    const/16 v15, 0x8

    shl-long/2addr v3, v15

    .line 252
    iget-object v15, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    move-wide/from16 v18, v1

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v15, v1

    int-to-long v0, v0

    and-long v0, v0, v16

    const/4 v2, 0x0

    shl-long/2addr v0, v2

    .line 253
    add-long v5, v18, v5

    add-long/2addr v5, v7

    add-long/2addr v5, v9

    add-long/2addr v5, v11

    add-long/2addr v5, v13

    add-long/2addr v5, v3

    add-long/2addr v5, v0

    return-wide v5
.end method

.method public blacklist readOperationType()I
    .registers 2

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    return v0
.end method

.method public blacklist readShort()I
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 208
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    .line 209
    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist readUTF8()Ljava/lang/String;
    .registers 3

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBuffer()[B

    move-result-object v0

    .line 313
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public blacklist readUTF8(I)Ljava/lang/String;
    .registers 3

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBuffer(I)[B

    move-result-object p1

    .line 325
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public blacklist reset(I)V
    .registers 3

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 141
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    .line 142
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 143
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    if-lt p1, v0, :cond_e

    .line 144
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 146
    :cond_e
    return-void
.end method

.method public blacklist setIndex(I)V
    .registers 2

    .line 98
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 99
    return-void
.end method

.method public blacklist setValidOperations(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 475
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 476
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mValidOperations:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 477
    goto :goto_4

    .line 478
    :cond_1a
    return-void
.end method

.method public blacklist setVersion(II)V
    .registers 6

    .line 461
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mValidOperations:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 462
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mValidOperations:[Z

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/Operations;->valid(III)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    :cond_11
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 154
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return v0
.end method

.method public blacklist start(I)V
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mValidOperations:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_e

    .line 110
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 112
    return-void

    .line 108
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not supported for this version"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startWithSize(I)V
    .registers 3

    .line 120
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 122
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 123
    return-void
.end method

.method public blacklist writeBoolean(Z)V
    .registers 6

    .line 338
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 339
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 340
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 341
    return-void
.end method

.method public blacklist writeBuffer([B)V
    .registers 6

    .line 425
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 426
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 427
    const/4 v0, 0x0

    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_1d

    .line 428
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 430
    :cond_1d
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 431
    return-void
.end method

.method public blacklist writeByte(I)V
    .registers 6

    .line 349
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 350
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 351
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 352
    return-void
.end method

.method public blacklist writeDouble(D)V
    .registers 3

    .line 416
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    .line 417
    return-void
.end method

.method public blacklist writeFloat(F)V
    .registers 2

    .line 407
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 408
    return-void
.end method

.method public blacklist writeInt(I)V
    .registers 6

    .line 373
    nop

    .line 374
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 375
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 376
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 377
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 378
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 379
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 380
    return-void
.end method

.method public blacklist writeLong(J)V
    .registers 10

    .line 388
    nop

    .line 389
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 390
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x38

    ushr-long v3, p1, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 391
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x30

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 392
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x28

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 393
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 394
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x18

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 395
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 396
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-long v3, p1, v0

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 397
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    and-long/2addr p1, v5

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 398
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 399
    return-void
.end method

.method public blacklist writeShort(I)V
    .registers 6

    .line 360
    nop

    .line 361
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 362
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 363
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 364
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 365
    return-void
.end method

.method public blacklist writeUTF8(Ljava/lang/String;)V
    .registers 2

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 440
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    .line 441
    return-void
.end method
