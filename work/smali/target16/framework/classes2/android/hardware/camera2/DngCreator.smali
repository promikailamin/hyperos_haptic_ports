.class public final Landroid/hardware/camera2/DngCreator;
.super Ljava/lang/Object;
.source "DngCreator.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final greylist-max-o BYTES_PER_RGB_PIX:I = 0x3

.field private static final greylist-max-o DEFAULT_PIXEL_STRIDE:I = 0x2

.field private static final greylist-max-o GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field private static final greylist-max-o GPS_LAT_REF_NORTH:Ljava/lang/String; = "N"

.field private static final greylist-max-o GPS_LAT_REF_SOUTH:Ljava/lang/String; = "S"

.field private static final greylist-max-o GPS_LONG_REF_EAST:Ljava/lang/String; = "E"

.field private static final greylist-max-o GPS_LONG_REF_WEST:Ljava/lang/String; = "W"

.field public static final whitelist MAX_THUMBNAIL_DIMENSION:I = 0x100

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DngCreator"

.field private static final greylist-max-o TAG_ORIENTATION_UNKNOWN:I = 0x9

.field private static final greylist-max-o TIFF_DATETIME_FORMAT:Ljava/lang/String; = "yyyy:MM:dd HH:mm:ss"

.field private static final greylist-max-o sExifGPSDateStamp:Ljava/text/DateFormat;


