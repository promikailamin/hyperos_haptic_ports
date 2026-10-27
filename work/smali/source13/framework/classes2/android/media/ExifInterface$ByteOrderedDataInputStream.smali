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

    .line 4917
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 4918
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4927
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 4928
    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4930
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4922
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 4931
    iput-object p1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mInputStream:Ljava/io/InputStream;

    .line 4932
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 4933
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    .line 4934
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 4936
    iget-object v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->mark(I)V

    .line 4937
    iput-object p2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 4938
    return-void
.end method

.method public constructor greylist-max-o <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4941
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4942
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

    .line 4969
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public blacklist getLength()I
    .registers 2

    .line 5161
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    return v0
.end method

.method public greylist-max-o peek()I
    .registers 2

    .line 4964
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

    .line 4974
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 4975
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

    .line 4992
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 4993
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

    .line 5032
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5033
    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1a

    .line 5036
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 5037
    .local v0, "ch":I
    if-ltz v0, :cond_14

    .line 5040
    int-to-byte v1, v0

    return v1

    .line 5038
    :cond_14
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 5034
    .end local v0    # "ch":I
    :cond_1a
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

    .line 4998
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 4999
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

    .line 5157
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

    .line 5152
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist test-api readFully([B)V
    .registers 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5021
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5022
    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1e

    .line 5025
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_16

    .line 5028
    return-void

    .line 5026
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t read up to the length of buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5023
    :cond_1e
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readFully([BII)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5010
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5011
    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1a

    .line 5014
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    if-ne v0, p3, :cond_12

    .line 5017
    return-void

    .line 5015
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t read up to the length of buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5012
    :cond_1a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readInt()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5064
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5065
    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_67

    .line 5068
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 5069
    .local v0, "ch1":I
    iget-object v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 5070
    .local v1, "ch2":I
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 5071
    .local v2, "ch3":I
    iget-object v3, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 5072
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_61

    .line 5075
    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_38

    .line 5076
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    return v4

    .line 5077
    :cond_38
    sget-object v5, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_46

    .line 5078
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    return v4

    .line 5080
    :cond_46
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid byte order: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5073
    :cond_61
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 5066
    .end local v0    # "ch1":I
    .end local v1    # "ch2":I
    .end local v2    # "ch3":I
    .end local v3    # "ch4":I
    :cond_67
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

    .line 4986
    const-string v0, "ExifInterface"

    const-string v1, "Currently unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4987
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

    .line 5123
    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    iput v1, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5124
    iget v3, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v1, v3, :cond_be

    .line 5127
    iget-object v1, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 5128
    .local v1, "ch1":I
    iget-object v3, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 5129
    .local v3, "ch2":I
    iget-object v4, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 5130
    .local v4, "ch3":I
    iget-object v5, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 5131
    .local v5, "ch4":I
    iget-object v6, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 5132
    .local v6, "ch5":I
    iget-object v7, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v7

    .line 5133
    .local v7, "ch6":I
    iget-object v8, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v8

    .line 5134
    .local v8, "ch7":I
    iget-object v9, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 5135
    .local v9, "ch8":I
    or-int v10, v1, v3

    or-int/2addr v10, v4

    or-int/2addr v10, v5

    or-int/2addr v10, v6

    or-int/2addr v10, v7

    or-int/2addr v10, v8

    or-int/2addr v10, v9

    if-ltz v10, :cond_b7

    .line 5138
    iget-object v10, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v11, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v12, 0x10

    const/16 v13, 0x18

    const/16 v14, 0x20

    const/16 v15, 0x28

    const/16 v16, 0x30

    const/16 v17, 0x38

    if-ne v10, v11, :cond_78

    .line 5139
    int-to-long v10, v9

    shl-long v10, v10, v17

    move/from16 v18, v3

    .end local v3    # "ch2":I
    .local v18, "ch2":I
    int-to-long v2, v8

    shl-long v2, v2, v16

    add-long/2addr v10, v2

    int-to-long v2, v7

    shl-long/2addr v2, v15

    add-long/2addr v10, v2

    int-to-long v2, v6

    shl-long/2addr v2, v14

    add-long/2addr v10, v2

    int-to-long v2, v5

    shl-long/2addr v2, v13

    add-long/2addr v10, v2

    int-to-long v2, v4

    shl-long/2addr v2, v12

    add-long/2addr v10, v2

    move/from16 v2, v18

    .end local v18    # "ch2":I
    .local v2, "ch2":I
    int-to-long v12, v2

    const/16 v3, 0x8

    shl-long/2addr v12, v3

    add-long/2addr v10, v12

    int-to-long v12, v1

    add-long/2addr v10, v12

    return-wide v10

    .line 5142
    .end local v2    # "ch2":I
    .restart local v3    # "ch2":I
    :cond_78
    move v2, v3

    .end local v3    # "ch2":I
    .restart local v2    # "ch2":I
    sget-object v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v10, v3, :cond_9c

    .line 5143
    int-to-long v10, v1

    shl-long v10, v10, v17

    int-to-long v12, v2

    shl-long v12, v12, v16

    add-long/2addr v10, v12

    int-to-long v12, v4

    shl-long/2addr v12, v15

    add-long/2addr v10, v12

    int-to-long v12, v5

    shl-long/2addr v12, v14

    add-long/2addr v10, v12

    int-to-long v12, v6

    const/16 v3, 0x18

    shl-long/2addr v12, v3

    add-long/2addr v10, v12

    int-to-long v12, v7

    const/16 v3, 0x10

    shl-long/2addr v12, v3

    add-long/2addr v10, v12

    int-to-long v12, v8

    const/16 v3, 0x8

    shl-long/2addr v12, v3

    add-long/2addr v10, v12

    int-to-long v12, v9

    add-long/2addr v10, v12

    return-wide v10

    .line 5147
    :cond_9c
    new-instance v3, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid byte order: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5136
    .end local v2    # "ch2":I
    .restart local v3    # "ch2":I
    :cond_b7
    move v2, v3

    .end local v3    # "ch2":I
    .restart local v2    # "ch2":I
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 5125
    .end local v1    # "ch1":I
    .end local v2    # "ch2":I
    .end local v4    # "ch3":I
    .end local v5    # "ch4":I
    .end local v6    # "ch5":I
    .end local v7    # "ch6":I
    .end local v8    # "ch7":I
    .end local v9    # "ch8":I
    :cond_be
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public whitelist test-api readShort()S
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5045
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5046
    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_4f

    .line 5049
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 5050
    .local v0, "ch1":I
    iget-object v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 5051
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_49

    .line 5054
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_25

    .line 5055
    shl-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    int-to-short v2, v2

    return v2

    .line 5056
    :cond_25
    sget-object v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2e

    .line 5057
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-short v2, v2

    return v2

    .line 5059
    :cond_2e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid byte order: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5052
    :cond_49
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 5047
    .end local v0    # "ch1":I
    .end local v1    # "ch2":I
    :cond_4f
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

    .line 5004
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5005
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

    .line 4980
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 4981
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

    .line 5118
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api readUnsignedShort()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5100
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5101
    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_4d

    .line 5104
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 5105
    .local v0, "ch1":I
    iget-object v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 5106
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_47

    .line 5109
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_24

    .line 5110
    shl-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    return v2

    .line 5111
    :cond_24
    sget-object v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2c

    .line 5112
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    return v2

    .line 5114
    :cond_2c
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid byte order: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5107
    :cond_47
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 5102
    .end local v0    # "ch1":I
    .end local v1    # "ch2":I
    :cond_4d
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public greylist-max-o seek(J)V
    .registers 6
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4949
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-lez v1, :cond_17

    .line 4950
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 4951
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->reset()V

    .line 4953
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->mark(I)V

    goto :goto_19

    .line 4955
    :cond_17
    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 4958
    :goto_19
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    long-to-int v1, p1

    if-ne v0, v1, :cond_22

    .line 4961
    return-void

    .line 4959
    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t seek up to the byteCount"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setByteOrder(Ljava/nio/ByteOrder;)V
    .registers 2
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 4945
    iput-object p1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 4946
    return-void
.end method

.method public whitelist test-api skipBytes(I)I
    .registers 6
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5085
    iget v0, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    iget v1, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5086
    .local v0, "totalBytesToSkip":I
    const/4 v1, 0x0

    .line 5087
    .local v1, "totalSkipped":I
    :goto_a
    if-ge v1, v0, :cond_18

    .line 5088
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    sub-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v2

    .line 5089
    .local v2, "skipped":I
    if-lez v2, :cond_18

    .line 5090
    add-int/2addr v1, v2

    .line 5094
    .end local v2    # "skipped":I
    goto :goto_a

    .line 5095
    :cond_18
    iget v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 5096
    return v1
.end method
