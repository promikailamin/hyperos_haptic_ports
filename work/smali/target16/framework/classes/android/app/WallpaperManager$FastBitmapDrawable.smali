.class Landroid/app/WallpaperManager$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private final greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field private greylist-max-o mDrawLeft:I

.field private greylist-max-o mDrawTop:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mWidth:I


# direct methods
.method private constructor greylist-max-o <init>(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 477
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 478
    iput-object p1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 479
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    .line 480
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    .line 482
    iget p1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Landroid/app/WallpaperManager$FastBitmapDrawable;->setBounds(IIII)V

    .line 484
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 485
    iget-object p1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 486
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 490
    iget-object v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawTop:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 491
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 531
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 526
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public whitelist getMinimumHeight()I
    .registers 2

    .line 541
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public whitelist getMinimumWidth()I
    .registers 2

    .line 536
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 495
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setAlpha(I)V
    .registers 3

    .line 506
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported with this drawable"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setBounds(IIII)V
    .registers 6

    .line 500
    sub-int/2addr p3, p1

    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    iput p1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawLeft:I

    .line 501
    sub-int/2addr p4, p2

    iget p1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    iput p2, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawTop:I

    .line 502
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 511
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported with this drawable"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setDither(Z)V
    .registers 3

    .line 516
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported with this drawable"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setFilterBitmap(Z)V
    .registers 3

    .line 521
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported with this drawable"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
