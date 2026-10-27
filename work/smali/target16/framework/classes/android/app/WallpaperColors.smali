.class public final Landroid/app/WallpaperColors;
.super Ljava/lang/Object;
.source "WallpaperColors.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperColors$ColorsHints;
    }
.end annotation


# static fields
.field private static final greylist-max-o BRIGHT_IMAGE_MEAN_LUMINANCE:F

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DARK_PIXEL_CONTRAST:F = 5.5f

.field private static final greylist-max-o DARK_THEME_MEAN_LUMINANCE:F = 0.3f

.field private static final blacklist DEBUG_DARK_PIXELS:Z = false

.field public static final greylist-max-o HINT_FROM_BITMAP:I = 0x4

.field public static final whitelist HINT_SUPPORTS_DARK_TEXT:I = 0x1

.field public static final whitelist HINT_SUPPORTS_DARK_THEME:I = 0x2

.field private static final greylist-max-o MAX_BITMAP_SIZE:I = 0x70

.field private static final greylist-max-o MAX_DARK_AREA:F

.field private static final greylist-max-o MAX_WALLPAPER_EXTRACTION_AREA:I = 0x3100

.field private static final greylist-max-o MIN_COLOR_OCCURRENCE:F = 0.05f


# instance fields
.field private final blacklist mAllColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mColorHints:I

