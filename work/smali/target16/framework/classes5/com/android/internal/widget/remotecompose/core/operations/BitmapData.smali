.class public Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "BitmapData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "BitmapData"

.field public static final blacklist ENCODING_EMPTY:S = 0x3s

.field public static final blacklist ENCODING_FILE:S = 0x2s

.field public static final blacklist ENCODING_INLINE:S = 0x0s

.field public static final blacklist ENCODING_URL:S = 0x1s

.field public static final blacklist MAX_IMAGE_DIMENSION:I = 0x1f40

.field private static final blacklist OP_CODE:I = 0x65

.field public static final blacklist TYPE_PNG:S = 0x1s

.field public static final blacklist TYPE_PNG_8888:S = 0x0s

.field public static final blacklist TYPE_PNG_ALPHA_8:S = 0x4s

.field public static final blacklist TYPE_RAW8:S = 0x2s

.field public static final blacklist TYPE_RAW8888:S = 0x3s


# instance fields
.field blacklist mBitmap:[B

.field blacklist mEncoding:S

.field blacklist mImageHeight:I

.field public final blacklist mImageId:I

.field blacklist mImageWidth:I

.field blacklist mType:S


# direct methods
.method public constructor blacklist <init>(III[B)V
    .registers 5

    .line 89
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 90
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    .line 91
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    .line 92
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    .line 93
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    .line 94
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V
    .registers 6

    .line 181
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 183
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 184
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 185
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    .line 186
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ISSSS[B)V
    .registers 8

    .line 207
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 209
    shl-int/lit8 p1, p2, 0x10

    or-int/2addr p1, p3

    .line 210
    shl-int/lit8 p2, p4, 0x10

    or-int/2addr p2, p5

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 213
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    .line 214
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 7

    .line 260
    const/16 v0, 0x65

    const-string v1, "BitmapData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 261
    const-string v0, "Bitmap data"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 262
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of bitmap data"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 263
    const/16 v1, 0x9

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "width of the image"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 264
    const-string/jumbo v2, "width"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 265
    const-string v4, "encoding"

    const-string v5, "height of the image"

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 266
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 267
    const-string v0, "height"

    invoke-virtual {p0, v1, v0, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 268
    const/16 v0, 0xb

    const-string/jumbo v1, "values"

    const-string v2, "length"

    const-string v3, "Array of ints"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 269
    return-void
.end method

.method private blacklist getEncodingString(S)Ljava/lang/String;
    .registers 2

    .line 302
    packed-switch p1, :pswitch_data_10

    .line 310
    const-string p1, "ENCODING_INVALID"

    return-object p1

    .line 308
    :pswitch_6
    const-string p1, "ENCODING_FILE"

    return-object p1

    .line 306
    :pswitch_9
    const-string p1, "ENCODING_URL"

    return-object p1

    .line 304
    :pswitch_c
    const-string p1, "ENCODING_INLINE"

    return-object p1

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist getImageTypeString(S)Ljava/lang/String;
    .registers 2

    .line 315
    packed-switch p1, :pswitch_data_16

    .line 327
    const-string p1, "TYPE_INVALID"

    return-object p1

    .line 325
    :pswitch_6
    const-string p1, "TYPE_PNG_ALPHA_8"

    return-object p1

    .line 323
    :pswitch_9
    const-string p1, "TYPE_RAW8888"

    return-object p1

    .line 321
    :pswitch_c
    const-string p1, "TYPE_RAW8"

    return-object p1

    .line 319
    :pswitch_f
    const-string p1, "TYPE_PNG"

    return-object p1

    .line 317
    :pswitch_12
    const-string p1, "TYPE_PNG_8888"

    return-object p1

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 154
    const/16 v0, 0x65

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 145
    const-string v0, "BitmapData"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 227
    const/4 v3, 0x0

    const v4, 0xffff

    if-le v1, v4, :cond_16

    .line 228
    shr-int/lit8 v5, v1, 0x10

    .line 229
    and-int/2addr v1, v4

    goto :goto_17

    .line 231
    :cond_16
    move v5, v3

    .line 235
    :goto_17
    if-le v2, v4, :cond_1d

    .line 236
    shr-int/lit8 v3, v2, 0x10

    .line 237
    and-int/2addr v2, v4

    goto :goto_1e

    .line 239
    :cond_1d
    nop

    .line 241
    :goto_1e
    const/4 v4, 0x1

    if-lt v1, v4, :cond_3c

    if-lt v2, v4, :cond_3c

    const/16 v4, 0x1f40

    if-gt v2, v4, :cond_3c

    if-gt v1, v4, :cond_3c

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBuffer()[B

    move-result-object p0

    .line 248
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    invoke-direct {v4, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;-><init>(III[B)V

    .line 249
    int-to-short p0, v5

    iput-short p0, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    .line 250
    int-to-short p0, v3

    iput-short p0, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    .line 251
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    return-void

    .line 245
    :cond_3c
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dimension of image is invalid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 10

    .line 273
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 274
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    iget-short v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    iget-short v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadBitmap(ISSII[B)V

    .line 275
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 124
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 163
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 292
    nop

    .line 293
    const-string v0, "BitmapData"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imageId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imageWidth"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imageHeight"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    .line 297
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getImageTypeString(S)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imageType"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    .line 298
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getEncodingString(S)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encoding"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 299
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitmapData id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 288
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BITMAP DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist update(Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;)V
    .registers 3

    .line 102
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    .line 103
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    .line 104
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    .line 105
    iget-short v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    iput-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    .line 106
    iget-short p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    iput-short p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    .line 107
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 129
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    .line 130
    return-void
.end method
