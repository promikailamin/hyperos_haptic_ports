.class final Landroid/app/DisabledWallpaperManager;
.super Landroid/app/WallpaperManager;
.source "DisabledWallpaperManager.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sInstance:Landroid/app/DisabledWallpaperManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-class v0, Landroid/app/DisabledWallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/DisabledWallpaperManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Landroid/app/WallpaperManager;-><init>()V

    .line 63
    return-void
.end method

.method static blacklist getInstance()Landroid/app/DisabledWallpaperManager;
    .registers 1

    .line 56
    sget-object v0, Landroid/app/DisabledWallpaperManager;->sInstance:Landroid/app/DisabledWallpaperManager;

    if-nez v0, :cond_b

    .line 57
    new-instance v0, Landroid/app/DisabledWallpaperManager;

    invoke-direct {v0}, Landroid/app/DisabledWallpaperManager;-><init>()V

    sput-object v0, Landroid/app/DisabledWallpaperManager;->sInstance:Landroid/app/DisabledWallpaperManager;

    .line 59
    :cond_b
    sget-object v0, Landroid/app/DisabledWallpaperManager;->sInstance:Landroid/app/DisabledWallpaperManager;

    return-object v0
.end method

.method private static blacklist unsupported()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 505
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist unsupportedBoolean()Z
    .registers 1

    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist unsupportedInt()I
    .registers 1

    .line 515
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 237
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public whitelist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V
    .registers 3

    .line 205
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V
    .registers 4

    .line 211
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public whitelist clear()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 491
    return-void
.end method

.method public whitelist clear(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 496
    return-void
.end method

.method public whitelist clearWallpaper()V
    .registers 1

    .line 406
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 407
    return-void
.end method

.method public whitelist clearWallpaper(II)V
    .registers 3

    .line 411
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 412
    return-void
.end method

.method public whitelist clearWallpaperOffsets(Landroid/os/IBinder;)V
    .registers 2

    .line 485
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 486
    return-void
.end method

.method public whitelist forgetLoadedWallpaper()V
    .registers 1

    .line 257
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 258
    return-void
.end method

.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 129
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBitmap(Z)Landroid/graphics/Bitmap;
    .registers 2

    .line 134
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public blacklist getBitmap(ZI)Landroid/graphics/Bitmap;
    .registers 3

    .line 139
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public blacklist getBitmapAsUser(IZ)Landroid/graphics/Bitmap;
    .registers 3

    .line 144
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public blacklist getBitmapAsUser(IZI)Landroid/graphics/Bitmap;
    .registers 4

    .line 149
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public blacklist getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;
    .registers 5

    .line 155
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public blacklist getBitmapCrops(I)Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 182
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 183
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    return-object p1
.end method

.method public blacklist getBitmapCrops(Landroid/graphics/Point;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public blacklist getBitmapCrops(Ljava/util/List;IZ)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;IZ)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public whitelist getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 87
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 92
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public whitelist getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 98
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public whitelist getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 104
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public whitelist getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 2

    .line 296
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    return-object p1
.end method

.method public whitelist getDesiredMinimumHeight()I
    .registers 2

    .line 386
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .registers 2

    .line 381
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 82
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 114
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public greylist getIWallpaperManager()Landroid/app/IWallpaperManager;
    .registers 2

    .line 67
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method public whitelist getWallpaperColors(I)Landroid/app/WallpaperColors;
    .registers 2

    .line 226
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperColors;

    return-object p1
.end method

.method public blacklist getWallpaperColors(II)Landroid/app/WallpaperColors;
    .registers 3

    .line 231
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperColors;

    return-object p1
.end method

.method public blacklist getWallpaperColors(Landroid/graphics/Bitmap;Ljava/util/Map;)Landroid/app/WallpaperColors;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/app/WallpaperColors;"
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperColors;

    return-object p1
.end method

.method public whitelist getWallpaperDimAmount()F
    .registers 2

    .line 427
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public whitelist getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 200
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    return-object p1
.end method

.method public blacklist getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 247
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    return-object p1
.end method

.method public whitelist getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 252
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    return-object p1
.end method

.method public whitelist getWallpaperId(I)I
    .registers 2

    .line 286
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result p1

    return p1
.end method

.method public blacklist getWallpaperIdForUser(II)I
    .registers 3

    .line 291
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result p1

    return p1
.end method

.method public whitelist getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 2

    .line 262
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public whitelist getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 2

    .line 271
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperInfo;

    return-object p1
.end method

.method public blacklist getWallpaperInfo(II)Landroid/app/WallpaperInfo;
    .registers 3

    .line 276
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperInfo;

    return-object p1
.end method

.method public blacklist getWallpaperInfoFile()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 281
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getWallpaperInfoForUser(I)Landroid/app/WallpaperInfo;
    .registers 2

    .line 266
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperInfo;

    return-object p1
.end method

.method public whitelist hasResourceWallpaper(I)Z
    .registers 2

    .line 376
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result p1

    return p1
.end method

.method public blacklist isLockscreenLiveWallpaperEnabled()Z
    .registers 2

    .line 72
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist isSetWallpaperAllowed()Z
    .registers 2

    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isWallpaperBackupEligible(I)Z
    .registers 2

    .line 500
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result p1

    return p1
.end method

.method public whitelist isWallpaperSupported()Z
    .registers 2

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lockScreenWallpaperExists()Z
    .registers 2

    .line 432
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public blacklist peekBitmapDimensions()Landroid/graphics/Rect;
    .registers 2

    .line 160
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist peekBitmapDimensions(I)Landroid/graphics/Rect;
    .registers 2

    .line 165
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    return-object p1
.end method

.method public blacklist peekBitmapDimensions(IZ)Landroid/graphics/Rect;
    .registers 3

    .line 170
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    return-object p1
.end method

.method public whitelist peekDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 109
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 119
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;)V
    .registers 2

    .line 242
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 243
    return-void
