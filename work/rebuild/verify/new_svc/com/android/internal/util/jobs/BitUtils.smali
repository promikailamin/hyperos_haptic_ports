.class public final Lcom/android/internal/util/jobs/BitUtils;
.super Ljava/lang/Object;
.source "BitUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitAt(I)J
    .registers 3

    .line 0
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static bytesToBEInt([B)I
    .registers 3

    const/4 v0, 0x0

    .line 105
    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/BitUtils;->uint8(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    .line 106
    invoke-static {v1}, Lcom/android/internal/util/jobs/BitUtils;->uint8(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    .line 107
    invoke-static {v1}, Lcom/android/internal/util/jobs/BitUtils;->uint8(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    .line 108
    invoke-static {p0}, Lcom/android/internal/util/jobs/BitUtils;->uint8(B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static bytesToLEInt([B)I
    .registers 1

    .line 112
    invoke-static {p0}, Lcom/android/internal/util/jobs/BitUtils;->bytesToBEInt([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    return p0
.end method

.method public static flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/IntFunction<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-eqz p0, :cond_24

    .line 146
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    not-int v3, v2

    and-int/2addr p0, v3

    if-lez v1, :cond_18

    .line 148
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_18
    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 152
    :cond_24
    const-string p0, "["

    const-string p1, "]"

    invoke-static {v0, p0, p1}, Landroid/text/TextUtils;->wrap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static flagsUpTo(I)I
    .registers 2

    if-gtz p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    shr-int/lit8 v0, p0, 0x1

    .line 167
    invoke-static {v0}, Lcom/android/internal/util/jobs/BitUtils;->flagsUpTo(I)I

    move-result v0

    or-int/2addr p0, v0

    return p0
.end method

.method public static flagsWithin(II)I
    .registers 3

    .line 174
    invoke-static {p1}, Lcom/android/internal/util/jobs/BitUtils;->flagsUpTo(I)I

    move-result p1

    invoke-static {p0}, Lcom/android/internal/util/jobs/BitUtils;->flagsUpTo(I)I

    move-result v0

    not-int v0, v0

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static getUint16(Ljava/nio/ByteBuffer;I)I
    .registers 2

    .line 120
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/BitUtils;->uint16(S)I

    move-result p0

    return p0
.end method

.method public static getUint32(Ljava/nio/ByteBuffer;I)J
    .registers 2

    .line 124
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/BitUtils;->uint32(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getUint8(Ljava/nio/ByteBuffer;I)I
    .registers 2

    .line 116
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/BitUtils;->uint8(B)I

    move-result p0

    return p0
.end method

.method public static isBitSet(JI)Z
    .registers 5

    .line 135
    invoke-static {p2}, Lcom/android/internal/util/jobs/BitUtils;->bitAt(I)J

    move-result-wide v0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static maskedEquals(BBB)Z
    .registers 3

    .line 0
    and-int/2addr p0, p2

    and-int/2addr p1, p2

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static maskedEquals(JJJ)Z
    .registers 6

    .line 0
    and-long/2addr p0, p4

    and-long/2addr p2, p4

    cmp-long p0, p0, p2

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static maskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 10

    if-nez p2, :cond_7

    .line 59
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 61
    :cond_7
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 62
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 61
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/jobs/BitUtils;->maskedEquals(JJJ)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 63
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    .line 64
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    .line 63
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/jobs/BitUtils;->maskedEquals(JJJ)Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public static maskedEquals([B[B[B)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_3b

    if-nez p1, :cond_7

    goto :goto_3b

    .line 48
    :cond_7
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    move v2, v0

    :goto_e
    const-string v3, "Inputs must be of same size"

    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p2, :cond_1a

    .line 49
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 50
    :cond_1a
    array-length v2, p0

    array-length v3, p2

    if-ne v2, v3, :cond_20

    move v2, v1

    goto :goto_21

    :cond_20
    move v2, v0

    :goto_21
    const-string v3, "Mask must be of same size as inputs"

    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v2, v0

    .line 51
    :goto_27
    array-length v3, p2

    if-ge v2, v3, :cond_3a

    .line 52
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    aget-byte v5, p2, v2

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/jobs/BitUtils;->maskedEquals(BBB)Z

    move-result v3

    if-nez v3, :cond_37

    return v0

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3a
    return v1

    :cond_3b
    :goto_3b
    if-ne p0, p1, :cond_3e

    return v1

    :cond_3e
    return v0
.end method

.method public static packBits([I)J
    .registers 8

    .line 82
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_10

    aget v4, p0, v3

    const-wide/16 v5, 0x1

    shl-long v4, v5, v4

    or-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_10
    return-wide v1
.end method

.method public static put(Ljava/nio/ByteBuffer;I[B)V
    .registers 4

    .line 128
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 129
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public static toBytes(J)[B
    .registers 3

    const/16 v0, 0x8

    .line 160
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static uint16(BB)I
    .registers 2

    .line 0
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static uint16(S)I
    .registers 2

    .line 0
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static uint32(I)J
    .registers 5

    .line 0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static uint8(B)I
    .registers 1

    .line 0
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static unpackBits(J)[I
    .registers 9

    .line 68
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 69
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-eqz v3, :cond_20

    const-wide/16 v3, 0x1

    and-long v5, p0, v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_1b

    add-int/lit8 v3, v1, 0x1

    .line 73
    aput v2, v0, v1

    move v1, v3

    :cond_1b
    const/4 v3, 0x1

    ushr-long/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_20
    return-object v0
.end method
