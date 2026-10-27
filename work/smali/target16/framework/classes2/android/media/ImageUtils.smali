.class Landroid/media/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final blacklist IMAGEUTILS_LOG_TAG:Ljava/lang/String; = "ImageUtils"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .registers 11

    .line 358
    int-to-long v4, p4

    move-object v2, p0

    move v3, p1

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 359
    return-void
.end method

.method private static blacklist getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;
    .registers 4

    .line 301
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 302
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x1006

    if-ne v0, v1, :cond_1c

    .line 303
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 306
    :cond_1c
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_b4

    .line 348
    const-string p1, "ImageUtils"

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 349
    const-string v0, "getEffectivePlaneSizeForImage() usesimage\'s width and height for plane size."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 342
    :sswitch_32
    if-nez p1, :cond_42

    .line 343
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 345
    :cond_42
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 340
    :sswitch_51
    new-instance p0, Landroid/util/Size;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 311
    :sswitch_58
    if-nez p1, :cond_68

    .line 312
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 314
    :cond_68
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    div-int/2addr p0, v1

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 317
    :sswitch_78
    if-nez p1, :cond_88

    .line 318
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 320
    :cond_88
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    div-int/2addr p0, v1

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 338
    :sswitch_97
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 352
    :cond_a5
    :goto_a5
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    nop

    :sswitch_data_b4
    .sparse-switch
        0x1 -> :sswitch_97
        0x2 -> :sswitch_97
        0x3 -> :sswitch_97
        0x4 -> :sswitch_97
        0x10 -> :sswitch_78
        0x11 -> :sswitch_58
        0x14 -> :sswitch_97
        0x20 -> :sswitch_97
        0x22 -> :sswitch_51
        0x23 -> :sswitch_58
        0x25 -> :sswitch_97
        0x26 -> :sswitch_97
        0x2b -> :sswitch_97
        0x36 -> :sswitch_58
        0x3c -> :sswitch_32
        0x100 -> :sswitch_97
        0x1002 -> :sswitch_97
        0x1003 -> :sswitch_97
        0x1005 -> :sswitch_97
        0x20203859 -> :sswitch_97
        0x20363159 -> :sswitch_97
        0x32315659 -> :sswitch_58
        0x48454946 -> :sswitch_97
    .end sparse-switch
.end method

