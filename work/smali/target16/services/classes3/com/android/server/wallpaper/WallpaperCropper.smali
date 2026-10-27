.class public Lcom/android/server/wallpaper/WallpaperCropper;
.super Ljava/lang/Object;
.source "WallpaperCropper.java"


# static fields
.field static final ADD:I = 0x1

.field static final BALANCE:I = 0x3

.field static final CONNECTED_DISPLAY_MAX_DISPLAY_TO_IMAGE_RATIO:F = 1.5f

.field static final MAX_PARALLAX:F = 1.0f

.field static final REMOVE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "WallpaperCropper"


# instance fields
.field public final mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

.field public final mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;


# direct methods
.method public static synthetic $r8$lambda$wM11yNEwVRhaK9YEsBDy6GuErGc(IIILandroid/graphics/Rect;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 7

    .line 790
    invoke-virtual {p4, p1, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 792
    invoke-virtual {p4, p3}, Landroid/graphics/ImageDecoder;->setCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperDisplayHelper;)V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 98
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    return-void
.end method

.method public static getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;
    .registers 14

    .line 313
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 314
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 315
    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1c

    return-object p0

    :cond_1c
    if-lez v3, :cond_8b

    if-nez p3, :cond_66

    .line 320
    iget p3, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v0

    .line 321
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, p3

    .line 322
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 323
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr p0, v1

    .line 324
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 325
    new-instance v3, Landroid/graphics/Point;

    iget p0, p1, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v3, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 326
    new-instance v4, Landroid/graphics/Point;

    iget p0, p2, Landroid/graphics/Point;->y:I

    iget p1, p2, Landroid/graphics/Point;->x:I

    invoke-direct {v4, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    const/4 v5, 0x0

    move v6, p4

    move v7, p5

    .line 327
    invoke-static/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    .line 329
    iget p1, p0, Landroid/graphics/Rect;->top:I

    .line 330
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p1

    .line 331
    iget p3, v3, Landroid/graphics/Point;->x:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p4

    .line 332
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr p0, p3

    .line 333
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p1, p3, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p4

    :cond_66
    move v6, p4

    div-float/2addr v1, v2

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    cmpl-float p2, v1, p1

    if-lez p2, :cond_8a

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    .line 338
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    float-to-double p0, v1

    .line 337
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    if-eqz v6, :cond_85

    .line 340
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->left:I

    return-object v0

    .line 342
    :cond_85
    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :cond_8a
    return-object v0

    :cond_8b
    move v7, p5

    const/4 p2, 0x0

    const/4 p3, 0x2

    if-ne v7, p3, :cond_92

    move p4, p2

    goto :goto_bb

    :cond_92
    const/4 p4, 0x1

    if-ne v7, p4, :cond_a3

    .line 351
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p4, p5

    float-to-int p4, p4

    goto :goto_bb

    .line 352
    :cond_a3
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p4

    neg-int p4, p4

    int-to-double p4, p4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr p4, v3

    double-to-int p4, p4

    .line 353
    :goto_bb
    iget p5, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr p5, v1

    if-lt p5, p4, :cond_e9

    .line 355
    div-int/lit8 p2, p4, 0x2

    .line 356
    rem-int/2addr p4, p3

    add-int/2addr p4, p2

    .line 358
    iget p5, p0, Landroid/graphics/Rect;->left:I

    if-ge p5, p2, :cond_d0

    sub-int/2addr p2, p5

    add-int/2addr p4, p2

    move p2, p5

    goto :goto_de

    .line 361
    :cond_d0
    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p5, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, p5

    if-ge v1, p4, :cond_de

    sub-int v1, p1, p5

    sub-int/2addr p4, v1

    add-int/2addr p2, p4

    sub-int p4, p1, p5

    .line 365
    :cond_de
    :goto_de
    iget p1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 366
    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p4

    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_ef

    .line 368
    :cond_e9
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 369
    iget p1, p1, Landroid/graphics/Point;->x:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 371
    :goto_ef
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    sub-float/2addr p0, p1

    float-to-int p0, p0

    .line 372
    iget p1, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 p2, p0, 0x2

    rem-int/2addr p0, p3

    add-int/2addr p0, p2

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 373
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public static getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;
    .registers 15

    .line 128
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_WALLPAPER:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    move v3, v1

    move v0, v2

    .line 130
    :goto_c
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_26

    .line 131
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    invoke-virtual {v4, p0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    move v3, v2

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_26
    if-eqz v3, :cond_2d

    .line 136
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCropForExternalDisplay(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 141
    :cond_2d
    invoke-static {p0}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v0

    if-eqz p3, :cond_39

    .line 144
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_3e

    :cond_39
    move-object v6, p0

    move-object v1, p2

    move v4, p4

    goto/16 :goto_1be

    :cond_3e
    move v3, v2

    .line 183
    :goto_3f
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_8d

    .line 184
    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-eqz v4, :cond_65

    .line 185
    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-ltz v5, :cond_65

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-ltz v5, :cond_65

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Point;->x:I

    if-gt v5, v6, :cond_65

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_62

    goto :goto_65

    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 187
    :cond_65
    :goto_65
    sget-object p3, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid crop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for bitmap size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 194
    :cond_8d
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/graphics/Rect;

    if-eqz v4, :cond_a0

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v6, p0

    move-object v5, p2

    move v8, p4

    .line 196
    invoke-static/range {v4 .. v9}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_a0
    move-object v6, p0

    move-object v5, p2

    move v4, p4

    .line 201
    invoke-static {v0}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    move-result p0

    .line 202
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    .line 203
    iget-object p4, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Point;

    if-eqz p2, :cond_c4

    .line 206
    invoke-static {p2, p4, v5, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, v5

    const/4 v5, 0x3

    move-object v2, v6

    .line 207
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 212
    :cond_c4
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result p2

    .line 213
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 214
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    if-eqz p4, :cond_10f

    .line 217
    invoke-static {p4, p2, v5, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, v5

    const/4 v5, 0x2

    move-object v2, v6

    .line 219
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    .line 221
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-ge p1, p2, :cond_10d

    if-eqz v4, :cond_fb

    .line 223
    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->left:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_105

    .line 225
    :cond_fb
    iget p1, p0, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/graphics/Rect;->right:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :goto_105
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 228
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_10d
    move-object v0, p0

    return-object v0

    .line 235
    :cond_10f
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getFoldedOrientation(I)I

    move-result p2

    .line 236
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    if-ne p2, v1, :cond_122

    .line 243
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_122

    goto :goto_123

    :cond_122
    move v1, v2

    .line 244
    :goto_123
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    if-eqz p4, :cond_13c

    if-nez v1, :cond_13c

    .line 247
    invoke-static {p4, p2, v5, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, v5

    const/4 v5, 0x1

    move-object v2, v6

    .line 248
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_13c
    move-object v1, v5

    .line 253
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    if-eqz p2, :cond_174

    .line 255
    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getFoldedOrientation(I)I

    move-result p4

    .line 256
    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result v3

    .line 257
    filled-new-array {p4, v3}, [I

    move-result-object p4

    :goto_153
    const/4 v3, 0x2

    if-ge v2, v3, :cond_174

    aget v3, p4, v2

    .line 258
    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    if-eqz v3, :cond_171

    .line 260
    invoke-static {p2, p1, v1, p3, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p2

    .line 262
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 263
    invoke-virtual {p3, p0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    invoke-static {v6, p1, v1, p3, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_171
    add-int/lit8 v2, v2, 0x1

    goto :goto_153

    .line 271
    :cond_174
    sget-object p0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not find a proper default crop for display: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", bitmap size: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", suggested crops: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", orientation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", rtl: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", defaultDisplaySizes: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v6, p1, v1, p0, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 145
    :goto_1be
    new-instance p0, Landroid/graphics/Rect;

    iget p2, v1, Landroid/graphics/Point;->x:I

    iget p4, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, v2, p2, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result p2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_1db

    .line 152
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 153
    invoke-virtual {p3, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    invoke-static {v6, p1, v1, p3, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 161
    :cond_1db
    iget-boolean p2, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    if-eqz p2, :cond_20e

    iget-boolean p2, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    if-nez p2, :cond_20e

    .line 162
    iget p2, v6, Landroid/graphics/Point;->x:I

    iget p4, v6, Landroid/graphics/Point;->y:I

    if-ge p2, p4, :cond_20e

    .line 163
    new-instance p0, Landroid/graphics/Point;

    iget p2, v6, Landroid/graphics/Point;->y:I

    iget p4, v6, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p2, p4}, Landroid/graphics/Point;-><init>(II)V

    .line 165
    invoke-static {p0, p1, v1, p3, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 167
    invoke-static {p1, p0, v1, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, v6

    .line 169
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    if-eqz v4, :cond_208

    .line 173
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_20c

    .line 175
    :cond_208
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :goto_20c
    move-object v0, p0

    goto :goto_210

    :cond_20e
    move-object v2, v6

    goto :goto_20c

    :goto_210
    const/4 v3, 0x1

    const/4 v5, 0x1

    .line 179
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getCropForExternalDisplay(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;
    .registers 17

    move/from16 v4, p4

    const/4 v6, 0x0

    if-eqz p3, :cond_13a

    .line 856
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_13a

    .line 865
    :cond_d
    iget v2, p0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    move v7, v5

    move v8, v6

    move-object v5, v3

    .line 866
    :goto_1b
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_50

    .line 867
    invoke-virtual {p3, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 868
    iget-object v10, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    if-eqz v9, :cond_4d

    .line 870
    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget v11, v9, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    div-float/2addr v10, v2

    float-to-double v10, v10

    .line 871
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v11, v10, v7

    if-gez v11, :cond_4d

    .line 874
    invoke-virtual {p3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    move-object v5, v9

    move v7, v10

    :cond_4d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_50
    if-nez v3, :cond_7f

    .line 881
    sget-object v2, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did not find valid crop to use for external display of size "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " and suggestedCrops "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fallback to center-align."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p0, p1, p2, v0, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCropForExternalDisplay(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 893
    :cond_7f
    invoke-static {v3, v5, p2, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move-object v1, p2

    .line 896
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object v0

    .line 900
    iget p1, p0, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    cmpl-float v4, p1, v3

    if-lez v4, :cond_126

    div-float/2addr p1, v3

    .line 903
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 904
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 905
    iget v4, p2, Landroid/graphics/Point;->x:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 906
    iget v4, p2, Landroid/graphics/Point;->y:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float v3, v3

    .line 908
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float p1, p1

    .line 909
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    .line 907
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 910
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr p1, v4

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 911
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 912
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v3, v4

    .line 914
    div-int/lit8 v5, p1, 0x2

    sub-int/2addr p1, v5

    .line 917
    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-ge v7, v4, :cond_f2

    sub-int/2addr v4, v7

    add-int/2addr v3, v4

    move v4, v7

    goto :goto_100

    .line 920
    :cond_f2
    iget v8, p2, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int v10, v8, v9

    if-ge v10, v3, :cond_100

    sub-int v10, v8, v9

    sub-int/2addr v3, v10

    add-int/2addr v4, v3

    sub-int v3, v8, v9

    .line 924
    :cond_100
    :goto_100
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-ge v8, v5, :cond_108

    sub-int/2addr v5, v8

    add-int/2addr p1, v5

    move v5, v8

    goto :goto_116

    .line 927
    :cond_108
    iget v9, p2, Landroid/graphics/Point;->y:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v9, v10

    if-ge v11, p1, :cond_116

    sub-int v11, v9, v10

    sub-int/2addr p1, v11

    add-int/2addr v5, p1

    sub-int p1, v9, v10

    :cond_116
    :goto_116
    sub-int/2addr v7, v4

    .line 931
    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 932
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    .line 933
    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 934
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_126
    if-eqz p4, :cond_12b

    .line 939
    iput v6, v0, Landroid/graphics/Rect;->left:I

    goto :goto_12f

    .line 941
    :cond_12b
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :goto_12f
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v1, p2

    move/from16 v4, p4

    .line 945
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 857
    :cond_13a
    :goto_13a
    new-instance v0, Landroid/graphics/Rect;

    iget p1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v6, v6, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v1, p2

    move/from16 v4, p4

    .line 858
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;)Landroid/util/SparseArray;
    .registers 2

    const/4 v0, 0x0

    .line 403
    invoke-static {p0, v0}, Lcom/android/server/wallpaper/WallpaperCropper;->getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;Z)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;Z)Landroid/util/SparseArray;
    .registers 8

    .line 418
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 419
    :goto_6
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 420
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 421
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    if-nez p1, :cond_56

    .line 423
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v3, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 424
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 425
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 426
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 429
    :cond_56
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_62
    return-object v0
.end method

.method public static getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;
    .registers 8

    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v1, v0

    move v2, v3

    .line 389
    :goto_a
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_31

    .line 390
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 391
    iget v6, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 392
    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 393
    iget v6, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 394
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 396
    :cond_31
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;
    .registers 10

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move v4, p3

    .line 285
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    .line 287
    iget p1, v2, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget p2, v2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 288
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    .line 289
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    if-eqz v4, :cond_2f

    .line 291
    iget p2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->left:I

    return-object p0

    .line 293
    :cond_2f
    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    return-object p0
.end method


# virtual methods
.method public generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 4

    .line 491
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    sget-object v1, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 492
    const-string v1, "WPMS.generateCrop"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperCropper;->generateCropInternal(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 494
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final generateCropInternal(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 501
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    const/4 v3, 0x0

    .line 502
    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v2

    .line 503
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v4, v3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    if-nez v4, :cond_1a

    .line 505
    sget-object v4, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    const-string v5, "Null display info for the default display"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_1a
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 510
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 511
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 512
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_44f

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v6, :cond_39

    goto/16 :goto_44f

    .line 518
    :cond_39
    new-instance v6, Landroid/graphics/Point;

    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v6, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 519
    new-instance v8, Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v10, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v8, v3, v3, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move v9, v3

    .line 523
    :goto_4c
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_a7

    .line 524
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 525
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 526
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_72

    invoke-virtual {v8, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_6f

    goto :goto_72

    :cond_6f
    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    .line 527
    :cond_72
    :goto_72
    sget-object v9, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid crop "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " for orientation "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " and bitmap size "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; clearing suggested crops."

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 530
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 540
    :cond_a7
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v9, :cond_bc

    .line 542
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 543
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 545
    :cond_bc
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lez v9, :cond_f8

    .line 548
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0, v8, v6}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v8

    .line 550
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v10, v3

    .line 551
    :goto_d0
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_ec

    .line 552
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 553
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    if-eqz v12, :cond_e9

    .line 555
    invoke-virtual {v9, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_e9
    add-int/lit8 v10, v10, 0x1

    goto :goto_d0

    .line 558
    :cond_ec
    iput-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 561
    invoke-static {v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;

    move-result-object v9

    .line 562
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_15e

    .line 572
    :cond_f8
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_105

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 573
    :cond_105
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_132

    .line 574
    sget-object v9, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring wallpaper.cropHint = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "; not within the bitmap of size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 578
    :cond_132
    new-instance v8, Landroid/graphics/Point;

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 579
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v9, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v8

    .line 580
    invoke-static {v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;

    move-result-object v9

    .line 581
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v11, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 582
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 621
    :goto_15e
    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-gt v10, v11, :cond_171

    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 622
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-le v10, v11, :cond_16f

    goto :goto_171

    :cond_16f
    move v10, v3

    goto :goto_172

    :cond_171
    :goto_171
    move v10, v5

    .line 625
    :goto_172
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, v2, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    if-gt v11, v12, :cond_18c

    .line 626
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v12

    if-gt v11, v12, :cond_18c

    .line 627
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v12

    :cond_18c
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    move v12, v3

    .line 633
    :goto_190
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_1d2

    .line 634
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 635
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 636
    iget-object v15, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 637
    invoke-virtual {v15}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplaySizes()Landroid/util/SparseArray;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    if-nez v13, :cond_1af

    goto :goto_1ce

    .line 640
    :cond_1af
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    iget v5, v13, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float/2addr v15, v5

    .line 641
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    div-float/2addr v5, v13

    .line 639
    invoke-static {v15, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 642
    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move v11, v5

    :goto_1ce
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    goto :goto_190

    .line 646
    :cond_1d2
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 647
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayLargestDimension()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 648
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v5

    .line 646
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 650
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    int-to-float v0, v0

    div-float/2addr v5, v0

    .line 651
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    .line 649
    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 652
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpl-float v5, v0, v7

    if-lez v5, :cond_201

    const/4 v5, 0x1

    goto :goto_202

    :cond_201
    move v5, v3

    .line 669
    :goto_202
    sget-object v11, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "crop: w="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " h="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "defaultCrops: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "meas: w="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "crop?="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " scale?="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_291

    if-nez v5, :cond_291

    .line 684
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_457

    .line 687
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_457

    :cond_291
    const/4 v5, 0x0

    .line 705
    :try_start_292
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    div-int/2addr v10, v2

    const/4 v2, 0x1

    :goto_29a
    mul-int/lit8 v11, v2, 0x2

    if-gt v11, v10, :cond_2a0

    move v2, v11

    goto :goto_29a

    .line 710
    :cond_2a0
    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 711
    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 713
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 716
    iget v10, v4, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    div-float/2addr v10, v0

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->left:I

    .line 717
    iget v10, v4, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    div-float/2addr v10, v0

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->top:I

    .line 718
    iget v10, v4, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    div-float/2addr v10, v0

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 719
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    div-float/2addr v10, v0

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 721
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 722
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 723
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 748
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v0

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 751
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v0

    add-float/2addr v12, v11

    float-to-int v11, v12

    .line 754
    sget-object v12, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    const-string v13, "Decode parameters:"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  cropHint="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  estimateCrop="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  sampleSize="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  user defined crops: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  all crops: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  targetSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  maxTextureSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "wallpaper_orig"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b0

    .line 776
    const-string v8, "decode_record"

    goto :goto_3b2

    :catchall_3a8
    move-exception v0

    move-object v4, v5

    goto/16 :goto_448

    :catch_3ac
    move-exception v0

    move-object v4, v5

    goto/16 :goto_43a

    :cond_3b0
    const-string v8, "decode_lock_record"

    .line 777
    :goto_3b2
    new-instance v9, Ljava/io/File;

    iget v10, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {v10}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 778
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 779
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "record path ="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", record name ="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 779
    invoke-static {v12, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v8

    .line 785
    iget v10, v6, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    div-float/2addr v10, v0

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 786
    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v6, v0

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v6, v11

    .line 787
    new-instance v11, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;

    invoke-direct {v11, v2, v10, v6, v4}, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;-><init>(IIILandroid/graphics/Rect;)V

    invoke-static {v8, v11}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 795
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 805
    iput v0, v1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 816
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_417
    .catch Ljava/lang/Exception; {:try_start_292 .. :try_end_417} :catch_3ac
    .catchall {:try_start_292 .. :try_end_417} :catchall_3a8

    .line 817
    :try_start_417
    new-instance v6, Ljava/io/BufferedOutputStream;

    const v0, 0x8000

    invoke-direct {v6, v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_41f
    .catch Ljava/lang/Exception; {:try_start_417 .. :try_end_41f} :catch_439
    .catchall {:try_start_417 .. :try_end_41f} :catchall_437

    .line 818
    :try_start_41f
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v0, v5, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 820
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_41f .. :try_end_429} :catch_434
    .catchall {:try_start_41f .. :try_end_429} :catchall_431

    .line 826
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 827
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v5, 0x1

    goto :goto_457

    :catchall_431
    move-exception v0

    move-object v5, v6

    goto :goto_448

    :catch_434
    move-exception v0

    move-object v5, v6

    goto :goto_43a

    :catchall_437
    move-exception v0

    goto :goto_448

    :catch_439
    move-exception v0

    .line 824
    :goto_43a
    :try_start_43a
    sget-object v2, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    const-string v6, "Error decoding crop"

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_441
    .catchall {:try_start_43a .. :try_end_441} :catchall_437

    .line 826
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 827
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_456

    .line 826
    :goto_448
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 827
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 828
    throw v0

    .line 513
    :cond_44f
    :goto_44f
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    const-string v2, "Invalid wallpaper data"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_456
    move v5, v3

    :cond_457
    :goto_457
    if-nez v5, :cond_473

    .line 833
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to apply new wallpaper"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 835
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 836
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 837
    iput v7, v1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 840
    :cond_473
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_488

    .line 841
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    :cond_488
    return-void
.end method

.method public getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;
    .registers 11

    const/4 v0, -0x1

    .line 441
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7b

    .line 443
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p2, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 444
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v1, :cond_4e

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_4e

    .line 449
    :cond_21
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 450
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object p0

    .line 451
    :goto_37
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_4d

    .line 452
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_4d
    return-object p0

    .line 445
    :cond_4e
    :goto_4e
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get default crops from suggested crops "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for bitmap of size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring suggested crops"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0

    .line 457
    :cond_7b
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplaySizes()Landroid/util/SparseArray;

    move-result-object v0

    .line 458
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v1, :cond_8c

    goto :goto_8d

    :cond_8c
    move v1, v2

    .line 462
    :goto_8d
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move v4, v2

    .line 463
    :goto_93
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_b7

    .line 464
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 465
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 466
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-eqz v7, :cond_b4

    .line 468
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 469
    invoke-static {v6, v7, p2, p1, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v6

    .line 468
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_b4
    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    .line 474
    :cond_b7
    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    .line 475
    :goto_bb
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_de

    .line 476
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 477
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_cc

    goto :goto_db

    .line 478
    :cond_cc
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .line 479
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    invoke-static {v5, v6, p2, v3, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v5

    .line 481
    invoke-virtual {p1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_db
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    :cond_de
    return-object p1
.end method

.method public isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperData;)Z
    .registers 12

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 963
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v1

    .line 964
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    return v0

    .line 969
    :cond_f
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2f

    .line 971
    sget-object p0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Null display. Wallpaper unsupported for display "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 974
    :cond_2f
    new-instance p1, Landroid/graphics/Point;

    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {p1, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 975
    invoke-static {p1}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v2

    .line 977
    new-instance v4, Landroid/graphics/Point;

    iget-object v5, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 978
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v6, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 979
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 980
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Point;->equals(II)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 981
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 982
    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 983
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 984
    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Point;->set(II)V

    .line 986
    :cond_7c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_88

    move v1, v0

    goto :goto_89

    :cond_88
    move v1, v3

    .line 988
    :goto_89
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 989
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperCropper;->getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;)Landroid/util/SparseArray;

    move-result-object p2

    .line 988
    invoke-static {p1, p0, v4, p2, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    .line 991
    iget p2, p1, Landroid/graphics/Point;->x:I

    int-to-double v5, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-double v7, p2

    div-double/2addr v5, v7

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double p1, p1

    .line 992
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double v7, p0

    div-double/2addr p1, v7

    .line 991
    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    cmpl-double p0, p0, v5

    if-lez p0, :cond_b0

    return v3

    :cond_b0
    if-ne v2, v0, :cond_c4

    .line 999
    iget p0, v4, Landroid/graphics/Point;->x:I

    int-to-double p0, p0

    iget p2, v4, Landroid/graphics/Point;->y:I

    int-to-double v1, p2

    div-double/2addr p0, v1

    const-wide v1, 0x3feb13b13b13b13bL    # 0.8461538461538461

    cmpl-double p0, p0, v1

    if-ltz p0, :cond_c3

    return v0

    :cond_c3
    return v3

    :cond_c4
    return v0
.end method
