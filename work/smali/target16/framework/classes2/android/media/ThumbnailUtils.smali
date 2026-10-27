.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$Resizer;,
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final greylist-max-o OPTIONS_NONE:I = 0x0

.field public static final whitelist OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final greylist-max-o OPTIONS_SCALE_UP:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final greylist TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-p closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 450
    return-void
.end method

.method private static greylist-max-p computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 443
    const/4 p0, 0x1

    return p0
.end method

.method private static greylist-max-p computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 436
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist convertKind(I)Landroid/util/Size;
    .registers 1

    .line 80
    invoke-static {p0}, Landroid/provider/MediaStore$Images$Thumbnails;->getKindSize(I)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createAudioThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 152
    :cond_5
    new-instance v0, Landroid/media/ThumbnailUtils$Resizer;

    invoke-direct {v0, p1, p2}, Landroid/media/ThumbnailUtils$Resizer;-><init>(Landroid/util/Size;Landroid/os/CancellationSignal;)V

    .line 153
    :try_start_a
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_f} :catch_c9

    .line 154
    :try_start_f
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v1

    .line 156
    if-eqz v1, :cond_28

    .line 157
    invoke-static {v1}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_bf

    .line 159
    :try_start_24
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->close()V

    .line 157
    return-object p0

    .line 159
    :cond_28
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_2b} :catch_c9

    .line 161
    nop

    .line 164
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "unknown"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b7

    .line 169
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 170
    const/4 v2, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    goto :goto_45

    :cond_44
    move-object v3, v2

    .line 171
    :goto_45
    if-eqz p1, :cond_5c

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto :goto_5c

    .line 173
    :cond_54
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No thumbnails in Downloads directories"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    :cond_5c
    :goto_5c
    if-eqz v3, :cond_71

    .line 176
    invoke-static {v3}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto :goto_71

    .line 177
    :cond_69
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No thumbnails in top-level directories"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_71
    :goto_71
    nop

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    new-instance p1, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    .line 187
    new-instance p1, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 195
    new-instance v1, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/ToIntFunction;)V

    .line 199
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    .line 200
    if-eqz p0, :cond_af

    .line 205
    if-eqz p2, :cond_a6

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 207
    :cond_a6
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 201
    :cond_af
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No album art found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_b7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No embedded album art found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :catchall_bf
    move-exception p0

    :try_start_c0
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c4

    goto :goto_c8

    :catchall_c4
    move-exception p1

    :try_start_c5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c8
    throw p0
    :try_end_c9
    .catch Ljava/lang/RuntimeException; {:try_start_c5 .. :try_end_c9} :catch_c9

    .line 159
    :catch_c9
    move-exception p0

    .line 160
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to create thumbnail"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static whitelist createAudioThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/media/ThumbnailUtils;->convertKind(I)Landroid/util/Size;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/media/ThumbnailUtils;->createAudioThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f

    return-object p0

    .line 126
    :catch_f
    move-exception p0

    .line 127
    const-string p1, "ThumbnailUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    return-object v0
.end method

