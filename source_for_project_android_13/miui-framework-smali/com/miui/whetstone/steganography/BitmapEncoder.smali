.class public Lcom/miui/whetstone/steganography/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"


# static fields
.field public static final blacklist HEADER_SIZE:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bytesToLong([B)J
    .registers 4
    .param p0, "bytes"    # [B

    .line 35
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 36
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1
.end method

.method public static blacklist createHeader(J)[B
    .registers 9
    .param p0, "size"    # J

    .line 16
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 17
    .local v0, "header":[B
    const/4 v1, 0x0

    .line 18
    .local v1, "i":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/16 v3, 0x5b

    aput-byte v3, v0, v1

    .line 19
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-byte v3, v0, v2

    .line 20
    invoke-static {p0, p1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->longToBytes(J)[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_21

    aget-byte v5, v2, v4

    .line 21
    .local v5, "b":B
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    aput-byte v5, v0, v1

    .line 20
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    goto :goto_15

    .line 23
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_21
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const/16 v3, 0x5d

    aput-byte v3, v0, v1

    .line 24
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-byte v3, v0, v2

    .line 25
    return-object v0
.end method

.method public static blacklist decode(Landroid/graphics/Bitmap;)[B
    .registers 5
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;

    .line 56
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {p0, v0, v1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->decodeBitmapToByteArray(Landroid/graphics/Bitmap;II)[B

    move-result-object v0

    .line 57
    .local v0, "header":[B
    const/4 v2, 0x2

    const/16 v3, 0xa

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/steganography/BitmapEncoder;->bytesToLong([B)J

    move-result-wide v2

    long-to-int v2, v2

    .line 59
    .local v2, "len":I
    invoke-static {p0, v1, v2}, Lcom/miui/whetstone/steganography/BitmapEncoder;->decodeBitmapToByteArray(Landroid/graphics/Bitmap;II)[B

    move-result-object v1

    return-object v1
.end method

.method private static blacklist decodeBitmapToByteArray(Landroid/graphics/Bitmap;II)[B
    .registers 20
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 142
    move/from16 v0, p1

    move/from16 v1, p2

    new-array v2, v1, [B

    .line 144
    .local v2, "bytes":[B
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 145
    .local v3, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 149
    .local v4, "height":I
    const/4 v5, 0x0

    .line 150
    .local v5, "bitNo":I
    const/4 v6, 0x0

    .line 152
    .local v6, "byteNo":I
    const/4 v7, 0x3

    new-array v8, v7, [I

    .line 155
    .local v8, "bitBuffer":[I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_14
    if-ge v9, v4, :cond_87

    .line 156
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_17
    if-ge v10, v3, :cond_79

    .line 158
    move-object/from16 v11, p0

    invoke-virtual {v11, v10, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    .line 160
    .local v12, "color":I
    const/4 v13, 0x0

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v14

    const/4 v15, 0x2

    rem-int/2addr v14, v15

    aput v14, v8, v13

    .line 161
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v13

    rem-int/2addr v13, v15

    const/4 v14, 0x1

    aput v13, v8, v14

    .line 162
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    rem-int/2addr v13, v15

    aput v13, v8, v15

    .line 164
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_38
    if-ge v13, v7, :cond_6d

    .line 167
    if-lt v6, v0, :cond_57

    .line 169
    sub-int v15, v6, v0

    .line 170
    aget v7, v8, v13

    if-ne v7, v14, :cond_4c

    sub-int v7, v6, v0

    aget-byte v7, v2, v7

    shl-int v16, v14, v5

    or-int v7, v7, v16

    int-to-byte v7, v7

    goto :goto_55

    .line 171
    :cond_4c
    sub-int v7, v6, v0

    aget-byte v7, v2, v7

    shl-int v1, v14, v5

    not-int v1, v1

    and-int/2addr v1, v7

    int-to-byte v7, v1

    :goto_55
    aput-byte v7, v2, v15

    .line 174
    :cond_57
    add-int/lit8 v5, v5, 0x1

    .line 175
    const/16 v1, 0x8

    if-ne v5, v1, :cond_61

    .line 176
    const/4 v1, 0x0

    .line 177
    .end local v5    # "bitNo":I
    .local v1, "bitNo":I
    add-int/lit8 v6, v6, 0x1

    move v5, v1

    .line 179
    .end local v1    # "bitNo":I
    .restart local v5    # "bitNo":I
    :cond_61
    sub-int v1, v6, v0

    array-length v7, v2

    if-lt v1, v7, :cond_67

    goto :goto_6d

    .line 164
    :cond_67
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p2

    const/4 v7, 0x3

    goto :goto_38

    .line 184
    .end local v13    # "i":I
    :cond_6d
    :goto_6d
    sub-int v1, v6, v0

    array-length v7, v2

    if-lt v1, v7, :cond_73

    goto :goto_7b

    .line 156
    :cond_73
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p2

    const/4 v7, 0x3

    goto :goto_17

    .end local v12    # "color":I
    :cond_79
    move-object/from16 v11, p0

    .line 186
    .end local v10    # "x":I
    :goto_7b
    sub-int v1, v6, v0

    array-length v7, v2

    if-lt v1, v7, :cond_81

    goto :goto_89

    .line 155
    :cond_81
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p2

    const/4 v7, 0x3

    goto :goto_14

    :cond_87
    move-object/from16 v11, p0

    .line 189
    .end local v9    # "y":I
    :goto_89
    return-object v2
.end method

.method public static blacklist encode(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bytes"    # [B

    .line 43
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->createHeader(J)[B

    move-result-object v0

    .line 47
    .local v0, "header":[B
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x18

    if-eqz v1, :cond_16

    .line 48
    array-length v1, p1

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x18

    rsub-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 51
    :cond_16
    invoke-static {p0, v0, p1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->encodeByteArrayIntoBitmap(Landroid/graphics/Bitmap;[B[B)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist encodeByteArrayIntoBitmap(Landroid/graphics/Bitmap;[B[B)Landroid/graphics/Bitmap;
    .registers 22
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "header"    # [B
    .param p2, "bytes"    # [B

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 71
    .local v3, "outBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 72
    .local v5, "x":I
    const/4 v6, 0x0

    .line 73
    .local v6, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 74
    .local v7, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 79
    .local v8, "height":I
    const/4 v9, 0x0

    .line 80
    .local v9, "bufferPos":I
    const/4 v10, 0x3

    new-array v10, v10, [I

    fill-array-data v10, :array_ac

    .line 82
    .local v10, "buffer":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1f
    array-length v12, v1

    array-length v13, v2

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_aa

    .line 85
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_25
    const/16 v13, 0x8

    if-ge v12, v13, :cond_a2

    .line 88
    array-length v13, v1

    if-ge v11, v13, :cond_33

    .line 89
    aget-byte v13, v1, v11

    shr-int/2addr v13, v12

    and-int/2addr v13, v4

    aput v13, v10, v9

    goto :goto_3c

    .line 91
    :cond_33
    array-length v13, v1

    sub-int v13, v11, v13

    aget-byte v13, v2, v13

    shr-int/2addr v13, v12

    and-int/2addr v13, v4

    aput v13, v10, v9

    .line 95
    :goto_3c
    const/4 v13, 0x2

    if-ne v9, v13, :cond_99

    .line 97
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    .line 100
    .local v14, "color":I
    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v15

    .line 101
    .local v15, "r":I
    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v16

    .line 102
    .local v16, "g":I
    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    .line 105
    .local v17, "b":I
    rem-int/lit8 v13, v15, 0x2

    const/16 v18, 0x0

    aget v18, v10, v18

    rsub-int/lit8 v0, v18, 0x1

    if-ne v13, v0, :cond_5c

    add-int/lit8 v0, v15, 0x1

    goto :goto_5d

    :cond_5c
    move v0, v15

    .line 106
    .end local v15    # "r":I
    .local v0, "r":I
    :goto_5d
    rem-int/lit8 v13, v16, 0x2

    aget v15, v10, v4

    rsub-int/lit8 v15, v15, 0x1

    if-ne v13, v15, :cond_68

    add-int/lit8 v13, v16, 0x1

    goto :goto_6a

    :cond_68
    move/from16 v13, v16

    .line 107
    .end local v16    # "g":I
    .local v13, "g":I
    :goto_6a
    rem-int/lit8 v15, v17, 0x2

    const/16 v16, 0x2

    aget v16, v10, v16

    rsub-int/lit8 v1, v16, 0x1

    if-ne v15, v1, :cond_77

    add-int/lit8 v1, v17, 0x1

    goto :goto_79

    :cond_77
    move/from16 v1, v17

    .line 110
    .end local v17    # "b":I
    .local v1, "b":I
    :goto_79
    const/16 v15, 0x100

    if-ne v0, v15, :cond_7f

    const/16 v0, 0xfe

    .line 111
    :cond_7f
    if-ne v13, v15, :cond_83

    const/16 v13, 0xfe

    .line 112
    :cond_83
    if-ne v1, v15, :cond_87

    const/16 v1, 0xfe

    .line 115
    :cond_87
    const/16 v15, 0xff

    invoke-static {v15, v0, v13, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    invoke-virtual {v3, v5, v6, v15}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 118
    add-int/lit8 v5, v5, 0x1

    .line 119
    if-ne v5, v7, :cond_97

    .line 120
    const/4 v5, 0x0

    .line 121
    add-int/lit8 v6, v6, 0x1

    .line 123
    :cond_97
    const/4 v9, 0x0

    goto :goto_9b

    .line 125
    .end local v0    # "r":I
    .end local v1    # "b":I
    .end local v13    # "g":I
    .end local v14    # "color":I
    :cond_99
    add-int/lit8 v9, v9, 0x1

    .line 85
    :goto_9b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_25

    .line 82
    .end local v12    # "j":I
    :cond_a2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1f

    .line 130
    .end local v11    # "i":I
    :cond_aa
    return-object v3

    nop

    :array_ac
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static blacklist longToBytes(J)[B
    .registers 4
    .param p0, "x"    # J

    .line 29
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist printBinaryString([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .line 193
    const-string v0, ""

    .line 194
    .local v0, "s":Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_28

    aget-byte v3, p0, v2

    .line 195
    .local v3, "b":B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 197
    :cond_28
    return-object v0
.end method
