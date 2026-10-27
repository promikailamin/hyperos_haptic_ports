.class public Lcom/xiaomi/camera/imagecodec/MiImage;
.super Ljava/lang/Object;
.source "MiImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCropRect:Landroid/graphics/Rect;

.field private blacklist mFormat:I

.field private blacklist mHeight:I

.field private blacklist mPlanes:[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;

.field private blacklist mTimeStamp:J

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/xiaomi/camera/imagecodec/MiImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/MiImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/Image;)V
    .registers 11
    .param p1, "image"    # Landroid/media/Image;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mWidth:I

    .line 29
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mHeight:I

    .line 30
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mFormat:I

    .line 35
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mFormat:I

    .line 36
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mWidth:I

    .line 37
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mHeight:I

    .line 38
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mCropRect:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mTimeStamp:J

    .line 40
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 41
    .local v0, "srcPlanes":[Landroid/media/Image$Plane;
    array-length v1, v0

    .line 42
    .local v1, "planeLen":I
    new-array v2, v1, [Lcom/xiaomi/camera/imagecodec/MiImage$Plane;

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mPlanes:[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;

    .line 44
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    if-ge v2, v1, :cond_63

    .line 45
    invoke-direct {p0, v2}, Lcom/xiaomi/camera/imagecodec/MiImage;->getEffectivePlaneSizeForImage(I)Landroid/util/Size;

    move-result-object v3

    .line 46
    .local v3, "effectivePlaneSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    mul-int/2addr v4, v5

    .line 47
    .local v4, "rowWidth":I
    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 48
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mPlanes:[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;

    new-instance v7, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;

    aget-object v8, v0, v2

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    invoke-direct {v7, p0, v4, v8, v5}, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;-><init>(Lcom/xiaomi/camera/imagecodec/MiImage;IILjava/nio/ByteBuffer;)V

    aput-object v7, v6, v2

    .line 44
    .end local v3    # "effectivePlaneSize":Landroid/util/Size;
    .end local v4    # "rowWidth":I
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 51
    .end local v2    # "i":I
    :cond_63
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/MiImage;->fromImage(Landroid/media/Image;)V

    .line 52
    return-void
.end method

.method private blacklist fromImage(Landroid/media/Image;)V
    .registers 26
    .param p1, "src"    # Landroid/media/Image;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    .local v0, "start":J
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    .line 57
    .local v2, "srcPlanes":[Landroid/media/Image$Plane;
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getPlanes()[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;

    move-result-object v3

    .line 58
    .local v3, "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    const/4 v4, 0x0

    .line 59
    .local v4, "srcBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 60
    .local v5, "dstBuffer":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_f
    array-length v7, v3

    if-ge v6, v7, :cond_140

    .line 61
    aget-object v7, v2, v6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    .line 62
    .local v7, "srcRowStride":I
    aget-object v8, v3, v6

    invoke-virtual {v8}, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->getRowStride()I

    move-result v8

    .line 63
    .local v8, "dstRowStride":I
    aget-object v9, v2, v6

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 64
    aget-object v9, v3, v6

    invoke-virtual {v9}, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 65
    aget-object v9, v2, v6

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    aget-object v10, v3, v6

    invoke-virtual {v10}, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->getPixelStride()I

    move-result v10

    if-ne v9, v10, :cond_10d

    .line 72
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 73
    .local v9, "srcPos":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 74
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 75
    if-ne v7, v8, :cond_4d

    .line 78
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-wide/from16 v16, v0

    move-object/from16 v22, v3

    goto/16 :goto_ff

    .line 82
    :cond_4d
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 83
    .local v10, "srcOffset":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 84
    .local v11, "dstOffset":I
    move-object/from16 v12, p0

    invoke-direct {v12, v6}, Lcom/xiaomi/camera/imagecodec/MiImage;->getEffectivePlaneSizeForImage(I)Landroid/util/Size;

    move-result-object v13

    .line 85
    .local v13, "effectivePlaneSize":Landroid/util/Size;
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v14

    aget-object v15, v2, v6

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    mul-int/2addr v14, v15

    .line 86
    .local v14, "srcRowWidth":I
    new-array v15, v14, [B

    .line 87
    .local v15, "buf":[B
    const/16 v16, 0x0

    move/from16 v12, v16

    .local v12, "row":I
    :goto_6c
    move-wide/from16 v16, v0

    .end local v0    # "start":J
    .local v16, "start":J
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ge v12, v0, :cond_fb

    .line 88
    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 89
    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v12, v0, :cond_e4

    .line 98
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 100
    .local v0, "remainingBytes":I
    const/4 v1, 0x2

    if-le v14, v0, :cond_b2

    .line 101
    move v14, v0

    .line 102
    move-object/from16 v20, v13

    .end local v13    # "effectivePlaneSize":Landroid/util/Size;
    .local v20, "effectivePlaneSize":Landroid/util/Size;
    sget-object v13, Lcom/xiaomi/camera/imagecodec/MiImage;->TAG:Ljava/lang/String;

    move/from16 v21, v14

    .end local v14    # "srcRowWidth":I
    .local v21, "srcRowWidth":I
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v22, v3

    .end local v3    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .local v22, "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    new-array v3, v1, [Ljava/lang/Object;

    .line 103
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v19, 0x0

    aput-object v23, v3, v19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v18, 0x1

    aput-object v23, v3, v18

    .line 102
    const-string v1, "srcPlane[%d].remain=%d"

    invoke-static {v14, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v14, v21

    goto :goto_b6

    .line 100
    .end local v20    # "effectivePlaneSize":Landroid/util/Size;
    .end local v21    # "srcRowWidth":I
    .end local v22    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .restart local v3    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .restart local v13    # "effectivePlaneSize":Landroid/util/Size;
    .restart local v14    # "srcRowWidth":I
    :cond_b2
    move-object/from16 v22, v3

    move-object/from16 v20, v13

    .line 105
    .end local v3    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .end local v13    # "effectivePlaneSize":Landroid/util/Size;
    .restart local v20    # "effectivePlaneSize":Landroid/util/Size;
    .restart local v22    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    :goto_b6
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 106
    if-le v14, v0, :cond_e1

    .line 107
    move v1, v0

    .line 108
    .end local v14    # "srcRowWidth":I
    .local v1, "srcRowWidth":I
    sget-object v3, Lcom/xiaomi/camera/imagecodec/MiImage;->TAG:Ljava/lang/String;

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v19, 0x0

    aput-object v21, v14, v19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v18, 0x1

    aput-object v21, v14, v18

    .line 108
    move/from16 v18, v0

    .end local v0    # "remainingBytes":I
    .local v18, "remainingBytes":I
    const-string v0, "dstPlane[%d].remain=%d"

    invoke-static {v13, v0, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v1

    goto :goto_e8

    .line 106
    .end local v1    # "srcRowWidth":I
    .end local v18    # "remainingBytes":I
    .restart local v0    # "remainingBytes":I
    .restart local v14    # "srcRowWidth":I
    :cond_e1
    move/from16 v18, v0

    .end local v0    # "remainingBytes":I
    .restart local v18    # "remainingBytes":I
    goto :goto_e8

    .line 94
    .end local v18    # "remainingBytes":I
    .end local v20    # "effectivePlaneSize":Landroid/util/Size;
    .end local v22    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .restart local v3    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .restart local v13    # "effectivePlaneSize":Landroid/util/Size;
    :cond_e4
    move-object/from16 v22, v3

    move-object/from16 v20, v13

    .line 112
    .end local v3    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .end local v13    # "effectivePlaneSize":Landroid/util/Size;
    .restart local v20    # "effectivePlaneSize":Landroid/util/Size;
    .restart local v22    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    :goto_e8
    const/4 v0, 0x0

    invoke-virtual {v4, v15, v0, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {v5, v15, v0, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 114
    add-int/2addr v10, v7

    .line 115
    add-int/2addr v11, v8

    .line 87
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v0, v16

    move-object/from16 v13, v20

    move-object/from16 v3, v22

    goto/16 :goto_6c

    .end local v20    # "effectivePlaneSize":Landroid/util/Size;
    .end local v22    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .restart local v3    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .restart local v13    # "effectivePlaneSize":Landroid/util/Size;
    :cond_fb
    move-object/from16 v22, v3

    move-object/from16 v20, v13

    .line 119
    .end local v3    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .end local v10    # "srcOffset":I
    .end local v11    # "dstOffset":I
    .end local v12    # "row":I
    .end local v13    # "effectivePlaneSize":Landroid/util/Size;
    .end local v14    # "srcRowWidth":I
    .end local v15    # "buf":[B
    .restart local v22    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    :goto_ff
    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 60
    .end local v7    # "srcRowStride":I
    .end local v8    # "dstRowStride":I
    .end local v9    # "srcPos":I
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v0, v16

    move-object/from16 v3, v22

    goto/16 :goto_f

    .line 66
    .end local v16    # "start":J
    .end local v22    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .local v0, "start":J
    .restart local v3    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .restart local v7    # "srcRowStride":I
    .restart local v8    # "dstRowStride":I
    :cond_10d
    move-wide/from16 v16, v0

    move-object/from16 v22, v3

    .end local v0    # "start":J
    .end local v3    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .restart local v16    # "start":J
    .restart local v22    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "source plane image pixel stride "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v6

    .line 67
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " must be same as destination image pixel stride "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v22, v6

    .line 69
    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->getPixelStride()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    .end local v7    # "srcRowStride":I
    .end local v8    # "dstRowStride":I
    .end local v16    # "start":J
    .end local v22    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .restart local v0    # "start":J
    .restart local v3    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    :cond_140
    move-wide/from16 v16, v0

    move-object/from16 v22, v3

    .line 122
    .end local v0    # "start":J
    .end local v3    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .end local v6    # "i":I
    .restart local v16    # "start":J
    .restart local v22    # "dstPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    sget-object v0, Lcom/xiaomi/camera/imagecodec/MiImage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromImage: cost="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method private blacklist getEffectivePlaneSizeForImage(I)Landroid/util/Size;
    .registers 6
    .param p1, "planeIdx"    # I

    .line 239
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getFormat()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_78

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 268
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Invalid image format %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :sswitch_21
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 243
    :sswitch_27
    if-nez p1, :cond_37

    .line 244
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 246
    :cond_37
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 249
    :sswitch_49
    if-nez p1, :cond_59

    .line 250
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 252
    :cond_59
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 263
    :sswitch_69
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    nop

    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_69
        0x2 -> :sswitch_69
        0x3 -> :sswitch_69
        0x4 -> :sswitch_69
        0x10 -> :sswitch_49
        0x11 -> :sswitch_27
        0x14 -> :sswitch_69
        0x20 -> :sswitch_69
        0x22 -> :sswitch_21
        0x23 -> :sswitch_27
        0x25 -> :sswitch_69
        0x26 -> :sswitch_69
        0x100 -> :sswitch_69
        0x32315659 -> :sswitch_27
    .end sparse-switch
.end method


# virtual methods
.method public blacklist close()V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mPlanes:[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;

    if-eqz v0, :cond_19

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mPlanes:[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;

    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 144
    aget-object v1, v1, v0

    if-eqz v1, :cond_16

    .line 145
    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->-$$Nest$mclearBuffer(Lcom/xiaomi/camera/imagecodec/MiImage$Plane;)V

    .line 146
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mPlanes:[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 143
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 150
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public blacklist getFormat()I
    .registers 2

    .line 126
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mFormat:I

    return v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mHeight:I

    return v0
.end method

.method public blacklist getPlanes()[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mPlanes:[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;

    return-object v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage;->mWidth:I

    return v0
.end method

.method public blacklist toImage(Landroid/media/Image;)V
    .registers 28
    .param p1, "dst"    # Landroid/media/Image;

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getFormat()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    if-ne v0, v1, :cond_1d7

    .line 156
    new-instance v0, Landroid/util/Size;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 157
    .local v0, "srcSize":Landroid/util/Size;
    new-instance v1, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 158
    .local v1, "dstSize":Landroid/util/Size;
    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 164
    .local v2, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/MiImage;->getPlanes()[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;

    move-result-object v4

    .line 165
    .local v4, "srcPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    .line 166
    .local v5, "dstPlanes":[Landroid/media/Image$Plane;
    const/4 v6, 0x0

    .line 167
    .local v6, "srcBuffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .line 173
    .local v7, "dstBuffer":Ljava/nio/ByteBuffer;
    array-length v8, v4

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .local v8, "i":I
    :goto_3b
    if-ltz v8, :cond_187

    .line 174
    aget-object v10, v4, v8

    invoke-virtual {v10}, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->getRowStride()I

    move-result v10

    .line 175
    .local v10, "srcRowStride":I
    aget-object v11, v5, v8

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    .line 176
    .local v11, "dstRowStride":I
    aget-object v12, v4, v8

    invoke-virtual {v12}, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 177
    aget-object v12, v5, v8

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 178
    aget-object v12, v4, v8

    invoke-virtual {v12}, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->getPixelStride()I

    move-result v12

    aget-object v13, v5, v8

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v13

    if-ne v12, v13, :cond_150

    .line 185
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    .line 186
    .local v12, "srcPos":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 187
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 188
    if-ne v10, v11, :cond_7e

    .line 191
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    move-object/from16 v17, v1

    move-wide/from16 v20, v2

    move-object/from16 v24, v5

    move/from16 v19, v9

    goto/16 :goto_13c

    .line 195
    :cond_7e
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 196
    .local v13, "srcOffset":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    .line 197
    .local v14, "dstOffset":I
    move-object/from16 v15, p0

    invoke-direct {v15, v8}, Lcom/xiaomi/camera/imagecodec/MiImage;->getEffectivePlaneSizeForImage(I)Landroid/util/Size;

    move-result-object v16

    .line 198
    .local v16, "effectivePlaneSize":Landroid/util/Size;
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v17

    aget-object v18, v4, v8

    invoke-virtual/range {v18 .. v18}, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->getPixelStride()I

    move-result v18

    mul-int v9, v17, v18

    .line 199
    .local v9, "srcRowWidth":I
    move/from16 v17, v13

    .end local v13    # "srcOffset":I
    .local v17, "srcOffset":I
    new-array v13, v9, [B

    .line 200
    .local v13, "buf":[B
    const/16 v18, 0x0

    move v15, v14

    move/from16 v14, v17

    move-object/from16 v17, v1

    move/from16 v1, v18

    .local v1, "row":I
    .local v14, "srcOffset":I
    .local v15, "dstOffset":I
    .local v17, "dstSize":Landroid/util/Size;
    :goto_a5
    move-object/from16 v18, v0

    .end local v0    # "srcSize":Landroid/util/Size;
    .local v18, "srcSize":Landroid/util/Size;
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ge v1, v0, :cond_136

    .line 201
    invoke-virtual {v6, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 202
    invoke-virtual {v7, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 207
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    move-wide/from16 v20, v2

    .end local v2    # "start":J
    .local v20, "start":J
    if-ne v1, v0, :cond_11f

    .line 211
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 213
    .local v0, "remainingBytes":I
    const/4 v3, 0x2

    if-le v9, v0, :cond_ed

    .line 214
    move v9, v0

    .line 215
    sget-object v2, Lcom/xiaomi/camera/imagecodec/MiImage;->TAG:Ljava/lang/String;

    move/from16 v23, v9

    .end local v9    # "srcRowWidth":I
    .local v23, "srcRowWidth":I
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v24, v5

    .end local v5    # "dstPlanes":[Landroid/media/Image$Plane;
    .local v24, "dstPlanes":[Landroid/media/Image$Plane;
    new-array v5, v3, [Ljava/lang/Object;

    .line 216
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v22, 0x0

    aput-object v25, v5, v22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v19, 0x1

    aput-object v25, v5, v19

    .line 215
    const-string v3, "srcPlane[%d].remain=%d"

    invoke-static {v9, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v9, v23

    goto :goto_ef

    .line 213
    .end local v23    # "srcRowWidth":I
    .end local v24    # "dstPlanes":[Landroid/media/Image$Plane;
    .restart local v5    # "dstPlanes":[Landroid/media/Image$Plane;
    .restart local v9    # "srcRowWidth":I
    :cond_ed
    move-object/from16 v24, v5

    .line 218
    .end local v5    # "dstPlanes":[Landroid/media/Image$Plane;
    .restart local v24    # "dstPlanes":[Landroid/media/Image$Plane;
    :goto_ef
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 219
    if-le v9, v0, :cond_11a

    .line 220
    move v2, v0

    .line 221
    .end local v9    # "srcRowWidth":I
    .local v2, "srcRowWidth":I
    sget-object v3, Lcom/xiaomi/camera/imagecodec/MiImage;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 222
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v22, 0x0

    aput-object v23, v9, v22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v19, 0x1

    aput-object v23, v9, v19

    .line 221
    move/from16 v23, v0

    .end local v0    # "remainingBytes":I
    .local v23, "remainingBytes":I
    const-string v0, "dstPlane[%d].remain=%d"

    invoke-static {v5, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v2

    goto :goto_123

    .line 219
    .end local v2    # "srcRowWidth":I
    .end local v23    # "remainingBytes":I
    .restart local v0    # "remainingBytes":I
    .restart local v9    # "srcRowWidth":I
    :cond_11a
    move/from16 v23, v0

    const/16 v19, 0x1

    .end local v0    # "remainingBytes":I
    .restart local v23    # "remainingBytes":I
    goto :goto_123

    .line 207
    .end local v23    # "remainingBytes":I
    .end local v24    # "dstPlanes":[Landroid/media/Image$Plane;
    .restart local v5    # "dstPlanes":[Landroid/media/Image$Plane;
    :cond_11f
    move-object/from16 v24, v5

    const/16 v19, 0x1

    .line 225
    .end local v5    # "dstPlanes":[Landroid/media/Image$Plane;
    .restart local v24    # "dstPlanes":[Landroid/media/Image$Plane;
    :goto_123
    const/4 v0, 0x0

    invoke-virtual {v6, v13, v0, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 226
    invoke-virtual {v7, v13, v0, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 227
    add-int/2addr v14, v10

    .line 228
    add-int/2addr v15, v11

    .line 200
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v18

    move-wide/from16 v2, v20

    move-object/from16 v5, v24

    goto/16 :goto_a5

    .end local v20    # "start":J
    .end local v24    # "dstPlanes":[Landroid/media/Image$Plane;
    .local v2, "start":J
    .restart local v5    # "dstPlanes":[Landroid/media/Image$Plane;
    :cond_136
    move-wide/from16 v20, v2

    move-object/from16 v24, v5

    const/16 v19, 0x1

    .line 232
    .end local v1    # "row":I
    .end local v2    # "start":J
    .end local v5    # "dstPlanes":[Landroid/media/Image$Plane;
    .end local v9    # "srcRowWidth":I
    .end local v13    # "buf":[B
    .end local v14    # "srcOffset":I
    .end local v15    # "dstOffset":I
    .end local v16    # "effectivePlaneSize":Landroid/util/Size;
    .restart local v20    # "start":J
    .restart local v24    # "dstPlanes":[Landroid/media/Image$Plane;
    :goto_13c
    invoke-virtual {v6, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 233
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 173
    .end local v10    # "srcRowStride":I
    .end local v11    # "dstRowStride":I
    .end local v12    # "srcPos":I
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v1, v17

    move-object/from16 v0, v18

    move/from16 v9, v19

    move-wide/from16 v2, v20

    move-object/from16 v5, v24

    goto/16 :goto_3b

    .line 179
    .end local v17    # "dstSize":Landroid/util/Size;
    .end local v18    # "srcSize":Landroid/util/Size;
    .end local v20    # "start":J
    .end local v24    # "dstPlanes":[Landroid/media/Image$Plane;
    .local v0, "srcSize":Landroid/util/Size;
    .local v1, "dstSize":Landroid/util/Size;
    .restart local v2    # "start":J
    .restart local v5    # "dstPlanes":[Landroid/media/Image$Plane;
    .restart local v10    # "srcRowStride":I
    .restart local v11    # "dstRowStride":I
    :cond_150
    move-object/from16 v18, v0

    move-object/from16 v17, v1

    move-wide/from16 v20, v2

    move-object/from16 v24, v5

    .end local v0    # "srcSize":Landroid/util/Size;
    .end local v1    # "dstSize":Landroid/util/Size;
    .end local v2    # "start":J
    .end local v5    # "dstPlanes":[Landroid/media/Image$Plane;
    .restart local v17    # "dstSize":Landroid/util/Size;
    .restart local v18    # "srcSize":Landroid/util/Size;
    .restart local v20    # "start":J
    .restart local v24    # "dstPlanes":[Landroid/media/Image$Plane;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source plane image pixel stride "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v4, v8

    .line 180
    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->getPixelStride()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be same as destination image pixel stride "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v24, v8

    .line 182
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    .end local v10    # "srcRowStride":I
    .end local v11    # "dstRowStride":I
    .end local v17    # "dstSize":Landroid/util/Size;
    .end local v18    # "srcSize":Landroid/util/Size;
    .end local v20    # "start":J
    .end local v24    # "dstPlanes":[Landroid/media/Image$Plane;
    .restart local v0    # "srcSize":Landroid/util/Size;
    .restart local v1    # "dstSize":Landroid/util/Size;
    .restart local v2    # "start":J
    .restart local v5    # "dstPlanes":[Landroid/media/Image$Plane;
    :cond_187
    move-object/from16 v18, v0

    move-object/from16 v17, v1

    move-wide/from16 v20, v2

    .line 235
    .end local v0    # "srcSize":Landroid/util/Size;
    .end local v1    # "dstSize":Landroid/util/Size;
    .end local v2    # "start":J
    .end local v8    # "i":I
    .restart local v17    # "dstSize":Landroid/util/Size;
    .restart local v18    # "srcSize":Landroid/util/Size;
    .restart local v20    # "start":J
    sget-object v0, Lcom/xiaomi/camera/imagecodec/MiImage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toImage: cost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 159
    .end local v4    # "srcPlanes":[Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
    .end local v5    # "dstPlanes":[Landroid/media/Image$Plane;
    .end local v6    # "srcBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "dstBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "dstSize":Landroid/util/Size;
    .end local v18    # "srcSize":Landroid/util/Size;
    .end local v20    # "start":J
    .restart local v0    # "srcSize":Landroid/util/Size;
    .restart local v1    # "dstSize":Landroid/util/Size;
    :cond_1ac
    move-object/from16 v18, v0

    move-object/from16 v17, v1

    .end local v0    # "srcSize":Landroid/util/Size;
    .end local v1    # "dstSize":Landroid/util/Size;
    .restart local v17    # "dstSize":Landroid/util/Size;
    .restart local v18    # "srcSize":Landroid/util/Size;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source image size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v18

    .end local v18    # "srcSize":Landroid/util/Size;
    .local v2, "srcSize":Landroid/util/Size;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is different with destination image size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v17

    .end local v17    # "dstSize":Landroid/util/Size;
    .local v3, "dstSize":Landroid/util/Size;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    .end local v2    # "srcSize":Landroid/util/Size;
    .end local v3    # "dstSize":Landroid/util/Size;
    :cond_1d7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src and dst images should have the same format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
