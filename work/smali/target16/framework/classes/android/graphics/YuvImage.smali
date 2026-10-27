.class public Landroid/graphics/YuvImage;
.super Ljava/lang/Object;
.source "YuvImage.java"


# static fields
.field private static final greylist-max-o WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static final blacklist sSupportedFormats:[Ljava/lang/String;

.field private static final blacklist sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

.field private static final blacklist sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;


# instance fields
.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private greylist-max-o mData:[B

.field private greylist-max-o mFormat:I

.field private greylist-max-o mHeight:I

.field private greylist-max-o mStrides:[I

.field private greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 79
    const-string v0, "YCBCR_P010"

    const-string v1, "YUV_420_888"

    const-string v2, "NV21"

    const-string v3, "YUY2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    .line 96
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/ColorSpace$Named;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    .line 104
    new-array v0, v0, [Landroid/graphics/ColorSpace$Named;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    return-void
.end method

.method public constructor whitelist <init>([BIII[I)V
    .registers 14

    .line 149
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[ILandroid/graphics/ColorSpace;)V

    .line 150
    return-void
.end method

.method public constructor whitelist <init>([BIII[ILandroid/graphics/ColorSpace;)V
    .registers 8

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/16 v0, 0x11

    if-eq p2, v0, :cond_32

    const/16 v0, 0x14

    if-eq p2, v0, :cond_32

    const/16 v0, 0x36

    if-eq p2, v0, :cond_32

    const/16 v0, 0x23

    if-ne p2, v0, :cond_14

    goto :goto_32

    .line 174
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "only supports the following ImageFormat:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 175
    invoke-static {}, Landroid/graphics/YuvImage;->printSupportedFormats()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_32
    :goto_32
    if-lez p3, :cond_61

    if-lez p4, :cond_61

    .line 183
    if-eqz p1, :cond_58

    .line 187
    if-eqz p6, :cond_50

    .line 191
    if-nez p5, :cond_43

    .line 192
    invoke-direct {p0, p3, p2}, Landroid/graphics/YuvImage;->calculateStrides(II)[I

    move-result-object p5

    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    goto :goto_45

    .line 194
    :cond_43
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 197
    :goto_45
    iput-object p1, p0, Landroid/graphics/YuvImage;->mData:[B

    .line 198
    iput p2, p0, Landroid/graphics/YuvImage;->mFormat:I

    .line 199
    iput p3, p0, Landroid/graphics/YuvImage;->mWidth:I

    .line 200
    iput p4, p0, Landroid/graphics/YuvImage;->mHeight:I

    .line 201
    iput-object p6, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 202
    return-void

    .line 188
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ColorSpace cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "yuv cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width and height must large than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o adjustRectangle(Landroid/graphics/Rect;)V
    .registers 6

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 429
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 430
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_28

    .line 432
    and-int/lit8 v0, v0, -0x2

    .line 433
    and-int/lit8 v1, v1, -0x2

    .line 434
    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 435
    iget v2, p1, Landroid/graphics/Rect;->top:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 436
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 437
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 440
    :cond_28
    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_3b

    .line 442
    and-int/lit8 v0, v0, -0x2

    .line 443
    iget v1, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 444
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 446
    :cond_3b
    return-void
.end method

.method private greylist-max-o calculateStrides(II)[I
    .registers 4

    .line 407
    nop

    .line 408
    sparse-switch p2, :sswitch_data_3e

    .line 422
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "only supports the following ImageFormat:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 423
    invoke-static {}, Landroid/graphics/YuvImage;->printSupportedFormats()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 413
    :sswitch_22
    mul-int/lit8 p1, p1, 0x2

    filled-new-array {p1, p1}, [I

    move-result-object p1

    .line 414
    return-object p1

    .line 416
    :sswitch_29
    add-int/lit8 p2, p1, 0x1

    div-int/lit8 p2, p2, 0x2

    filled-new-array {p1, p2, p2}, [I

    move-result-object p1

    .line 417
    return-object p1

    .line 419
    :sswitch_32
    mul-int/lit8 p1, p1, 0x2

    filled-new-array {p1}, [I

    move-result-object p1

    .line 420
    return-object p1

    .line 410
    :sswitch_39
    filled-new-array {p1, p1}, [I

    move-result-object p1

    .line 411
    return-object p1

    :sswitch_data_3e
    .sparse-switch
        0x11 -> :sswitch_39
        0x14 -> :sswitch_32
        0x23 -> :sswitch_29
        0x36 -> :sswitch_22
    .end sparse-switch
.end method

.method private static blacklist isSupportedJpegRColorSpace(ZI)Z
    .registers 6

    .line 123
    if-eqz p0, :cond_5

    sget-object p0, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    goto :goto_7

    .line 124
    :cond_5
    sget-object p0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    .line 125
    :goto_7
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_19

    aget-object v3, p0, v2

    .line 126
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 127
    const/4 p0, 0x1

    return p0

    .line 125
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 130
    :cond_19
    return v1
.end method

.method private static native greylist-max-o nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z
.end method

.method private static native blacklist nativeCompressToJpegR([BI[BIIIILjava/io/OutputStream;[B[B[I[I)Z
.end method

.method private static blacklist printSupportedFormats()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const/4 v1, 0x0

    :goto_6
    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_21

    .line 85
    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 87
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 90
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist printSupportedJpegRColorSpaces(Z)Ljava/lang/String;
    .registers 4

    .line 110
    if-eqz p0, :cond_5

    sget-object p0, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    goto :goto_7

    .line 111
    :cond_5
    sget-object p0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    .line 112
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const/4 v1, 0x0

    :goto_d
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 114
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_27

    .line 116
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 119
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method greylist-max-o calculateOffsets(II)[I
    .registers 7

    .line 390
    nop

    .line 391
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    .line 392
    iget-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v0, v0, v2

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    iget v1, p0, Landroid/graphics/YuvImage;->mHeight:I

    iget-object v3, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v2, v3, v2

    mul-int/2addr v1, v2

    div-int/lit8 p2, p2, 0x2

    iget-object v2, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-int/2addr p2, v2

    add-int/2addr v1, p2

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object p1

    .line 395
    return-object p1

    .line 398
    :cond_28
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3d

    .line 399
    iget-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v0, v0, v2

    mul-int/2addr p2, v0

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p2, p1

    filled-new-array {p2}, [I

    move-result-object p1

    .line 400
    return-object p1

    .line 403
    :cond_3d
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    .registers 15

    .line 220
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 221
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only ImageFormat.NV21 and ImageFormat.YUY2 are supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_15
    :goto_15
    iget-object v0, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_7a

    .line 228
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/YuvImage;->mWidth:I

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 229
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 234
    if-ltz p2, :cond_68

    const/16 v0, 0x64

    if-gt p2, v0, :cond_68

    .line 238
    if-eqz p3, :cond_5f

    .line 242
    invoke-direct {p0, p1}, Landroid/graphics/YuvImage;->adjustRectangle(Landroid/graphics/Rect;)V

    .line 243
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/YuvImage;->calculateOffsets(II)[I

    move-result-object v6

    .line 245
    iget-object v2, p0, Landroid/graphics/YuvImage;->mData:[B

    iget v3, p0, Landroid/graphics/YuvImage;->mFormat:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v7, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/16 p1, 0x1000

    new-array v10, p1, [B

    .line 245
    move v8, p2

    move-object v9, p3

    invoke-static/range {v2 .. v10}, Landroid/graphics/YuvImage;->nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z

    move-result p1

    return p1

    .line 239
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stream cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "quality must be 0..100"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "rectangle is not inside the image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_7a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only SRGB color space is supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;)Z
    .registers 5

    .line 276
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 277
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/YuvImage;->compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;[B)Z

    move-result p1

    return p1
.end method

.method public blacklist compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;[B)Z
    .registers 17

    .line 308
    if-eqz p1, :cond_d7

    .line 312
    iget-object v1, p0, Landroid/graphics/YuvImage;->mData:[B

    array-length v1, v1

    if-eqz v1, :cond_cf

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_cf

    .line 316
    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v2, 0x36

    if-ne v1, v2, :cond_c6

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_c6

    .line 321
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/graphics/YuvImage;->mWidth:I

    if-ne v1, v2, :cond_be

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    if-ne v1, v2, :cond_be

    .line 325
    if-ltz p2, :cond_b5

    const/16 v1, 0x64

    if-gt p2, v1, :cond_b5

    .line 329
    if-eqz p3, :cond_ac

    .line 333
    iget-object v1, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroid/graphics/YuvImage;->isSupportedJpegRColorSpace(ZI)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_81

    .line 334
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    invoke-static {v3, v1}, Landroid/graphics/YuvImage;->isSupportedJpegRColorSpace(ZI)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 340
    iget-object v1, p0, Landroid/graphics/YuvImage;->mData:[B

    iget-object v2, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v2

    .line 341
    move-object v3, v1

    move v1, v2

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v4

    move-object v5, v3

    move v3, v4

    iget v4, p0, Landroid/graphics/YuvImage;->mWidth:I

    move-object v7, v5

    iget v5, p0, Landroid/graphics/YuvImage;->mHeight:I

    const/16 v8, 0x1000

    new-array v8, v8, [B

    iget-object v10, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 344
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v11

    .line 340
    move v6, p2

    move-object/from16 v9, p4

    move-object v0, v7

    move-object v7, p3

    invoke-static/range {v0 .. v11}, Landroid/graphics/YuvImage;->nativeCompressToJpegR([BI[BIIIILjava/io/OutputStream;[B[B[I[I)Z

    move-result v0

    return v0

    .line 335
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not supported color space. SDR only supports: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 336
    invoke-static {v3}, Landroid/graphics/YuvImage;->printSupportedJpegRColorSpaces(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "HDR only supports: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    invoke-static {v2}, Landroid/graphics/YuvImage;->printSupportedJpegRColorSpaces(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HDR and SDR resolution mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_c6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only support ImageFormat.YCBCR_P010 and ImageFormat.YUV_420_888"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input images cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_d7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SDR input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 387
    iget-object v0, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 380
    iget v0, p0, Landroid/graphics/YuvImage;->mHeight:I

    return v0
.end method

.method public whitelist getStrides()[I
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 373
    iget v0, p0, Landroid/graphics/YuvImage;->mWidth:I

    return v0
.end method

.method public whitelist getYuvData()[B
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    return-object v0
.end method

.method public whitelist getYuvFormat()I
    .registers 2

    .line 359
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    return v0
.end method
