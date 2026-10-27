.class public final Landroid/app/wallpaper/WallpaperDescription$Builder;
.super Ljava/lang/Object;
.source "WallpaperDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaper/WallpaperDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mComponent:Landroid/content/ComponentName;

.field private blacklist mContent:Landroid/os/PersistableBundle;

.field private blacklist mContextDescription:Ljava/lang/CharSequence;

.field private blacklist mContextUri:Landroid/net/Uri;

.field private blacklist mCropHints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDescription:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mSampleSize:F

.field private blacklist mThumbnail:Landroid/net/Uri;

.field private blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic blacklist $r8$lambda$36Y_d4EmFtzzpojxL_CIFWSJTiE(Landroid/app/wallpaper/WallpaperDescription$Builder;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->lambda$setCropHints$0(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mDescription:Ljava/util/List;

    .line 393
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContent:Landroid/os/PersistableBundle;

    .line 394
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mCropHints:Landroid/util/SparseArray;

    .line 396
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mSampleSize:F

    .line 399
    return-void
.end method

.method private synthetic blacklist lambda$setCropHints$0(Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 4

    .line 521
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mCropHints:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/wallpaper/WallpaperDescription;
    .registers 13

    .line 556
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription;

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mId:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mThumbnail:Landroid/net/Uri;

    iget-object v4, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mDescription:Ljava/util/List;

    iget-object v6, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContextUri:Landroid/net/Uri;

    iget-object v7, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContextDescription:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContent:Landroid/os/PersistableBundle;

    iget-object v9, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mCropHints:Landroid/util/SparseArray;

    iget v10, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mSampleSize:F

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/app/wallpaper/WallpaperDescription;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;FLandroid/app/wallpaper/WallpaperDescription-IA;)V

    return-object v0
.end method

.method public blacklist setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 2

    .line 413
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mComponent:Landroid/content/ComponentName;

    .line 414
    return-object p0
.end method

.method public whitelist setContent(Landroid/os/PersistableBundle;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 2

    .line 501
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContent:Landroid/os/PersistableBundle;

    .line 502
    return-object p0
.end method

.method public whitelist setContextDescription(Ljava/lang/CharSequence;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 2

    .line 485
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContextDescription:Ljava/lang/CharSequence;

    .line 486
    return-object p0
.end method

.method public whitelist setContextUri(Landroid/net/Uri;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 2

    .line 474
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContextUri:Landroid/net/Uri;

    .line 475
    return-object p0
.end method

.method public whitelist setCropHints(Landroid/util/SparseArray;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/app/wallpaper/WallpaperDescription$Builder;"
        }
    .end annotation

    .line 535
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mCropHints:Landroid/util/SparseArray;

    .line 536
    return-object p0
.end method

.method public whitelist setCropHints(Ljava/util/Map;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/app/wallpaper/WallpaperDescription$Builder;"
        }
    .end annotation

    .line 519
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mCropHints:Landroid/util/SparseArray;

    .line 520
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/wallpaper/WallpaperDescription$Builder$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpaper/WallpaperDescription$Builder;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 522
    return-object p0
.end method

.method public whitelist setDescription(Ljava/util/List;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/app/wallpaper/WallpaperDescription$Builder;"
        }
    .end annotation

    .line 462
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mDescription:Ljava/util/List;

    .line 463
    return-object p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 2

    .line 428
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mId:Ljava/lang/String;

    .line 429
    return-object p0
.end method

.method public blacklist setSampleSize(F)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 2

    .line 549
    iput p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mSampleSize:F

    .line 550
    return-object p0
.end method

.method public whitelist setThumbnail(Landroid/net/Uri;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 2

    .line 439
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mThumbnail:Landroid/net/Uri;

    .line 440
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 2

    .line 450
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 451
    return-object p0
.end method