# instance fields
.field private final greylist-max-o mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 475
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    .line 481
    sget-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 677
    invoke-static {}, Landroid/hardware/camera2/DngCreator;->nativeClassInit()V

    .line 678
    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    .registers 9

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    nop

    .line 478
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 89
    if-eqz p1, :cond_8e

    if-eqz p2, :cond_8e

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    nop

    .line 98
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 101
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_56

    .line 105
    :cond_2f
    if-nez v2, :cond_38

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_56

    .line 111
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensor timestamp source is unexpected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DngCreator"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 116
    :goto_56
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 117
    nop

    .line 118
    if-eqz v4, :cond_6a

    .line 119
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 124
    :cond_6a
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy:MM:dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 126
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/DngCreator;->nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V

    .line 133
    return-void

    .line 90
    :cond_8e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument to DngCreator constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static greylist-max-o colorToRgb(II[B)V
    .registers 5

    .line 541
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    .line 542
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 543
    add-int/lit8 p1, p1, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, p2, p1

    .line 545
    return-void
.end method

.method private static greylist-max-o convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .registers 13

    .line 611
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 612
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 613
    mul-int/lit8 v0, v3, 0x3

    mul-int v1, v0, v8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 615
    new-array v1, v3, [I

    .line 616
    new-array v10, v0, [B

    .line 617
    const/4 v11, 0x0

    move v5, v11

    :goto_16
    if-ge v5, v8, :cond_34

    .line 618
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move v6, v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 620
    move p0, v11

    :goto_21
    if-ge p0, v3, :cond_2d

    .line 621
    aget v2, v1, p0

    mul-int/lit8 v4, p0, 0x3

    invoke-static {v2, v4, v10}, Landroid/hardware/camera2/DngCreator;->colorToRgb(II[B)V

    .line 620
    add-int/lit8 p0, p0, 0x1

    goto :goto_21

    .line 623
    :cond_2d
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 617
    add-int/lit8 v5, v5, 0x1

    move-object p0, v0

    goto :goto_16

    .line 626
    :cond_34
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 627
    return-object v9
.end method

.method private static greylist-max-o convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .registers 24

    .line 552
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 553
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 554
    mul-int/lit8 v2, v0, 0x3

    mul-int v3, v2, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 556
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 557
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    .line 558
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    .line 560
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 561
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 562
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 564
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 565
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 566
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 568
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    .line 569
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    .line 570
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v15

    .line 572
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    .line 573
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    .line 574
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    .line 576
    move/from16 v16, v5

    const/4 v5, 0x3

    new-array v5, v5, [B

    aput-byte v16, v5, v16

    aput-byte v16, v5, v7

    aput-byte v16, v5, v9

    .line 577
    add-int/lit8 v17, v0, -0x1

    mul-int v17, v17, v4

    move/from16 v18, v7

    add-int/lit8 v7, v17, 0x1

    new-array v7, v7, [B

    .line 578
    div-int/lit8 v17, v0, 0x2

    add-int/lit8 v17, v17, -0x1

    mul-int v19, v6, v17

    move/from16 p0, v9

    add-int/lit8 v9, v19, 0x1

    new-array v9, v9, [B

    .line 579
    mul-int v17, v17, v8

    move/from16 v19, v4

    add-int/lit8 v4, v17, 0x1

    new-array v4, v4, [B

    .line 580
    new-array v2, v2, [B

    .line 581
    move/from16 v17, v6

    move/from16 v6, v16

    :goto_81
    if-ge v6, v1, :cond_cd

    .line 582
    div-int/lit8 v20, v6, 0x2

    .line 583
    move/from16 v21, v1

    mul-int v1, v13, v6

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 584
    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 585
    mul-int v1, v15, v20

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 586
    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 587
    mul-int v1, v14, v20

    invoke-virtual {v12, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 588
    invoke-virtual {v12, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 589
    move/from16 v1, v16

    :goto_a1
    if-ge v1, v0, :cond_c3

    .line 590
    div-int/lit8 v20, v1, 0x2

    .line 591
    mul-int v22, v19, v1

    aget-byte v22, v7, v22

    aput-byte v22, v5, v16

    .line 592
    mul-int v22, v17, v20

    aget-byte v22, v9, v22

    aput-byte v22, v5, v18

    .line 593
    mul-int v20, v20, v8

    aget-byte v20, v4, v20

    aput-byte v20, v5, p0

    .line 594
    move/from16 v20, v0

    mul-int/lit8 v0, v1, 0x3

    invoke-static {v5, v0, v2}, Landroid/hardware/camera2/DngCreator;->yuvToRgb([BI[B)V

    .line 589
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v20

    goto :goto_a1

    .line 596
    :cond_c3
    move/from16 v20, v0

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 581
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v21

    goto :goto_81

    .line 599
    :cond_cd
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 600
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 601
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 602
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 603
    return-object v3
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private synchronized native greylist-max-o nativeDestroy()V
.end method

.method private synchronized native greylist-max-o nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V
.end method

.method private synchronized native greylist-max-o nativeSetDescription(Ljava/lang/String;)V
.end method

.method private synchronized native greylist-max-o nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V
.end method

.method private synchronized native greylist-max-o nativeSetOrientation(I)V
.end method

.method private synchronized native greylist-max-o nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V
.end method

.method private synchronized native greylist-max-o nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private synchronized native greylist-max-o nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static greylist-max-o toExifLatLong(D)[I
    .registers 8

    .line 635
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 636
    double-to-int v0, p0

    .line 637
    int-to-double v1, v0

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v1

    .line 638
    double-to-int v2, p0

    .line 639
    int-to-double v3, v2

    sub-double/2addr p0, v3

    const-wide v3, 0x40b7700000000000L    # 6000.0

    mul-double/2addr p0, v3

    .line 640
    double-to-int v4, p0

    .line 641
    const/4 v3, 0x1

    const/16 v5, 0x64

    const/4 v1, 0x1

    filled-new-array/range {v0 .. v5}, [I

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    move/from16 v5, p6

    if-lez p1, :cond_7b

    if-lez p2, :cond_7b

    .line 499
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    .line 500
    int-to-long v2, v5

    int-to-long v6, p2

    mul-long/2addr v2, v6

    add-long v2, v2, p7

    .line 501
    cmp-long v4, v0, v2

    if-ltz v4, :cond_52

    .line 505
    mul-int v0, p5, p1

    .line 506
    if-gt v0, v5, :cond_2f

    .line 510
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 511
    nop

    .line 512
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v9

    .line 511
    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v1, p4

    move v6, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroid/hardware/camera2/DngCreator;->nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V

    .line 513
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 514
    return-void

    .line 507
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid image pixel stride, row byte width "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is too large, expecting "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 502
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Image size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is too small (must be larger than "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 496
    :cond_7b
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Image with invalid width, height: ("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ","

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") passed to write"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private static greylist-max-o yuvToRgb([BI[B)V
    .registers 9

    .line 522
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    .line 523
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    .line 524
    const/4 v2, 0x2

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    .line 527
    const/high16 v3, 0x43000000    # 128.0f

    sub-float/2addr p0, v3

    const v4, 0x3fb374bc    # 1.402f

    mul-float/2addr v4, p0

    add-float/2addr v4, v0

    .line 528
    sub-float/2addr v1, v3

    const v3, 0x3eb0331e    # 0.34414f

    mul-float/2addr v3, v1

    sub-float v3, v0, v3

    const v5, 0x3f36d1e1    # 0.71414f

    mul-float/2addr p0, v5

    sub-float/2addr v3, p0

    .line 529
    const p0, 0x3fe2d0e5    # 1.772f

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    .line 532
    const/high16 p0, 0x437f0000    # 255.0f

    invoke-static {p0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    .line 533
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    .line 534
    add-int/2addr p1, v2

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v4, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p1

    .line 535
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 451
    invoke-direct {p0}, Landroid/hardware/camera2/DngCreator;->nativeDestroy()V

    .line 452
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 462
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 464
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 465
    nop

    .line 466
    return-void

    .line 464
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 465
    throw v0
.end method

.method public whitelist setDescription(Ljava/lang/String;)Landroid/hardware/camera2/DngCreator;
    .registers 3

    .line 299
    if-eqz p1, :cond_6

    .line 302
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetDescription(Ljava/lang/String;)V

    .line 303
    return-object p0

    .line 300
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null description passed to setDescription."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;
    .registers 15

    .line 266
    if-eqz p1, :cond_5f

    .line 269
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 270
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 271
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    .line 273
    invoke-static {v0, v1}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    move-result-object v7

    .line 274
    invoke-static {v2, v3}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    move-result-object v9

    .line 275
    const-wide/16 v10, 0x0

    cmpl-double p1, v0, v10

    if-ltz p1, :cond_1f

    const-string p1, "N"

    goto :goto_21

    :cond_1f
    const-string p1, "S"

    :goto_21
    move-object v8, p1

    .line 276
    cmpl-double p1, v2, v10

    if-ltz p1, :cond_29

    const-string p1, "E"

    goto :goto_2b

    :cond_29
    const-string p1, "W"

    :goto_2b
    move-object v10, p1

    .line 278
    sget-object p1, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 279
    iget-object p1, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {p1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 280
    iget-object p1, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object p1, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 281
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object p1, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 282
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x1

    filled-new-array/range {v1 .. v6}, [I

    move-result-object v12

    .line 283
    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Landroid/hardware/camera2/DngCreator;->nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V

    .line 284
    return-object v6

    .line 267
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null location passed to setLocation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOrientation(I)Landroid/hardware/camera2/DngCreator;
    .registers 5

    .line 158
    if-ltz p1, :cond_e

    const/16 v0, 0x8

    if-gt p1, v0, :cond_e

    .line 165
    if-nez p1, :cond_a

    .line 166
    const/16 p1, 0x9

    .line 168
    :cond_a
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetOrientation(I)V

    .line 169
    return-object p0

    .line 160
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a valid EXIF orientation value"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setThumbnail(Landroid/graphics/Bitmap;)Landroid/hardware/camera2/DngCreator;
    .registers 7

    .line 188
    if-eqz p1, :cond_45

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 195
    const/16 v2, 0x100

    if-gt v0, v2, :cond_18

    if-gt v1, v2, :cond_18

    .line 201
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 202
    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    .line 204
    return-object p0

    .line 196
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thumbnail dimensions width,height ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") too large, dimensions must be smaller than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null argument to setThumbnail"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setThumbnail(Landroid/media/Image;)Landroid/hardware/camera2/DngCreator;
    .registers 7

    .line 224
    if-eqz p1, :cond_66

    .line 228
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    .line 229
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4d

    .line 233
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 234
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 236
    const/16 v2, 0x100

    if-gt v0, v2, :cond_20

    if-gt v1, v2, :cond_20

    .line 242
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 243
    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    .line 245
    return-object p0

    .line 237
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thumbnail dimensions width,height ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") too large, dimensions must be smaller than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Image format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null argument to setThumbnail"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    if-eqz p1, :cond_37

    .line 394
    if-eqz p2, :cond_2f

    .line 396
    if-eqz p3, :cond_27

    .line 398
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_1f

    .line 402
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 403
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 405
    mul-int/lit8 v7, v2, 0x2

    const/4 v6, 0x2

    move-object v1, p0

    move-object v5, p1

    move-object v4, p3

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    .line 407
    return-void

    .line 399
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative offset passed to writeByteBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null pixels passed to writeByteBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null size passed to writeByteBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 393
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null dngOutput passed to writeByteBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    if-eqz p1, :cond_61

    .line 430
    if-eqz p2, :cond_59

    .line 434
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    .line 435
    const/16 v1, 0x20

    if-ne v0, v1, :cond_40

    .line 439
    invoke-virtual {p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_38

    array-length v1, v0

    if-lez v1, :cond_38

    .line 444
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 445
    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    move-result v5

    aget-object p2, v0, v1

    .line 446
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    aget-object p2, v0, v1

    invoke-virtual {p2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    .line 445
    const-wide/16 v10, 0x0

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v11}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    .line 447
    return-void

    .line 441
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Image with no planes passed to writeImage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported image format "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 431
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null pixels to writeImage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null dngOutput to writeImage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist writeInputStream(Ljava/io/OutputStream;Landroid/util/Size;Ljava/io/InputStream;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    if-eqz p1, :cond_61

    .line 339
    if-eqz p2, :cond_59

    .line 341
    if-eqz p3, :cond_51

    .line 343
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_49

    .line 347
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 348
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 349
    if-lez v4, :cond_20

    if-lez v5, :cond_20

    .line 353
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/DngCreator;->nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V

    .line 354
    return-void

    .line 350
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Size with invalid width, height: ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") passed to writeInputStream"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative offset passed to writeInputStream"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null pixels passed to writeInputStream"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 340
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null size passed to writeInputStream"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 338
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null dngOutput passed to writeInputStream"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
