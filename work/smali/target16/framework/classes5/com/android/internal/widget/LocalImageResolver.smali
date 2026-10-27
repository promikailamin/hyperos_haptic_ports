.class public Lcom/android/internal/widget/LocalImageResolver;
.super Ljava/lang/Object;
.source "LocalImageResolver.java"


# static fields
.field private static final blacklist DEFAULT_DECODE_HARD_LIMIT_PX:I = 0x1000

.field static final blacklist DEFAULT_MAX_SAFE_ICON_SIZE_PX:I = 0x1e0

.field public static final blacklist NO_MAX_SIZE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "LocalImageResolver"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getPowerOfTwoForSampleRatio(D)I
    .registers 2

    .line 255
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    .line 256
    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static blacklist getResolvableUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;
    .registers 3

    .line 307
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    .line 308
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    goto :goto_16

    .line 311
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 309
    :cond_16
    :goto_16
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic blacklist lambda$resolveImage$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 3

    .line 69
    const/16 p2, 0x1e0

    invoke-static {p0, p1, p2, p2}, Lcom/android/internal/widget/LocalImageResolver;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;II)V

    return-void
.end method

.method static synthetic blacklist lambda$resolveImage$1(IILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 6

    .line 223
    if-lez p0, :cond_48

    if-gtz p1, :cond_5

    goto :goto_48

    .line 227
    :cond_5
    invoke-virtual {p3}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p3

    .line 228
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p4

    if-gt p4, p0, :cond_16

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p4

    if-gt p4, p1, :cond_16

    .line 230
    return-void

    .line 233
    :cond_16
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p4

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-le p4, v0, :cond_34

    .line 234
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-le p1, p0, :cond_47

    .line 235
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p1, p0

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    div-int/2addr p1, p3

    .line 236
    invoke-virtual {p2, p0, p1}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 237
    goto :goto_47

    .line 239
    :cond_34
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-le p0, p1, :cond_47

    .line 240
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p0

    mul-int/2addr p0, p1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    div-int/2addr p0, p3

    .line 241
    invoke-virtual {p2, p0, p1}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 244
    :cond_47
    :goto_47
    return-void

    .line 224
    :cond_48
    :goto_48
    return-void
.end method

.method private static blacklist onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;II)V
    .registers 9

    .line 261
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 263
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    .line 264
    nop

    .line 265
    const/4 v1, 0x0

    if-eqz p1, :cond_88

    .line 266
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_10e

    :cond_1a
    goto/16 :goto_82

    :sswitch_1c
    const-string v3, "image/x-ico"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x5

    goto :goto_83

    :sswitch_26
    const-string v3, "image/vnd.wap.wbmp"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x6

    goto :goto_83

    :sswitch_30
    const-string v3, "image/png"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v1

    goto :goto_83

    :sswitch_3a
    const-string v3, "image/gif"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x3

    goto :goto_83

    :sswitch_44
    const-string v3, "image/bmp"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x4

    goto :goto_83

    :sswitch_4e
    const-string v3, "image/webp"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x2

    goto :goto_83

    :sswitch_58
    const-string v3, "image/jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v4

    goto :goto_83

    :sswitch_62
    const-string v3, "image/heif"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x7

    goto :goto_83

    :sswitch_6c
    const-string v3, "image/heic"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v2, 0x8

    goto :goto_83

    :sswitch_77
    const-string v3, "image/avif"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v2, 0x9

    goto :goto_83

    :goto_82
    const/4 v2, -0x1

    :goto_83
    packed-switch v2, :pswitch_data_138

    goto :goto_88

    .line 277
    :pswitch_87
    move v1, v4

    .line 281
    :cond_88
    :goto_88
    if-eqz v1, :cond_ee

    .line 285
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p1

    const/16 v1, 0x1000

    if-gt p1, v1, :cond_bc

    .line 286
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-gt p1, v1, :cond_bc

    .line 294
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 295
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 296
    if-le p1, p2, :cond_b2

    .line 297
    int-to-float p1, p1

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    goto :goto_b4

    .line 298
    :cond_b2
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 299
    :goto_b4
    invoke-static {p1, p2}, Lcom/android/internal/widget/LocalImageResolver;->getPowerOfTwoForSampleRatio(D)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 300
    return-void

    .line 289
    :cond_bc
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Image dimensions ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 290
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") exceed the maximum allowed size."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_ee
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Image mime type ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is not allowed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_10e
    .sparse-switch
        -0x58abd7ba -> :sswitch_77
        -0x58a8e8f5 -> :sswitch_6c
        -0x58a8e8f2 -> :sswitch_62
        -0x58a7d764 -> :sswitch_58
        -0x58a21830 -> :sswitch_4e
        -0x3468a12f -> :sswitch_44
        -0x34688ef0 -> :sswitch_3a
        -0x34686c8b -> :sswitch_30
        0x2c2ee2ec -> :sswitch_26
        0x4453ce0c -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
    .end packed-switch
