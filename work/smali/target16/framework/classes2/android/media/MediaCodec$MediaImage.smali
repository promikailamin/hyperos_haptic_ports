.class public Landroid/media/MediaCodec$MediaImage;
.super Landroid/media/Image;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$MediaImage$MediaPlane;
    }
.end annotation


# static fields
.field private static final greylist-max-o TYPE_YUV:I = 0x1


# instance fields
.field private final greylist-max-o mBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mBufferContext:J

.field private final greylist-max-o mFormat:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mInfo:Ljava/nio/ByteBuffer;

.field private final greylist-max-o mIsReadOnly:Z

.field private final greylist-max-o mPlanes:[Landroid/media/Image$Plane;

.field private final greylist-max-o mScalingMode:I

.field private greylist-max-o mTimestamp:J

.field private final greylist-max-o mTransform:I

.field private final greylist-max-o mWidth:I

.field private final greylist-max-o mXOffset:I

.field private final greylist-max-o mYOffset:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZJIILandroid/graphics/Rect;)V
    .registers 30

    .line 6207
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0}, Landroid/media/Image;-><init>()V

    .line 6132
    const/4 v4, 0x0

    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mTransform:I

    .line 6133
    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mScalingMode:I

    .line 6208
    move-wide/from16 v5, p4

    iput-wide v5, v0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    .line 6209
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    .line 6210
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    iput-boolean v6, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    .line 6211
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 6214
    iput v2, v0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    .line 6215
    iput v3, v0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    .line 6216
    move-object/from16 v6, p2

    iput-object v6, v0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    .line 6218
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    .line 6220
    nop

    .line 6221
    nop

    .line 6222
    nop

    .line 6223
    nop

    .line 6226
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    const/16 v8, 0x68

    if-ne v7, v8, :cond_2b0

    .line 6227
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 6228
    if-ne v7, v5, :cond_297

    .line 6231
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 6232
    const/4 v8, 0x3

    if-ne v7, v8, :cond_27e

    .line 6235
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    .line 6236
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    .line 6237
    iget v8, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    const-string v9, "x"

    if-lt v8, v5, :cond_259

    iget v8, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    if-lt v8, v5, :cond_259

    .line 6241
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 6242
    const/16 v10, 0xa

    const/16 v11, 0x8

    if-eq v8, v11, :cond_84

    if-ne v8, v10, :cond_6b

    goto :goto_84

    .line 6243
    :cond_6b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6245
    :cond_84
    :goto_84
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 6246
    const/16 v13, 0x10

    if-eq v12, v11, :cond_a8

    if-ne v12, v13, :cond_8f

    goto :goto_a8

    .line 6247
    :cond_8f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported allocated bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6250
    :cond_a8
    :goto_a8
    const/16 v14, 0x23

    const/16 v15, 0x36

    if-ne v8, v11, :cond_b6

    if-ne v12, v11, :cond_b6

    .line 6251
    iput v14, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 6252
    nop

    .line 6253
    move v12, v5

    const/4 v10, 0x2

    goto :goto_bf

    .line 6254
    :cond_b6
    if-ne v8, v10, :cond_236

    if-ne v12, v13, :cond_236

    .line 6255
    iput v15, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 6256
    nop

    .line 6257
    const/4 v10, 0x4

    const/4 v12, 0x2

    .line 6263
    :goto_bf
    new-array v13, v7, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    .line 6264
    const/4 v13, -0x1

    move/from16 v16, v13

    const/4 v4, 0x0

    :goto_c7
    if-ge v4, v7, :cond_1ca

    .line 6265
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    .line 6266
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 6267
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 6268
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 6269
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 6270
    if-ne v11, v5, :cond_19f

    if-nez v4, :cond_e3

    const/4 v6, 0x1

    goto :goto_e4

    :cond_e3
    const/4 v6, 0x2

    :goto_e4
    if-ne v11, v6, :cond_19f

    .line 6274
    const/4 v6, 0x1

    if-lt v15, v6, :cond_172

    if-lt v14, v6, :cond_172

    .line 6278
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 6279
    iget-object v6, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int v6, v6, v17

    div-int v20, v2, v11

    mul-int v20, v20, v15

    add-int v6, v6, v20

    div-int v20, v3, v5

    mul-int v20, v20, v14

    add-int v6, v6, v20

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6281
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    move/from16 v20, v6

    const/16 v6, 0x8

    invoke-static {v8, v6}, Landroid/media/Utils;->divUp(II)I

    move-result v18

    add-int v18, v20, v18

    iget v6, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    div-int/2addr v6, v5

    const/16 v19, 0x1

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v14

    add-int v18, v18, v6

    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    div-int/2addr v5, v11

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v15

    add-int v5, v18, v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6283
    iget-object v5, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v6, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-direct {v6, v0, v11, v14, v15}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v6, v5, v4

    .line 6284
    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v6, 0x23

    if-eq v5, v6, :cond_147

    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v6, 0x36

    if-eq v5, v6, :cond_147

    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_14f

    :cond_147
    const/4 v6, 0x1

    if-ne v4, v6, :cond_14f

    .line 6287
    move/from16 v13, v17

    const/16 v6, 0x23

    goto :goto_166

    .line 6288
    :cond_14f
    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v6, 0x23

    if-eq v5, v6, :cond_161

    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v11, 0x36

    if-eq v5, v11, :cond_161

    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v11, 0x3c

    if-ne v5, v11, :cond_166

    :cond_161
    const/4 v5, 0x2

    if-ne v4, v5, :cond_166

    .line 6292
    move/from16 v16, v17

    .line 6264
    :cond_166
    :goto_166
    add-int/lit8 v4, v4, 0x1

    move v14, v6

    const/4 v5, 0x1

    const/16 v11, 0x8

    const/16 v15, 0x36

    move-object/from16 v6, p2

    goto/16 :goto_c7

    .line 6275
    :cond_172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected strides: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixel, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " row on plane "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6271
    :cond_19f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected subsampling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on plane "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6295
    :cond_1ca
    nop

    .line 6301
    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v11, 0x36

    if-eq v1, v11, :cond_1d7

    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v11, 0x3c

    if-ne v1, v11, :cond_1f3

    .line 6302
    :cond_1d7
    add-int/2addr v12, v13

    move/from16 v1, v16

    if-ne v1, v12, :cond_213

    .line 6306
    iget-object v1, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/16 v19, 0x1

    aget-object v1, v1, v19

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v10, :cond_20b

    iget-object v1, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/4 v5, 0x2

    aget-object v1, v1, v5

    .line 6307
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v10, :cond_20b

    .line 6312
    :cond_1f3
    if-nez p8, :cond_200

    .line 6313
    new-instance v1, Landroid/graphics/Rect;

    iget v4, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_202

    .line 6312
    :cond_200
    move-object/from16 v1, p8

    .line 6315
    :goto_202
    neg-int v2, v2

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 6316
    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 6317
    return-void

    .line 6308
    :cond_20b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Invalid pixelStride"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6303
    :cond_213
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid plane offsets cbPlaneOffset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " crPlaneOffset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6259
    :cond_236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t infer ImageFormat bitDepth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitDepthAllocated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6238
    :cond_259
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6233
    :cond_27e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected number of planes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6229
    :cond_297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6296
    :cond_2b0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported info length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6297
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([Ljava/nio/ByteBuffer;[I[IIIIZJIILandroid/graphics/Rect;J)V
    .registers 25

    .line 6322
    move/from16 v1, p10

    move/from16 v2, p11

    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 6132
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaCodec$MediaImage;->mTransform:I

    .line 6133
    iput v3, p0, Landroid/media/MediaCodec$MediaImage;->mScalingMode:I

    .line 6323
    array-length v4, p1

    array-length v5, p2

    if-ne v4, v5, :cond_66

    array-length v4, p1

    array-length v5, p3

    if-ne v4, v5, :cond_66

    .line 6327
    iput p4, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    .line 6328
    iput p5, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    .line 6329
    move/from16 v4, p6

    iput v4, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 6330
    move-wide/from16 v4, p8

    iput-wide v4, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    .line 6331
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    .line 6332
    move/from16 v4, p7

    iput-boolean v4, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    .line 6333
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 6334
    iput-object v4, p0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    .line 6335
    array-length v4, p1

    new-array v4, v4, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    iput-object v4, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    .line 6336
    move v4, v3

    :goto_32
    array-length v5, p1

    if-ge v4, v5, :cond_47

    .line 6337
    iget-object v5, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v6, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    aget-object v7, p1, v4

    aget v8, p2, v4

    aget v9, p3, v4

    invoke-direct {v6, p0, v7, v8, v9}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v6, v5, v4

    .line 6336
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 6341
    :cond_47
    iput v1, p0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    .line 6342
    iput v2, p0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    .line 6344
    if-nez p12, :cond_57

    .line 6345
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    invoke-direct {p1, v3, v3, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_59

    .line 6344
    :cond_57
    move-object/from16 p1, p12

    .line 6347
    :goto_59
    neg-int p2, v1

    neg-int v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 6348
    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 6350
    move-wide/from16 p1, p13

    iput-wide p1, p0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    .line 6351
    return-void

    .line 6324
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffers, rowStrides and pixelStrides should have the same length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5

    .line 6180
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    if-eqz v0, :cond_1d

    .line 6181
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_d

    .line 6182
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 6184
    :cond_d
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 6185
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    invoke-static {v0, v1}, Landroid/media/MediaCodec;->-$$Nest$smnative_closeMediaImage(J)V

    .line 6187
    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    .line 6189
    :cond_1d
    return-void
.end method

.method public whitelist getFormat()I
    .registers 2

    .line 6137
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6138
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 6143
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6144
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    return v0
.end method

.method public whitelist getPlanes()[Landroid/media/Image$Plane;
    .registers 3

    .line 6174
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6175
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    iget-object v1, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public greylist-max-o getScalingMode()I
    .registers 2

    .line 6161
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6162
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 6167
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6168
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getTransform()I
    .registers 2

    .line 6155
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6156
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 6149
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6150
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    return v0
.end method

.method public whitelist setCropRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 6199
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    if-nez v0, :cond_8

    .line 6202
    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 6203
    return-void

    .line 6200
    :cond_8
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method
