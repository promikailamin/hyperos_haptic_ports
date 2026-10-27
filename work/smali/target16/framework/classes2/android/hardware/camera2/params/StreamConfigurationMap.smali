.class public final Landroid/hardware/camera2/params/StreamConfigurationMap;
.super Ljava/lang/Object;
.source "StreamConfigurationMap.java"


# static fields
.field private static final greylist-max-o DURATION_20FPS_NS:J = 0x2faf080L

.field private static final greylist-max-o DURATION_MIN_FRAME:I = 0x0

.field private static final greylist-max-o DURATION_STALL:I = 0x1

.field public static final blacklist HAL_DATASPACE_ARBITRARY:I = 0x1

.field public static final greylist-max-o HAL_DATASPACE_DEPTH:I = 0x1000

.field public static final blacklist HAL_DATASPACE_DYNAMIC_DEPTH:I = 0x1002

.field public static final blacklist HAL_DATASPACE_HEIF:I = 0x1004

.field public static final blacklist HAL_DATASPACE_JFIF:I = 0x8c20000

.field public static final blacklist HAL_DATASPACE_JPEG_R:I = 0x1005

.field private static final greylist-max-o HAL_DATASPACE_RANGE_SHIFT:I = 0x1b

.field private static final greylist-max-o HAL_DATASPACE_STANDARD_SHIFT:I = 0x10

.field private static final greylist-max-o HAL_DATASPACE_TRANSFER_SHIFT:I = 0x16

.field private static final greylist-max-o HAL_DATASPACE_UNKNOWN:I = 0x0

.field public static final greylist-max-o HAL_DATASPACE_V0_JFIF:I = 0x8c20000

.field public static final greylist-max-o HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field private static final greylist-max-o HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field private static final greylist-max-o HAL_PIXEL_FORMAT_RAW10:I = 0x25

.field private static final greylist-max-o HAL_PIXEL_FORMAT_RAW12:I = 0x26

.field private static final greylist-max-o HAL_PIXEL_FORMAT_RAW16:I = 0x20

.field private static final greylist-max-o HAL_PIXEL_FORMAT_RAW_OPAQUE:I = 0x24

.field private static final blacklist HAL_PIXEL_FORMAT_RGBA_8888:I = 0x1

.field private static final blacklist HAL_PIXEL_FORMAT_RGBX_8888:I = 0x2

.field private static final blacklist HAL_PIXEL_FORMAT_RGB_565:I = 0x4

.field private static final blacklist HAL_PIXEL_FORMAT_RGB_888:I = 0x3

.field private static final greylist-max-o HAL_PIXEL_FORMAT_Y16:I = 0x20363159

.field private static final blacklist HAL_PIXEL_FORMAT_Y8:I = 0x20203859

.field private static final blacklist HAL_PIXEL_FORMAT_YCBCR_420_888:I = 0x23

.field private static final blacklist HAL_PIXEL_FORMAT_YCBCR_422_I:I = 0x14

.field private static final blacklist HAL_PIXEL_FORMAT_YCBCR_422_SP:I = 0x10

.field private static final blacklist HAL_PIXEL_FORMAT_YCBCR_P010:I = 0x36

.field private static final blacklist HAL_PIXEL_FORMAT_YCBCR_P210:I = 0x3c

.field private static final blacklist HAL_PIXEL_FORMAT_YCRCB_420_SP:I = 0x11

.field private static final blacklist HAL_PIXEL_FORMAT_YV12:I = 0x32315659

.field private static final blacklist MAX_DIMEN_FOR_ROUNDING:I = 0x780

.field private static final greylist-max-o TAG:Ljava/lang/String; = "StreamConfigurationMap"


# instance fields
.field private final greylist-max-o mAllOutputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final greylist-max-o mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final greylist-max-o mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final greylist-max-o mDepthOutputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final blacklist mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

.field private final blacklist mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final blacklist mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mHeicOutputFormats:Landroid/util/SparseIntArray;

.field private final blacklist mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final blacklist mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

.field private final blacklist mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final greylist-max-o mHighResOutputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

.field private final greylist-max-o mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHighSpeedVideoSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Size;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

.field private final blacklist mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final blacklist mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mJpegROutputFormats:Landroid/util/SparseIntArray;

.field private final blacklist mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final greylist-max-o mListHighResolution:Z

.field private final greylist-max-o mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final greylist-max-o mOutputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;


# direct methods
.method public constructor blacklist <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V
    .registers 39

    .line 204
    const/16 v18, 0x0

    const/16 v22, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    move/from16 v21, p15

    invoke-direct/range {v0 .. v22}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    .line 213
    return-void
.end method

.method public constructor blacklist <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V
    .registers 42

    .line 273
    const/16 v18, 0x0

    const/16 v22, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move/from16 v21, p18

    invoke-direct/range {v0 .. v22}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    .line 282
    return-void
.end method

.method public constructor blacklist <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V
    .registers 45

    .line 143
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    invoke-direct/range {v0 .. v22}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    .line 152
    return-void
.end method

