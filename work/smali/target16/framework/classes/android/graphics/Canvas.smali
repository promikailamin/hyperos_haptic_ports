.class public Landroid/graphics/Canvas;
.super Landroid/graphics/BaseCanvas;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Canvas$NoImagePreloadHolder;,
        Landroid/graphics/Canvas$VertexMode;,
        Landroid/graphics/Canvas$EdgeType;,
        Landroid/graphics/Canvas$Saveflags;
    }
.end annotation


# static fields
.field public static final whitelist ALL_SAVE_FLAG:I = 0x1f

.field public static final greylist CLIP_SAVE_FLAG:I = 0x2

.field public static final greylist CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field public static final greylist FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final greylist HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field public static final greylist MATRIX_SAVE_FLAG:I = 0x1

.field private static final blacklist MAXIMUM_BITMAP_SIZE:I = 0x7ffe

.field private static greylist-max-o sCompatibilityRestore:Z

.field private static greylist-max-o sCompatibilitySetBitmap:Z

.field private static blacklist sCompatibilityVersion:I


# instance fields
.field private greylist-max-p mBitmap:Landroid/graphics/Bitmap;

.field private greylist-max-o mDrawFilter:Landroid/graphics/DrawFilter;

.field private greylist-max-o mFinalizer:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetNativeFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/Canvas;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    const/4 v0, 0x0

    sput v0, Landroid/graphics/Canvas;->sCompatibilityVersion:I

    .line 60
    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    .line 61
    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilitySetBitmap:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 96
    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    .line 97
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 99
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nInitRaster(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 100
    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    goto :goto_1f

    .line 103
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    .line 105
    :goto_1f
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 5

    .line 133
    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    .line 134
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1c

    .line 137
    iput-wide p1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 138
    sget-object p1, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    .line 140
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result p1

    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 141
    return-void

    .line 135
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 116
    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 120
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nInitRaster(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 123
    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    .line 125
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 126
    iget p1, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 127
    return-void

    .line 118
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Immutable bitmap passed to Canvas constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static greylist-max-o checkValidClipOp(Landroid/graphics/Region$Op;)V
    .registers 3

    .line 849
    sget v0, Landroid/graphics/Canvas;->sCompatibilityVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_17

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    if-eq p0, v0, :cond_17

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    if-ne p0, v0, :cond_f

    goto :goto_17

    .line 851
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Region.Op - only INTERSECT and DIFFERENCE are allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 854
    :cond_17
    :goto_17
    return-void
.end method

.method private static greylist-max-o checkValidSaveFlags(I)V
    .registers 3

    .line 427
    sget v0, Landroid/graphics/Canvas;->sCompatibilityVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_13

    const/16 v0, 0x1f

    if-ne p0, v0, :cond_b

    goto :goto_13

    .line 429
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Layer Save Flag - only ALL_SAVE_FLAGS is allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 432
    :cond_13
    :goto_13
    return-void
.end method

.method public static greylist freeCaches()V
    .registers 0

    .line 1425
    invoke-static {}, Landroid/graphics/Canvas;->nFreeCaches()V

    .line 1426
    return-void
.end method

.method public static greylist-max-r freeTextLayoutCaches()V
    .registers 0

    .line 1435
    invoke-static {}, Landroid/graphics/Canvas;->nFreeTextLayoutCaches()V

    .line 1436
    return-void
.end method

.method private static native greylist-max-o nClipPath(JJI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nClipRect(JFFFFI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nClipShader(JJI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nConcat(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nConcat(J[F)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nFreeCaches()V
.end method

.method private static native greylist-max-o nFreeTextLayoutCaches()V
.end method

.method private static native greylist-max-o nGetClipBounds(JLandroid/graphics/Rect;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetHeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetMatrix(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetNativeFinalizer()J
.end method

.method private static native greylist-max-o nGetSaveCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetWidth(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nInitRaster(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nIsHighContrastText(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nIsOpaque(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nQuickReject(JFFFF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nQuickReject(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nRestore(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nRestoreToCount(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nRestoreUnclippedLayer(JIJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nRotate(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSave(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSaveLayer(JFFFFJ)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSaveLayerAlpha(JFFFFI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSaveUnclippedLayer(JIIII)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nScale(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetBitmap(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetCompatibilityVersion(I)V
.end method

.method private static native greylist-max-o nSetDrawFilter(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetMatrix(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSkew(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nTranslate(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static greylist-max-o setCompatibilityVersion(I)V
    .registers 4

    .line 1439
    sput p0, Landroid/graphics/Canvas;->sCompatibilityVersion:I

    .line 1440
    const/16 v0, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p0, v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    .line 1441
    const/16 v0, 0x1a

    if-ge p0, v0, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    sput-boolean v1, Landroid/graphics/Canvas;->sCompatibilitySetBitmap:Z

    .line 1442
    invoke-static {p0}, Landroid/graphics/Canvas;->nSetCompatibilityVersion(I)V

    .line 1443
    return-void
.end method


# virtual methods
.method public whitelist clipOutPath(Landroid/graphics/Path;)Z
    .registers 3

    .line 1100
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result p1

    return p1
.end method

.method public whitelist clipOutRect(FFFF)Z
    .registers 12

    .line 1023
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v6, v2, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result p1

    return p1
.end method

.method public whitelist clipOutRect(IIII)Z
    .registers 12

    .line 1056
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v6, p1, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result p1

    return p1
.end method

.method public whitelist clipOutRect(Landroid/graphics/Rect;)Z
    .registers 9

    .line 958
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v6, p1, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result p1

    return p1
.end method

.method public whitelist clipOutRect(Landroid/graphics/RectF;)Z
    .registers 9

    .line 934
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v6, p1, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result p1

    return p1
.end method

.method public whitelist clipOutShader(Landroid/graphics/Shader;)V
    .registers 6

    .line 1162
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget p1, p1, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Canvas;->nClipShader(JJI)V

    .line 1164
    return-void
.end method

.method public whitelist clipPath(Landroid/graphics/Path;)Z
    .registers 3

    .line 1090
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result p1

    return p1
.end method

.method public whitelist clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1079
    invoke-static {p2}, Landroid/graphics/Canvas;->checkValidClipOp(Landroid/graphics/Region$Op;)V

    .line 1080
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    iget p1, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Canvas;->nClipPath(JJI)Z

    move-result p1

    return p1
.end method

.method public whitelist clipRect(FFFF)Z
    .registers 12

    .line 1008
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v2, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result p1

    return p1
.end method

.method public whitelist clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 990
    invoke-static {p5}, Landroid/graphics/Canvas;->checkValidClipOp(Landroid/graphics/Region$Op;)V

    .line 991
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v6, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result p1

    return p1
.end method

.method public whitelist clipRect(IIII)Z
    .registers 12

    .line 1041
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, p1, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result p1

    return p1
.end method

.method public whitelist clipRect(Landroid/graphics/Rect;)Z
    .registers 9

    .line 946
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, p1, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result p1

    return p1
.end method

.method public whitelist clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 898
    invoke-static {p2}, Landroid/graphics/Canvas;->checkValidClipOp(Landroid/graphics/Region$Op;)V

    .line 899
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result p1

    return p1
.end method

.method public whitelist clipRect(Landroid/graphics/RectF;)Z
    .registers 9

    .line 922
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, p1, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result p1

    return p1
.end method

.method public whitelist clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 874
    invoke-static {p2}, Landroid/graphics/Canvas;->checkValidClipOp(Landroid/graphics/Region$Op;)V

    .line 875
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o clipRectUnion(Landroid/graphics/Rect;)Z
    .registers 9

    .line 910
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    sget-object p1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    iget v6, p1, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result p1

    return p1
.end method

.method public greylist clipRegion(Landroid/graphics/Region;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1139
    const/4 p1, 0x0

    return p1
.end method

.method public greylist clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1120
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist clipShader(Landroid/graphics/Shader;)V
    .registers 6

    .line 1150
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget p1, p1, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Canvas;->nClipShader(JJI)V

    .line 1152
    return-void
.end method

.method public whitelist concat(Landroid/graphics/Matrix44;)V
    .registers 4

    .line 794
    if-eqz p1, :cond_9

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget-object p1, p1, Landroid/graphics/Matrix44;->mBackingArray:[F

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nConcat(J[F)V

    .line 795
    :cond_9
    return-void
.end method

.method public whitelist concat(Landroid/graphics/Matrix;)V
    .registers 6

    .line 781
    if-eqz p1, :cond_b

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nConcat(JJ)V

    .line 782
    :cond_b
    return-void
.end method

.method public whitelist disableZ()V
    .registers 1

    .line 257
    return-void
.end method

.method public whitelist drawARGB(IIII)V
    .registers 5

    .line 1595
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawARGB(IIII)V

    .line 1596
    return-void
.end method

.method public whitelist drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .registers 9

    .line 1582
    invoke-super/range {p0 .. p8}, Landroid/graphics/BaseCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 1583
    return-void
.end method

.method public whitelist drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .registers 6

    .line 1553
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1554
    return-void
.end method

.method public whitelist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .registers 5

    .line 1616
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1617
    return-void
.end method

.method public whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .registers 4

    .line 1716
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1717
    return-void
.end method

.method public whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 5

    .line 1664
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1665
    return-void
.end method

.method public whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 5

    .line 1640
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1641
    return-void
.end method

.method public whitelist drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1691
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 1692
    return-void
.end method

.method public whitelist drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1705
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 1706
    return-void
.end method

.method public whitelist drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .registers 9

    .line 1749
    invoke-super/range {p0 .. p8}, Landroid/graphics/BaseCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 1751
    return-void
.end method

.method public whitelist drawCircle(FFFLandroid/graphics/Paint;)V
    .registers 5

    .line 1763
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1764
    return-void
.end method

.method public whitelist drawColor(I)V
    .registers 2

    .line 1773
    invoke-super {p0, p1}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    .line 1774
    return-void
.end method

.method public whitelist drawColor(ILandroid/graphics/BlendMode;)V
    .registers 3

    .line 1808
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawColor(ILandroid/graphics/BlendMode;)V

    .line 1809
    return-void
.end method

.method public whitelist drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1797
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1798
    return-void
.end method

.method public whitelist drawColor(J)V
    .registers 4

    .line 1786
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-super {p0, p1, p2, v0}, Landroid/graphics/BaseCanvas;->drawColor(JLandroid/graphics/BlendMode;)V

    .line 1787
    return-void
.end method

.method public whitelist drawColor(JLandroid/graphics/BlendMode;)V
    .registers 4

    .line 1822
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawColor(JLandroid/graphics/BlendMode;)V

    .line 1823
    return-void
.end method

.method public whitelist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 8

    .line 2104
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2105
    return-void
.end method

.method public whitelist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .registers 6

    .line 2128
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    .line 2129
    return-void
.end method

.method public whitelist drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .registers 8

    .line 2164
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    .line 2166
    return-void
.end method

.method public whitelist drawLine(FFFFLandroid/graphics/Paint;)V
    .registers 6

    .line 1841
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1842
    return-void
.end method

.method public whitelist drawLines([FIILandroid/graphics/Paint;)V
    .registers 5

    .line 1859
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 1860
    return-void
.end method

.method public whitelist drawLines([FLandroid/graphics/Paint;)V
    .registers 3

    .line 1863
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 1864
    return-void
.end method

.method public whitelist drawOval(FFFFLandroid/graphics/Paint;)V
    .registers 6

    .line 1881
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 1882
    return-void
.end method

.method public whitelist drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 3

    .line 1873
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1874
    return-void
.end method

.method public whitelist drawPaint(Landroid/graphics/Paint;)V
    .registers 2

    .line 1892
    invoke-super {p0, p1}, Landroid/graphics/BaseCanvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1893
    return-void
.end method

.method public whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 4

    .line 1906
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1907
    return-void
.end method

.method public whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 4

    .line 1920
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1921
    return-void
.end method

.method public whitelist drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 3

    .line 1931
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1932
    return-void
.end method

.method public whitelist drawPicture(Landroid/graphics/Picture;)V
    .registers 3

    .line 1359
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 1360
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1361
    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 1362
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1363
    return-void
.end method

.method public whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .registers 5

    .line 1382
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 1383
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1384
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_31

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_31

    .line 1385
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1386
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 1385
    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1388
    :cond_31
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1389
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 1390
    return-void
.end method

.method public whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .registers 5

    .line 1369
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 1370
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1371
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_2d

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_2d

    .line 1372
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1374
    :cond_2d
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1375
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 1376
    return-void
.end method

.method public whitelist drawPoint(FFLandroid/graphics/Paint;)V
    .registers 4

    .line 1949
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1950
    return-void
.end method

.method public whitelist drawPoints([FIILandroid/graphics/Paint;)V
    .registers 5

    .line 1967
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1968
    return-void
.end method

.method public whitelist drawPoints([FLandroid/graphics/Paint;)V
    .registers 3

    .line 1974
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawPoints([FLandroid/graphics/Paint;)V

    .line 1975
    return-void
.end method

.method public whitelist drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2009
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 2010
    return-void
.end method

.method public whitelist drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1993
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 1994
    return-void
.end method

.method public whitelist drawRGB(III)V
    .registers 4

    .line 2057
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawRGB(III)V

    .line 2058
    return-void
.end method

.method public whitelist drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 6

    .line 2045
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2046
    return-void
.end method

.method public whitelist drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 3

    .line 2031
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2032
    return-void
.end method

.method public whitelist drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 3

    .line 2020
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2021
    return-void
.end method

.method public whitelist drawRegion(Landroid/graphics/Region;Landroid/graphics/Paint;)V
    .registers 3

    .line 1942
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRegion(Landroid/graphics/Region;Landroid/graphics/Paint;)V

    .line 1943
    return-void
.end method

.method public whitelist drawRenderNode(Landroid/graphics/RenderNode;)V
    .registers 3

    .line 2400
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Software rendering doesn\'t support drawRenderNode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .registers 8

    .line 2083
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 2084
    return-void
.end method

.method public whitelist drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 5

    .line 2070
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2071
    return-void
.end method

.method public whitelist drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 7

    .line 2224
    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 2225
    return-void
.end method

.method public whitelist drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 5

    .line 2192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2193
    return-void
.end method

.method public whitelist drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 7

    .line 2208
    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2209
    return-void
.end method

.method public whitelist drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 7

    .line 2179
    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 2180
    return-void
.end method

.method public whitelist drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 6

    .line 2256
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 2257
    return-void
.end method

.method public whitelist drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 8

    .line 2241
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 2242
    return-void
.end method

.method public whitelist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .registers 10

    .line 2347
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    .line 2348
    return-void
.end method

.method public whitelist drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .registers 10

    .line 2322
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 2323
    return-void
.end method

.method public whitelist drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .registers 10

    .line 2283
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 2284
    return-void
.end method

.method public whitelist drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .registers 13

    .line 2386
    invoke-super/range {p0 .. p12}, Landroid/graphics/BaseCanvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 2388
    return-void
.end method

.method public whitelist enableZ()V
    .registers 1

    .line 245
    return-void
.end method

.method public final whitelist getClipBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1342
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1343
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1344
    return-object v0
.end method

.method public whitelist getClipBounds(Landroid/graphics/Rect;)Z
    .registers 4

    .line 1333
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nGetClipBounds(JLandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public whitelist getDensity()I
    .registers 2

    .line 299
    iget v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return v0
.end method

.method public whitelist getDrawFilter()Landroid/graphics/DrawFilter;
    .registers 2

    .line 1167
    iget-object v0, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 3

    .line 284
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nGetHeight(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getMatrix()Landroid/graphics/Matrix;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 842
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 844
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 845
    return-object v0
.end method

.method public whitelist getMatrix(Landroid/graphics/Matrix;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 827
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nGetMatrix(JJ)V

    .line 828
    return-void
.end method

.method public whitelist getMaximumBitmapHeight()I
    .registers 2

    .line 346
    const/16 v0, 0x7ffe

    return v0
.end method

.method public whitelist getMaximumBitmapWidth()I
    .registers 2

    .line 335
    const/16 v0, 0x7ffe

    return v0
.end method

.method public greylist getNativeCanvasWrapper()J
    .registers 3

    .line 66
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    return-wide v0
.end method

.method public whitelist getSaveCount()I
    .registers 3

    .line 673
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nGetSaveCount(J)I

    move-result v0

    return v0
.end method

.method public whitelist getWidth()I
    .registers 3

    .line 275
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nGetWidth(J)I

    move-result v0

    return v0
.end method

.method public whitelist isHardwareAccelerated()Z
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHighContrastTextEnabled()Z
    .registers 3

    .line 165
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nIsHighContrastText(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isOpaque()Z
    .registers 3

    .line 266
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nIsOpaque(J)Z

    move-result v0

    return v0
.end method

.method public whitelist quickReject(FFFF)Z
    .registers 11

    .line 1320
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->nQuickReject(JFFFF)Z

    move-result p1

    return p1
.end method

.method public whitelist quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1299
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-wide p0, v0

    invoke-static/range {p0 .. p5}, Landroid/graphics/Canvas;->nQuickReject(JFFFF)Z

    move-result p1

    return p1
.end method

.method public whitelist quickReject(Landroid/graphics/Path;)Z
    .registers 6

    .line 1271
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nQuickReject(JJ)Z

    move-result p1

    return p1
.end method

.method public whitelist quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1255
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nQuickReject(JJ)Z

    move-result p1

    return p1
.end method

.method public whitelist quickReject(Landroid/graphics/RectF;)Z
    .registers 8

    .line 1233
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->nQuickReject(JFFFF)Z

    move-result p1

    return p1
.end method

.method public whitelist quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1218
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->nQuickReject(JFFFF)Z

    move-result p1

    return p1
.end method

.method public greylist-max-r release()V
    .registers 3

    .line 1411
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 1412
    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 1413
    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1414
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    .line 1416
    :cond_10
    return-void
.end method

.method public whitelist restore()V
    .registers 3

    .line 662
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nRestore(J)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    if-eqz v0, :cond_13

    .line 663
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1b

    .line 664
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Underflow in restore - more restores than saves"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist restoreToCount(I)V
    .registers 4

    .line 690
    const/4 v0, 0x1

    if-ge p1, v0, :cond_17

    .line 691
    sget-boolean p1, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 697
    move p1, v0

    goto :goto_17

    .line 693
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Underflow in restoreToCount - more restores than saves"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 699
    :cond_17
    :goto_17
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nRestoreToCount(JI)V

    .line 700
    return-void
.end method

.method public blacklist restoreUnclippedLayer(ILandroid/graphics/Paint;)V
    .registers 7

    .line 555
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/Canvas;->nRestoreUnclippedLayer(JIJ)V

    .line 556
    return-void
.end method

.method public whitelist rotate(F)V
    .registers 4

    .line 745
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_6

    return-void

    .line 746
    :cond_6
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nRotate(JF)V

    .line 747
    return-void
.end method

.method public final whitelist rotate(FFF)V
    .registers 5

    .line 757
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_6

    return-void

    .line 758
    :cond_6
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 759
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 760
    neg-float p1, p2

    neg-float p2, p3

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 761
    return-void
.end method

.method public whitelist save()I
    .registers 4

    .line 445
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->nSave(JI)I

    move-result v0

    return v0
.end method

.method public greylist save(I)I
    .registers 4

    .line 467
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nSave(JI)I

    move-result p1

    return p1
.end method

.method public whitelist saveLayer(FFFFLandroid/graphics/Paint;)I
    .registers 13

    .line 578
    const/16 v6, 0x1f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result p1

    return p1
.end method

.method public whitelist saveLayer(FFFFLandroid/graphics/Paint;I)I
    .registers 15

    .line 568
    invoke-static {p6}, Landroid/graphics/Canvas;->checkValidSaveFlags(I)V

    .line 569
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 570
    if-eqz p5, :cond_c

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide p5

    goto :goto_e

    :cond_c
    const-wide/16 p5, 0x0

    :goto_e
    move-wide v6, p5

    .line 569
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->nSaveLayer(JFFFFJ)I

    move-result p1

    return p1
.end method

.method public whitelist saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I
    .registers 4

    .line 538
    const/16 v0, 0x1f

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result p1

    return p1
.end method

.method public whitelist saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .registers 11

    .line 503
    if-nez p1, :cond_b

    .line 504
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 506
    :cond_b
    invoke-static {p3}, Landroid/graphics/Canvas;->checkValidSaveFlags(I)V

    .line 507
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    const/16 v6, 0x1f

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result p1

    return p1
.end method

.method public whitelist saveLayerAlpha(FFFFI)I
    .registers 13

    .line 653
    const/16 v6, 0x1f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result p1

    return p1
.end method

.method public whitelist saveLayerAlpha(FFFFII)I
    .registers 14

    .line 643
    invoke-static {p6}, Landroid/graphics/Canvas;->checkValidSaveFlags(I)V

    .line 644
    const/4 p6, 0x0

    invoke-static {p6, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    const/16 p6, 0xff

    invoke-static {p6, p5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 645
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nSaveLayerAlpha(JFFFFI)I

    move-result p1

    return p1
.end method

.method public whitelist saveLayerAlpha(Landroid/graphics/RectF;I)I
    .registers 4

    .line 630
    const/16 v0, 0x1f

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result p1

    return p1
.end method

.method public whitelist saveLayerAlpha(Landroid/graphics/RectF;II)I
    .registers 11

    .line 612
    if-nez p1, :cond_b

    .line 613
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 615
    :cond_b
    invoke-static {p3}, Landroid/graphics/Canvas;->checkValidSaveFlags(I)V

    .line 616
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    const/16 v6, 0x1f

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result p1

    return p1
.end method

.method public greylist-max-o saveUnclippedLayer(IIII)I
    .registers 11

    .line 545
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->nSaveUnclippedLayer(JIIII)I

    move-result p1

    return p1
.end method

.method public whitelist scale(FF)V
    .registers 5

    .line 720
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_b

    cmpl-float v0, p2, v0

    if-nez v0, :cond_b

    return-void

    .line 721
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nScale(JFF)V

    .line 722
    return-void
.end method

.method public final whitelist scale(FFFF)V
    .registers 7

    .line 733
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_b

    cmpl-float v0, p2, v0

    if-nez v0, :cond_b

    return-void

    .line 734
    :cond_b
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 735
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 736
    neg-float p1, p3

    neg-float p2, p4

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 737
    return-void
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 8

    .line 181
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_48

    .line 185
    nop

    .line 186
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    sget-boolean v1, Landroid/graphics/Canvas;->sCompatibilitySetBitmap:Z

    if-eqz v1, :cond_13

    .line 187
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    goto :goto_14

    .line 190
    :cond_13
    move-object v1, v0

    :goto_14
    if-nez p1, :cond_21

    .line 191
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Canvas;->nSetBitmap(JJ)V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    goto :goto_3a

    .line 194
    :cond_21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 197
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 198
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 199
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Canvas;->nSetBitmap(JJ)V

    .line 200
    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 203
    :goto_3a
    if-eqz v1, :cond_3f

    .line 204
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 207
    :cond_3f
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 208
    return-void

    .line 195
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 182
    :cond_48
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t set a bitmap device on a HW accelerated canvas"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setDensity(I)V
    .registers 3

    .line 315
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 316
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 318
    :cond_9
    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 319
    return-void
.end method

.method public whitelist setDrawFilter(Landroid/graphics/DrawFilter;)V
    .registers 6

    .line 1171
    nop

    .line 1172
    if-eqz p1, :cond_6

    .line 1173
    iget-wide v0, p1, Landroid/graphics/DrawFilter;->mNativeInt:J

    goto :goto_8

    .line 1172
    :cond_6
    const-wide/16 v0, 0x0

    .line 1175
    :goto_8
    iput-object p1, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 1176
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Canvas;->nSetDrawFilter(JJ)V

    .line 1177
    return-void
.end method

.method public whitelist setMatrix(Landroid/graphics/Matrix;)V
    .registers 6

    .line 811
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 812
    if-nez p1, :cond_7

    const-wide/16 v2, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    .line 811
    :goto_b
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nSetMatrix(JJ)V

    .line 813
    return-void
.end method

.method public greylist setScreenDensity(I)V
    .registers 2

    .line 324
    iput p1, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 325
    return-void
.end method

.method public whitelist skew(FF)V
    .registers 5

    .line 770
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_a

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    return-void

    .line 771
    :cond_a
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nSkew(JFF)V

    .line 772
    return-void
.end method

.method public whitelist translate(FF)V
    .registers 5

    .line 709
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_a

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    return-void

    .line 710
    :cond_a
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nTranslate(JFF)V

    .line 711
    return-void
.end method