.end method

.method private static blacklist resolveBitmapImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 185
    if-lez p2, :cond_40

    if-lez p3, :cond_40

    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    if-nez v0, :cond_c

    .line 188
    const/4 p0, 0x0

    return-object p0

    .line 191
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, p2, :cond_18

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, p3, :cond_40

    .line 192
    :cond_18
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_24

    .line 193
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_28

    :cond_24
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 195
    :goto_28
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Icon;->setTintBlendMode(Landroid/graphics/BlendMode;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    .line 197
    invoke-virtual {p0, p2, p3}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 198
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 202
    :cond_40
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist resolveImage(ILandroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    .line 171
    invoke-static {p0, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist resolveImage(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 177
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    .line 178
    invoke-static {p0, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 222
    :try_start_0
    new-instance v0, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    .line 248
    :catch_a
    move-exception p0

    .line 249
    const-string p0, "LocalImageResolver"

    const-string p1, "Couldn\'t use ImageDecoder for drawable, falling back to non-resized load."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const/16 v0, 0x1e0

    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 105
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 106
    return-object v0

    .line 109
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_5e

    :pswitch_b
    goto :goto_3d

    .line 112
    :pswitch_c
    invoke-static {p0}, Lcom/android/internal/widget/LocalImageResolver;->getResolvableUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_3d

    .line 114
    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 115
    if-eqz p2, :cond_1d

    .line 116
    invoke-static {p0, p2}, Lcom/android/internal/widget/LocalImageResolver;->tintDrawable(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 118
    :cond_1d
    goto :goto_3d

    .line 121
    :pswitch_1e
    invoke-static {p1, p0}, Lcom/android/internal/widget/LocalImageResolver;->resolveResourcesForIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/content/res/Resources;

    move-result-object v1

    .line 122
    if-nez v1, :cond_29

    .line 124
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 127
    :cond_29
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-static {v1, v2, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 128
    if-eqz p2, :cond_3d

    .line 129
    invoke-static {p0, p2}, Lcom/android/internal/widget/LocalImageResolver;->tintDrawable(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 134
    :pswitch_38
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveBitmapImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 142
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 143
    if-nez p1, :cond_5b

    .line 144
    const-string p2, "LocalImageResolver"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t load drawable for icon: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_5b} :catch_5c

    .line 146
    :cond_5b
    return-object p1

    .line 147
    :catch_5c
    move-exception p0

    .line 148
    return-object v0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_1e
        :pswitch_b
        :pswitch_c
        :pswitch_38
        :pswitch_c
    .end packed-switch
.end method

.method public static blacklist resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    nop

    .line 67
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    .line 68
    new-instance p1, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    return-object p0

    .line 71
    :catch_13
    move-exception p0

    .line 74
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static blacklist resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 157
    nop

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    .line 159
    invoke-static {p0, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist resolveResourcesForIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/content/res/Resources;
    .registers 5

    .line 326
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    .line 327
    return-object v2

    .line 331
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_10

    .line 333
    return-object v0

    .line 336
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_56

    .line 342
    :cond_25
    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 343
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    .line 346
    :cond_32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 348
    const/16 v1, 0x2400

    :try_start_38
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_43

    .line 352
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_42} :catch_45

    return-object p0

    .line 357
    :cond_43
    nop

    .line 359
    return-object v2

    .line 354
    :catch_45
    move-exception p0

    .line 355
    const-string p0, "Unable to resolve package %s for icon %s"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalImageResolver"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-object v2

    .line 339
    :cond_56
    :goto_56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist tintDrawable(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 207
    if-nez p1, :cond_4

    .line 208
    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->hasTint()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 212
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 214
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 217
    :cond_1b
    return-object p1
.end method
