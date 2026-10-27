.class Landroid/app/WallpaperManager$CachedWallpaper;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedWallpaper"
.end annotation


# instance fields
.field final blacklist mCachedWallpaper:Landroid/graphics/Bitmap;

.field final blacklist mCachedWallpaperUserId:I

.field final blacklist mWhich:I


# direct methods
.method constructor blacklist <init>(Landroid/graphics/Bitmap;II)V
    .registers 4

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p1, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 556
    iput p2, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaperUserId:I

    .line 557
    iput p3, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mWhich:I

    .line 558
    return-void
.end method


# virtual methods
.method blacklist isValid(II)Z
    .registers 4

    .line 565
    iget v0, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaperUserId:I

    if-ne p1, v0, :cond_12

    iget p1, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mWhich:I

    if-ne p2, p1, :cond_12

    iget-object p1, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 566
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 565
    :goto_13
    return p1
.end method