.method public static whitelist createImageThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 250
    :cond_5
    new-instance v1, Landroid/media/ThumbnailUtils$Resizer;

    invoke-direct {v1, p1, p2}, Landroid/media/ThumbnailUtils$Resizer;-><init>(Landroid/util/Size;Landroid/os/CancellationSignal;)V

    .line 251
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    nop

    .line 253
    nop

    .line 254
    nop

    .line 257
    invoke-static {v0}, Landroid/media/MediaFile;->isExifMimeType(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_37

    .line 258
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/File;)V

    .line 259
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    sparse-switch v5, :sswitch_data_ec

    goto :goto_38

    .line 267
    :sswitch_2c
    const/16 v3, 0x10e

    goto :goto_38

    .line 261
    :sswitch_2f
    nop

    .line 262
    const/16 v3, 0x5a

    goto :goto_38

    .line 264
    :sswitch_33
    nop

    .line 265
    const/16 v3, 0xb4

    goto :goto_38

    .line 257
    :cond_37
    move-object v2, v4

    .line 272
    :goto_38
    const-string v5, "image/heif"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 273
    const-string v5, "image/heif-sequence"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 274
    const-string v5, "image/heic"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 275
    const-string v5, "image/heic-sequence"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 276
    const-string v5, "image/avif"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 277
    :cond_60
    :try_start_60
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_65} :catch_e2

    .line 278
    :try_start_65
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 279
    new-instance v0, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 280
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 281
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr v6, p1

    .line 279
    const/4 p1, -0x1

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/media/MediaMetadataRetriever;->getThumbnailImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;II)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_83
    .catchall {:try_start_65 .. :try_end_83} :catchall_d6

    .line 282
    :try_start_83
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_86
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_86} :catch_e2

    .line 284
    move-object v4, p1

    .line 287
    :cond_87
    if-nez v4, :cond_a2

    if-eqz v2, :cond_a2

    .line 288
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object p1

    .line 289
    if-eqz p1, :cond_a2

    .line 291
    :try_start_91
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_99
    .catch Landroid/graphics/ImageDecoder$DecodeException; {:try_start_91 .. :try_end_99} :catch_9b

    .line 294
    move-object v5, v4

    goto :goto_a3

    .line 292
    :catch_9b
    move-exception v0

    move-object p1, v0

    .line 293
    const-string v0, "ThumbnailUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    :cond_a2
    move-object v5, v4

    :goto_a3
    if-eqz p2, :cond_a8

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 301
    :cond_a8
    if-nez v5, :cond_b3

    .line 302
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 304
    return-object p0

    .line 308
    :cond_b3
    if-eqz v3, :cond_d5

    if-eqz v5, :cond_d5

    .line 309
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 310
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 312
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 313
    int-to-float p0, v3

    div-int/lit8 p1, v8, 0x2

    int-to-float p1, p1

    div-int/lit8 p2, v9, 0x2

    int-to-float p2, p2

    invoke-virtual {v10, p0, p1, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 314
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 317
    :cond_d5
    return-object v5

    .line 277
    :catchall_d6
    move-exception v0

    move-object p0, v0

    :try_start_d8
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_dc

    goto :goto_e1

    :catchall_dc
    move-exception v0

    move-object p1, v0

    :try_start_de
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e1
    throw p0
    :try_end_e2
    .catch Ljava/lang/RuntimeException; {:try_start_de .. :try_end_e2} :catch_e2

    .line 282
    :catch_e2
    move-exception v0

    move-object p0, v0

    .line 283
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to create thumbnail"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :sswitch_data_ec
    .sparse-switch
        0x3 -> :sswitch_33
        0x6 -> :sswitch_2f
        0x8 -> :sswitch_2c
    .end sparse-switch
.end method

.method public static whitelist createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/media/ThumbnailUtils;->convertKind(I)Landroid/util/Size;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f

    return-object p0

    .line 224
    :catch_f
    move-exception p0

    .line 225
    const-string p1, "ThumbnailUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    return-object v0
.end method

.method private static greylist-max-p createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 576
    return-void
.end method

.method public static whitelist createVideoThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 360
    :cond_5
    new-instance v0, Landroid/media/ThumbnailUtils$Resizer;

    invoke-direct {v0, p1, p2}, Landroid/media/ThumbnailUtils$Resizer;-><init>(Landroid/util/Size;Landroid/os/CancellationSignal;)V

    .line 361
    :try_start_a
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_f} :catch_8a

    .line 362
    :try_start_f
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object p0

    .line 366
    if-eqz p0, :cond_28

    .line 367
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_7e

    .line 388
    :try_start_24
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_27} :catch_8a

    .line 367
    return-object p0

    .line 370
    :cond_28
    :try_start_28
    new-instance v7, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 371
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v7, p0}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 373
    const/16 p0, 0x12

    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 374
    const/16 p2, 0x13

    invoke-virtual {v1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 380
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-le v0, p0, :cond_64

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-le p0, p2, :cond_64

    .line 381
    nop

    .line 382
    const-wide/16 p0, -0x1

    const/4 p2, 0x2

    invoke-virtual {v1, p0, p1, p2, v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 381
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_60
    .catchall {:try_start_28 .. :try_end_60} :catchall_7e

    .line 388
    :try_start_60
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_63} :catch_8a

    .line 381
    return-object p0

    .line 384
    :cond_64
    nop

    .line 386
    :try_start_65
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 385
    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 384
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_7a
    .catchall {:try_start_65 .. :try_end_7a} :catchall_7e

    .line 388
    :try_start_7a
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_7d
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_7d} :catch_8a

    .line 384
    return-object p0

    .line 361
    :catchall_7e
    move-exception v0

    move-object p0, v0

    :try_start_80
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_89

    :catchall_84
    move-exception v0

    move-object p1, v0

    :try_start_86
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_89
    throw p0
    :try_end_8a
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_8a} :catch_8a

    .line 388
    :catch_8a
    move-exception v0

    move-object p0, v0

    .line 389
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to create thumbnail"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static whitelist createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/media/ThumbnailUtils;->convertKind(I)Landroid/util/Size;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f

    return-object p0

    .line 334
    :catch_f
    move-exception p0

    .line 335
    const-string p1, "ThumbnailUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    return-object v0
.end method

