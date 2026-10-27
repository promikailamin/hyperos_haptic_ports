.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DENSITY_NONE:I = 0x0

.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:J = 0x20L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Bitmap"

.field private static final greylist-max-o WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile greylist-max-o sDefaultDensity:I

.field private static volatile blacklist sDownscaleDensity:I


# instance fields
.field private greylist-max-o mColorSpace:Landroid/graphics/ColorSpace;

.field greylist-max-o mDensity:I

.field private blacklist mHardwareBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mHeight:I

.field private final greylist mNativePtr:J

.field private greylist-max-p mNinePatchChunk:[B

.field private greylist-max-r mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

.field private greylist-max-o mRecycled:Z

.field private greylist-max-o mRequestPremultiplied:Z

.field private greylist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .registers 1

    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 118
    sput v0, Landroid/graphics/Bitmap;->sDownscaleDensity:I

    .line 2141
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-p <init>(JIIIZ[BLandroid/graphics/NinePatch$InsetStruct;)V
    .registers 19
    .param p1, "nativeBitmap"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "density"    # I
    .param p6, "requestPremultiplied"    # Z
    .param p7, "ninePatchChunk"    # [B
    .param p8, "ninePatchInsets"    # Landroid/graphics/NinePatch$InsetStruct;

    .line 159
    const/4 v9, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroid/graphics/Bitmap;-><init>(JIIIZ[BLandroid/graphics/NinePatch$InsetStruct;Z)V

    .line 161
    return-void
.end method

.method constructor blacklist <init>(JIIIZ[BLandroid/graphics/NinePatch$InsetStruct;Z)V
    .registers 16
    .param p1, "nativeBitmap"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "density"    # I
    .param p6, "requestPremultiplied"    # Z
    .param p7, "ninePatchChunk"    # [B
    .param p8, "ninePatchInsets"    # Landroid/graphics/NinePatch$InsetStruct;
    .param p9, "fromMalloc"    # Z

    .line 166
    const-class v0, Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    iput v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 167
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_48

    .line 171
    iput p3, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 172
    iput p4, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 173
    iput-boolean p6, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 175
    iput-object p7, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 176
    iput-object p8, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    .line 177
    if-ltz p5, :cond_1f

    .line 178
    iput p5, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 181
    :cond_1f
    iput-wide p1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 183
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    .line 185
    .local v1, "allocationByteCount":I
    if-eqz p9, :cond_36

    .line 186
    nop

    .line 187
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/Bitmap;->nativeGetNativeFinalizer()J

    move-result-wide v2

    int-to-long v4, v1

    .line 186
    invoke-static {v0, v2, v3, v4, v5}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    .local v0, "registry":Llibcore/util/NativeAllocationRegistry;
    goto :goto_44

    .line 189
    .end local v0    # "registry":Llibcore/util/NativeAllocationRegistry;
    :cond_36
    nop

    .line 190
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/Bitmap;->nativeGetNativeFinalizer()J

    move-result-wide v2

    int-to-long v4, v1

    .line 189
    invoke-static {v0, v2, v3, v4, v5}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    .line 192
    .restart local v0    # "registry":Llibcore/util/NativeAllocationRegistry;
    :goto_44
    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 193
    return-void

    .line 168
    .end local v0    # "registry":Llibcore/util/NativeAllocationRegistry;
    .end local v1    # "allocationByteCount":I
    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error: native bitmap is 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkHardware(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 444
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_9

    .line 447
    return-void

    .line 445
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkPixelAccess(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2031
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 2032
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_19

    .line 2035
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_10

    .line 2038
    return-void

    .line 2036
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2033
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkPixelsAccess(IIIIII[I)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "offset"    # I
    .param p6, "stride"    # I
    .param p7, "pixels"    # [I

    .line 2054
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 2055
    if-ltz p3, :cond_57

    .line 2058
    if-ltz p4, :cond_4f

    .line 2061
    add-int v0, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_46

    .line 2065
    add-int v0, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3d

    .line 2069
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, p3, :cond_35

    .line 2072
    add-int/lit8 v0, p4, -0x1

    mul-int/2addr v0, p6

    add-int/2addr v0, p5

    .line 2073
    .local v0, "lastScanline":I
    array-length v1, p7

    .line 2074
    .local v1, "length":I
    if-ltz p5, :cond_2f

    add-int v2, p5, p3

    if-gt v2, v1, :cond_2f

    if-ltz v0, :cond_2f

    add-int v2, v0, p3

    if-gt v2, v1, :cond_2f

    .line 2079
    return-void

    .line 2077
    :cond_2f
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2070
    .end local v0    # "lastScanline":I
    .end local v1    # "length":I
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2066
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y + height must be <= bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2062
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x + width must be <= bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2059
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2056
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkRecycled(Ljava/lang/String;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 434
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_5

    .line 437
    return-void

    .line 435
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkWidthHeight(II)V
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 471
    if-lez p0, :cond_d

    .line 474
    if-lez p1, :cond_5

    .line 477
    return-void

    .line 475
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkXYSign(II)V
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 456
    if-ltz p0, :cond_e

    .line 459
    if-ltz p1, :cond_5

    .line 462
    return-void

    .line 460
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist clamp(FLandroid/graphics/ColorSpace;I)F
    .registers 5
    .param p0, "value"    # F
    .param p1, "cs"    # Landroid/graphics/ColorSpace;
    .param p2, "index"    # I

    .line 1946
    invoke-virtual {p1, p2}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1021
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z

    .line 1060
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z
    .param p4, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1087
    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .line 846
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 866
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .registers 32
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "m"    # Landroid/graphics/Matrix;
    .param p6, "filter"    # Z

    .line 903
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 904
    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 905
    add-int v3, v1, v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_169

    .line 908
    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_160

    .line 911
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_158

    .line 916
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-nez v3, :cond_47

    if-nez v1, :cond_47

    if-nez v2, :cond_47

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v9, v3, :cond_47

    .line 917
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v10, v3, :cond_47

    if-eqz v11, :cond_46

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 918
    :cond_46
    return-object v0

    .line 921
    :cond_47
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    if-ne v3, v4, :cond_52

    move v3, v6

    goto :goto_53

    :cond_52
    const/4 v3, 0x0

    :goto_53
    move v13, v3

    .line 922
    .local v13, "isHardware":Z
    if-eqz v13, :cond_5f

    .line 923
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 924
    iget-wide v3, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/graphics/Bitmap;->nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 927
    .end local p0    # "source":Landroid/graphics/Bitmap;
    .local v0, "source":Landroid/graphics/Bitmap;
    :cond_5f
    move/from16 v4, p3

    .line 928
    .local v4, "neww":I
    move/from16 v5, p4

    .line 932
    .local v5, "newh":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v7, v1, v9

    add-int v8, v2, v10

    invoke-direct {v3, v1, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v14, v3

    .line 933
    .local v14, "srcR":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v9

    int-to-float v8, v10

    const/4 v15, 0x0

    invoke-direct {v3, v15, v15, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v15, v3

    .line 934
    .local v15, "dstR":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object v8, v3

    .line 936
    .local v8, "deviceR":Landroid/graphics/RectF;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 937
    .local v3, "newConfig":Landroid/graphics/Bitmap$Config;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v16

    .line 939
    .local v16, "config":Landroid/graphics/Bitmap$Config;
    if-eqz v16, :cond_a3

    .line 940
    sget-object v7, Landroid/graphics/Bitmap$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v17

    aget v7, v7, v17

    packed-switch v7, :pswitch_data_172

    .line 954
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v17, v3

    goto :goto_a5

    .line 948
    :pswitch_94
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 949
    move-object/from16 v17, v3

    goto :goto_a5

    .line 945
    :pswitch_99
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 946
    move-object/from16 v17, v3

    goto :goto_a5

    .line 942
    :pswitch_9e
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 943
    move-object/from16 v17, v3

    goto :goto_a5

    .line 939
    :cond_a3
    move-object/from16 v17, v3

    .line 959
    .end local v3    # "newConfig":Landroid/graphics/Bitmap$Config;
    .local v17, "newConfig":Landroid/graphics/Bitmap$Config;
    :goto_a5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v18

    .line 961
    .local v18, "cs":Landroid/graphics/ColorSpace;
    if-eqz v11, :cond_116

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_b3

    goto/16 :goto_116

    .line 965
    :cond_b3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v3

    xor-int/2addr v3, v6

    .line 967
    .local v3, "transformed":Z
    invoke-virtual {v11, v8, v15}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 969
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 970
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 972
    move-object/from16 v7, v17

    .line 973
    .local v7, "transformedConfig":Landroid/graphics/Bitmap$Config;
    if-eqz v3, :cond_e3

    .line 974
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v7, v12, :cond_e3

    sget-object v12, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-eq v7, v12, :cond_e3

    .line 975
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 976
    if-nez v18, :cond_e3

    .line 977
    sget-object v12, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v12}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v12

    move-object/from16 v18, v12

    .line 982
    :cond_e3
    const/16 v19, 0x0

    if-nez v3, :cond_f1

    .line 983
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v12

    if-eqz v12, :cond_ee

    goto :goto_f1

    :cond_ee
    const/16 v23, 0x0

    goto :goto_f3

    :cond_f1
    :goto_f1
    move/from16 v23, v6

    .line 982
    :goto_f3
    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v7

    move-object/from16 v24, v18

    invoke-static/range {v19 .. v24}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 985
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 p0, v19

    .line 986
    .local p0, "paint":Landroid/graphics/Paint;
    move-object/from16 v6, p0

    move/from16 v1, p6

    .end local p0    # "paint":Landroid/graphics/Paint;
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 987
    if-eqz v3, :cond_113

    .line 988
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 994
    .end local v3    # "transformed":Z
    .end local v7    # "transformedConfig":Landroid/graphics/Bitmap$Config;
    :cond_113
    move-object v3, v6

    move-object v1, v8

    goto :goto_125

    .line 962
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_116
    :goto_116
    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v7

    move-object/from16 v6, v17

    move-object v1, v8

    .end local v8    # "deviceR":Landroid/graphics/RectF;
    .local v1, "deviceR":Landroid/graphics/RectF;
    move-object/from16 v8, v18

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 963
    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 994
    .local v3, "paint":Landroid/graphics/Paint;
    :goto_125
    iget v6, v0, Landroid/graphics/Bitmap;->mDensity:I

    iput v6, v12, Landroid/graphics/Bitmap;->mDensity:I

    .line 995
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v6

    invoke-virtual {v12, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 996
    iget-boolean v6, v0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v12, v6}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 998
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 999
    .local v6, "canvas":Landroid/graphics/Canvas;
    iget v7, v1, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    iget v8, v1, Landroid/graphics/RectF;->top:F

    neg-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1000
    invoke-virtual {v6, v11}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1001
    invoke-virtual {v6, v0, v14, v15, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1002
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1003
    if-eqz v13, :cond_157

    .line 1004
    sget-object v7, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    invoke-virtual {v12, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    .line 1006
    :cond_157
    return-object v12

    .line 912
    .end local v0    # "source":Landroid/graphics/Bitmap;
    .end local v1    # "deviceR":Landroid/graphics/RectF;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "neww":I
    .end local v5    # "newh":I
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "isHardware":Z
    .end local v14    # "srcR":Landroid/graphics/Rect;
    .end local v15    # "dstR":Landroid/graphics/RectF;
    .end local v16    # "config":Landroid/graphics/Bitmap$Config;
    .end local v17    # "newConfig":Landroid/graphics/Bitmap$Config;
    .end local v18    # "cs":Landroid/graphics/ColorSpace;
    .local p0, "source":Landroid/graphics/Bitmap;
    :cond_158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "cannot use a recycled source in createBitmap"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 909
    :cond_160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 906
    :cond_169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_99
        :pswitch_94
    .end packed-switch
.end method

.method public static whitelist createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "source"    # Landroid/graphics/Picture;

    .line 1306
    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Picture;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "source"    # Landroid/graphics/Picture;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1328
    if-lez p1, :cond_a0

    if-lez p2, :cond_a0

    .line 1331
    if-eqz p3, :cond_98

    .line 1334
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 1335
    invoke-virtual {p0}, Landroid/graphics/Picture;->requiresHardwareAcceleration()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_18

    .line 1336
    const-string v0, "GPU readback"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1338
    :cond_18
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    if-eq p3, v0, :cond_54

    invoke-virtual {p0}, Landroid/graphics/Picture;->requiresHardwareAcceleration()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_54

    .line 1356
    :cond_24
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1357
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1358
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_39

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_4a

    .line 1359
    :cond_39
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    .line 1360
    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1359
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1362
    :cond_4a
    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1363
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1364
    invoke-direct {v0}, Landroid/graphics/Bitmap;->setImmutable()V

    .line 1365
    return-object v0

    .line 1339
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_54
    :goto_54
    const-string v0, "BitmapTemporary"

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    .line 1340
    .local v0, "node":Landroid/graphics/RenderNode;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 1341
    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 1342
    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    .line 1343
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    .line 1344
    .local v2, "canvas":Landroid/graphics/RecordingCanvas;
    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_74

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_85

    .line 1345
    :cond_74
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    .line 1346
    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1345
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RecordingCanvas;->scale(FF)V

    .line 1348
    :cond_85
    invoke-virtual {v2, p0}, Landroid/graphics/RecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1349
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1350
    invoke-static {v0, p1, p2}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1351
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v4, :cond_97

    .line 1352
    invoke-virtual {v3, p3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1354
    :cond_97
    return-object v3

    .line 1332
    .end local v0    # "node":Landroid/graphics/RenderNode;
    .end local v2    # "canvas":Landroid/graphics/RecordingCanvas;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Config must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1329
    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width & height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1040
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "hasAlpha"    # Z

    .line 1110
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1111
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    .line 1110
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .registers 18
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "hasAlpha"    # Z
    .param p5, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1142
    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p4

    if-lez p1, :cond_5b

    if-lez p2, :cond_5b

    .line 1145
    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v1, v3, :cond_53

    .line 1148
    if-nez p5, :cond_1b

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v1, v3, :cond_13

    goto :goto_1b

    .line 1149
    :cond_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "can\'t create bitmap without a color space"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1152
    :cond_1b
    :goto_1b
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v8, v1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v9, 0x1

    .line 1153
    if-nez p5, :cond_25

    const-wide/16 v5, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v5

    :goto_29
    move-wide v10, v5

    .line 1152
    move v5, p1

    move v6, p1

    move v7, p2

    invoke-static/range {v3 .. v11}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1155
    .local v3, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_38

    .line 1156
    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v4, v3, Landroid/graphics/Bitmap;->mDensity:I

    goto :goto_3e

    .line 1159
    :cond_38
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v4

    iput v4, v3, Landroid/graphics/Bitmap;->mDensity:I

    .line 1162
    :goto_3e
    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1163
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v4, :cond_49

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne v1, v4, :cond_52

    :cond_49
    if-nez v2, :cond_52

    .line 1164
    iget-wide v4, v3, Landroid/graphics/Bitmap;->mNativePtr:J

    const/high16 v6, -0x1000000

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    .line 1169
    :cond_52
    return-object v3

    .line 1146
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    :cond_53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "can\'t create mutable bitmap with Config.HARDWARE"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1143
    :cond_5b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "width and height must be > 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 23
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1222
    move-object/from16 v0, p0

    move/from16 v10, p4

    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 1223
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v10, :cond_64

    .line 1226
    add-int/lit8 v1, p5, -0x1

    mul-int v1, v1, p3

    add-int v11, p2, v1

    .line 1227
    .local v11, "lastScanline":I
    move-object/from16 v12, p1

    array-length v13, v12

    .line 1228
    .local v13, "length":I
    if-ltz p2, :cond_5c

    add-int v1, p2, v10

    if-gt v1, v13, :cond_5c

    if-ltz v11, :cond_5c

    add-int v1, v11, v10

    if-gt v1, v13, :cond_5c

    .line 1232
    if-lez v10, :cond_51

    if-lez p5, :cond_51

    .line 1235
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v14

    .line 1236
    .local v14, "sRGB":Landroid/graphics/ColorSpace;
    move-object/from16 v15, p6

    iget v6, v15, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v7, 0x0

    .line 1237
    invoke-virtual {v14}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v8

    .line 1236
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v9}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1238
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4a

    .line 1239
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/Bitmap;->mDensity:I

    goto :goto_50

    .line 1242
    :cond_4a
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v2

    iput v2, v1, Landroid/graphics/Bitmap;->mDensity:I

    .line 1245
    :goto_50
    return-object v1

    .line 1232
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v14    # "sRGB":Landroid/graphics/ColorSpace;
    :cond_51
    move-object/from16 v15, p6

    .line 1233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width and height must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1228
    :cond_5c
    move-object/from16 v15, p6

    .line 1230
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1224
    .end local v11    # "lastScanline":I
    .end local v13    # "length":I
    :cond_64
    move-object/from16 v12, p1

    move-object/from16 v15, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "colors"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1290
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "colors"    # [I
    .param p1, "offset"    # I
    .param p2, "stride"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1193
    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "colors"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1266
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "filter"    # Z

    .line 828
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 830
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 831
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 832
    .local v9, "height":I
    if-ne v8, p1, :cond_11

    if-eq v9, p2, :cond_1a

    .line 833
    :cond_11
    int-to-float v1, p1

    int-to-float v2, v8

    div-float/2addr v1, v2

    .line 834
    .local v1, "sx":F
    int-to-float v2, p2

    int-to-float v3, v9

    div-float/2addr v2, v3

    .line 835
    .local v2, "sy":F
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 837
    .end local v1    # "sx":F
    .end local v2    # "sy":F
    :cond_1a
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v8

    move v5, v9

    move-object v6, v0

    move v7, p3

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method static greylist getDefaultDensity()I
    .registers 2

    .line 135
    sget v0, Landroid/graphics/Bitmap;->sDownscaleDensity:I

    if-ltz v0, :cond_7

    .line 136
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0

    .line 138
    :cond_7
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-gez v0, :cond_10

    .line 139
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    goto :goto_26

    .line 141
    :cond_10
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    sget v1, Landroid/graphics/Bitmap;->sDefaultDensity:I

    invoke-virtual {v0, v1}, Landroid/util/GMSDownscaleStub;->getDownscaleDensity(I)I

    move-result v0

    sput v0, Landroid/graphics/Bitmap;->sDownscaleDensity:I

    .line 142
    sget v0, Landroid/graphics/Bitmap;->sDownscaleDensity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 143
    sget v0, Landroid/graphics/Bitmap;->sDownscaleDensity:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0

    .line 147
    :cond_26
    :goto_26
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0
.end method

.method private static native greylist-max-o nativeCompress(JIILjava/io/OutputStream;[B)Z
.end method

.method private static native blacklist nativeComputeColorSpace(J)Landroid/graphics/ColorSpace;
.end method

.method private static native greylist-max-o nativeConfig(J)I
.end method

.method private static native greylist-max-o nativeCopy(JIZ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeCopyAshmem(J)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native greylist-max-o nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native greylist-max-o nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeErase(JI)V
.end method

.method private static native blacklist nativeErase(JJJ)V
.end method

.method private static native greylist-max-o nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeGenerationId(J)I
.end method

.method private static native greylist-max-o nativeGetAllocationByteCount(J)I
.end method

.method private static native blacklist nativeGetAsset(J)Z
.end method

.method private static native blacklist nativeGetColor(JII)J
.end method

.method private static native blacklist nativeGetHardwareBuffer(J)Landroid/hardware/HardwareBuffer;
.end method

.method private static native greylist-max-o nativeGetNativeFinalizer()J
.end method

.method private static native blacklist nativeGetPalette(J)I
.end method

.method private static native greylist-max-o nativeGetPixel(JII)I
.end method

.method private static native greylist-max-o nativeGetPixels(J[IIIIIII)V
.end method

.method private static native greylist-max-o nativeHasAlpha(J)Z
.end method

.method private static native greylist-max-o nativeHasMipMap(J)Z
.end method

.method private static native blacklist nativeIsBackedByAshmem(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeIsImmutable(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeIsPremultiplied(J)Z
.end method

.method private static native greylist-max-o nativeIsSRGB(J)Z
.end method

.method private static native greylist-max-o nativeIsSRGBLinear(J)Z
.end method

.method private static native greylist-max-o nativePrepareToDraw(J)V
.end method

.method private static native greylist nativeReconfigure(JIIIZ)V
.end method

.method private static native blacklist nativeRecycle(J)V
.end method

.method private static native greylist-max-o nativeRowBytes(J)I
.end method

.method private static native greylist-max-o nativeSameAs(JJ)Z
.end method

.method private static native blacklist nativeSetColorSpace(JJ)V
.end method

.method private static native greylist-max-o nativeSetHasAlpha(JZZ)V
.end method

.method private static native greylist-max-o nativeSetHasMipMap(JZ)V
.end method

.method private static native blacklist nativeSetImmutable(J)V
.end method

.method private static native greylist-max-o nativeSetPixel(JIII)V
.end method

.method private static native greylist-max-o nativeSetPixels(J[IIIIIII)V
.end method

.method private static native greylist-max-o nativeSetPremultiplied(JZ)V
.end method

.method private static native blacklist nativeWrapHardwareBufferBitmap(Landroid/hardware/HardwareBuffer;J)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeWriteToParcel(JILandroid/os/Parcel;)Z
.end method

.method private greylist-max-o noteHardwareBitmapSlowCall()V
    .registers 3

    .line 699
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_d

    .line 700
    const-string v0, "Warning: attempt to read pixels from hardware bitmap, which is very slow operation"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 703
    :cond_d
    return-void
.end method

.method public static greylist scaleFromDensity(III)I
    .registers 5
    .param p0, "size"    # I
    .param p1, "sdensity"    # I
    .param p2, "tdensity"    # I

    .line 1654
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    if-ne p1, p2, :cond_7

    goto :goto_e

    .line 1659
    :cond_7
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int/2addr v0, p1

    return v0

    .line 1655
    :cond_e
    :goto_e
    return p0
.end method

.method public static greylist setDefaultDensity(I)V
    .registers 1
    .param p0, "density"    # I

    .line 128
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 129
    return-void
.end method

.method private blacklist setImmutable()V
    .registers 3

    .line 1506
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1507
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeSetImmutable(J)V

    .line 1509
    :cond_b
    return-void
.end method

.method private greylist setNinePatchChunk([B)V
    .registers 2
    .param p1, "chunk"    # [B

    .line 382
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 383
    return-void
.end method

.method public static whitelist wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 792
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2c

    .line 795
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v0

    .line 796
    .local v0, "format":I
    if-nez p1, :cond_19

    .line 797
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    .line 799
    :cond_19
    nop

    .line 800
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v1

    .line 799
    invoke-static {p0, v1, v2}, Landroid/graphics/Bitmap;->nativeWrapHardwareBufferBitmap(Landroid/hardware/HardwareBuffer;J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 801
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2b

    .line 802
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    .line 804
    :cond_2b
    return-object v1

    .line 793
    .end local v0    # "format":I
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "usage flags must contain USAGE_GPU_SAMPLED_IMAGE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist asShared()Landroid/graphics/Bitmap;
    .registers 4

    .line 762
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsBackedByAshmem(J)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsImmutable(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 763
    return-object p0

    .line 765
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 766
    .local v0, "shared":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_18

    .line 769
    return-object v0

    .line 767
    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create shared Bitmap!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .registers 13
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .line 1475
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1477
    if-eqz p3, :cond_34

    .line 1480
    if-ltz p2, :cond_2b

    const/16 v0, 0x64

    if-gt p2, v0, :cond_2b

    .line 1483
    const-string v0, "Compression of a bitmap is slow"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1484
    const-wide/16 v0, 0x2000

    const-string v2, "Bitmap.compress"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1485
    iget-wide v3, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v5, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v2, 0x1000

    new-array v8, v2, [B

    move v6, p2

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->nativeCompress(JIILjava/io/OutputStream;[B)Z

    move-result v2

    .line 1487
    .local v2, "result":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1488
    return v2

    .line 1481
    .end local v2    # "result":Z
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1478
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .param p2, "isMutable"    # Z

    .line 722
    const-string v0, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 723
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_14

    if-nez p2, :cond_c

    goto :goto_14

    .line 724
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hardware bitmaps are always immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_14
    :goto_14
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 727
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v2, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->nativeCopy(JIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 728
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2a

    .line 729
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 730
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 732
    :cond_2a
    return-object v0
.end method

.method public whitelist copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .registers 13
    .param p1, "src"    # Ljava/nio/Buffer;

    .line 668
    const-string v0, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 669
    const-string/jumbo v0, "unable to copyPixelsFromBuffer, Config#HARDWARE bitmaps are immutable"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 673
    .local v0, "elements":I
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_15

    .line 674
    const/4 v1, 0x0

    .local v1, "shift":I
    goto :goto_20

    .line 675
    .end local v1    # "shift":I
    :cond_15
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1b

    .line 676
    const/4 v1, 0x1

    .restart local v1    # "shift":I
    goto :goto_20

    .line 677
    .end local v1    # "shift":I
    :cond_1b
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_45

    .line 678
    const/4 v1, 0x2

    .line 683
    .restart local v1    # "shift":I
    :goto_20
    int-to-long v2, v0

    shl-long/2addr v2, v1

    .line 684
    .local v2, "bufferBytes":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v4, v4

    .line 686
    .local v4, "bitmapBytes":J
    cmp-long v6, v2, v4

    if-ltz v6, :cond_3d

    .line 690
    iget-wide v6, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V

    .line 693
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    .line 694
    .local v6, "position":I
    int-to-long v7, v6

    shr-long v9, v4, v1

    add-long/2addr v7, v9

    long-to-int v6, v7

    .line 695
    invoke-virtual {p1, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 696
    return-void

    .line 687
    .end local v6    # "position":I
    :cond_3d
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 680
    .end local v1    # "shift":I
    .end local v2    # "bufferBytes":J
    .end local v4    # "bitmapBytes":J
    :cond_45
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unsupported Buffer subclass"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .registers 13
    .param p1, "dst"    # Ljava/nio/Buffer;

    .line 626
    const-string/jumbo v0, "unable to copyPixelsToBuffer, pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 630
    .local v0, "elements":I
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_10

    .line 631
    const/4 v1, 0x0

    .local v1, "shift":I
    goto :goto_1b

    .line 632
    .end local v1    # "shift":I
    :cond_10
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_16

    .line 633
    const/4 v1, 0x1

    .restart local v1    # "shift":I
    goto :goto_1b

    .line 634
    .end local v1    # "shift":I
    :cond_16
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_40

    .line 635
    const/4 v1, 0x2

    .line 640
    .restart local v1    # "shift":I
    :goto_1b
    int-to-long v2, v0

    shl-long/2addr v2, v1

    .line 641
    .local v2, "bufferSize":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v4, v4

    .line 643
    .local v4, "pixelSize":J
    cmp-long v6, v2, v4

    if-ltz v6, :cond_38

    .line 647
    iget-wide v6, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V

    .line 650
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    .line 651
    .local v6, "position":I
    int-to-long v7, v6

    shr-long v9, v4, v1

    add-long/2addr v7, v9

    long-to-int v6, v7

    .line 652
    invoke-virtual {p1, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 653
    return-void

    .line 644
    .end local v6    # "position":I
    :cond_38
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 637
    .end local v1    # "shift":I
    .end local v2    # "bufferSize":J
    .end local v4    # "pixelSize":J
    :cond_40
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unsupported Buffer subclass"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-r createAshmemBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 744
    const-string v0, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 745
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 746
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeCopyAshmem(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 747
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_19

    .line 748
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 749
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 751
    :cond_19
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2165
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist eraseColor(I)V
    .registers 4
    .param p1, "c"    # I

    .line 1898
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1902
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    .line 1903
    return-void

    .line 1900
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist eraseColor(J)V
    .registers 10
    .param p1, "color"    # J

    .line 1915
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1916
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1920
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1921
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->nativeErase(JJJ)V

    .line 1922
    return-void

    .line 1917
    .end local v0    # "cs":Landroid/graphics/ColorSpace;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist extractAlpha()Landroid/graphics/Bitmap;
    .registers 2

    .line 2194
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "offsetXY"    # [I

    .line 2224
    const-string v0, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2225
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    .line 2226
    .local v0, "nativePaint":J
    :goto_e
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 2227
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v2, v3, v0, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2228
    .local v2, "bm":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1e

    .line 2231
    iget v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v3, v2, Landroid/graphics/Bitmap;->mDensity:I

    .line 2232
    return-object v2

    .line 2229
    :cond_1e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to extractAlpha on Bitmap"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final whitelist getAllocationByteCount()I
    .registers 3

    .line 1713
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_d

    .line 1714
    const-string v0, "Bitmap"

    const-string v1, "Called getAllocationByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    const/4 v0, 0x0

    return v0

    .line 1718
    :cond_d
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetAllocationByteCount(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getByteCount()I
    .registers 3

    .line 1689
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_d

    .line 1690
    const-string v0, "Bitmap"

    const-string v1, "Called getByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const/4 v0, 0x0

    return v0

    .line 1695
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColor(II)Landroid/graphics/Color;
    .registers 14
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1963
    const-string v0, "Can\'t call getColor() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1964
    const-string/jumbo v0, "unable to getColor(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 1966
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1968
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1969
    .local v0, "cs":Landroid/graphics/ColorSpace;
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1970
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    .line 1974
    :cond_29
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/Bitmap;->nativeGetColor(JII)J

    move-result-wide v1

    .line 1975
    .local v1, "rgba":J
    const/4 v3, 0x0

    shr-long v4, v1, v3

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-static {v4}, Landroid/util/Half;->toFloat(S)F

    move-result v4

    .line 1976
    .local v4, "r":F
    const/16 v5, 0x10

    shr-long v8, v1, v5

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-short v5, v5

    invoke-static {v5}, Landroid/util/Half;->toFloat(S)F

    move-result v5

    .line 1977
    .local v5, "g":F
    const/16 v8, 0x20

    shr-long v8, v1, v8

    and-long/2addr v8, v6

    long-to-int v8, v8

    int-to-short v8, v8

    invoke-static {v8}, Landroid/util/Half;->toFloat(S)F

    move-result v8

    .line 1978
    .local v8, "b":F
    const/16 v9, 0x30

    shr-long v9, v1, v9

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-static {v6}, Landroid/util/Half;->toFloat(S)F

    move-result v6

    .line 1982
    .local v6, "a":F
    invoke-static {v4, v0, v3}, Landroid/graphics/Bitmap;->clamp(FLandroid/graphics/ColorSpace;I)F

    move-result v3

    const/4 v7, 0x1

    invoke-static {v5, v0, v7}, Landroid/graphics/Bitmap;->clamp(FLandroid/graphics/ColorSpace;I)F

    move-result v7

    const/4 v9, 0x2

    invoke-static {v8, v0, v9}, Landroid/graphics/Bitmap;->clamp(FLandroid/graphics/ColorSpace;I)F

    move-result v9

    invoke-static {v3, v7, v9, v6, v0}, Landroid/graphics/Color;->valueOf(FFFFLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v3

    return-object v3
.end method

.method public final whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 1817
    const-string v0, "getColorSpace called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1818
    iget-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    if-nez v0, :cond_11

    .line 1819
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeComputeColorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 1821
    :cond_11
    iget-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public final whitelist getConfig()Landroid/graphics/Bitmap$Config;
    .registers 3

    .line 1726
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1727
    const-string v0, "Bitmap"

    const-string v1, "Called getConfig() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeConfig(J)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDensity()I
    .registers 3

    .line 240
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 241
    const-string v0, "Bitmap"

    const-string v1, "Called getDensity() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_b
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public whitelist getGenerationId()I
    .registers 3

    .line 423
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 424
    const-string v0, "Bitmap"

    const-string v1, "Called getGenerationId() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGenerationId(J)I

    move-result v0

    return v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 4

    .line 2291
    const-string v0, "Can\'t getHardwareBuffer from a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2292
    iget-object v0, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_11

    :cond_b
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    .line 2293
    .local v0, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    :goto_11
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2294
    :cond_19
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->nativeGetHardwareBuffer(J)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 2295
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    .line 2297
    :cond_26
    return-object v0
.end method

.method public final whitelist getHeight()I
    .registers 3

    .line 1581
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1582
    const-string v0, "Bitmap"

    const-string v1, "Called getHeight() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_b
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    return v0
.end method

.method public greylist-max-o getNativeInstance()J
    .registers 3

    .line 203
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    return-wide v0
.end method

.method public whitelist getNinePatchChunk()[B
    .registers 2

    .line 1374
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public greylist-max-o getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;
    .registers 2

    .line 1400
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    return-object v0
.end method

.method public greylist-max-o getOpticalInsets(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outInsets"    # Landroid/graphics/Rect;

    .line 1387
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    if-nez v0, :cond_8

    .line 1388
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_d

    .line 1390
    :cond_8
    iget-object v0, v0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1392
    :goto_d
    return-void
.end method

.method public whitelist getPixel(II)I
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1938
    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1939
    const-string/jumbo v0, "unable to getPixel(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 1941
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1942
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    move-result v0

    return v0
.end method

.method public whitelist getPixels([IIIIIII)V
    .registers 26
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 2012
    move-object/from16 v8, p0

    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {v8, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2013
    const-string/jumbo v0, "unable to getPixels(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {v8, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 2015
    if-eqz p6, :cond_39

    if-nez p7, :cond_12

    goto :goto_39

    .line 2018
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 2019
    iget-wide v9, v8, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-static/range {v9 .. v17}, Landroid/graphics/Bitmap;->nativeGetPixels(J[IIIIIII)V

    .line 2021
    return-void

    .line 2016
    :cond_39
    :goto_39
    return-void
.end method

.method public final whitelist getRowBytes()I
    .registers 3

    .line 1675
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1676
    const-string v0, "Bitmap"

    const-string v1, "Called getRowBytes() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRowBytes(J)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledHeight(I)I
    .registers 4
    .param p1, "targetDensity"    # I

    .line 1644
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledHeight(Landroid/graphics/Canvas;)I
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1600
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledHeight(Landroid/util/DisplayMetrics;)I
    .registers 5
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 1616
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledWidth(I)I
    .registers 4
    .param p1, "targetDensity"    # I

    .line 1630
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledWidth(Landroid/graphics/Canvas;)I
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1592
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledWidth(Landroid/util/DisplayMetrics;)I
    .registers 5
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 1608
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final whitelist getWidth()I
    .registers 3

    .line 1573
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1574
    const-string v0, "Bitmap"

    const-string v1, "Called getWidth() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_b
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    return v0
.end method

.method public final whitelist hasAlpha()Z
    .registers 3

    .line 1741
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1742
    const-string v0, "Bitmap"

    const-string v1, "Called hasAlpha() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasAlpha(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasMipMap()Z
    .registers 3

    .line 1780
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1781
    const-string v0, "Bitmap"

    const-string v1, "Called hasMipMap() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasMipMap(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAsset()Z
    .registers 3

    .line 66
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetAsset(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isMutable()Z
    .registers 3

    .line 1495
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsImmutable(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final whitelist isPremultiplied()Z
    .registers 3

    .line 1539
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1540
    const-string v0, "Bitmap"

    const-string v1, "Called isPremultiplied() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsPremultiplied(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isRecycled()Z
    .registers 2

    .line 412
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method public blacklist palette()I
    .registers 3

    .line 59
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetPalette(J)I

    move-result v0

    return v0
.end method

.method public whitelist prepareToDraw()V
    .registers 3

    .line 2271
    const-string v0, "Can\'t prepareToDraw on a recycled bitmap!"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2274
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativePrepareToDraw(J)V

    .line 2275
    return-void
.end method

.method public whitelist reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 313
    const-string v0, "Can\'t call reconfigure() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 314
    if-lez p1, :cond_2b

    if-lez p2, :cond_2b

    .line 317
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 321
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    iget-boolean v6, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->nativeReconfigure(JIIIZ)V

    .line 322
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 323
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 325
    return-void

    .line 318
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "only mutable bitmaps may be reconfigured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist recycle()V
    .registers 3

    .line 397
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_11

    .line 398
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRecycle(J)V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 401
    iput-object v0, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    .line 403
    :cond_11
    return-void
.end method

.method greylist-max-r reinit(IIZ)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "requestPremultiplied"    # Z

    .line 213
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 214
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 215
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 217
    return-void
.end method

.method public whitelist sameAs(Landroid/graphics/Bitmap;)Z
    .registers 6
    .param p1, "other"    # Landroid/graphics/Bitmap;

    .line 2241
    const-string v0, "Can\'t call sameAs on a recycled bitmap!"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2242
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 2243
    if-ne p0, p1, :cond_c

    const/4 v0, 0x1

    return v0

    .line 2244
    :cond_c
    if-nez p1, :cond_10

    const/4 v0, 0x0

    return v0

    .line 2245
    :cond_10
    invoke-direct {p1}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 2246
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2249
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-wide v2, p1, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSameAs(JJ)Z

    move-result v0

    return v0

    .line 2247
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t compare to a recycled bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setColorSpace(Landroid/graphics/ColorSpace;)V
    .registers 9
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1845
    const-string/jumbo v0, "setColorSpace called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1846
    if-eqz p1, :cond_7f

    .line 1850
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_77

    .line 1856
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1857
    .local v0, "oldColorSpace":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->nativeSetColorSpace(JJ)V

    .line 1861
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 1862
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 1865
    .local v1, "newColorSpace":Landroid/graphics/ColorSpace;
    :try_start_24
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v3

    if-ne v2, v3, :cond_62

    .line 1869
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 1870
    invoke-virtual {v0, v2}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result v3

    invoke-virtual {v1, v2}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_58

    .line 1876
    invoke-virtual {v0, v2}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v3

    invoke-virtual {v1, v2}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_50

    .line 1869
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1877
    :cond_50
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The new ColorSpace cannot decrease the maximum value for any of the components compared to the current ColorSpace/ To perform this type of conversion create a new Bitmap in the desired ColorSpace and draw this Bitmap into it."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .end local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .end local p0    # "this":Landroid/graphics/Bitmap;
    .end local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    throw v3

    .line 1871
    .restart local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .restart local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .restart local p0    # "this":Landroid/graphics/Bitmap;
    .restart local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The new ColorSpace cannot increase the minimum value for any of the components compared to the current ColorSpace. To perform this type of conversion create a new Bitmap in the desired ColorSpace and draw this Bitmap into it."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .end local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .end local p0    # "this":Landroid/graphics/Bitmap;
    .end local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    throw v3

    .line 1889
    .end local v2    # "i":I
    .restart local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .restart local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .restart local p0    # "this":Landroid/graphics/Bitmap;
    .restart local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_60
    nop

    .line 1890
    return-void

    .line 1866
    :cond_62
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The new ColorSpace must have the same component count as the current ColorSpace"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .end local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .end local p0    # "this":Landroid/graphics/Bitmap;
    .end local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    throw v2
    :try_end_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_6a} :catch_6a

    .line 1884
    .restart local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .restart local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .restart local p0    # "this":Landroid/graphics/Bitmap;
    .restart local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    :catch_6a
    move-exception v2

    .line 1886
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 1887
    iget-wide v3, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->nativeSetColorSpace(JJ)V

    .line 1888
    throw v2

    .line 1851
    .end local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .end local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a ColorSpace on ALPHA_8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1847
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The colorSpace cannot be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setConfig(Landroid/graphics/Bitmap$Config;)V
    .registers 4
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .line 372
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 373
    return-void
.end method

.method public whitelist setDensity(I)V
    .registers 2
    .param p1, "density"    # I

    .line 260
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 261
    return-void
.end method

.method public whitelist setHasAlpha(Z)V
    .registers 5
    .param p1, "hasAlpha"    # Z

    .line 1758
    const-string/jumbo v0, "setHasAlpha called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1759
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(JZZ)V

    .line 1760
    return-void
.end method

.method public final whitelist setHasMipMap(Z)V
    .registers 4
    .param p1, "hasMipMap"    # Z

    .line 1807
    const-string/jumbo v0, "setHasMipMap called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1808
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(JZ)V

    .line 1809
    return-void
.end method

.method public whitelist setHeight(I)V
    .registers 4
    .param p1, "height"    # I

    .line 356
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 357
    return-void
.end method

.method public whitelist setPixel(III)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "color"    # I

    .line 2096
    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2100
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 2101
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(JIII)V

    .line 2102
    return-void

    .line 2098
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist setPixels([IIIIIII)V
    .registers 26
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 2129
    move-object/from16 v8, p0

    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {v8, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2130
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2133
    if-eqz p6, :cond_39

    if-nez p7, :cond_12

    goto :goto_39

    .line 2136
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 2137
    iget-wide v9, v8, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-static/range {v9 .. v17}, Landroid/graphics/Bitmap;->nativeSetPixels(J[IIIIIII)V

    .line 2139
    return-void

    .line 2134
    :cond_39
    :goto_39
    return-void

    .line 2131
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final whitelist setPremultiplied(Z)V
    .registers 4
    .param p1, "premultiplied"    # Z

    .line 1566
    const-string/jumbo v0, "setPremultiplied called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1567
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 1568
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetPremultiplied(JZ)V

    .line 1569
    return-void
.end method

.method public whitelist setWidth(I)V
    .registers 4
    .param p1, "width"    # I

    .line 340
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 341
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2178
    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2179
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 2180
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(JILandroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2183
    return-void

    .line 2181
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