.end method

.method public whitelist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .registers 2

    .line 216
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V
    .registers 3

    .line 221
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public whitelist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 7

    .line 465
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 466
    return-void
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 319
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 326
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 333
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 313
    return-void
.end method

.method public blacklist setBitmapWithCrops(Landroid/graphics/Bitmap;Ljava/util/Map;ZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;ZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result p1

    return p1
.end method

.method public whitelist setDisplayOffset(Landroid/os/IBinder;II)V
    .registers 4

    .line 401
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 402
    return-void
.end method

.method public whitelist setDisplayPadding(Landroid/graphics/Rect;)V
    .registers 2

    .line 396
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public whitelist setResource(II)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 307
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setResource(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 302
    return-void
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 350
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 357
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setStream(Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 344
    return-void
.end method

.method public whitelist setStreamWithCrops(Ljava/io/InputStream;Landroid/util/SparseArray;ZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;ZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result p1

    return p1
.end method

.method public blacklist setStreamWithCrops(Ljava/io/InputStream;Ljava/util/Map;ZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;ZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result p1

    return p1
.end method

.method public whitelist setWallpaperComponent(Landroid/content/ComponentName;)Z
    .registers 2

    .line 416
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result p1

    return p1
.end method

.method public blacklist setWallpaperComponent(Landroid/content/ComponentName;I)Z
    .registers 3

    .line 437
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result p1

    return p1
.end method

.method public whitelist setWallpaperComponentWithFlags(Landroid/content/ComponentName;I)Z
    .registers 3

    .line 443
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result p1

    return p1
.end method

.method public blacklist setWallpaperComponentWithFlags(Landroid/content/ComponentName;II)Z
    .registers 4

    .line 449
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result p1

    return p1
.end method

.method public whitelist setWallpaperDimAmount(F)V
    .registers 2

    .line 422
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 423
    return-void
.end method

.method public whitelist setWallpaperOffsetSteps(FF)V
    .registers 3

    .line 459
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 460
    return-void
.end method

.method public whitelist setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .registers 4

    .line 454
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 455
    return-void
.end method

.method public blacklist setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 3

    .line 470
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 471
    return-void
.end method

.method public blacklist shouldEnableWideColorGamut()Z
    .registers 2

    .line 77
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist suggestDesiredDimensions(II)V
    .registers 3

    .line 391
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 392
    return-void
.end method

.method public blacklist wallpaperSupportsWcg(I)Z
    .registers 2

    .line 124
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result p1

    return p1
.end method
