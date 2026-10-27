.class public Lcom/miui/mishare/app/util/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final blacklist COLOR_MODE_COLOR:I = 0x2

.field public static final blacklist COLOR_MODE_MONOCHROME:I = 0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PrintHelperKitkat"

.field private static final blacklist MAX_PRINT_SIZE:I = 0xdac

.field public static final blacklist ORIENTATION_LANDSCAPE:I = 0x1

.field public static final blacklist ORIENTATION_PORTRAIT:I = 0x2

.field public static final blacklist SCALE_MODE_FILL:I = 0x2

.field public static final blacklist SCALE_MODE_FIT:I = 0x1


# instance fields
.field blacklist mAppContext:Landroid/content/Context;

.field blacklist mColorMode:I

.field blacklist mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field private final blacklist mLock:Ljava/lang/Object;

.field blacklist mOrientation:I

.field blacklist mScaleMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/miui/mishare/app/util/PrintHelper;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconvertBitmapForColorMode(Lcom/miui/mishare/app/util/PrintHelper;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/app/util/PrintHelper;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMatrix(Lcom/miui/mishare/app/util/PrintHelper;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/mishare/app/util/PrintHelper;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mloadConstrainedBitmap(Lcom/miui/mishare/app/util/PrintHelper;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/app/util/PrintHelper;->loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mLock:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mScaleMode:I

    .line 91
    iput v0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mColorMode:I

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mOrientation:I

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mAppContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method private blacklist convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "colorMode"    # I

    .line 609
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    .line 610
    return-object p1

    .line 613
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 615
    .local v0, "grayscale":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 616
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 617
    .local v2, "p":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 618
    .local v3, "cm":Landroid/graphics/ColorMatrix;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 619
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 620
    .local v5, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 621
    invoke-virtual {v1, p1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 622
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 624
    return-object v0
.end method

.method private blacklist getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 11
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "content"    # Landroid/graphics/RectF;
    .param p4, "fittingMode"    # I

    .line 295
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 298
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 299
    .local v1, "scale":F
    const/4 v2, 0x2

    if-ne p4, v2, :cond_19

    .line 300
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_23

    .line 302
    :cond_19
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 304
    :goto_23
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 307
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, p1

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 309
    .local v2, "translateX":F
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p2

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 311
    .local v4, "translateY":F
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 312
    return-object v0
.end method

.method private blacklist loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "o"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 573
    const-string v0, "close fail "

    const-string v1, "PrintHelperKitkat"

    if-eqz p1, :cond_89

    iget-object v2, p0, Lcom/miui/mishare/app/util/PrintHelper;->mAppContext:Landroid/content/Context;

    if-eqz v2, :cond_89

    .line 576
    const/4 v3, 0x0

    .line 579
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    :try_start_c
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_14} :catch_57
    .catchall {:try_start_c .. :try_end_14} :catchall_55

    move-object v3, v2

    .line 583
    nop

    .line 585
    :try_start_16
    invoke-static {v3, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 587
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/miui/mishare/app/util/PrintHelper;->mAppContext:Landroid/content/Context;

    .line 588
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/miui/mishare/app/util/ImageOrientationUtil;->getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v4

    .line 587
    invoke-static {v4}, Lcom/miui/mishare/app/util/ImageOrientationUtil;->getExifRotation(Ljava/io/File;)I

    move-result v4

    move v11, v4

    .line 589
    .local v11, "orientation":I
    if-lez v11, :cond_49

    if-eqz v2, :cond_49

    .line 590
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object v12, v4

    .line 591
    .local v12, "matrix":Landroid/graphics/Matrix;
    int-to-float v4, v11

    invoke-virtual {v12, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 592
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 593
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    .line 592
    move-object v4, v2

    move-object v9, v12

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_48
    .catchall {:try_start_16 .. :try_end_48} :catchall_55

    move-object v2, v4

    .line 596
    .end local v12    # "matrix":Landroid/graphics/Matrix;
    :cond_49
    nop

    .line 598
    if-eqz v3, :cond_54

    .line 600
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 603
    goto :goto_54

    .line 601
    :catch_50
    move-exception v4

    .line 602
    .local v4, "t":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    .end local v4    # "t":Ljava/io/IOException;
    :cond_54
    :goto_54
    return-object v2

    .line 598
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "orientation":I
    :catchall_55
    move-exception v2

    goto :goto_7e

    .line 580
    :catch_57
    move-exception v2

    .line 581
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadBitmap failed. catch SecurityException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_55

    .line 582
    nop

    .line 598
    if-eqz v3, :cond_7d

    .line 600
    :try_start_75
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    .line 603
    goto :goto_7d

    .line 601
    :catch_79
    move-exception v5

    .line 602
    .local v5, "t":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    .end local v5    # "t":Ljava/io/IOException;
    :cond_7d
    :goto_7d
    return-object v4

    .line 598
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_7e
    if-eqz v3, :cond_88

    .line 600
    :try_start_80
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    .line 603
    goto :goto_88

    .line 601
    :catch_84
    move-exception v4

    .line 602
    .restart local v4    # "t":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    .end local v4    # "t":Ljava/io/IOException;
    :cond_88
    :goto_88
    throw v2

    .line 574
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to loadBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSideLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 523
    if-lez p2, :cond_66

    if-eqz p1, :cond_66

    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_66

    .line 527
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 528
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 529
    invoke-direct {p0, p1, v0}, Lcom/miui/mishare/app/util/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 531
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 532
    .local v2, "w":I
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 535
    .local v3, "h":I
    const/4 v4, 0x0

    if-lez v2, :cond_65

    if-gtz v3, :cond_1d

    goto :goto_65

    .line 540
    :cond_1d
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 542
    .local v5, "imageSide":I
    const/4 v6, 0x1

    .line 543
    .local v6, "sampleSize":I
    :goto_22
    if-le v5, p2, :cond_29

    .line 544
    ushr-int/lit8 v5, v5, 0x1

    .line 545
    shl-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 549
    :cond_29
    if-lez v6, :cond_64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/2addr v7, v6

    if-gtz v7, :cond_33

    goto :goto_64

    .line 552
    :cond_33
    const/4 v7, 0x0

    .line 553
    .local v7, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    iget-object v8, p0, Lcom/miui/mishare/app/util/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 554
    :try_start_37
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v9, p0, Lcom/miui/mishare/app/util/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 555
    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 556
    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 557
    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    move-object v7, v1

    .line 558
    monitor-exit v8
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_61

    .line 560
    :try_start_48
    invoke-direct {p0, p1, v7}, Lcom/miui/mishare/app/util/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_56

    .line 562
    iget-object v8, p0, Lcom/miui/mishare/app/util/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 563
    :try_start_4f
    iput-object v4, p0, Lcom/miui/mishare/app/util/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 564
    monitor-exit v8

    .line 560
    return-object v1

    .line 564
    :catchall_53
    move-exception v1

    monitor-exit v8
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_53

    throw v1

    .line 562
    :catchall_56
    move-exception v1

    iget-object v9, p0, Lcom/miui/mishare/app/util/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 563
    :try_start_5a
    iput-object v4, p0, Lcom/miui/mishare/app/util/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 564
    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    .line 565
    throw v1

    .line 564
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1

    .line 558
    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v8
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v1

    .line 550
    .end local v7    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_64
    :goto_64
    return-object v4

    .line 536
    .end local v5    # "imageSide":I
    .end local v6    # "sampleSize":I
    :cond_65
    :goto_65
    return-object v4

    .line 524
    .end local v0    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to getScaledBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getColorMode()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mColorMode:I

    return v0
.end method

.method public blacklist getOrientation()I
    .registers 2

    .line 154
    iget v0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mOrientation:I

    return v0
.end method

.method public blacklist getScaleMode()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mScaleMode:I

    return v0
.end method

.method public blacklist printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;)V
    .registers 16
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;

    .line 176
    if-nez p2, :cond_3

    .line 177
    return-void

    .line 179
    :cond_3
    iget v6, p0, Lcom/miui/mishare/app/util/PrintHelper;->mScaleMode:I

    .line 180
    .local v6, "fittingMode":I
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    .line 181
    .local v7, "context":Landroid/content/Context;
    if-nez v7, :cond_18

    .line 182
    const-string v0, "PrintHelperKitkat"

    const-string v1, "printBitmap(String, Bitmap, Callback) mContext == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 186
    :cond_18
    const-string v0, "print"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/print/PrintManager;

    .line 187
    .local v8, "printManager":Landroid/print/PrintManager;
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    .line 188
    .local v0, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_31

    .line 189
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    move-object v9, v0

    goto :goto_32

    .line 188
    :cond_31
    move-object v9, v0

    .line 191
    .end local v0    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    .local v9, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :goto_32
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 192
    invoke-virtual {v0, v9}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/miui/mishare/app/util/PrintHelper;->mColorMode:I

    .line 193
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v10

    .line 196
    .local v10, "attr":Landroid/print/PrintAttributes;
    new-instance v11, Lcom/miui/mishare/app/util/PrintHelper$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/mishare/app/util/PrintHelper$1;-><init>(Lcom/miui/mishare/app/util/PrintHelper;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;)V

    invoke-virtual {v8, p1, v11, v10}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 283
    return-void
.end method

.method public blacklist printBitmap(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;)V
    .registers 12
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 326
    iget v6, p0, Lcom/miui/mishare/app/util/PrintHelper;->mScaleMode:I

    .line 328
    .local v6, "fittingMode":I
    new-instance v7, Lcom/miui/mishare/app/util/PrintHelper$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/mishare/app/util/PrintHelper$2;-><init>(Lcom/miui/mishare/app/util/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;I)V

    .line 494
    .local v0, "printDocumentAdapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 495
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1f

    .line 496
    const-string v2, "PrintHelperKitkat"

    const-string v3, "printBitmap(String, Uri, Callback) mContext == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void

    .line 500
    :cond_1f
    const-string v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintManager;

    .line 501
    .local v2, "printManager":Landroid/print/PrintManager;
    new-instance v3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 502
    .local v3, "builder":Landroid/print/PrintAttributes$Builder;
    iget v4, p0, Lcom/miui/mishare/app/util/PrintHelper;->mColorMode:I

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 504
    iget v4, p0, Lcom/miui/mishare/app/util/PrintHelper;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3c

    .line 505
    sget-object v4, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_44

    .line 506
    :cond_3c
    const/4 v5, 0x2

    if-ne v4, v5, :cond_44

    .line 507
    sget-object v4, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 509
    :cond_44
    :goto_44
    invoke-virtual {v3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v4

    .line 511
    .local v4, "attr":Landroid/print/PrintAttributes;
    invoke-virtual {v2, p1, v0, v4}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 512
    return-void
.end method

.method public blacklist setColorMode(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .line 133
    iput p1, p0, Lcom/miui/mishare/app/util/PrintHelper;->mColorMode:I

    .line 134
    return-void
.end method

.method public blacklist setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 144
    iput p1, p0, Lcom/miui/mishare/app/util/PrintHelper;->mOrientation:I

    .line 145
    return-void
.end method

.method public blacklist setScaleMode(I)V
    .registers 2
    .param p1, "scaleMode"    # I

    .line 111
    iput p1, p0, Lcom/miui/mishare/app/util/PrintHelper;->mScaleMode:I

    .line 112
    return-void
.end method
