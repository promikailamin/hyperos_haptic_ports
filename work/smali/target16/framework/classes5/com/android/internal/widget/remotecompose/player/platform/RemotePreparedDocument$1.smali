.class Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument$1;
.super Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.source "RemotePreparedDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;-><init>()V

    return-void
.end method

.method private blacklist decodePreferringAlpha8([B)Landroid/graphics/Bitmap;
    .registers 5

    .line 236
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 237
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 238
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist addClickArea(IIFFFFI)V
    .registers 8

    .line 320
    return-void
.end method

.method public blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
    .registers 3

    .line 109
    return-void
.end method

.method public blacklist clearNamedDataOverride(Ljava/lang/String;)V
    .registers 2

    .line 105
    return-void
.end method

.method public blacklist clearNamedFloatOverride(Ljava/lang/String;)V
    .registers 2

    .line 93
    return-void
.end method

.method public blacklist clearNamedIntegerOverride(Ljava/lang/String;)V
    .registers 2

    .line 83
    return-void
.end method

.method public blacklist clearNamedStringOverride(Ljava/lang/String;)V
    .registers 2

    .line 75
    return-void
.end method

.method public blacklist getColor(I)I
    .registers 2

    .line 295
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
    .registers 2

    .line 118
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getFloat(I)F
    .registers 2

    .line 280
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getInteger(I)I
    .registers 2

    .line 285
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getLong(I)J
    .registers 4

    .line 290
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getObject(I)Ljava/lang/Object;
    .registers 2

    .line 135
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getPathData(I)[F
    .registers 2

    .line 54
    const/4 p1, 0x0

    new-array p1, p1, [F

    return-object p1
.end method

.method public blacklist getShader(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .registers 2

    .line 310
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getText(I)Ljava/lang/String;
    .registers 2

    .line 247
    const-string p1, ""

    return-object p1
.end method

.method public blacklist hapticEffect(I)V
    .registers 2

    .line 140
    return-void
.end method

.method public blacklist listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .registers 3

    .line 301
    return-void
.end method

.method public blacklist loadAnimatedFloat(ILcom/android/internal/widget/remotecompose/core/operations/FloatExpression;)V
    .registers 3

    .line 272
    return-void
.end method

.method public blacklist loadBitmap(ISSII[B)V
    .registers 16

    .line 149
    nop

    .line 150
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_144

    goto/16 :goto_136

    .line 230
    :pswitch_7
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_136

    .line 218
    :pswitch_f
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p6}, Ljava/lang/String;-><init>([B)V

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    goto/16 :goto_136

    .line 222
    :pswitch_1a
    :try_start_1a
    new-instance p2, Ljava/net/URL;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2c
    .catch Ljava/net/MalformedURLException; {:try_start_1a .. :try_end_2c} :catch_36
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2c} :catch_2e

    .line 227
    goto/16 :goto_136

    .line 225
    :catch_2e
    move-exception v0

    move-object p1, v0

    .line 226
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 223
    :catch_36
    move-exception v0

    move-object p1, v0

    .line 224
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 152
    :pswitch_3e
    const/4 p2, 0x0

    packed-switch p3, :pswitch_data_150

    :pswitch_42
    goto/16 :goto_135

    .line 173
    :pswitch_44
    invoke-direct {p0, p6}, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument$1;->decodePreferringAlpha8([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_135

    .line 177
    nop

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 180
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    sget-object p4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 178
    invoke-static {p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 182
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 184
    new-instance p5, Landroid/graphics/PorterDuffXfermode;

    sget-object p6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p5, p6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 187
    const/4 p5, 0x0

    invoke-virtual {p3, v0, p5, p5, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 188
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 190
    nop

    .line 191
    move-object v0, p2

    goto/16 :goto_135

    .line 194
    :pswitch_82
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    array-length p3, p6

    div-int/lit8 p3, p3, 0x4

    new-array v1, p3, [I

    .line 196
    nop

    :goto_8e
    if-ge p2, p3, :cond_ae

    .line 197
    mul-int/lit8 v2, p2, 0x4

    .line 198
    aget-byte v3, p6, v2

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p6, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p6, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p6, v2

    or-int/2addr v2, v3

    aput v2, v1, p2

    .line 196
    add-int/lit8 p2, p2, 0x1

    goto :goto_8e

    .line 204
    :cond_ae
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, p4

    move v3, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 205
    goto/16 :goto_135

    .line 207
    :pswitch_b9
    move v3, p4

    move v7, p5

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 208
    array-length p3, p6

    div-int/lit8 p3, p3, 0x4

    new-array v2, p3, [I

    .line 209
    nop

    :goto_c7
    if-ge p2, p3, :cond_d4

    .line 211
    const p4, 0x1010101

    aget-byte p5, p6, p2

    mul-int/2addr p5, p4

    aput p5, v2, p2

    .line 209
    add-int/lit8 p2, p2, 0x1

    goto :goto_c7

    .line 213
    :cond_d4
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v3

    const/4 v3, 0x0

    move v8, v7

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object v0, v1

    goto :goto_135

    .line 155
    :pswitch_df
    move v3, p4

    move v7, p5

    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 156
    const/4 p4, 0x1

    iput-boolean p4, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 157
    array-length p4, p6

    invoke-static {p6, p2, p4, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 158
    iget p4, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt p4, v3, :cond_fb

    iget p4, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt p4, v7, :cond_fb

    .line 170
    array-length p3, p6

    invoke-static {p6, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    goto :goto_135

    .line 159
    :cond_fb
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "dimension don\'t match "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p4, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo p4, "x"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " vs "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :cond_135
    :goto_135
    nop

    .line 232
    :goto_136
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;->-$$Nest$fgetmResolvedData(Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_1a
        :pswitch_f
        :pswitch_7
    .end packed-switch

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_df
        :pswitch_42
        :pswitch_b9
        :pswitch_82
        :pswitch_44
    .end packed-switch
.end method

.method public blacklist loadColor(II)V
    .registers 3

    .line 63
    return-void
.end method

.method public blacklist loadFloat(IF)V
    .registers 3

    .line 252
    return-void
.end method

.method public blacklist loadInteger(II)V
    .registers 3

    .line 260
    return-void
.end method

.method public blacklist loadPathData(II[F)V
    .registers 4

    .line 50
    return-void
.end method

.method public blacklist loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V
    .registers 3

    .line 276
    return-void
.end method

.method public blacklist loadText(ILjava/lang/String;)V
    .registers 3

    .line 243
    return-void
.end method

.method public blacklist loadVariableName(Ljava/lang/String;II)V
    .registers 4

    .line 59
    return-void
.end method

.method public blacklist overrideFloat(IF)V
    .registers 3

    .line 256
    return-void
.end method

.method public blacklist overrideInteger(II)V
    .registers 3

    .line 264
    return-void
.end method

.method public blacklist overrideText(II)V
    .registers 3

    .line 268
    return-void
.end method

.method public blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
    .registers 3

    .line 114
    return-void
.end method

.method public blacklist putObject(ILjava/lang/Object;)V
    .registers 3

    .line 131
    return-void
.end method

.method public blacklist runAction(ILjava/lang/String;)V
    .registers 3

    .line 123
    return-void
.end method

.method public blacklist runNamedAction(ILjava/lang/Object;)V
    .registers 3

    .line 127
    return-void
.end method

.method public blacklist setNamedColorOverride(Ljava/lang/String;I)V
    .registers 3

    .line 67
    return-void
.end method

.method public blacklist setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 101
    return-void
.end method

.method public blacklist setNamedFloatOverride(Ljava/lang/String;F)V
    .registers 3

    .line 88
    return-void
.end method

.method public blacklist setNamedIntegerOverride(Ljava/lang/String;I)V
    .registers 3

    .line 79
    return-void
.end method

.method public blacklist setNamedLong(Ljava/lang/String;J)V
    .registers 4

    .line 97
    return-void
.end method

.method public blacklist setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 71
    return-void
.end method

.method public blacklist updateOps()I
    .registers 2

    .line 305
    const/4 v0, 0x0

    return v0
.end method
