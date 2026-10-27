.class public abstract Lco/nstant/in/cbor/encoder/AbstractEncoder;
.super Ljava/lang/Object;
.source "AbstractEncoder.java"


# instance fields
.field public final encoder:Lco/nstant/in/cbor/CborEncoder;

.field public final outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    .line 21
    iput-object p2, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->outputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V
    .registers 12

    .line 37
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/MajorType;->getValue()I

    move-result p1

    shl-int/lit8 p1, p1, 0x5

    const-wide/16 v0, 0x17

    cmp-long v0, p2, v0

    if-gtz v0, :cond_14

    int-to-long v0, p1

    or-long p1, v0, p2

    long-to-int p1, p1

    .line 39
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_14
    const-wide/16 v0, 0xff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_29

    .line 41
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v0

    or-int/2addr p1, v0

    .line 42
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    long-to-int p1, p2

    .line 43
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_29
    const-wide/32 v2, 0xffff

    cmp-long v2, p2, v2

    const/16 v3, 0x8

    if-gtz v2, :cond_49

    .line 45
    sget-object v2, Lco/nstant/in/cbor/model/AdditionalInformation;->TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v2

    or-int/2addr p1, v2

    .line 46
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v2, p2, v3

    long-to-int p1, v2

    .line 47
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-long p1, p2, v0

    long-to-int p1, p1

    .line 48
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_49
    const-wide v4, 0xffffffffL

    cmp-long v2, p2, v4

    const/16 v4, 0x10

    const/16 v5, 0x18

    if-gtz v2, :cond_7c

    .line 50
    sget-object v2, Lco/nstant/in/cbor/model/AdditionalInformation;->FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v2

    or-int/2addr p1, v2

    .line 51
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v5, p2, v5

    and-long/2addr v5, v0

    long-to-int p1, v5

    .line 52
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v4, p2, v4

    and-long/2addr v4, v0

    long-to-int p1, v4

    .line 53
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v2, p2, v3

    and-long/2addr v2, v0

    long-to-int p1, v2

    .line 54
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-long p1, p2, v0

    long-to-int p1, p1

    .line 55
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    .line 57
    :cond_7c
    sget-object v2, Lco/nstant/in/cbor/model/AdditionalInformation;->EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v2

    or-int/2addr p1, v2

    .line 58
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x38

    shr-long v6, p2, p1

    and-long/2addr v6, v0

    long-to-int p1, v6

    .line 59
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x30

    shr-long v6, p2, p1

    and-long/2addr v6, v0

    long-to-int p1, v6

    .line 60
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x28

    shr-long v6, p2, p1

    and-long/2addr v6, v0

    long-to-int p1, v6

    .line 61
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x20

    shr-long v6, p2, p1

    and-long/2addr v6, v0

    long-to-int p1, v6

    .line 62
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v5, p2, v5

    and-long/2addr v5, v0

    long-to-int p1, v5

    .line 63
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v4, p2, v4

    and-long/2addr v4, v0

    long-to-int p1, v4

    .line 64
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v2, p2, v3

    and-long/2addr v2, v0

    long-to-int p1, v2

    .line 65
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-long p1, p2, v0

    long-to-int p1, p1

    .line 66
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void
.end method

.method public encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V
    .registers 12

    .line 71
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 72
    :goto_7
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/MajorType;->getValue()I

    move-result p1

    shl-int/lit8 p1, p1, 0x5

    const-wide/16 v1, 0x18

    .line 73
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_23

    .line 74
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_23
    const-wide/16 v3, 0x100

    .line 75
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ne v1, v2, :cond_41

    .line 76
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v0

    or-int/2addr p1, v0

    .line 77
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 78
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_41
    const-wide/32 v3, 0x10000

    .line 79
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/16 v3, 0x8

    const-wide/16 v4, 0xff

    if-ne v1, v2, :cond_6c

    .line 80
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v0

    or-int/2addr p1, v0

    .line 81
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 82
    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    shr-long v0, p1, v3

    long-to-int v0, v0

    .line 83
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-long/2addr p1, v4

    long-to-int p1, p1

    .line 84
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_6c
    const-wide v6, 0x100000000L

    .line 85
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/16 v6, 0x10

    const/16 v7, 0x18

    if-ne v1, v2, :cond_a8

    .line 86
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v0

    or-int/2addr p1, v0

    .line 87
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 88
    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    shr-long v0, p1, v7

    and-long/2addr v0, v4

    long-to-int v0, v0

    .line 89
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v0, p1, v6

    and-long/2addr v0, v4

    long-to-int v0, v0

    .line 90
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v0, p1, v3

    and-long/2addr v0, v4

    long-to-int v0, v0

    .line 91
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-long/2addr p1, v4

    long-to-int p1, p1

    .line 92
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    .line 93
    :cond_a8
    new-instance v1, Ljava/math/BigInteger;

    const-string v8, "18446744073709551616"

    invoke-direct {v1, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ne v1, v2, :cond_140

    .line 94
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v0

    or-int/2addr p1, v0

    .line 95
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 96
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    const/16 v0, 0x38

    .line 97
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 v0, 0x30

    .line 98
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 v0, 0x28

    .line 99
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 v0, 0x20

    .line 100
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 101
    invoke-virtual {p2, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 102
    invoke-virtual {p2, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 103
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 104
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_140
    if-eqz v0, :cond_14f

    .line 107
    iget-object p1, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    new-instance v0, Lco/nstant/in/cbor/model/Tag;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    goto :goto_15b

    .line 109
    :cond_14f
    iget-object p1, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    new-instance v0, Lco/nstant/in/cbor/model/Tag;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 111
    :goto_15b
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    new-instance p1, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    return-void
.end method

.method public encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V
    .registers 3

    .line 27
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/MajorType;->getValue()I

    move-result p1

    shl-int/lit8 p1, p1, 0x5

    .line 28
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->INDEFINITE:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v0

    or-int/2addr p1, v0

    .line 30
    :try_start_d
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 32
    new-instance p1, Lco/nstant/in/cbor/CborException;

    invoke-direct {p1, p0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public write(I)V
    .registers 2

    .line 117
    :try_start_0
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 119
    new-instance p1, Lco/nstant/in/cbor/CborException;

    invoke-direct {p1, p0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public write([B)V
    .registers 2

    .line 125
    :try_start_0
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 127
    new-instance p1, Lco/nstant/in/cbor/CborException;

    invoke-direct {p1, p0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