.method public static whitelist extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    .line 402
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 6

    .line 415
    if-nez p0, :cond_4

    .line 416
    const/4 p0, 0x0

    return-object p0

    .line 420
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 421
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1d

    .line 423
    :cond_16
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 425
    :goto_1d
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 426
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 427
    or-int/lit8 p3, p3, 0x1

    invoke-static {v1, p0, p1, p2, p3}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 429
    return-object p0
.end method

.method static synthetic blacklist lambda$createAudioThumbnail$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 184
    const-string p1, ".jpg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    const-string p1, ".png"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method static synthetic blacklist lambda$createAudioThumbnail$1(Ljava/io/File;)I
    .registers 4

    .line 188
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 189
    const-string v0, "albumart.jpg"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x4

    return p0

    .line 190
    :cond_12
    const-string v0, "albumart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ".jpg"

    if-eqz v1, :cond_24

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 p0, 0x3

    return p0

    .line 191
    :cond_24
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 p0, 0x2

    return p0

    .line 192
    :cond_32
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x1

    return p0

    .line 193
    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$createAudioThumbnail$2(Ljava/util/function/ToIntFunction;Ljava/io/File;Ljava/io/File;)I
    .registers 3

    .line 196
    invoke-interface {p0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private static greylist-max-p makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 457
    :try_start_0
    const-string v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 458
    :catch_7
    move-exception p0

    .line 459
    const/4 p0, 0x0

    return-object p0
.end method

.method private static greylist-max-p transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 473
    move/from16 v7, p2

    move/from16 v8, p3

    and-int/lit8 v2, p4, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_c

    move v2, v3

    goto :goto_d

    :cond_c
    move v2, v9

    .line 474
    :goto_d
    and-int/lit8 v4, p4, 0x2

    if-eqz v4, :cond_13

    move v10, v3

    goto :goto_14

    :cond_13
    move v10, v9

    .line 476
    :goto_14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v7

    .line 477
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v8

    .line 478
    const/4 v5, 0x0

    if-nez v2, :cond_76

    if-ltz v3, :cond_25

    if-gez v4, :cond_76

    .line 485
    :cond_25
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 489
    div-int/lit8 v3, v3, 0x2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 490
    div-int/lit8 v4, v4, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 491
    new-instance v6, Landroid/graphics/Rect;

    .line 494
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v3

    .line 495
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v11, v4

    invoke-direct {v6, v3, v4, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 496
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v7, v3

    div-int/lit8 v3, v3, 0x2

    .line 497
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v8, v4

    div-int/lit8 v4, v4, 0x2

    .line 498
    new-instance v9, Landroid/graphics/Rect;

    sub-int/2addr v7, v3

    sub-int/2addr v8, v4

    invoke-direct {v9, v3, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 503
    invoke-virtual {v2, p1, v6, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 504
    if-eqz v10, :cond_72

    .line 505
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 507
    :cond_72
    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 508
    return-object v0

    .line 510
    :cond_76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 511
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 513
    div-float v4, v2, v3

    .line 514
    int-to-float v6, v7

    int-to-float v11, v8

    div-float v12, v6, v11

    .line 516
    cmpl-float v4, v4, v12

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f666666    # 0.9f

    if-lez v4, :cond_a1

    .line 517
    div-float/2addr v11, v3

    .line 518
    cmpg-float v2, v11, v13

    if-ltz v2, :cond_9b

    cmpl-float v2, v11, v12

    if-lez v2, :cond_99

    goto :goto_9b

    .line 521
    :cond_99
    move-object v0, v5

    goto :goto_9f

    .line 519
    :cond_9b
    :goto_9b
    invoke-virtual {p0, v11, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v0, p0

    .line 523
    :goto_9f
    move-object v5, v0

    goto :goto_b0

    .line 524
    :cond_a1
    div-float/2addr v6, v2

    .line 525
    cmpg-float v2, v6, v13

    if-ltz v2, :cond_ac

    cmpl-float v2, v6, v12

    if-lez v2, :cond_ab

    goto :goto_ac

    .line 528
    :cond_ab
    goto :goto_b0

    .line 526
    :cond_ac
    :goto_ac
    invoke-virtual {p0, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, p0

    .line 533
    :goto_b0
    if-eqz v5, :cond_c4

    .line 535
    nop

    .line 536
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 535
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_c5

    .line 538
    :cond_c4
    move-object v1, p1

    .line 541
    :goto_c5
    if-eqz v10, :cond_cc

    if-eq v1, p1, :cond_cc

    .line 542
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 545
    :cond_cc
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 546
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 548
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v3, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 555
    if-eq v2, v1, :cond_ef

    .line 556
    if-nez v10, :cond_ec

    if-eq v1, p1, :cond_ef

    .line 557
    :cond_ec
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 561
    :cond_ef
    return-object v2
.end method
