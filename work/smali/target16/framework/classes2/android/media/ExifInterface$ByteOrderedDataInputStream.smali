.class Landroid/media/ExifInterface$ByteOrderedDataInputStream;
.super Ljava/io/InputStream;
.source "ExifInterface.java"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteOrderedDataInputStream"
.end annotation


# static fields
.field private static final greylist-max-o BIG_ENDIAN:Ljava/nio/ByteOrder;

.field private static final greylist-max-o LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# instance fields
.field private greylist-max-o mByteOrder:Ljava/nio/ByteOrder;

.field private greylist-max-o mDataInputStream:Ljava/io/DataInputStream;

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private final greylist-max-o mLength:I

.field private greylist-max-o mPosition:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I
    .registers 1

    iget p0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I
    .registers 1

    iget p0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4915
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 4916
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4925
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 4926
    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4928
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4920
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 4929
    iput-object p1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mInputStream:Ljava/io/InputStream;

    .line 4930
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 4931
    iget-object p1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result p1

    iput p1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    .line 4932
    const/4 p1, 0x0

    iput p1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 4934
    iget-object p1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->mark(I)V

    .line 4935
    iput-object p2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 4936
    return-void
.end method

.method public constructor greylist-max-o <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4939
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4940
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4967
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public blacklist getLength()I
    .registers 2

    .line 5159
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    return v0
.end method

.method public greylist-max-o peek()I
    .registers 2

    .line 4962
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    return v0
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4972
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 4973
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public whitelist test-api readBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4990
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 4991
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5030
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5031
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1c

    .line 5034
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 5035
    if-ltz v0, :cond_16

    .line 5038
    int-to-byte v0, v0

    return v0

    .line 5036
    :cond_16
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 5032
    :cond_1c
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4996
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 4997
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public whitelist test-api readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5155
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5150
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist test-api readFully([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5019
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5020
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_20

    .line 5023
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_18

    .line 5026
    return-void

    .line 5024
    :cond_18
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5021
    :cond_20
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public whitelist test-api readFully([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5008
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5009
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1c

    .line 5012
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    if-ne p1, p3, :cond_14

    .line 5015
    return-void

    .line 5013
    :cond_14
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5010
    :cond_1c
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public whitelist test-api readInt()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5062
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5063
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_6b

    .line 5066
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 5067
    iget-object v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 5068
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 5069
    iget-object v3, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 5070
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_65

    .line 5073
    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_3a

    .line 5074
    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    return v3

    .line 5075
    :cond_3a
    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_4a

    .line 5076
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0

    .line 5078
    :cond_4a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5071
    :cond_65
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 5064
    :cond_6b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readLine()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4984
    const-string v0, "ExifInterface"

    const-string v1, "Currently unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4985
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api readLong()J
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5121
    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    iput v1, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5122
    iget v1, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v3, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v1, v3, :cond_bc

    .line 5125
    iget-object v1, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 5126
    iget-object v3, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 5127
    iget-object v4, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 5128
    iget-object v5, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 5129
    iget-object v6, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 5130
    iget-object v7, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v7

    .line 5131
    iget-object v8, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v8

    .line 5132
    iget-object v9, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 5133
    or-int v10, v1, v3

    or-int/2addr v10, v4

    or-int/2addr v10, v5

    or-int/2addr v10, v6

    or-int/2addr v10, v7

    or-int/2addr v10, v8

    or-int/2addr v10, v9

    if-ltz v10, :cond_b6

    .line 5136
    iget-object v10, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v11, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v14, 0x20

    const/16 v15, 0x28

    const/16 v16, 0x30

    const/16 v17, 0x38

    if-ne v10, v11, :cond_76

    .line 5137
    int-to-long v9, v9

    shl-long v9, v9, v17

    const/16 v11, 0x10

    const/16 v18, 0x18

    int-to-long v12, v8

    shl-long v12, v12, v16

    add-long/2addr v9, v12

    int-to-long v7, v7

    shl-long/2addr v7, v15

    add-long/2addr v9, v7

    int-to-long v6, v6

    shl-long/2addr v6, v14

    add-long/2addr v9, v6

    int-to-long v5, v5

    shl-long v5, v5, v18

    add-long/2addr v9, v5

    int-to-long v4, v4

    shl-long/2addr v4, v11

    add-long/2addr v9, v4

    int-to-long v3, v3

    shl-long v2, v3, v2

    add-long/2addr v9, v2

    int-to-long v0, v1

    add-long/2addr v9, v0

    return-wide v9

    .line 5140
    :cond_76
    const/16 v11, 0x10

    const/16 v18, 0x18

    iget-object v10, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v12, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v10, v12, :cond_9b

    .line 5141
    int-to-long v0, v1

    shl-long v0, v0, v17

    int-to-long v12, v3

    shl-long v12, v12, v16

    add-long/2addr v0, v12

    int-to-long v3, v4

    shl-long/2addr v3, v15

    add-long/2addr v0, v3

    int-to-long v3, v5

    shl-long/2addr v3, v14

    add-long/2addr v0, v3

    int-to-long v3, v6

    shl-long v3, v3, v18

    add-long/2addr v0, v3

    int-to-long v3, v7

    shl-long/2addr v3, v11

    add-long/2addr v0, v3

    int-to-long v3, v8

    shl-long v2, v3, v2

    add-long/2addr v0, v2

    int-to-long v2, v9

    add-long/2addr v0, v2

    return-wide v0

    .line 5145
    :cond_9b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5134
    :cond_b6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 5123
    :cond_bc
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5043
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5044
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_53

    .line 5047
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 5048
    iget-object v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 5049
    or-int v2, v0, v1

    if-ltz v2, :cond_4d

    .line 5052
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_27

    .line 5053
    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    int-to-short v0, v1

    return v0

    .line 5054
    :cond_27
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_32

    .line 5055
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 5057
    :cond_32
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5050
    :cond_4d
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 5045
    :cond_53
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5002
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5003
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4978
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 4979
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public greylist-max-o readUnsignedInt()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5116
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api readUnsignedShort()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5098
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5099
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_51

    .line 5102
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 5103
    iget-object v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 5104
    or-int v2, v0, v1

    if-ltz v2, :cond_4b

    .line 5107
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_26

    .line 5108
    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    return v1

    .line 5109
    :cond_26
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_30

    .line 5110
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0

    .line 5112
    :cond_30
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5105
    :cond_4b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 5100
    :cond_51
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public greylist-max-o seek(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4947
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_17

    .line 4948
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 4949
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->reset()V

    .line 4951
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->mark(I)V

    goto :goto_1b

    .line 4953
    :cond_17
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 4956
    :goto_1b
    long-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result p2

    if-ne p2, p1, :cond_23

    .line 4959
    return-void

    .line 4957
    :cond_23
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t seek up to the byteCount"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o setByteOrder(Ljava/nio/ByteOrder;)V
    .registers 2

    .line 4943
    iput-object p1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 4944
    return-void
.end method

.method public whitelist test-api skipBytes(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5083
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5084
    const/4 v0, 0x0

    .line 5085
    :goto_a
    if-ge v0, p1, :cond_18

    .line 5086
    iget-object v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v1

    .line 5087
    if-lez v1, :cond_18

    .line 5088
    add-int/2addr v0, v1

    .line 5092
    goto :goto_a

    .line 5093
    :cond_18
    iget p1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5094
    return v0
.end method