.field private final blacklist mMainColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 106
    const-string/jumbo v0, "persist.wallpapercolors.threshold"

    const/16 v1, 0x46

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Landroid/app/WallpaperColors;->BRIGHT_IMAGE_MEAN_LUMINANCE:F

    .line 111
    const-string/jumbo v0, "persist.wallpapercolors.max_dark_area"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sput v0, Landroid/app/WallpaperColors;->MAX_DARK_AREA:F

    .line 426
    new-instance v0, Landroid/app/WallpaperColors$1;

    invoke-direct {v0}, Landroid/app/WallpaperColors$1;-><init>()V

    sput-object v0, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V
    .registers 5

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    .line 271
    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Color;->toArgb()I

    move-result p1

    invoke-static {p1, p2}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 273
    const/4 p1, 0x2

    aget p2, p2, p1

    .line 274
    const p3, 0x3e99999a    # 0.3f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1d

    .line 275
    iget p2, p0, Landroid/app/WallpaperColors;->mColorHints:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 277
    :cond_1d
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V
    .registers 8

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    if-eqz p1, :cond_6a

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    .line 299
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/graphics/Color;->toArgb()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    if-eqz p2, :cond_43

    .line 302
    iget-object p1, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object p1, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_43
    if-eqz p3, :cond_67

    .line 306
    if-eqz p2, :cond_5e

    .line 310
    iget-object p1, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object p1, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/graphics/Color;->toArgb()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    .line 307
    :cond_5e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "tertiaryColor can\'t be specified when secondaryColor is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_67
    :goto_67
    iput p4, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 314
    return-void

    .line 293
    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Primary color should never be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_29

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 124
    invoke-static {v3}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v3

    .line 125
    iget-object v4, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 127
    :cond_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    nop

    :goto_2e
    if-ge v1, v0, :cond_48

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 131
    iget-object v4, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 133
    :cond_48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 134
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 332
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 333
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    goto :goto_12

    .line 335
    :cond_2e
    invoke-static {v0, p1}, Landroid/app/WallpaperColors;->hueProportions(Ljava/util/Map;Ljava/util/Map;)[D

    move-result-object v1

    .line 336
    nop

    .line 337
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 336
    invoke-static {p1, v0, v1}, Landroid/app/WallpaperColors;->colorToHueProportion(Ljava/util/Set;Ljava/util/Map;[D)Ljava/util/Map;

    move-result-object p1

    .line 339
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 340
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 341
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 342
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/cam/Cam;

    invoke-static {v2, v4, v5}, Landroid/app/WallpaperColors;->score(Lcom/android/internal/graphics/cam/Cam;D)D

    move-result-wide v4

    .line 344
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    goto :goto_48

    .line 346
    :cond_82
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 347
    new-instance v1, Landroid/app/WallpaperColors$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/WallpaperColors$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 351
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    goto :goto_9c

    .line 354
    :cond_b2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 357
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/graphics/cam/Cam;

    .line 358
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ff

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 359
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/graphics/cam/Cam;

    .line 360
    invoke-static {v3, v5}, Landroid/app/WallpaperColors;->hueDiff(Lcom/android/internal/graphics/cam/Cam;Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide v5

    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_fe

    .line 361
    goto :goto_bb

    .line 363
    :cond_fe
    goto :goto_d9

    .line 364
    :cond_ff
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    goto :goto_bb

    .line 366
    :cond_107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_110
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_128

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 368
    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    goto :goto_110

    .line 370
    :cond_128
    iput-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    .line 371
    iput p2, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 372
    return-void
.end method

.method private static blacklist calculateDarkHints(Landroid/graphics/Bitmap;F)I
    .registers 22

    .line 548
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 549
    return v0

    .line 552
    :cond_4
    const-string v1, "WallpaperColors#calculateDarkHints"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 553
    invoke-static/range {p1 .. p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    .line 554
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v4, v2, [I

    .line 555
    nop

    .line 556
    int-to-float v3, v2

    sget v5, Landroid/app/WallpaperColors;->MAX_DARK_AREA:F

    mul-float/2addr v3, v5

    float-to-int v11, v3

    .line 557
    nop

    .line 558
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 559
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 558
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 563
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 564
    const/high16 v3, -0x1000000

    invoke-static {v3, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 568
    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 569
    const-wide/16 v6, 0x0

    move v8, v0

    move v9, v8

    :goto_44
    const/4 v10, 0x1

    if-ge v8, v2, :cond_6f

    .line 570
    aget v12, v4, v8

    .line 571
    invoke-static {v12, v5}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 572
    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    .line 576
    invoke-static {v1, v12}, Lcom/android/internal/graphics/ColorUtils;->compositeColors(II)I

    move-result v14

    .line 579
    invoke-static {v14}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v14

    .line 583
    nop

    .line 584
    invoke-static {v12, v3}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    move-result-wide v16

    const-wide/high16 v18, 0x4016000000000000L    # 5.5

    cmpl-double v12, v16, v18

    if-lez v12, :cond_64

    goto :goto_65

    :cond_64
    move v10, v0

    .line 585
    :goto_65
    if-nez v10, :cond_6b

    if-eqz v13, :cond_6b

    .line 586
    add-int/lit8 v9, v9, 0x1

    .line 591
    :cond_6b
    add-double/2addr v6, v14

    .line 569
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    .line 594
    :cond_6f
    nop

    .line 595
    int-to-double v1, v2

    div-double/2addr v6, v1

    .line 596
    sget v1, Landroid/app/WallpaperColors;->BRIGHT_IMAGE_MEAN_LUMINANCE:F

    float-to-double v1, v1

    cmpl-double v1, v6, v1

    if-lez v1, :cond_7c

    if-gt v9, v11, :cond_7c

    .line 597
    move v0, v10

    .line 599
    :cond_7c
    const-wide v1, 0x3fd3333340000000L    # 0.30000001192092896

    cmpg-double v1, v6, v1

    if-gez v1, :cond_87

    .line 600
    or-int/lit8 v0, v0, 0x2

    .line 615
    :cond_87
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 616
    return v0
.end method

.method private static greylist-max-o calculateOptimalSize(II)Landroid/util/Size;
    .registers 7

    .line 622
    mul-int v0, p0, p1

    .line 623
    nop

    .line 624
    const/16 v1, 0x3100

    if-le v0, v1, :cond_13

    .line 625
    const-wide v1, 0x40c8800000000000L    # 12544.0

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_15

    .line 624
    :cond_13
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 627
    :goto_15
    int-to-double v2, p0

    mul-double/2addr v2, v0

    double-to-int p0, v2

    .line 628
    int-to-double v2, p1

    mul-double/2addr v2, v0

    double-to-int p1, v2

    .line 631
    const/4 v0, 0x1

    if-nez p0, :cond_1f

    .line 632
    move p0, v0

    .line 634
    :cond_1f
    if-nez p1, :cond_22

    .line 635
    move p1, v0

    .line 638
    :cond_22
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private static blacklist colorToHueProportion(Ljava/util/Set;Ljava/util/Map;[D)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/graphics/cam/Cam;",
            ">;[D)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 385
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 386
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/cam/Cam;

    invoke-virtual {v2}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Landroid/app/WallpaperColors;->wrapDegrees(I)I

    move-result v2

    .line 387
    nop

    .line 388
    add-int/lit8 v3, v2, -0xf

    const-wide/16 v4, 0x0

    :goto_34
    add-int/lit8 v6, v2, 0xf

    if-ge v3, v6, :cond_42

    .line 389
    invoke-static {v3}, Landroid/app/WallpaperColors;->wrapDegrees(I)I

    move-result v6

    aget-wide v6, p2, v6

    add-double/2addr v4, v6

    .line 388
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 391
    :cond_42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    goto :goto_9

    .line 393
    :cond_4e
    return-object v0
.end method

.method public static whitelist fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;
    .registers 2

    .line 182
    if-eqz p0, :cond_8

    .line 185
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object p0

    return-object p0

    .line 183
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitmap can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;
    .registers 9

    .line 200
    const-string v0, "Bitmap can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    const-string v0, "WallpaperColors#fromBitmap"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 203
    nop

    .line 204
    const/4 v1, 0x0

    const/16 v2, 0x3100

    if-le v0, v2, :cond_34

    .line 205
    nop

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Landroid/app/WallpaperColors;->calculateOptimalSize(II)Landroid/util/Size;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 208
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 207
    invoke-static {p0, v4, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v3, 0x1

    goto :goto_35

    .line 204
    :cond_34
    move v3, v1

    .line 212
    :goto_35
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    const/4 v5, 0x5

    if-eqz v4, :cond_52

    .line 213
    new-instance v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>()V

    .line 214
    invoke-static {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Quantizer;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v5}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v2}, Lcom/android/internal/graphics/palette/Palette$Builder;->resizeBitmapArea(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v0

    goto :goto_76

    .line 220
    :cond_52
    nop

    .line 221
    nop

    .line 224
    nop

    .line 225
    div-int/lit8 v0, v0, 0x10

    .line 226
    const/16 v4, 0x80

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 225
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 227
    new-instance v4, Lcom/android/internal/graphics/palette/CelebiQuantizer;

    invoke-direct {v4}, Lcom/android/internal/graphics/palette/CelebiQuantizer;-><init>()V

    .line 228
    invoke-static {p0, v4}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Quantizer;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v4

    .line 229
    invoke-virtual {v4, v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0, v2}, Lcom/android/internal/graphics/palette/Palette$Builder;->resizeBitmapArea(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v0

    .line 234
    :goto_76
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    new-instance v0, Landroid/app/WallpaperColors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/WallpaperColors$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 237
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 239
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 240
    nop

    :goto_91
    if-ge v1, v0, :cond_af

    .line 241
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 242
    invoke-virtual {v5}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getInt()I

    move-result v6

    .line 243
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    .line 247
    :cond_af
    invoke-static {p0, p1}, Landroid/app/WallpaperColors;->calculateDarkHints(Landroid/graphics/Bitmap;F)I

    move-result p1

    .line 249
    if-eqz v3, :cond_b8

    .line 250
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    :cond_b8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 254
    new-instance p0, Landroid/app/WallpaperColors;

    or-int/lit8 p1, p1, 0x4

    invoke-direct {p0, v4, p1}, Landroid/app/WallpaperColors;-><init>(Ljava/util/Map;I)V

    return-object p0
.end method

.method public static whitelist fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;
    .registers 7

    .line 144
    if-eqz p0, :cond_4f

    .line 148
    const-string v0, "WallpaperColors#fromDrawable"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 151
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 154
    if-lez v1, :cond_17

    if-gtz v2, :cond_1b

    .line 155
    :cond_17
    nop

    .line 156
    const/16 v1, 0x70

    move v2, v1

    .line 159
    :cond_1b
    invoke-static {v1, v2}, Landroid/app/WallpaperColors;->calculateOptimalSize(II)Landroid/util/Size;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 162
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    invoke-static {v1}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v2

    .line 167
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 170
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 171
    return-object v2

    .line 145
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Drawable cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist hueDiff(Lcom/android/internal/graphics/cam/Cam;Lcom/android/internal/graphics/cam/Cam;)D
    .registers 2

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result p0

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x43340000    # 180.0f

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p1, p0

    float-to-double p0, p1

    return-wide p0
.end method

.method private static blacklist hueProportions(Ljava/util/Map;Ljava/util/Map;)[D
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/graphics/cam/Cam;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)[D"
        }
    .end annotation

    .line 408
    const/16 v0, 0x168

    new-array v0, v0, [D

    .line 410
    nop

    .line 411
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 412
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    .line 413
    goto :goto_f

    .line 415
    :cond_28
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 416
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 417
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 418
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/graphics/cam/Cam;

    .line 419
    invoke-virtual {v4}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Landroid/app/WallpaperColors;->wrapDegrees(I)I

    move-result v4

    .line 420
    aget-wide v6, v0, v4

    int-to-double v8, v5

    div-double/2addr v8, v2

    add-double/2addr v6, v8

    aput-wide v6, v0, v4

    .line 421
    goto :goto_30

    .line 423
    :cond_72
    return-object v0
.end method

.method static synthetic blacklist lambda$fromBitmap$0(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I
    .registers 2

    .line 235
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method static synthetic blacklist lambda$new$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 2

    .line 347
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p1, p0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    return p0
.end method

.method private static blacklist score(Lcom/android/internal/graphics/cam/Cam;D)D
    .registers 7

    .line 379
    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private static blacklist wrapDegrees(I)I
    .registers 2

    .line 397
    const/16 v0, 0x168

    if-gez p0, :cond_7

    .line 398
    rem-int/2addr p0, v0

    add-int/2addr p0, v0

    return p0

    .line 399
    :cond_7
    if-lt p0, v0, :cond_b

    .line 400
    rem-int/2addr p0, v0

    return p0

    .line 402
    :cond_b
    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 517
    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_2e

    .line 521
    :cond_e
    check-cast p1, Landroid/app/WallpaperColors;

    .line 522
    iget-object v1, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    iget-object v2, p1, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    iget-object v2, p1, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    .line 523
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget v1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    iget p1, p1, Landroid/app/WallpaperColors;->mColorHints:I

    if-ne v1, p1, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    nop

    .line 522
    :goto_2d
    return v0

    .line 518
    :cond_2e
    :goto_2e
    return v0
.end method

.method public blacklist getAllColors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColorHints()I
    .registers 2

    .line 537
    iget v0, p0, Landroid/app/WallpaperColors;->mColorHints:I

    return v0
.end method

.method public greylist-max-o getMainColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrimaryColor()Landroid/graphics/Color;
    .registers 3

    .line 473
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    return-object v0
.end method

.method public whitelist getSecondaryColor()Landroid/graphics/Color;
    .registers 3

    .line 482
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    const/4 v0, 0x0

    goto :goto_14

    :cond_b
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    :goto_14
    return-object v0
.end method

.method public whitelist getTertiaryColor()Landroid/graphics/Color;
    .registers 3

    .line 491
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_b

    const/4 v0, 0x0

    goto :goto_14

    :cond_b
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    :goto_14
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 529
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 645
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Color;

    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 647
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WallpaperColors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 445
    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object p2

    .line 446
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 447
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1f

    .line 449
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Color;

    .line 450
    invoke-virtual {v3}, Landroid/graphics/Color;->toArgb()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 452
    :cond_1f
    iget-object p2, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    .line 453
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-object p2, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_32
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 455
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 456
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 458
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5f

    :cond_5e
    move v0, v1

    .line 459
    :goto_5f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    :cond_62
    goto :goto_32

    .line 462
    :cond_63
    iget p2, p0, Landroid/app/WallpaperColors;->mColorHints:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    return-void
.end method