.method public static blacklist getEstimatedNativeAllocBytes(IIII)I
    .registers 7

    .line 241
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 242
    const/16 v0, 0x1006

    if-ne p2, v0, :cond_b

    .line 243
    nop

    .line 246
    :cond_b
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sparse-switch p2, :sswitch_data_44

    .line 290
    const/4 p2, 0x2

    const-string v2, "ImageUtils"

    invoke-static {v2, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 291
    const-string p2, "getEstimatedNativeAllocBytes() uses defaultestimated native allocation size."

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 256
    :sswitch_1f
    nop

    .line 257
    goto :goto_3d

    .line 253
    :sswitch_21
    nop

    .line 254
    const-wide v0, 0x3fd3333333333333L    # 0.3

    goto :goto_3d

    .line 260
    :sswitch_28
    nop

    .line 261
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    goto :goto_3d

    .line 267
    :sswitch_2c
    nop

    .line 268
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    goto :goto_3d

    .line 277
    :sswitch_30
    nop

    .line 278
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_3d

    .line 281
    :sswitch_34
    nop

    .line 282
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    goto :goto_3d

    .line 287
    :sswitch_38
    nop

    .line 288
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    goto :goto_3d

    .line 294
    :cond_3c
    :goto_3c
    nop

    .line 297
    :goto_3d
    mul-int/2addr p0, p1

    int-to-double p0, p0

    mul-double/2addr p0, v0

    int-to-double p2, p3

    mul-double/2addr p0, p2

    double-to-int p0, p0

    return p0

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_38
        0x2 -> :sswitch_38
        0x3 -> :sswitch_34
        0x4 -> :sswitch_30
        0x10 -> :sswitch_30
        0x11 -> :sswitch_2c
        0x14 -> :sswitch_30
        0x20 -> :sswitch_30
        0x22 -> :sswitch_2c
        0x23 -> :sswitch_2c
        0x24 -> :sswitch_30
        0x25 -> :sswitch_28
        0x26 -> :sswitch_2c
        0x2b -> :sswitch_38
        0x36 -> :sswitch_34
        0x3c -> :sswitch_38
        0x100 -> :sswitch_21
        0x101 -> :sswitch_21
        0x1002 -> :sswitch_30
        0x1003 -> :sswitch_28
        0x1005 -> :sswitch_21
        0x20203859 -> :sswitch_1f
        0x20363159 -> :sswitch_30
        0x32315659 -> :sswitch_2c
        0x44363159 -> :sswitch_30
        0x48454946 -> :sswitch_21
        0x69656963 -> :sswitch_21
    .end sparse-switch
.end method

.method public static blacklist getNumPlanesForFormat(I)I
    .registers 3

    .line 49
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 50
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_c

    .line 51
    return v1

    .line 54
    :cond_c
    sparse-switch p0, :sswitch_data_2a

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Invalid format specified %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :sswitch_23
    const/4 p0, 0x0

    return p0

    .line 60
    :sswitch_25
    const/4 p0, 0x3

    return p0

    .line 62
    :sswitch_27
    const/4 p0, 0x2

    return p0

    .line 82
    :sswitch_29
    return v1

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_29
        0x3 -> :sswitch_29
        0x4 -> :sswitch_29
        0x10 -> :sswitch_27
        0x11 -> :sswitch_25
        0x14 -> :sswitch_29
        0x20 -> :sswitch_29
        0x22 -> :sswitch_23
        0x23 -> :sswitch_25
        0x24 -> :sswitch_29
        0x25 -> :sswitch_29
        0x26 -> :sswitch_29
        0x36 -> :sswitch_25
        0x3c -> :sswitch_25
        0x100 -> :sswitch_29
        0x101 -> :sswitch_29
        0x1002 -> :sswitch_29
        0x1003 -> :sswitch_29
        0x1005 -> :sswitch_29
        0x20203859 -> :sswitch_29
        0x20363159 -> :sswitch_29
        0x32315659 -> :sswitch_25
        0x44363159 -> :sswitch_29
        0x48454946 -> :sswitch_29
        0x69656963 -> :sswitch_29
    .end sparse-switch
.end method

.method public static blacklist getNumPlanesForHardwareBufferFormat(I)I
    .registers 3

    .line 96
    sparse-switch p0, :sswitch_data_1c

    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 117
    const-string v1, "Invalid hardwareBuffer format specified %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :sswitch_17
    const/4 p0, 0x3

    return p0

    .line 114
    :sswitch_19
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_19
        0x2 -> :sswitch_19
        0x3 -> :sswitch_19
        0x4 -> :sswitch_19
        0x16 -> :sswitch_19
        0x21 -> :sswitch_19
        0x23 -> :sswitch_17
        0x2b -> :sswitch_19
        0x30 -> :sswitch_19
        0x31 -> :sswitch_19
        0x32 -> :sswitch_19
        0x33 -> :sswitch_19
        0x34 -> :sswitch_19
        0x35 -> :sswitch_19
        0x36 -> :sswitch_17
        0x3c -> :sswitch_17
    .end sparse-switch
.end method

.method public static blacklist imageCopy(Landroid/media/Image;Landroid/media/Image;)V
    .registers 16

    .line 139
    if-eqz p0, :cond_178

    if-eqz p1, :cond_178

    .line 142
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    if-ne v0, v1, :cond_170

    .line 145
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_168

    .line 146
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    if-eq v0, v1, :cond_168

    .line 149
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_160

    .line 153
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_158

    .line 157
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x1003

    if-eq v0, v1, :cond_150

    .line 161
    invoke-virtual {p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/media/ImageWriter;

    if-eqz v0, :cond_148

    .line 165
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 166
    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 172
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    .line 174
    nop

    .line 175
    nop

    .line 176
    const/4 v1, 0x0

    move v2, v1

    :goto_68
    array-length v3, v0

    if-ge v2, v3, :cond_124

    .line 177
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    .line 178
    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    .line 179
    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 180
    aget-object v6, p1, v2

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 181
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v7

    if-eqz v7, :cond_11c

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v7

    if-eqz v7, :cond_11c

    .line 185
    aget-object v7, v0, v2

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    aget-object v8, p1, v2

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    if-ne v7, v8, :cond_ed

    .line 192
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 193
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 194
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 195
    if-ne v3, v4, :cond_ad

    .line 197
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_e3

    .line 201
    :cond_ad
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 202
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 203
    invoke-static {p0, v2}, Landroid/media/ImageUtils;->getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;

    move-result-object v10

    .line 204
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    aget-object v12, v0, v2

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v12

    mul-int/2addr v11, v12

    .line 205
    move v12, v1

    :goto_c5
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_e3

    .line 206
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_db

    .line 210
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    sub-int/2addr v13, v8

    .line 211
    if-le v11, v13, :cond_db

    .line 212
    move v11, v13

    .line 215
    :cond_db
    invoke-static {v5, v8, v6, v9, v11}, Landroid/media/ImageUtils;->directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 216
    add-int/2addr v8, v3

    .line 217
    add-int/2addr v9, v4

    .line 205
    add-int/lit8 v12, v12, 0x1

    goto :goto_c5

    .line 221
    :cond_e3
    :goto_e3
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_68

    .line 186
    :cond_ed
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source plane image pixel stride "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v2

    .line 187
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must be same as destination image pixel stride "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object p1, p1, v2

    .line 189
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_11c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source and destination ByteBuffers must be direct byteBuffer!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_124
    return-void

    .line 168
    :cond_125
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source image size "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is different with destination image size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_148
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Destination image is not from ImageWriter. Only the images from ImageWriter are writable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_150
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Copy of RAW_DEPTH10 format has not been implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_158
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Copy of RAW_DEPTH format has not been implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_160
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Copy of RAW_OPAQUE format has not been implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_168
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PRIVATE format images are not copyable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_170
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Src and dst images should have the same format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_178
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Images should be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
