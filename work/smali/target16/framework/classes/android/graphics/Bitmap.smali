.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$Config;,
        Landroid/graphics/Bitmap$DumpData;,
        Landroid/graphics/Bitmap$CompressFormat;
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

.field private static blacklist dumpData:Landroid/graphics/Bitmap$DumpData;

.field private static final blacklist sAllBitmaps:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-o sDefaultDensity:I

.field private static blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private greylist-max-o mColorSpace:Landroid/graphics/ColorSpace;

.field greylist-max-o mDensity:I

.field private blacklist mGainmap:Landroid/graphics/Gainmap;

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

.field private blacklist mId:J

.field private final greylist mNativePtr:J

.field private greylist-max-p mNinePatchChunk:[B

.field private greylist-max-r mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

.field private greylist-max-o mRecycled:Z

.field private blacklist mRecycler:Ljava/lang/Runnable;

.field private greylist-max-o mRequestPremultiplied:Z

.field private blacklist mSourceId:J

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

    .line 107
    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 139
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->sAllBitmaps:Ljava/util/WeakHashMap;

    .line 157
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1638
    sput-object v0, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    .line 2453
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-p <init>(JIIIZ[BLandroid/graphics/NinePatch$InsetStruct;)V
    .registers 21

    .line 194
    const-wide/16 v1, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Landroid/graphics/Bitmap;-><init>(JJIIIZ[BLandroid/graphics/NinePatch$InsetStruct;Z)V

    .line 196
    return-void
.end method

.method constructor blacklist <init>(JJIIIZ[BLandroid/graphics/NinePatch$InsetStruct;Z)V
    .registers 14

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Bitmap;->mSourceId:J

    .line 202
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_3e

    .line 206
    iput-wide p1, p0, Landroid/graphics/Bitmap;->mId:J

    .line 207
    iput p5, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 208
    iput p6, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 209
    iput-boolean p8, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 210
    iput-object p9, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 211
    iput-object p10, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    .line 212
    if-ltz p7, :cond_23

    .line 213
    iput p7, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 216
    :cond_23
    iput-wide p3, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 217
    iget-wide p1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->nativeGetSourceId(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/Bitmap;->mSourceId:J

    .line 218
    invoke-direct {p0, p11}, Landroid/graphics/Bitmap;->registerNativeAllocation(Z)V

    .line 220
    const-class p1, Landroid/graphics/Bitmap;

    monitor-enter p1

    .line 221
    :try_start_33
    sget-object p2, Landroid/graphics/Bitmap;->sAllBitmaps:Ljava/util/WeakHashMap;

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    monitor-exit p1

    .line 223
    return-void

    .line 222
    :catchall_3b
    move-exception p2

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3b

    throw p2

    .line 203
    :cond_3e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "internal error: native bitmap is 0"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o checkHardware(Ljava/lang/String;)V
    .registers 4

    .line 481
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_9

    .line 484
    return-void

    .line 482
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkPixelAccess(II)V
    .registers 4

    .line 2343
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 2344
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_19

    .line 2347
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ge p2, p1, :cond_10

    .line 2350
    return-void

    .line 2348
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "y must be < bitmap.height()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2345
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "x must be < bitmap.width()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o checkPixelsAccess(IIIIII[I)V
    .registers 9

    .line 2366
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 2367
    if-ltz p3, :cond_53

    .line 2370
    if-ltz p4, :cond_4b

    .line 2373
    add-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_42

    .line 2377
    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_39

    .line 2381
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p1, p3, :cond_31

    .line 2384
    add-int/lit8 p4, p4, -0x1

    mul-int/2addr p4, p6

    add-int/2addr p4, p5

    .line 2385
    array-length p1, p7

    .line 2386
    if-ltz p5, :cond_2b

    add-int/2addr p5, p3

    if-gt p5, p1, :cond_2b

    if-ltz p4, :cond_2b

    add-int/2addr p4, p3

    if-gt p4, p1, :cond_2b

    .line 2391
    return-void

    .line 2389
    :cond_2b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2382
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "abs(stride) must be >= width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2378
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "y + height must be <= bitmap.height()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2374
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "x + width must be <= bitmap.width()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2371
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2368
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static greylist-max-o checkWidthHeight(II)V
    .registers 2

    .line 508
    if-lez p0, :cond_d

    .line 511
    if-lez p1, :cond_5

    .line 514
    return-void

    .line 512
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "height must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 509
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o checkXYSign(II)V
    .registers 2

    .line 493
    if-ltz p0, :cond_e

    .line 496
    if-ltz p1, :cond_5

    .line 499
    return-void

    .line 497
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "y must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 494
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "x must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist clamp(FLandroid/graphics/ColorSpace;I)F
    .registers 4

    .line 2258
    invoke-virtual {p1, p2}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p1, p2}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static whitelist createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4

    .line 1153
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 5

    .line 1194
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .registers 11

    .line 1222
    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    .line 924
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 12

    .line 945
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .registers 28

    .line 983
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 984
    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 985
    add-int v5, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v5, v7, :cond_176

    .line 988
    add-int v7, v2, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_16d

    .line 991
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_165

    .line 996
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v8

    if-nez v8, :cond_47

    if-nez v1, :cond_47

    if-nez v2, :cond_47

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v3, v8, :cond_47

    .line 997
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ne v4, v8, :cond_47

    if-eqz v6, :cond_46

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 998
    :cond_46
    return-object v0

    .line 1001
    :cond_47
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v8, v9, :cond_53

    move v8, v10

    goto :goto_54

    :cond_53
    move v8, v11

    .line 1002
    :goto_54
    if-eqz v8, :cond_61

    .line 1003
    invoke-direct {v0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 1004
    iget-wide v12, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/graphics/Bitmap;->nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v9, v0

    goto :goto_62

    .line 1002
    :cond_61
    move-object v9, v0

    .line 1007
    :goto_62
    nop

    .line 1008
    nop

    .line 1012
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v1, v2, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1013
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v0, v3

    int-to-float v1, v4

    const/4 v2, 0x0

    invoke-direct {v7, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1014
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    .line 1016
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1017
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 1019
    if-eqz v1, :cond_91

    .line 1020
    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_180

    .line 1034
    :pswitch_85
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_91

    .line 1028
    :pswitch_88
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 1029
    goto :goto_91

    .line 1022
    :pswitch_8b
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1023
    goto :goto_91

    .line 1025
    :pswitch_8e
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 1026
    nop

    .line 1039
    :cond_91
    :goto_91
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v5

    .line 1041
    const/4 v14, 0x0

    if-eqz v6, :cond_103

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_a0

    goto/16 :goto_103

    .line 1045
    :cond_a0
    invoke-virtual {v6}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v1

    .line 1047
    invoke-virtual {v6, v13, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1049
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 1050
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 1052
    nop

    .line 1053
    if-nez v1, :cond_d6

    .line 1054
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_d6

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_d6

    .line 1055
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1056
    if-nez v5, :cond_d1

    .line 1057
    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    move-object/from16 v18, v0

    move-object/from16 v20, v5

    goto :goto_da

    .line 1056
    :cond_d1
    move-object/from16 v18, v0

    move-object/from16 v20, v5

    goto :goto_da

    .line 1062
    :cond_d6
    move-object/from16 v18, v0

    move-object/from16 v20, v5

    :goto_da
    if-eqz v1, :cond_e6

    .line 1063
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_e3

    goto :goto_e6

    :cond_e3
    move/from16 v19, v11

    goto :goto_e8

    :cond_e6
    :goto_e6
    move/from16 v19, v10

    .line 1062
    :goto_e8
    const/4 v15, 0x0

    invoke-static/range {v15 .. v20}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1065
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1066
    move/from16 v3, p6

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1067
    if-nez v1, :cond_fc

    .line 1068
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1074
    :cond_fc
    move-object v4, v2

    move/from16 v2, v16

    move/from16 v3, v17

    move-object v10, v0

    goto :goto_117

    .line 1042
    :cond_103
    :goto_103
    move-object v3, v0

    const/4 v0, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1043
    move/from16 v2, p3

    move/from16 v3, p4

    move-object v4, v14

    move-object v10, v0

    .line 1074
    :goto_117
    iget v0, v9, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, v10, Landroid/graphics/Bitmap;->mDensity:I

    .line 1075
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-virtual {v10, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1076
    iget-boolean v0, v9, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v10, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 1078
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1079
    iget v1, v13, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v5, v13, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1080
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1081
    invoke-virtual {v0, v9, v12, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1082
    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1086
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 1087
    move-object v1, v6

    move-object v6, v7

    move-object v0, v9

    move-object v5, v12

    move-object v7, v13

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->transformGainmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;IILandroid/graphics/Paint;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1089
    if-eqz v1, :cond_15b

    .line 1090
    new-instance v2, Landroid/graphics/Gainmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Gainmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v10, v2}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 1094
    :cond_15b
    if-eqz v8, :cond_164

    .line 1095
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1097
    :cond_164
    return-object v10

    .line 992
    :cond_165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot use a recycled source in createBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_16d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y + height must be <= bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :cond_176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x + width must be <= bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_8b
        :pswitch_85
        :pswitch_85
        :pswitch_88
    .end packed-switch
.end method

.method public static whitelist createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;
    .registers 4

    .line 1440
    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Picture;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 10

    .line 1463
    if-lez p1, :cond_a0

    if-lez p2, :cond_a0

    .line 1466
    if-eqz p3, :cond_98

    .line 1469
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 1470
    invoke-virtual {p0}, Landroid/graphics/Picture;->requiresHardwareAcceleration()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_18

    .line 1471
    const-string v0, "GPU readback"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1473
    :cond_18
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    if-eq p3, v0, :cond_54

    invoke-virtual {p0}, Landroid/graphics/Picture;->requiresHardwareAcceleration()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_54

    .line 1491
    :cond_24
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 1492
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1493
    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    if-ne v2, p1, :cond_39

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    if-eq v2, p2, :cond_4a

    .line 1494
    :cond_39
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float p2, p2

    .line 1495
    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    .line 1494
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1497
    :cond_4a
    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1498
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1499
    invoke-direct {p3}, Landroid/graphics/Bitmap;->setImmutable()V

    .line 1500
    return-object p3

    .line 1474
    :cond_54
    :goto_54
    const-string v0, "BitmapTemporary"

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    .line 1475
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 1476
    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 1477
    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    .line 1478
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    .line 1479
    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_74

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_85

    .line 1480
    :cond_74
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    .line 1481
    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1480
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RecordingCanvas;->scale(FF)V

    .line 1483
    :cond_85
    invoke-virtual {v2, p0}, Landroid/graphics/RecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1484
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1485
    invoke-static {v0, p1, p2}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1486
    sget-object p1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, p1, :cond_97

    .line 1487
    invoke-virtual {p0, p3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1489
    :cond_97
    return-object p0

    .line 1467
    :cond_98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Config must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1464
    :cond_a0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width & height must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1173
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 12

    .line 1246
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1247
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    .line 1246
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .registers 15

    .line 1279
    if-lez p1, :cond_50

    if-lez p2, :cond_50

    .line 1282
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_48

    .line 1285
    if-nez p5, :cond_17

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_f

    goto :goto_17

    .line 1286
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can\'t create bitmap without a color space"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1289
    :cond_17
    :goto_17
    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 1290
    if-nez p5, :cond_1e

    const-wide/16 v0, 0x0

    goto :goto_22

    :cond_1e
    invoke-virtual {p5}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v0

    :goto_22
    move-wide v7, v0

    .line 1289
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    move v3, p1

    move v2, p1

    move v4, p2

    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1292
    if-eqz p0, :cond_33

    .line 1293
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p0, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 1295
    :cond_33
    invoke-virtual {p1, p4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1296
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p3, p0, :cond_3e

    sget-object p0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne p3, p0, :cond_47

    :cond_3e
    if-nez p4, :cond_47

    .line 1297
    iget-wide p2, p1, Landroid/graphics/Bitmap;->mNativePtr:J

    const/high16 p0, -0x1000000

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    .line 1302
    :cond_47
    return-object p1

    .line 1283
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can\'t create mutable bitmap with Config.HARDWARE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1280
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width and height must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 17

    .line 1357
    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 1358
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, p4, :cond_4b

    .line 1361
    add-int/lit8 v0, p5, -0x1

    mul-int/2addr v0, p3

    add-int/2addr v0, p2

    .line 1362
    array-length v1, p1

    .line 1363
    if-ltz p2, :cond_45

    add-int v2, p2, p4

    if-gt v2, v1, :cond_45

    if-ltz v0, :cond_45

    add-int/2addr v0, p4

    if-gt v0, v1, :cond_45

    .line 1367
    if-lez p4, :cond_3c

    if-lez p5, :cond_3c

    .line 1370
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1371
    move-object/from16 v1, p6

    iget v6, v1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 1372
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v8

    .line 1371
    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v1 .. v9}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1373
    if-eqz p0, :cond_3b

    .line 1374
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p0, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 1376
    :cond_3b
    return-object p1

    .line 1368
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width and height must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1365
    :cond_45
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 1359
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "abs(stride) must be >= width"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 12

    .line 1423
    const/4 v2, 0x0

    move v4, p2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 13

    .line 1327
    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 11

    .line 1398
    const/4 v0, 0x0

    const/4 v2, 0x0

    move v4, p1

    move-object v1, p0

    move v3, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 11

    .line 905
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 907
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 908
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 909
    if-ne v3, p1, :cond_11

    if-eq v4, p2, :cond_1a

    .line 910
    :cond_11
    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    .line 911
    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    .line 912
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 914
    :cond_1a
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist dumpAll(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .registers 12

    .line 1695
    invoke-static {}, Landroid/graphics/Bitmap;->getAllBitmaps()Ljava/util/ArrayList;

    move-result-object v0

    .line 1697
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_b

    .line 1698
    return-void

    .line 1701
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 1702
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v2

    .line 1703
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 1705
    const-wide v4, 0x20b00000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1706
    const-wide v6, 0x10300000001L

    iget-wide v8, v1, Landroid/graphics/Bitmap;->mId:J

    invoke-virtual {p0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1707
    const-wide v6, 0x10500000002L

    iget v8, v1, Landroid/graphics/Bitmap;->mWidth:I

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1708
    const-wide v6, 0x10500000003L

    iget v8, v1, Landroid/graphics/Bitmap;->mHeight:I

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1709
    const-wide v6, 0x10500000004L

    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1710
    const-wide v6, 0x10800000005L

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1711
    const-wide v6, 0x10500000006L

    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1712
    const-wide v2, 0x10300000007L

    iget-wide v6, v1, Landroid/graphics/Bitmap;->mSourceId:J

    invoke-virtual {p0, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1713
    if-eqz p1, :cond_bb

    .line 1715
    :try_start_74
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1716
    invoke-static {p1}, Landroid/graphics/Bitmap$CompressFormat;->from(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    const/16 v6, 0x5a

    invoke-virtual {v1, v3, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 1717
    nop

    .line 1718
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1717
    const-wide v6, 0x10c00000008L

    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 1720
    :cond_92
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_95} :catch_96

    .line 1723
    goto :goto_bb

    .line 1721
    :catch_96
    move-exception v2

    .line 1722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to compress bitmap-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v1, Landroid/graphics/Bitmap;->mId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bitmap"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_bb
    :goto_bb
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1726
    goto/16 :goto_f

    .line 1727
    :cond_c0
    return-void
.end method

.method public static blacklist dumpAll(Ljava/lang/String;)V
    .registers 9

    .line 1661
    if-nez p0, :cond_6

    .line 1663
    const/4 p0, 0x0

    sput-object p0, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    .line 1664
    return-void

    .line 1667
    :cond_6
    invoke-static {p0}, Landroid/graphics/Bitmap$CompressFormat;->from(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    .line 1668
    const-string v1, "Bitmap"

    if-nez v0, :cond_25

    .line 1669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No bitmaps dumped: unrecognized format "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    return-void

    .line 1673
    :cond_25
    invoke-static {}, Landroid/graphics/Bitmap;->getAllBitmaps()Ljava/util/ArrayList;

    move-result-object p0

    .line 1674
    new-instance v2, Landroid/graphics/Bitmap$DumpData;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/graphics/Bitmap$DumpData;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    sput-object v2, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    .line 1675
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1676
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1677
    const/16 v5, 0x5a

    invoke-virtual {v3, v0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1678
    sget-object v5, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1679
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    .line 1678
    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/graphics/Bitmap$DumpData;->add(J[BI)V

    .line 1681
    :cond_62
    goto :goto_38

    .line 1682
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$DumpData;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " bitmaps dumped"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    return-void
.end method

.method private static blacklist getAllBitmaps()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1642
    const-class v0, Landroid/graphics/Bitmap;

    monitor-enter v0

    .line 1643
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/graphics/Bitmap;->sAllBitmaps:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1644
    sget-object v2, Landroid/graphics/Bitmap;->sAllBitmaps:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1645
    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1646
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1648
    :cond_2f
    goto :goto_18

    .line 1649
    :cond_30
    monitor-exit v0

    .line 1650
    return-object v1

    .line 1649
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method static greylist getDefaultDensity()I
    .registers 1

    .line 129
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_7

    .line 130
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0

    .line 132
    :cond_7
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 133
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

.method private static native blacklist nativeExtractGainmap(J)Landroid/graphics/Gainmap;
.end method

.method private static native greylist-max-o nativeGenerationId(J)I
.end method

.method private static native greylist-max-o nativeGetAllocationByteCount(J)I
.end method

.method private static native blacklist nativeGetAshmemFD(J)I
.end method

.method private static native blacklist nativeGetColor(JII)J
.end method

.method private static native blacklist nativeGetHardwareBuffer(J)Landroid/hardware/HardwareBuffer;
.end method

.method private static native greylist-max-o nativeGetNativeFinalizer()J
.end method

.method private static native blacklist nativeGetNativeNoop()J
.end method

.method private static native greylist-max-o nativeGetPixel(JII)I
.end method

.method private static native greylist-max-o nativeGetPixels(J[IIIIIII)V
.end method

.method private static native blacklist nativeGetSourceId(J)J
.end method

.method private static native greylist-max-o nativeHasAlpha(J)Z
.end method

.method private static native blacklist nativeHasGainmap(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
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

.method private static native blacklist nativeSetGainmap(JJ)V
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

.method private static native blacklist nativeSetSourceId(JJ)V
.end method

.method private static native blacklist nativeWrapHardwareBufferBitmap(Landroid/hardware/HardwareBuffer;J)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeWriteToParcel(JILandroid/os/Parcel;)Z
.end method

.method private greylist-max-o noteHardwareBitmapSlowCall()V
    .registers 3

    .line 748
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_d

    .line 749
    const-string v0, "Warning: attempt to read pixels from hardware bitmap, which is very slow operation"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 752
    :cond_d
    return-void
.end method

.method private blacklist registerNativeAllocation(Z)V
    .registers 9

    .line 162
    invoke-static {}, Landroid/graphics/Bitmap;->nativeGetNativeFinalizer()J

    move-result-wide v0

    .line 163
    invoke-static {}, Landroid/graphics/Bitmap;->nativeGetNativeNoop()J

    move-result-wide v2

    .line 164
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v4

    .line 166
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/readonly/Flags;->nativeMetrics()Z

    move-result v5

    const-class v6, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2d

    .line 167
    nop

    .line 168
    sget-object v5, Landroid/graphics/Bitmap;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    if-nez v5, :cond_1f

    .line 169
    invoke-static {v6, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/Class;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/Bitmap;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 171
    :cond_1f
    if-eqz p1, :cond_27

    int-to-long v0, v4

    invoke-static {v6, v2, v3, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/Class;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object p1

    goto :goto_2c

    .line 172
    :cond_27
    int-to-long v0, v4

    invoke-static {v6, v2, v3, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/Class;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object p1

    .line 173
    :goto_2c
    goto :goto_49

    .line 174
    :cond_2d
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 175
    sget-object v6, Landroid/graphics/Bitmap;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    if-nez v6, :cond_3b

    .line 176
    invoke-static {v5, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/Bitmap;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 178
    :cond_3b
    if-eqz p1, :cond_43

    int-to-long v0, v4

    invoke-static {v5, v2, v3, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object p1

    goto :goto_48

    .line 179
    :cond_43
    int-to-long v0, v4

    invoke-static {v5, v2, v3, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object p1

    :goto_48
    nop

    .line 181
    :goto_49
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/Bitmap;->mRecycler:Ljava/lang/Runnable;

    .line 182
    sget-object p1, Landroid/graphics/Bitmap;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 183
    return-void
.end method

.method public static greylist scaleFromDensity(III)I
    .registers 3

    .line 1932
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    if-ne p1, p2, :cond_7

    goto :goto_d

    .line 1937
    :cond_7
    mul-int/2addr p0, p2

    shr-int/lit8 p2, p1, 0x1

    add-int/2addr p0, p2

    div-int/2addr p0, p1

    return p0

    .line 1933
    :cond_d
    :goto_d
    return p0
.end method

.method public static greylist setDefaultDensity(I)V
    .registers 1

    .line 123
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 124
    return-void
.end method

.method private blacklist setImmutable()V
    .registers 3

    .line 1784
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1785
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeSetImmutable(J)V

    .line 1787
    :cond_b
    return-void
.end method

.method private greylist setNinePatchChunk([B)V
    .registers 2

    .line 412
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 413
    return-void
.end method

.method private static blacklist transformGainmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;IILandroid/graphics/Paint;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .registers 24

    .line 1103
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1106
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1107
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1108
    move/from16 v5, p2

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1109
    move/from16 v5, p3

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1111
    const/4 v5, 0x0

    if-eqz v8, :cond_87

    if-nez v10, :cond_38

    goto :goto_87

    .line 1118
    :cond_38
    new-instance v15, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    iget v9, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-int v9, v9

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v15, v6, v7, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1125
    nop

    .line 1126
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iget v11, v0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 1125
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    move v9, v8

    invoke-static/range {v6 .. v14}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1127
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1128
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1130
    invoke-virtual {v6, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1131
    iget v3, v1, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {v6, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1132
    move-object/from16 v1, p1

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1133
    move-object/from16 v1, p4

    move-object/from16 v3, p6

    invoke-virtual {v6, v2, v15, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1134
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1137
    return-object v0

    .line 1113
    :cond_87
    :goto_87
    return-object v5
.end method

.method public static whitelist wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .registers 8

    .line 865
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    .line 866
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_37

    .line 869
    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_2f

    .line 872
    if-nez p1, :cond_1c

    .line 873
    sget-object p1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    .line 875
    :cond_1c
    nop

    .line 876
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v0

    .line 875
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->nativeWrapHardwareBufferBitmap(Landroid/hardware/HardwareBuffer;J)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 877
    if-eqz p1, :cond_2e

    .line 878
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    .line 880
    :cond_2e
    return-object p1

    .line 870
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bitmap is not compatible with protected buffers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 867
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "usage flags must contain USAGE_GPU_SAMPLED_IMAGE."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist asShared()Landroid/graphics/Bitmap;
    .registers 3

    .line 814
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsBackedByAshmem(J)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsImmutable(J)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 815
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Gainmap;->asShared()Landroid/graphics/Gainmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v1

    if-ne v0, v1, :cond_25

    .line 816
    :cond_24
    return-object p0

    .line 818
    :cond_25
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 819
    if-eqz v0, :cond_2c

    .line 822
    return-object v0

    .line 820
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create shared Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o checkRecycled(Ljava/lang/String;)V
    .registers 3

    .line 471
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_5

    .line 474
    return-void

    .line 472
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .registers 13

    .line 1753
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1755
    if-eqz p3, :cond_34

    .line 1758
    if-ltz p2, :cond_2b

    const/16 v0, 0x64

    if-gt p2, v0, :cond_2b

    .line 1761
    const-string v0, "Compression of a bitmap is slow"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1762
    const-string v0, "Bitmap.compress"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1763
    iget-wide v3, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v5, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 p1, 0x1000

    new-array v8, p1, [B

    move v6, p2

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->nativeCompress(JIILjava/io/OutputStream;[B)Z

    move-result p1

    .line 1765
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1766
    return p1

    .line 1759
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "quality must be 0..100"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1756
    :cond_34
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public whitelist copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 5

    .line 771
    const-string v0, "Can\'t copy a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 772
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_14

    if-nez p2, :cond_c

    goto :goto_14

    .line 773
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Hardware bitmaps are always immutable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 775
    :cond_14
    :goto_14
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 776
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget p1, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeCopy(JIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 777
    if-eqz p1, :cond_2a

    .line 778
    iget-boolean p2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 779
    iget p2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput p2, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 781
    :cond_2a
    return-object p1
.end method

.method public whitelist copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .registers 8

    .line 717
    const-string v0, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 718
    const-string/jumbo v0, "unable to copyPixelsFromBuffer, Config#HARDWARE bitmaps are immutable"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 722
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_15

    .line 723
    const/4 v1, 0x0

    goto :goto_20

    .line 724
    :cond_15
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1b

    .line 725
    const/4 v1, 0x1

    goto :goto_20

    .line 726
    :cond_1b
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_45

    .line 727
    const/4 v1, 0x2

    .line 732
    :goto_20
    int-to-long v2, v0

    shl-long/2addr v2, v1

    .line 733
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v4, v0

    .line 735
    cmp-long v0, v2, v4

    if-ltz v0, :cond_3d

    .line 739
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v2, v3, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V

    .line 742
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 743
    int-to-long v2, v0

    shr-long v0, v4, v1

    add-long/2addr v2, v0

    long-to-int v0, v2

    .line 744
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 745
    return-void

    .line 736
    :cond_3d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Buffer not large enough for pixels"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 729
    :cond_45
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unsupported Buffer subclass"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .registers 8

    .line 675
    const-string/jumbo v0, "unable to copyPixelsToBuffer, pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 679
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_10

    .line 680
    const/4 v1, 0x0

    goto :goto_1b

    .line 681
    :cond_10
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_16

    .line 682
    const/4 v1, 0x1

    goto :goto_1b

    .line 683
    :cond_16
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_40

    .line 684
    const/4 v1, 0x2

    .line 689
    :goto_1b
    int-to-long v2, v0

    shl-long/2addr v2, v1

    .line 690
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v4, v0

    .line 692
    cmp-long v0, v2, v4

    if-ltz v0, :cond_38

    .line 696
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v2, v3, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V

    .line 699
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 700
    int-to-long v2, v0

    shr-long v0, v4, v1

    add-long/2addr v2, v0

    long-to-int v0, v2

    .line 701
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 702
    return-void

    .line 693
    :cond_38
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Buffer not large enough for pixels"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 686
    :cond_40
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unsupported Buffer subclass"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-r createAshmemBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 793
    const-string v0, "Can\'t copy a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 794
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 795
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeCopyAshmem(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 796
    if-eqz v0, :cond_2a

    .line 797
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 798
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 799
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 800
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Gainmap;->asShared()Landroid/graphics/Gainmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 803
    :cond_2a
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2480
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist eraseColor(I)V
    .registers 4

    .line 2210
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2214
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    .line 2215
    return-void

    .line 2212
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot erase immutable bitmaps"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist eraseColor(J)V
    .registers 10

    .line 2227
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2228
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2232
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 2233
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->nativeErase(JJJ)V

    .line 2234
    return-void

    .line 2229
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot erase immutable bitmaps"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist extractAlpha()Landroid/graphics/Bitmap;
    .registers 2

    .line 2516
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .registers 7

    .line 2547
    const-string v0, "Can\'t extractAlpha on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2548
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    .line 2549
    :goto_e
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 2550
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v2, v3, v0, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2551
    if-eqz p1, :cond_1e

    .line 2554
    iget p2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput p2, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 2555
    return-object p1

    .line 2552
    :cond_1e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to extractAlpha on Bitmap"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist getAllocationByteCount()I
    .registers 3

    .line 1991
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_d

    .line 1992
    const-string v0, "Bitmap"

    const-string v1, "Called getAllocationByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    const/4 v0, 0x0

    return v0

    .line 1996
    :cond_d
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetAllocationByteCount(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getByteCount()I
    .registers 3

    .line 1967
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_d

    .line 1968
    const-string v0, "Bitmap"

    const-string v1, "Called getByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const/4 v0, 0x0

    return v0

    .line 1973
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColor(II)Landroid/graphics/Color;
    .registers 11

    .line 2275
    const-string v0, "Can\'t call getColor() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2276
    const-string/jumbo v0, "unable to getColor(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 2278
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 2280
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 2281
    if-eqz v0, :cond_67

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_67

    .line 2286
    :cond_21
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/Bitmap;->nativeGetColor(JII)J

    move-result-wide p1

    .line 2287
    const/4 v1, 0x0

    shr-long v2, p1, v1

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-static {v2}, Landroid/util/Half;->toFloat(S)F

    move-result v2

    .line 2288
    const/16 v3, 0x10

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-short v3, v3

    invoke-static {v3}, Landroid/util/Half;->toFloat(S)F

    move-result v3

    .line 2289
    const/16 v6, 0x20

    shr-long v6, p1, v6

    and-long/2addr v6, v4

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-static {v6}, Landroid/util/Half;->toFloat(S)F

    move-result v6

    .line 2290
    const/16 v7, 0x30

    shr-long/2addr p1, v7

    and-long/2addr p1, v4

    long-to-int p1, p1

    int-to-short p1, p1

    invoke-static {p1}, Landroid/util/Half;->toFloat(S)F

    move-result p1

    .line 2294
    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->clamp(FLandroid/graphics/ColorSpace;I)F

    move-result p2

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Landroid/graphics/Bitmap;->clamp(FLandroid/graphics/ColorSpace;I)F

    move-result v1

    const/4 v2, 0x2

    invoke-static {v6, v0, v2}, Landroid/graphics/Bitmap;->clamp(FLandroid/graphics/ColorSpace;I)F

    move-result v2

    invoke-static {p2, v1, v2, p1, v0}, Landroid/graphics/Color;->valueOf(FFFFLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p1

    return-object p1

    .line 2282
    :cond_67
    :goto_67
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 2096
    const-string v0, "getColorSpace called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2097
    iget-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    if-nez v0, :cond_11

    .line 2098
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeComputeColorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 2100
    :cond_11
    iget-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public final whitelist getConfig()Landroid/graphics/Bitmap$Config;
    .registers 3

    .line 2005
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 2006
    const-string v0, "Bitmap"

    const-string v1, "Called getConfig() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
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

    .line 270
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 271
    const-string v0, "Bitmap"

    const-string v1, "Called getDensity() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_b
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public whitelist getGainmap()Landroid/graphics/Gainmap;
    .registers 3

    .line 2188
    const-string v0, "Bitmap is recycled"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2189
    iget-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    if-nez v0, :cond_11

    .line 2190
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeExtractGainmap(J)Landroid/graphics/Gainmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    .line 2192
    :cond_11
    iget-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    return-object v0
.end method

.method public whitelist getGenerationId()I
    .registers 3

    .line 459
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 460
    const-string v0, "Bitmap"

    const-string v1, "Called getGenerationId() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGenerationId(J)I

    move-result v0

    return v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 3

    .line 2615
    const-string v0, "Can\'t getHardwareBuffer from a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2616
    iget-object v0, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_13

    :cond_b
    iget-object v0, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    .line 2617
    :goto_13
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2618
    :cond_1b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetHardwareBuffer(J)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 2619
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    .line 2621
    :cond_28
    return-object v0
.end method

.method public final whitelist getHeight()I
    .registers 3

    .line 1859
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1860
    const-string v0, "Bitmap"

    const-string v1, "Called getHeight() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_b
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    return v0
.end method

.method public greylist-max-o getNativeInstance()J
    .registers 3

    .line 233
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    return-wide v0
.end method

.method public whitelist getNinePatchChunk()[B
    .registers 2

    .line 1510
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public greylist-max-o getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;
    .registers 2

    .line 1536
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    return-object v0
.end method

.method public greylist-max-o getOpticalInsets(Landroid/graphics/Rect;)V
    .registers 3

    .line 1523
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    if-nez v0, :cond_8

    .line 1524
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_f

    .line 1526
    :cond_8
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    iget-object v0, v0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1528
    :goto_f
    return-void
.end method

.method public whitelist getPixel(II)I
    .registers 5

    .line 2250
    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2251
    const-string/jumbo v0, "unable to getPixel(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 2253
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 2254
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    move-result p1

    return p1
.end method

.method public whitelist getPixels([IIIIIII)V
    .registers 17

    .line 2324
    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2325
    const-string/jumbo v0, "unable to getPixels(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 2327
    if-eqz p6, :cond_2a

    if-nez p7, :cond_10

    goto :goto_2a

    .line 2330
    :cond_10
    move-object v1, p0

    move-object v8, p1

    move v6, p2

    move v7, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v8}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 2331
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeGetPixels(J[IIIIIII)V

    .line 2333
    return-void

    .line 2328
    :cond_2a
    :goto_2a
    return-void
.end method

.method public final whitelist getRowBytes()I
    .registers 3

    .line 1953
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1954
    const-string v0, "Bitmap"

    const-string v1, "Called getRowBytes() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRowBytes(J)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledHeight(I)I
    .registers 4

    .line 1922
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    return p1
.end method

.method public whitelist getScaledHeight(Landroid/graphics/Canvas;)I
    .registers 4

    .line 1878
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget p1, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    return p1
.end method

.method public whitelist getScaledHeight(Landroid/util/DisplayMetrics;)I
    .registers 4

    .line 1894
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    return p1
.end method

.method public whitelist getScaledWidth(I)I
    .registers 4

    .line 1908
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    return p1
.end method

.method public whitelist getScaledWidth(Landroid/graphics/Canvas;)I
    .registers 4

    .line 1870
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget p1, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    return p1
.end method

.method public whitelist getScaledWidth(Landroid/util/DisplayMetrics;)I
    .registers 4

    .line 1886
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    return p1
.end method

.method public blacklist getSharedMemory()Landroid/os/SharedMemory;
    .registers 3

    .line 833
    const-string v0, "Cannot access shared memory of a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 834
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsBackedByAshmem(J)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 836
    :try_start_d
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetAshmemFD(J)I

    move-result v0

    .line 837
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SharedMemory;->fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1b} :catch_1c

    return-object v0

    .line 838
    :catch_1c
    move-exception v0

    .line 839
    const-string v0, "Bitmap"

    const-string v1, "Unable to create dup\'d file descriptor for shared bitmap memory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getWidth()I
    .registers 3

    .line 1851
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1852
    const-string v0, "Bitmap"

    const-string v1, "Called getWidth() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_b
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    return v0
.end method

.method public final whitelist hasAlpha()Z
    .registers 3

    .line 2020
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 2021
    const-string v0, "Bitmap"

    const-string v1, "Called hasAlpha() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasAlpha(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasGainmap()Z
    .registers 3

    .line 2180
    const-string v0, "Bitmap is recycled"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2181
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasGainmap(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasMipMap()Z
    .registers 3

    .line 2059
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 2060
    const-string v0, "Bitmap"

    const-string v1, "Called hasMipMap() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasMipMap(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isMutable()Z
    .registers 3

    .line 1773
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsImmutable(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final whitelist isPremultiplied()Z
    .registers 3

    .line 1817
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1818
    const-string v0, "Bitmap"

    const-string v1, "Called isPremultiplied() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsPremultiplied(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isRecycled()Z
    .registers 2

    .line 448
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method public whitelist prepareToDraw()V
    .registers 3

    .line 2594
    const-string v0, "Can\'t prepareToDraw on a recycled bitmap!"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2597
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativePrepareToDraw(J)V

    .line 2598
    return-void
.end method

.method public whitelist reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .registers 11

    .line 343
    const-string v0, "Can\'t call reconfigure() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 344
    if-lez p1, :cond_2b

    if-lez p2, :cond_2b

    .line 347
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 351
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    iget-boolean v6, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->nativeReconfigure(JIIIZ)V

    .line 352
    iput v3, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 353
    iput v4, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 354
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 355
    return-void

    .line 348
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "only mutable bitmaps may be reconfigured"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 345
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width and height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist recycle()V
    .registers 3

    .line 430
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_1a

    .line 431
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRecycle(J)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 433
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 434
    iput-object v0, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    .line 435
    iget-object v0, p0, Landroid/graphics/Bitmap;->mRecycler:Ljava/lang/Runnable;

    if-eqz v0, :cond_1a

    .line 436
    iget-object v0, p0, Landroid/graphics/Bitmap;->mRecycler:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 439
    :cond_1a
    return-void
.end method

.method greylist-max-r reinit(IIZ)V
    .registers 4

    .line 243
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 244
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 245
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 246
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 247
    return-void
.end method

.method public whitelist sameAs(Landroid/graphics/Bitmap;)Z
    .registers 6

    .line 2565
    const-string/jumbo v0, "sameAs compares pixel data, not expected to be fast"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 2566
    const-string v0, "Can\'t call sameAs on a recycled bitmap!"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2567
    if-ne p0, p1, :cond_f

    const/4 p1, 0x1

    return p1

    .line 2568
    :cond_f
    if-nez p1, :cond_13

    const/4 p1, 0x0

    return p1

    .line 2569
    :cond_13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2572
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-wide v2, p1, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSameAs(JJ)Z

    move-result p1

    return p1

    .line 2570
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t compare to a recycled bitmap!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setColorSpace(Landroid/graphics/ColorSpace;)V
    .registers 7

    .line 2129
    const-string/jumbo v0, "setColorSpace called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2130
    if-eqz p1, :cond_81

    .line 2134
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_79

    .line 2140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 2141
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->nativeSetColorSpace(JJ)V

    .line 2145
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 2146
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    .line 2149
    :try_start_24
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v2

    if-ne v1, v2, :cond_62

    .line 2153
    const/4 v1, 0x0

    :goto_2f
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v2

    if-ge v1, v2, :cond_60

    .line 2154
    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_58

    .line 2160
    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_50

    .line 2153
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 2161
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new ColorSpace cannot decrease the maximum value for any of the components compared to the current ColorSpace/ To perform this type of conversion create a new Bitmap in the desired ColorSpace and draw this Bitmap into it."

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2155
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new ColorSpace cannot increase the minimum value for any of the components compared to the current ColorSpace. To perform this type of conversion create a new Bitmap in the desired ColorSpace and draw this Bitmap into it."

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2173
    :cond_60
    nop

    .line 2174
    return-void

    .line 2150
    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new ColorSpace must have the same component count as the current ColorSpace"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_6a} :catch_6a

    .line 2168
    :catch_6a
    move-exception p1

    .line 2170
    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 2171
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-object v2, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSetColorSpace(JJ)V

    .line 2172
    throw p1

    .line 2135
    :cond_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set a ColorSpace on ALPHA_8"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2131
    :cond_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The colorSpace cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setConfig(Landroid/graphics/Bitmap$Config;)V
    .registers 4

    .line 402
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 403
    return-void
.end method

.method public whitelist setDensity(I)V
    .registers 2

    .line 290
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 291
    return-void
.end method

.method public whitelist setGainmap(Landroid/graphics/Gainmap;)V
    .registers 6

    .line 2199
    const-string v0, "Bitmap is recycled"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2200
    iput-object p1, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    .line 2201
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    if-nez p1, :cond_e

    const-wide/16 v2, 0x0

    goto :goto_10

    :cond_e
    iget-wide v2, p1, Landroid/graphics/Gainmap;->mNativePtr:J

    :goto_10
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSetGainmap(JJ)V

    .line 2202
    return-void
.end method

.method public whitelist setHasAlpha(Z)V
    .registers 5

    .line 2037
    const-string/jumbo v0, "setHasAlpha called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2038
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(JZZ)V

    .line 2039
    return-void
.end method

.method public final whitelist setHasMipMap(Z)V
    .registers 4

    .line 2086
    const-string/jumbo v0, "setHasMipMap called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2087
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(JZ)V

    .line 2088
    return-void
.end method

.method public whitelist setHeight(I)V
    .registers 4

    .line 386
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 387
    return-void
.end method

.method public whitelist setPixel(III)V
    .registers 6

    .line 2408
    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2409
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2412
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 2413
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(JIII)V

    .line 2414
    return-void

    .line 2410
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public whitelist setPixels([IIIIIII)V
    .registers 17

    .line 2441
    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2442
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2445
    if-eqz p6, :cond_2a

    if-nez p7, :cond_10

    goto :goto_2a

    .line 2448
    :cond_10
    move-object v1, p0

    move-object v8, p1

    move v6, p2

    move v7, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v8}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 2449
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeSetPixels(J[IIIIIII)V

    .line 2451
    return-void

    .line 2446
    :cond_2a
    :goto_2a
    return-void

    .line 2443
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final whitelist setPremultiplied(Z)V
    .registers 4

    .line 1844
    const-string/jumbo v0, "setPremultiplied called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1845
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 1846
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetPremultiplied(JZ)V

    .line 1847
    return-void
.end method

.method public whitelist setWidth(I)V
    .registers 4

    .line 370
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 371
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 2493
    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2494
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 2495
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(JILandroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2498
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2499
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2500
    iget-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_26

    .line 2502
    :cond_22
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2504
    :goto_26
    return-void

    .line 2496
    :cond_27
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "native writeToParcel failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