.method public constructor blacklist <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V
    .registers 35

    .line 353
    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move-object/from16 v2, p10

    move-object/from16 v3, p13

    move-object/from16 v4, p16

    move-object/from16 v5, p19

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2452
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 2455
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    .line 2457
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 2459
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 2461
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 2463
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 2465
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    .line 2467
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    .line 2469
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    .line 2472
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    .line 2475
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    .line 355
    if-nez p1, :cond_6b

    if-nez v0, :cond_6b

    if-eqz v2, :cond_63

    goto :goto_6b

    .line 358
    :cond_63
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "At least one of color/depth/heic configurations must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_6b
    :goto_6b
    const/4 v6, 0x0

    if-nez p1, :cond_7b

    .line 364
    new-array v7, v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 365
    new-array v7, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 366
    new-array v7, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_99

    .line 368
    :cond_7b
    const-string v7, "configurations"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 369
    const-string v7, "minFrameDurations"

    invoke-static {p2, v7}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 370
    const-string v7, "stallDurations"

    invoke-static {p3, v7}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 373
    :goto_99
    move/from16 v7, p21

    iput-boolean v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    .line 375
    if-nez v0, :cond_ac

    .line 376
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 377
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 378
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_ce

    .line 380
    :cond_ac
    const-string v7, "depthConfigurations"

    invoke-static {v0, v7}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 382
    const-string v0, "depthMinFrameDurations"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 384
    const-string v0, "depthStallDurations"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 388
    :goto_ce
    if-nez v1, :cond_dd

    .line 389
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 390
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 391
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_ff

    .line 393
    :cond_dd
    const-string v0, "dynamicDepthConfigurations"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 395
    const-string v0, "dynamicDepthMinFrameDurations"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 397
    const-string v0, "dynamicDepthStallDurations"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 401
    :goto_ff
    if-nez v2, :cond_10e

    .line 402
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 403
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 404
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_130

    .line 406
    :cond_10e
    const-string v0, "heicConfigurations"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 408
    const-string v0, "heicMinFrameDurations"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 410
    const-string v0, "heicStallDurations"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 414
    :goto_130
    if-eqz v4, :cond_15c

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    if-nez v0, :cond_139

    goto :goto_15c

    .line 419
    :cond_139
    const-string v0, "heicUltraHDRConfigurations"

    invoke-static {v4, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 421
    const-string v0, "heicUltraHDRMinFrameDurations"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 423
    const-string v0, "heicUltraHDRStallDurations"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_168

    .line 415
    :cond_15c
    :goto_15c
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 416
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 417
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 427
    :goto_168
    if-nez v3, :cond_177

    .line 428
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 429
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 430
    new-array v0, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_199

    .line 432
    :cond_177
    const-string v0, "jpegRConfigurations"

    invoke-static {v3, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 434
    const-string v0, "jpegRFrameDurations"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 436
    const-string v0, "jpegRStallDurations"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 440
    :goto_199
    if-nez v5, :cond_1a0

    .line 441
    new-array v0, v6, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    goto :goto_1aa

    .line 443
    :cond_1a0
    const-string v0, "highSpeedVideoConfigurations"

    invoke-static {v5, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 448
    :goto_1aa
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v1, v0

    move v2, v6

    :goto_1ae
    if-ge v2, v1, :cond_21e

    aget-object v3, v0, v2

    .line 449
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v4

    .line 450
    nop

    .line 451
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v5

    if-eqz v5, :cond_210

    .line 452
    iget-object v5, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    iget-object v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 453
    nop

    .line 454
    iget-boolean v5, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-eqz v5, :cond_201

    .line 455
    iget-object v5, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    array-length v7, v5

    move v8, v6

    :goto_1d3
    if-ge v8, v7, :cond_201

    aget-object v9, v5, v8

    .line 456
    invoke-virtual {v9}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v10

    if-ne v10, v4, :cond_1fe

    .line 457
    invoke-virtual {v9}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v11

    if-ne v10, v11, :cond_1fe

    .line 458
    invoke-virtual {v9}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v10

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    if-ne v10, v11, :cond_1fe

    .line 459
    invoke-virtual {v9}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v7

    .line 460
    goto :goto_203

    .line 455
    :cond_1fe
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d3

    .line 464
    :cond_201
    const-wide/16 v7, 0x0

    :goto_203
    const-wide/32 v9, 0x2faf080

    cmp-long v3, v7, v9

    if-gtz v3, :cond_20d

    .line 465
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_20f

    :cond_20d
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    .line 466
    :goto_20f
    goto :goto_212

    .line 467
    :cond_210
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 469
    :goto_212
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ae

    .line 473
    :cond_21e
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v1, v0

    move v2, v6

    :goto_222
    if-ge v2, v1, :cond_245

    aget-object v3, v0, v2

    .line 474
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v4

    if-nez v4, :cond_22d

    .line 476
    goto :goto_242

    .line 479
    :cond_22d
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v5

    iget-object v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 480
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 479
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 473
    :goto_242
    add-int/lit8 v2, v2, 0x1

    goto :goto_222

    .line 482
    :cond_245
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v1, v0

    move v2, v6

    :goto_249
    if-ge v2, v1, :cond_26c

    aget-object v3, v0, v2

    .line 483
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v4

    if-nez v4, :cond_254

    .line 485
    goto :goto_269

    .line 488
    :cond_254
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v5

    iget-object v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 489
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 488
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 482
    :goto_269
    add-int/lit8 v2, v2, 0x1

    goto :goto_249

    .line 493
    :cond_26c
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v1, v0

    move v2, v6

    :goto_270
    if-ge v2, v1, :cond_293

    aget-object v3, v0, v2

    .line 494
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v4

    if-nez v4, :cond_27b

    .line 496
    goto :goto_290

    .line 499
    :cond_27b
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v5

    iget-object v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    .line 500
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 499
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 493
    :goto_290
    add-int/lit8 v2, v2, 0x1

    goto :goto_270

    .line 503
    :cond_293
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    if-eqz v0, :cond_2c0

    .line 505
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v1, v0

    move v2, v6

    :goto_29d
    if-ge v2, v1, :cond_2c0

    aget-object v3, v0, v2

    .line 506
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v4

    if-nez v4, :cond_2a8

    .line 508
    goto :goto_2bd

    .line 511
    :cond_2a8
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v5

    iget-object v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    .line 512
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 511
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 505
    :goto_2bd
    add-int/lit8 v2, v2, 0x1

    goto :goto_29d

    .line 517
    :cond_2c0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v1, v0

    move v2, v6

    :goto_2c4
    if-ge v2, v1, :cond_2e7

    aget-object v3, v0, v2

    .line 518
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v4

    if-nez v4, :cond_2cf

    .line 520
    goto :goto_2e4

    .line 523
    :cond_2cf
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v5

    iget-object v7, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    .line 524
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 523
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 517
    :goto_2e4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c4

    .line 527
    :cond_2e7
    if-eqz p1, :cond_2fe

    if-eqz p22, :cond_2fe

    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 528
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_2f6

    goto :goto_2fe

    .line 529
    :cond_2f6
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "At least one stream configuration for IMPLEMENTATION_DEFINED must exist"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 534
    :cond_2fe
    :goto_2fe
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v0, p1

    move v1, v6

    :goto_302
    if-ge v1, v0, :cond_34b

    aget-object v2, p1, v1

    .line 535
    invoke-virtual {v2}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v3

    .line 536
    invoke-virtual {v2}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v2

    .line 537
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 538
    if-nez v4, :cond_31c

    .line 539
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 541
    :cond_31c
    iget-object v5, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 543
    if-nez v3, :cond_339

    .line 544
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 546
    :cond_339
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_302

    .line 549
    :cond_34b
    move-object/from16 p1, p20

    iput-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 550
    return-void
.end method

.method private greylist-max-o appendHighResOutputsString(Ljava/lang/StringBuilder;)V
    .registers 24

    .line 2218
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "HighResolutionOutputs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v2

    .line 2220
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v3, :cond_5d

    aget v6, v2, v5

    .line 2221
    invoke-virtual {v0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v7

    .line 2222
    if-nez v7, :cond_1b

    goto :goto_5a

    .line 2223
    :cond_1b
    array-length v8, v7

    move v9, v4

    :goto_1d
    if-ge v9, v8, :cond_5a

    aget-object v10, v7, v9

    .line 2224
    invoke-virtual {v0, v6, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v11

    .line 2225
    invoke-virtual {v0, v6, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v13

    .line 2226
    nop

    .line 2227
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v18

    .line 2228
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v10

    .line 2226
    const-string v11, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2223
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 2220
    :cond_5a
    :goto_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 2232
    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_78

    .line 2233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2235
    :cond_78
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    return-void
.end method

.method private greylist-max-o appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V
    .registers 14

    .line 2278
    const-string v0, "HighSpeedVideoConfigurations("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    .line 2280
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_45

    aget-object v4, v0, v3

    .line 2281
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v5

    .line 2282
    array-length v6, v5

    move v7, v2

    :goto_16
    if-ge v7, v6, :cond_42

    aget-object v8, v5, v7

    .line 2283
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2284
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    filled-new-array {v9, v10, v11, v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 2283
    const-string v9, "[w:%d, h:%d, min_fps:%d, max_fps:%d], "

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2282
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 2280
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2288
    :cond_45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_60

    .line 2289
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2291
    :cond_60
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    return-void
.end method

.method private greylist-max-o appendInputsString(Ljava/lang/StringBuilder;)V
    .registers 14

    .line 2239
    const-string v0, "Inputs("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    .line 2241
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_45

    aget v4, v0, v3

    .line 2242
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v5

    .line 2243
    array-length v6, v5

    move v7, v2

    :goto_16
    if-ge v7, v6, :cond_42

    aget-object v8, v5, v7

    .line 2244
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2245
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v9, v8, v10, v11}, [Ljava/lang/Object;

    move-result-object v8

    .line 2244
    const-string v9, "[w:%d, h:%d, format:%s(%d)], "

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 2241
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2249
    :cond_45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_60

    .line 2250
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2252
    :cond_60
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    return-void
.end method

.method private greylist-max-o appendOutputsString(Ljava/lang/StringBuilder;)V
    .registers 24

    .line 2198
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Outputs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v2

    .line 2200
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v3, :cond_5a

    aget v6, v2, v5

    .line 2201
    invoke-virtual {v0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v7

    .line 2202
    array-length v8, v7

    move v9, v4

    :goto_1a
    if-ge v9, v8, :cond_57

    aget-object v10, v7, v9

    .line 2203
    invoke-virtual {v0, v6, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v11

    .line 2204
    invoke-virtual {v0, v6, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v13

    .line 2205
    nop

    .line 2206
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v18

    .line 2207
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v10

    .line 2205
    const-string v11, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 2200
    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 2211
    :cond_5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_75

    .line 2212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2214
    :cond_75
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    return-void
.end method

.method private greylist-max-o appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V
    .registers 10

    .line 2256
    const-string v0, "ValidOutputFormatsForInput("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    .line 2258
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_5b

    aget v4, v0, v3

    .line 2259
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "[in:%s(%d), out:"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2260
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    move-result-object v4

    .line 2261
    move v5, v2

    :goto_2a
    array-length v6, v4

    if-ge v5, v6, :cond_53

    .line 2262
    aget v6, v4, v5

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v6

    aget v7, v4, v5

    .line 2263
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 2262
    const-string v7, "%s(%d)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2264
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_50

    .line 2265
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2261
    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 2268
    :cond_53
    const-string v4, "], "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2258
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2271
    :cond_5b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_76

    .line 2272
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2274
    :cond_76
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2275
    return-void
.end method

.method private static greylist-max-o arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 2097
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2098
    return v0

    .line 2101
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 2102
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2103
    const/4 p0, 0x1

    return p0

    .line 2101
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2107
    :cond_15
    return v0
.end method

.method static greylist-max-o checkArgumentFormat(I)I
    .registers 3

    .line 1501
    invoke-static {p0}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p0}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_21

    .line 1502
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1503
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1502
    const-string v1, "format 0x%x was not defined in either ImageFormat or PixelFormat"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1506
    :cond_21
    :goto_21
    return p0
.end method

.method static greylist-max-o checkArgumentFormatInternal(I)I
    .registers 4

    .line 1465
    sparse-switch p0, :sswitch_data_22

    .line 1476
    invoke-static {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    move-result p0

    return p0

    .line 1473
    :sswitch_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An unknown internal format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1470
    :sswitch_21
    return p0

    :sswitch_data_22
    .sparse-switch
        0x21 -> :sswitch_21
        0x22 -> :sswitch_21
        0x24 -> :sswitch_21
        0x100 -> :sswitch_8
        0x20363159 -> :sswitch_21
        0x48454946 -> :sswitch_8
    .end sparse-switch
.end method

.method private greylist-max-o checkArgumentFormatSupported(IZ)I
    .registers 5

    .line 1403
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 1405
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 1406
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 1408
    if-eqz p2, :cond_5d

    .line 1409
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 1410
    const/16 p2, 0x1006

    if-ne v1, p2, :cond_20

    .line 1411
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_20

    .line 1412
    return p1

    .line 1416
    :cond_20
    const/16 p2, 0x1000

    if-ne v1, p2, :cond_2d

    .line 1417
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_66

    .line 1418
    return p1

    .line 1420
    :cond_2d
    const/16 p2, 0x1002

    if-ne v1, p2, :cond_3a

    .line 1421
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_66

    .line 1422
    return p1

    .line 1424
    :cond_3a
    const/16 p2, 0x1004

    if-ne v1, p2, :cond_47

    .line 1425
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_66

    .line 1426
    return p1

    .line 1428
    :cond_47
    const/16 p2, 0x1005

    if-ne v1, p2, :cond_54

    .line 1429
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_66

    .line 1430
    return p1

    .line 1433
    :cond_54
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_66

    .line 1434
    return p1

    .line 1438
    :cond_5d
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_66

    .line 1439
    return p1

    .line 1443
    :cond_66
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 1444
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1443
    const-string v0, "format %x is not supported by this stream configuration map"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static blacklist compareSizes(IIII)I
    .registers 9

    .line 2188
    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr p0, v0

    .line 2189
    int-to-long v2, p2

    int-to-long p2, p3

    mul-long/2addr p2, v2

    .line 2190
    cmp-long v4, p0, p2

    if-nez v4, :cond_c

    .line 2191
    nop

    .line 2192
    goto :goto_e

    .line 2190
    :cond_c
    move-wide v0, p0

    move-wide v2, p2

    .line 2194
    :goto_e
    cmp-long p0, v0, v2

    if-gez p0, :cond_14

    const/4 p0, -0x1

    goto :goto_19

    :cond_14
    if-lez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static greylist-max-o depthFormatToPublic(I)I
    .registers 4

    .line 1585
    sparse-switch p0, :sswitch_data_3a

    .line 1601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DATASPACE_DEPTH format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1589
    :sswitch_1c
    const p0, 0x44363159

    return p0

    .line 1595
    :sswitch_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1593
    :sswitch_28
    const/16 p0, 0x1003

    return p0

    .line 1598
    :sswitch_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "IMPLEMENTATION_DEFINED must not leak to public API"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1587
    :sswitch_33
    const/16 p0, 0x101

    return p0

    .line 1591
    :sswitch_36
    const/16 p0, 0x1002

    return p0

    nop

    :sswitch_data_3a
    .sparse-switch
        0x20 -> :sswitch_36
        0x21 -> :sswitch_33
        0x22 -> :sswitch_2b
        0x25 -> :sswitch_28
        0x100 -> :sswitch_20
        0x20363159 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static greylist-max-o formatToString(I)Ljava/lang/String;
    .registers 2

    .line 2298
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2299
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_d

    .line 2300
    const-string p0, "HEIC_ULTRAHDR"

    return-object p0

    .line 2303
    :cond_d
    sparse-switch p0, :sswitch_data_58

    .line 2351
    const-string p0, "UNKNOWN"

    return-object p0

    .line 2339
    :sswitch_13
    const-string p0, "DEPTH_JPEG"

    return-object p0

    .line 2347
    :sswitch_16
    const-string p0, "HEIC"

    return-object p0

    .line 2335
    :sswitch_19
    const-string p0, "DEPTH16"

    return-object p0

    .line 2305
    :sswitch_1c
    const-string p0, "YV12"

    return-object p0

    .line 2327
    :sswitch_1f
    const-string p0, "Y16"

    return-object p0

    .line 2325
    :sswitch_22
    const-string p0, "Y8"

    return-object p0

    .line 2349
    :sswitch_25
    const-string p0, "JPEG/R"

    return-object p0

    .line 2343
    :sswitch_28
    const-string p0, "RAW_DEPTH10"

    return-object p0

    .line 2341
    :sswitch_2b
    const-string p0, "RAW_DEPTH"

    return-object p0

    .line 2337
    :sswitch_2e
    const-string p0, "DEPTH_POINT_CLOUD"

    return-object p0

    .line 2321
    :sswitch_31
    const-string p0, "JPEG"

    return-object p0

    .line 2333
    :sswitch_34
    const-string p0, "RAW10"

    return-object p0

    .line 2331
    :sswitch_37
    const-string p0, "RAW_PRIVATE"

    return-object p0

    .line 2307
    :sswitch_3a
    const-string p0, "YUV_420_888"

    return-object p0

    .line 2345
    :sswitch_3d
    const-string p0, "PRIVATE"

    return-object p0

    .line 2329
    :sswitch_40
    const-string p0, "RAW_SENSOR"

    return-object p0

    .line 2323
    :sswitch_43
    const-string p0, "YUY2"

    return-object p0

    .line 2309
    :sswitch_46
    const-string p0, "NV21"

    return-object p0

    .line 2311
    :sswitch_49
    const-string p0, "NV16"

    return-object p0

    .line 2313
    :sswitch_4c
    const-string p0, "RGB_565"

    return-object p0

    .line 2319
    :sswitch_4f
    const-string p0, "RGB_888"

    return-object p0

    .line 2317
    :sswitch_52
    const-string p0, "RGBX_8888"

    return-object p0

    .line 2315
    :sswitch_55
    const-string p0, "RGBA_8888"

    return-object p0

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_55
        0x2 -> :sswitch_52
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_4c
        0x10 -> :sswitch_49
        0x11 -> :sswitch_46
        0x14 -> :sswitch_43
        0x20 -> :sswitch_40
        0x22 -> :sswitch_3d
        0x23 -> :sswitch_3a
        0x24 -> :sswitch_37
        0x25 -> :sswitch_34
        0x100 -> :sswitch_31
        0x101 -> :sswitch_2e
        0x1002 -> :sswitch_2b
        0x1003 -> :sswitch_28
        0x1005 -> :sswitch_25
        0x20203859 -> :sswitch_22
        0x20363159 -> :sswitch_1f
        0x32315659 -> :sswitch_1c
        0x44363159 -> :sswitch_19
        0x48454946 -> :sswitch_16
        0x69656963 -> :sswitch_13
    .end sparse-switch
.end method

.method private greylist-max-o getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .registers 8

    .line 2053
    nop

    .line 2054
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2055
    const/16 v0, 0x1006

    if-ne p2, v0, :cond_d

    .line 2056
    const/4 v0, 0x1

    goto :goto_e

    .line 2059
    :cond_d
    const/4 v0, 0x0

    :goto_e
    const/16 v1, 0x1005

    const/16 v2, 0x1004

    const/16 v3, 0x1002

    const/16 v4, 0x1000

    packed-switch p1, :pswitch_data_5a

    .line 2077
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration was invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2070
    :pswitch_21
    if-ne p2, v4, :cond_26

    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_3c

    .line 2071
    :cond_26
    if-ne p2, v3, :cond_2b

    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_3c

    .line 2072
    :cond_2b
    if-ne p2, v2, :cond_30

    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_3c

    .line 2073
    :cond_30
    if-eqz v0, :cond_35

    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_3c

    .line 2074
    :cond_35
    if-ne p2, v1, :cond_3a

    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_3c

    .line 2075
    :cond_3a
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 2070
    :goto_3c
    return-object p1

    .line 2061
    :pswitch_3d
    if-ne p2, v4, :cond_42

    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_58

    .line 2062
    :cond_42
    if-ne p2, v3, :cond_47

    .line 2063
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_58

    .line 2064
    :cond_47
    if-ne p2, v2, :cond_4c

    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_58

    .line 2065
    :cond_4c
    if-eqz v0, :cond_51

    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_58

    .line 2066
    :cond_51
    if-ne p2, v1, :cond_56

    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_58

    .line 2067
    :cond_56
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 2061
    :goto_58
    return-object p1

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_21
    .end packed-switch
.end method

.method private greylist-max-o getFormatsMap(Z)Landroid/util/SparseIntArray;
    .registers 2

    .line 2023
    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    :goto_7
    return-object p1
.end method

.method private greylist-max-o getInternalFormatDuration(IILandroid/util/Size;I)J
    .registers 9

    .line 2029
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isSupportedInternalConfiguration(IILandroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2033
    invoke-direct {p0, p4, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-result-object p2

    .line 2035
    array-length p4, p2

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p4, :cond_32

    aget-object v1, p2, v0

    .line 2036
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v2

    if-ne v2, p1, :cond_2f

    .line 2037
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_2f

    .line 2038
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_2f

    .line 2039
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide p1

    return-wide p1

    .line 2035
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2043
    :cond_32
    const-wide/16 p1, 0x0

    return-wide p1

    .line 2030
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size was not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o getInternalFormatSizes(IIZZ)[Landroid/util/Size;
    .registers 23

    .line 1884
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    const/16 v6, 0x1000

    if-ne v2, v6, :cond_14

    if-eqz v4, :cond_14

    .line 1885
    new-array v0, v5, [Landroid/util/Size;

    return-object v0

    .line 1889
    :cond_14
    const/16 v7, 0x1005

    const/16 v8, 0x1004

    const/16 v9, 0x1002

    if-nez v3, :cond_1f

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    goto :goto_3a

    .line 1890
    :cond_1f
    if-ne v2, v6, :cond_24

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_3a

    .line 1891
    :cond_24
    if-ne v2, v9, :cond_29

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_3a

    .line 1892
    :cond_29
    if-ne v2, v8, :cond_2e

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_3a

    .line 1893
    :cond_2e
    if-ne v2, v7, :cond_33

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    goto :goto_3a

    .line 1894
    :cond_33
    if-eqz v4, :cond_38

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_3a

    .line 1895
    :cond_38
    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 1896
    :goto_3a
    nop

    .line 1897
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v11

    if-eqz v11, :cond_49

    .line 1898
    const/16 v11, 0x1006

    if-ne v2, v11, :cond_49

    .line 1899
    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    .line 1900
    const/4 v11, 0x1

    goto :goto_4a

    .line 1903
    :cond_49
    move v11, v5

    :goto_4a
    invoke-virtual {v10, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    .line 1904
    if-eqz v3, :cond_5a

    if-eq v2, v6, :cond_5a

    if-eq v2, v7, :cond_5a

    if-eq v2, v9, :cond_5a

    if-eq v2, v8, :cond_5a

    if-eqz v11, :cond_5c

    :cond_5a
    if-eqz v10, :cond_193

    :cond_5c
    if-eqz v3, :cond_72

    if-eq v2, v6, :cond_72

    if-eq v2, v7, :cond_72

    if-eq v2, v9, :cond_72

    if-nez v11, :cond_72

    if-eq v2, v8, :cond_72

    iget-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 1912
    invoke-virtual {v13, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    if-nez v13, :cond_72

    goto/16 :goto_193

    .line 1916
    :cond_72
    new-array v13, v10, [Landroid/util/Size;

    .line 1917
    nop

    .line 1920
    if-ne v2, v6, :cond_7a

    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_90

    .line 1921
    :cond_7a
    if-ne v2, v9, :cond_7f

    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_90

    .line 1922
    :cond_7f
    if-ne v2, v8, :cond_84

    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_90

    .line 1923
    :cond_84
    if-ne v2, v7, :cond_89

    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_90

    .line 1924
    :cond_89
    if-eqz v11, :cond_8e

    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_90

    .line 1925
    :cond_8e
    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1927
    :goto_90
    if-ne v2, v6, :cond_95

    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_ab

    .line 1928
    :cond_95
    if-ne v2, v9, :cond_9a

    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_ab

    .line 1929
    :cond_9a
    if-ne v2, v8, :cond_9f

    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_ab

    .line 1930
    :cond_9f
    if-ne v2, v7, :cond_a4

    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_ab

    .line 1931
    :cond_a4
    if-eqz v11, :cond_a9

    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_ab

    .line 1932
    :cond_a9
    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1934
    :goto_ab
    array-length v12, v14

    move v7, v5

    :goto_ad
    if-ge v5, v12, :cond_121

    aget-object v16, v14, v5

    .line 1935
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v8

    .line 1936
    if-ne v8, v1, :cond_116

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v9

    if-ne v9, v3, :cond_116

    .line 1937
    if-eqz v3, :cond_10d

    iget-boolean v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-eqz v9, :cond_10d

    .line 1940
    nop

    .line 1941
    const/4 v9, 0x0

    :goto_c5
    array-length v6, v15

    if-ge v9, v6, :cond_fa

    .line 1942
    aget-object v6, v15, v9

    .line 1943
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v0

    if-ne v0, v8, :cond_f1

    .line 1944
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_f1

    .line 1945
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_f1

    .line 1946
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v0

    .line 1947
    goto :goto_fc

    .line 1941
    :cond_f1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v6, 0x1000

    goto :goto_c5

    :cond_fa
    const-wide/16 v0, 0x0

    .line 1950
    :goto_fc
    const/16 v6, 0x1000

    if-eq v2, v6, :cond_10d

    const-wide/32 v8, 0x2faf080

    cmp-long v0, v0, v8

    if-lez v0, :cond_109

    const/4 v0, 0x1

    goto :goto_10a

    :cond_109
    const/4 v0, 0x0

    :goto_10a
    if-eq v4, v0, :cond_10d

    .line 1952
    goto :goto_116

    .line 1955
    :cond_10d
    add-int/lit8 v0, v7, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v1

    aput-object v1, v13, v7

    move v7, v0

    .line 1934
    :cond_116
    :goto_116
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v8, 0x1004

    const/16 v9, 0x1002

    goto :goto_ad

    .line 1960
    :cond_121
    const-string v0, ")"

    const-string v1, ", actual "

    if-eq v7, v10, :cond_12f

    const/16 v3, 0x1002

    if-eq v2, v3, :cond_15e

    const/16 v3, 0x1004

    if-eq v2, v3, :cond_15e

    :cond_12f
    const/16 v3, 0x1005

    if-eq v2, v3, :cond_15e

    if-eqz v11, :cond_136

    goto :goto_15e

    .line 1975
    :cond_136
    if-ne v7, v10, :cond_139

    goto :goto_16d

    .line 1976
    :cond_139
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too few sizes (expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1964
    :cond_15e
    :goto_15e
    if-gt v7, v10, :cond_16e

    .line 1970
    if-gtz v7, :cond_166

    .line 1971
    const/4 v0, 0x0

    new-array v13, v0, [Landroid/util/Size;

    goto :goto_16d

    .line 1973
    :cond_166
    invoke-static {v13, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Landroid/util/Size;

    .line 1980
    :goto_16d
    return-object v13

    .line 1965
    :cond_16e
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many dynamic depth sizes (expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1913
    :cond_193
    :goto_193
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getPublicFormatCount(Z)I
    .registers 3

    .line 2083
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 2084
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 2085
    if-eqz p1, :cond_2d

    .line 2086
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    add-int/2addr v0, p1

    .line 2087
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    add-int/2addr v0, p1

    .line 2088
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    add-int/2addr v0, p1

    .line 2089
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    add-int/2addr v0, p1

    .line 2090
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    add-int/2addr v0, p1

    .line 2093
    :cond_2d
    return v0
.end method

.method private greylist-max-o getPublicFormatSizes(IZZ)[Landroid/util/Size;
    .registers 5

    .line 1870
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_11

    .line 1873
    nop

    .line 1875
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 1876
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result p1

    .line 1878
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object p1

    return-object p1

    .line 1871
    :catch_11
    move-exception p1

    .line 1872
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o getPublicFormats(Z)[I
    .registers 10

    .line 1985
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatCount(Z)I

    move-result v0

    new-array v1, v0, [I

    .line 1987
    nop

    .line 1989
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1990
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_e
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_24

    .line 1991
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 1992
    add-int/lit8 v7, v5, 0x1

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v6

    aput v6, v1, v5

    .line 1990
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_e

    .line 1994
    :cond_24
    if-eqz p1, :cond_85

    .line 1995
    nop

    :goto_27
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_41

    .line 1996
    add-int/lit8 p1, v5, 0x1

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->depthFormatToPublic(I)I

    move-result v2

    aput v2, v1, v5

    .line 1995
    add-int/lit8 v3, v3, 0x1

    move v5, p1

    goto :goto_27

    .line 1998
    :cond_41
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-lez p1, :cond_51

    .line 2000
    add-int/lit8 p1, v5, 0x1

    const v2, 0x69656963

    aput v2, v1, v5

    move v5, p1

    .line 2002
    :cond_51
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-lez p1, :cond_61

    .line 2003
    add-int/lit8 p1, v5, 0x1

    const v2, 0x48454946

    aput v2, v1, v5

    move v5, p1

    .line 2005
    :cond_61
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result p1

    if-eqz p1, :cond_76

    .line 2006
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-lez p1, :cond_76

    .line 2007
    add-int/lit8 p1, v5, 0x1

    const/16 v2, 0x1006

    aput v2, v1, v5

    move v5, p1

    .line 2010
    :cond_76
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-lez p1, :cond_85

    .line 2011
    add-int/lit8 p1, v5, 0x1

    const/16 v2, 0x1005

    aput v2, v1, v5

    move v5, p1

    .line 2014
    :cond_85
    if-ne v0, v5, :cond_88

    .line 2018
    return-object v1

    .line 2015
    :cond_88
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too few formats "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method static greylist-max-o imageFormatToDataspace(I)I
    .registers 2

    .line 1722
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1723
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_b

    .line 1724
    return v0

    .line 1727
    :cond_b
    const/high16 v0, 0x8c20000

    sparse-switch p0, :sswitch_data_22

    .line 1749
    const/4 p0, 0x0

    return p0

    .line 1736
    :sswitch_12
    const/16 p0, 0x1002

    return p0

    .line 1738
    :sswitch_15
    const/16 p0, 0x1004

    return p0

    .line 1740
    :sswitch_18
    const/16 p0, 0x1005

    return p0

    .line 1734
    :sswitch_1b
    const/16 p0, 0x1000

    return p0

    .line 1729
    :sswitch_1e
    return v0

    .line 1742
    :sswitch_1f
    return v0

    .line 1747
    :sswitch_20
    const/4 p0, 0x1

    return p0

    :sswitch_data_22
    .sparse-switch
        0x20 -> :sswitch_20
        0x23 -> :sswitch_1f
        0x24 -> :sswitch_20
        0x25 -> :sswitch_20
        0x26 -> :sswitch_20
        0x100 -> :sswitch_1e
        0x101 -> :sswitch_1b
        0x1002 -> :sswitch_1b
        0x1003 -> :sswitch_1b
        0x1005 -> :sswitch_18
        0x44363159 -> :sswitch_1b
        0x48454946 -> :sswitch_15
        0x69656963 -> :sswitch_12
    .end sparse-switch
.end method

.method static greylist-max-o imageFormatToInternal(I)I
    .registers 3

    .line 1659
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    const/16 v1, 0x21

    if-eqz v0, :cond_d

    .line 1660
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_d

    .line 1661
    return v1

    .line 1664
    :cond_d
    sparse-switch p0, :sswitch_data_1c

    .line 1678
    return p0

    .line 1672
    :sswitch_11
    const p0, 0x20363159

    return p0

    .line 1676
    :sswitch_15
    const/16 p0, 0x25

    return p0

    .line 1674
    :sswitch_18
    const/16 p0, 0x20

    return p0

    .line 1670
    :sswitch_1b
    return v1

    :sswitch_data_1c
    .sparse-switch
        0x100 -> :sswitch_1b
        0x101 -> :sswitch_1b
        0x1002 -> :sswitch_18
        0x1003 -> :sswitch_15
        0x1005 -> :sswitch_1b
        0x44363159 -> :sswitch_11
        0x48454946 -> :sswitch_1b
        0x69656963 -> :sswitch_1b
    .end sparse-switch
.end method

.method public static greylist-max-o imageFormatToInternal([I)[I
    .registers 3

    .line 1857
    if-nez p0, :cond_4

    .line 1858
    const/4 p0, 0x0

    return-object p0

    .line 1861
    :cond_4
    const/4 v0, 0x0

    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 1862
    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    aput v1, p0, v0

    .line 1861
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1865
    :cond_13
    return-object p0
.end method

.method public static greylist-max-o imageFormatToPublic(I)I
    .registers 2

    .line 1541
    sparse-switch p0, :sswitch_data_10

    .line 1548
    return p0

    .line 1545
    :sswitch_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1543
    :sswitch_c
    const/16 p0, 0x100

    return p0

    nop

    :sswitch_data_10
    .sparse-switch
        0x21 -> :sswitch_c
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method static greylist-max-o imageFormatToPublic([I)[I
    .registers 3

    .line 1615
    if-nez p0, :cond_4

    .line 1616
    const/4 p0, 0x0

    return-object p0

    .line 1619
    :cond_4
    const/4 v0, 0x0

    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 1620
    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v1

    aput v1, p0, v0

    .line 1619
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1623
    :cond_13
    return-object p0
.end method

.method static blacklist internalFormatAndDataspaceToImageFormat(II)I
    .registers 3

    .line 1795
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_9

    .line 1796
    invoke-static {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->depthFormatToPublic(I)I

    move-result p0

    return p0

    .line 1800
    :cond_9
    const/16 v0, 0x21

    if-ne p0, v0, :cond_29

    .line 1801
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 1802
    const/16 p0, 0x1006

    if-ne p1, p0, :cond_18

    .line 1803
    return p0

    .line 1807
    :cond_18
    packed-switch p1, :pswitch_data_30

    .line 1816
    :pswitch_1b
    const/16 p0, 0x100

    return p0

    .line 1813
    :pswitch_1e
    const/16 p0, 0x1005

    return p0

    .line 1811
    :pswitch_21
    const p0, 0x48454946

    return p0

    .line 1809
    :pswitch_25
    const p0, 0x69656963

    return p0

    .line 1821
    :cond_29
    sparse-switch p0, :sswitch_data_3c

    .line 1842
    const/4 p0, 0x0

    return p0

    .line 1840
    :sswitch_2e
    return p0

    nop

    :pswitch_data_30
    .packed-switch 0x1002
        :pswitch_25
        :pswitch_1b
        :pswitch_21
        :pswitch_1e
    .end packed-switch

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_2e
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_2e
        0x4 -> :sswitch_2e
        0x10 -> :sswitch_2e
        0x11 -> :sswitch_2e
        0x14 -> :sswitch_2e
        0x20 -> :sswitch_2e
        0x22 -> :sswitch_2e
        0x23 -> :sswitch_2e
        0x24 -> :sswitch_2e
        0x25 -> :sswitch_2e
        0x26 -> :sswitch_2e
        0x36 -> :sswitch_2e
        0x3c -> :sswitch_2e
        0x20203859 -> :sswitch_2e
        0x20363159 -> :sswitch_2e
        0x32315659 -> :sswitch_2e
    .end sparse-switch
.end method

.method public static whitelist isOutputSupportedFor(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 718
    const-string v0, "klass must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 720
    const-class v0, Landroid/media/ImageReader;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_b

    .line 721
    return v1

    .line 722
    :cond_b
    const-class v0, Landroid/media/MediaRecorder;

    if-ne p0, v0, :cond_10

    .line 723
    return v1

    .line 724
    :cond_10
    const-class v0, Landroid/media/MediaCodec;

    if-ne p0, v0, :cond_15

    .line 725
    return v1

    .line 726
    :cond_15
    const-class v0, Landroid/renderscript/Allocation;

    if-ne p0, v0, :cond_1a

    .line 727
    return v1

    .line 728
    :cond_1a
    const-class v0, Landroid/view/SurfaceHolder;

    if-ne p0, v0, :cond_1f

    .line 729
    return v1

    .line 730
    :cond_1f
    const-class v0, Landroid/graphics/SurfaceTexture;

    if-ne p0, v0, :cond_24

    .line 731
    return v1

    .line 734
    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o isSupportedInternalConfiguration(IILandroid/util/Size;)Z
    .registers 8

    .line 2111
    nop

    .line 2112
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 2113
    const/16 v0, 0x1006

    if-ne p2, v0, :cond_f

    .line 2114
    move v0, v1

    goto :goto_10

    .line 2118
    :cond_f
    move v0, v2

    :goto_10
    const/16 v3, 0x1000

    if-ne p2, v3, :cond_17

    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 2119
    :cond_17
    const/16 v3, 0x1002

    if-ne p2, v3, :cond_1e

    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 2120
    :cond_1e
    const/16 v3, 0x1004

    if-ne p2, v3, :cond_25

    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 2121
    :cond_25
    const/16 v3, 0x1005

    if-ne p2, v3, :cond_2c

    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 2122
    :cond_2c
    if-eqz v0, :cond_31

    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 2123
    :cond_31
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 2125
    :goto_33
    move v0, v2

    :goto_34
    array-length v3, p2

    if-ge v0, v3, :cond_4f

    .line 2126
    aget-object v3, p2, v0

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v3

    if-ne v3, p1, :cond_4c

    aget-object v3, p2, v0

    .line 2127
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 2128
    return v1

    .line 2125
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 2132
    :cond_4f
    return v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1349
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1350
    return v0

    .line 1352
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 1353
    return v1

    .line 1355
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v2, :cond_d0

    .line 1356
    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1358
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1359
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1360
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1361
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1362
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1363
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1364
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1365
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1367
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1368
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1369
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1370
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1371
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1372
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1374
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1375
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1376
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1377
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iget-object p1, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 1378
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ce

    move v0, v1

    goto :goto_cf

    :cond_ce
    nop

    .line 1358
    :goto_cf
    return v0

    .line 1381
    :cond_d0
    return v0
.end method

.method public whitelist getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .registers 3

    .line 1105
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 1107
    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getHighSpeedVideoFpsRanges()[Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1049
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 980
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 981
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_37

    .line 987
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v0, v0, [Landroid/util/Range;

    .line 988
    nop

    .line 989
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    if-ge v3, v2, :cond_36

    aget-object v5, v1, v3

    .line 990
    invoke-virtual {v5}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 991
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v5

    aput-object v5, v0, v4

    move v4, v6

    .line 989
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 994
    :cond_36
    return-object v0

    .line 982
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size %s does not support high speed video recording"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getHighSpeedVideoSizes()[Landroid/util/Size;
    .registers 3

    .line 953
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 954
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Size;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    return-object v0
.end method

.method public whitelist getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1066
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1067
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_37

    .line 1072
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v0, v0, [Landroid/util/Size;

    .line 1073
    nop

    .line 1074
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    if-ge v3, v2, :cond_36

    aget-object v5, v1, v3

    .line 1075
    invoke-virtual {v5}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 1076
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v5

    aput-object v5, v0, v4

    move v4, v6

    .line 1074
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1079
    :cond_36
    return-object v0

    .line 1068
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FpsRange %s does not support high speed video recording"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInputFormats()[I
    .registers 2

    .line 618
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputSizes(I)[Landroid/util/Size;
    .registers 3

    .line 631
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getOutputFormats()[I
    .registers 2

    .line 567
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputMinFrameDuration(ILandroid/util/Size;)J
    .registers 5

    .line 1148
    const-string v0, "size must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1149
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    .line 1151
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 1152
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result p1

    .line 1151
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .line 1201
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1205
    const/16 p1, 0x22

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide p1

    return-wide p1

    .line 1202
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "klass was not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getOutputSizes(I)[Landroid/util/Size;
    .registers 4

    .line 911
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 879
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 880
    const/4 p1, 0x0

    return-object p1

    .line 883
    :cond_8
    const/16 p1, 0x22

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getOutputStallDuration(ILandroid/util/Size;)J
    .registers 5

    .line 1294
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    .line 1296
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    .line 1297
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result p1

    .line 1296
    invoke-direct {p0, v1, p1, p2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist getOutputStallDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .line 1331
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1335
    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x22

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide p1

    return-wide p1

    .line 1332
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "klass was not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getValidOutputFormatsForInput(I)[I
    .registers 4

    .line 591
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-nez v0, :cond_8

    .line 592
    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1

    .line 595
    :cond_8
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    move-result-object p1

    .line 596
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 598
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 599
    array-length p1, p1

    const v1, 0x48454946

    aput v1, v0, p1

    .line 600
    return-object v0

    .line 602
    :cond_24
    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1390
    const/16 v0, 0x13

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isOutputSupportedFor(I)Z
    .registers 6

    .line 659
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 661
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 662
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result p1

    .line 663
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_21

    .line 664
    const/16 v1, 0x1006

    if-ne p1, v1, :cond_21

    .line 665
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_20

    move v2, v3

    :cond_20
    return v2

    .line 668
    :cond_21
    const/16 v1, 0x1000

    if-ne p1, v1, :cond_2f

    .line 669
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_2e

    move v2, v3

    :cond_2e
    return v2

    .line 670
    :cond_2f
    const/16 v1, 0x1002

    if-ne p1, v1, :cond_3d

    .line 671
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_3c

    move v2, v3

    :cond_3c
    return v2

    .line 672
    :cond_3d
    const/16 v1, 0x1004

    if-ne p1, v1, :cond_4b

    .line 673
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_4a

    move v2, v3

    :cond_4a
    return v2

    .line 674
    :cond_4b
    const/16 v1, 0x1005

    if-ne p1, v1, :cond_59

    .line 675
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_58

    move v2, v3

    :cond_58
    return v2

    .line 677
    :cond_59
    invoke-direct {p0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_64

    move v2, v3

    :cond_64
    return v2
.end method

.method public blacklist isOutputSupportedFor(Landroid/util/Size;I)Z
    .registers 9

    .line 827
    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 828
    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result p2

    .line 831
    const/16 v1, 0x1000

    if-ne p2, v1, :cond_f

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_26

    .line 832
    :cond_f
    const/16 v1, 0x1002

    if-ne p2, v1, :cond_16

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_26

    .line 833
    :cond_16
    const/16 v1, 0x1004

    if-ne p2, v1, :cond_1d

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_26

    .line 834
    :cond_1d
    const/16 v1, 0x1005

    if-ne p2, v1, :cond_24

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_26

    .line 835
    :cond_24
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 836
    :goto_26
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 837
    const/16 v2, 0x1006

    if-ne p2, v2, :cond_32

    .line 838
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 841
    :cond_32
    array-length p2, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_35
    if-ge v3, p2, :cond_54

    aget-object v4, v1, v3

    .line 842
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v5

    if-ne v5, v0, :cond_51

    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 843
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 844
    const/4 p1, 0x1

    return p1

    .line 841
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 848
    :cond_54
    return v2
.end method

.method public whitelist isOutputSupportedFor(Landroid/view/Surface;)Z
    .registers 11

    .line 777
    const-string v0, "surface must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 779
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    .line 780
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v1

    .line 781
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v2

    .line 784
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->isFlexibleConsumer(Landroid/view/Surface;)Z

    move-result p1

    .line 787
    const/16 v3, 0x1000

    if-ne v2, v3, :cond_1c

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 788
    :cond_1c
    const/16 v3, 0x1002

    if-ne v2, v3, :cond_23

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 789
    :cond_23
    const/16 v3, 0x1004

    if-ne v2, v3, :cond_2a

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 790
    :cond_2a
    const/16 v3, 0x1005

    if-ne v2, v3, :cond_31

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 791
    :cond_31
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 792
    :goto_33
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 793
    const/16 v4, 0x1006

    if-ne v2, v4, :cond_3f

    .line 794
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 797
    :cond_3f
    array-length v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_42
    if-ge v5, v2, :cond_70

    aget-object v6, v3, v5

    .line 798
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v7

    if-ne v7, v1, :cond_6d

    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 801
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_5e

    .line 802
    return v8

    .line 803
    :cond_5e
    if-eqz p1, :cond_6d

    .line 804
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    const/16 v7, 0x780

    if-gt v6, v7, :cond_6d

    .line 805
    return v8

    .line 797
    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 809
    :cond_70
    return v4
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamConfiguration("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2168
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendOutputsString(Ljava/lang/StringBuilder;)V

    .line 2169
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighResOutputsString(Ljava/lang/StringBuilder;)V

    .line 2171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendInputsString(Ljava/lang/StringBuilder;)V

    .line 2173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2174
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V

    .line 2175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V

    .line 2177
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
