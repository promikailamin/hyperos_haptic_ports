.class final Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"

# interfaces
.implements Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$VideoCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VideoCapsLegacyImpl"
.end annotation


# static fields
.field static final blacklist VIDEO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAllowMbOverride:Z

.field private blacklist mAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBlockAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBlockCountRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBlockHeight:I

.field private blacklist mBlockWidth:I

.field private blacklist mBlocksPerSecondRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHeightAlignment:I

.field private blacklist mHeightRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHorizontalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMeasuredFrameRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

.field private blacklist mPerformancePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSmallerDimensionUpperLimit:I

.field private blacklist mVerticalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWidthAlignment:I

.field private blacklist mWidthRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 2817
    const-string v0, "bitrate"

    const-string v1, "mime"

    const-string v2, "width"

    const-string v3, "height"

    const-string v4, "frame-rate"

    invoke-static {v2, v3, v4, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->VIDEO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 2848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist applyAlignment(II)V
    .registers 10

    .line 3500
    const-string v0, "widthAlignment must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3501
    const-string v0, "heightAlignment must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3503
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    if-gt p1, v0, :cond_15

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    if-le p2, v0, :cond_13

    goto :goto_15

    :cond_13
    move-object v1, p0

    goto :goto_31

    .line 3505
    :cond_15
    :goto_15
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    .line 3506
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    .line 3507
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v4

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;

    move-result-object v5

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v6

    .line 3505
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 3511
    :goto_31
    iget v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthAlignment:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthAlignment:I

    .line 3512
    iget p1, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightAlignment:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightAlignment:I

    .line 3514
    iget-object p1, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    iget p2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthAlignment:I

    invoke-static {p1, p2}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p1

    iput-object p1, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    .line 3515
    iget-object p1, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    iget p2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightAlignment:I

    invoke-static {p1, p2}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p1

    iput-object p1, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    .line 3516
    return-void
.end method

.method private blacklist applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;)V"
        }
    .end annotation

    .line 3462
    const-string v0, "blockWidth must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3463
    const-string v0, "blockHeight must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3465
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3466
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3469
    mul-int v2, v0, v1

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    div-int v3, v2, v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    div-int/2addr v3, v4

    .line 3471
    const/4 v4, 0x1

    if-eq v3, v4, :cond_5b

    .line 3472
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v5, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3473
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    int-to-long v6, v3

    invoke-static {v5, v6, v7}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3475
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    div-int v5, v1, v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    div-int v6, v0, v6

    invoke-static {v3, v5, v6}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3479
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    div-int v5, v0, v5

    invoke-static {v3, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3481
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    div-int v5, v1, v5

    invoke-static {v3, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    .line 3484
    :cond_5b
    div-int/2addr v2, p1

    div-int/2addr v2, p2

    .line 3485
    if-eq v2, v4, :cond_70

    .line 3486
    invoke-static {p3, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p3

    .line 3487
    int-to-long v2, v2

    invoke-static {p4, v2, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object p4

    .line 3488
    div-int p2, v1, p2

    div-int p1, v0, p1

    invoke-static {p5, p2, p1}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object p5

    .line 3492
    :cond_70
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {p1, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3493
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {p1, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3494
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {p1, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3495
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    .line 3496
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    .line 3497
    return-void
.end method

.method private blacklist applyLevelLimits()V
    .registers 44

    .line 3606
    move-object/from16 v0, p0

    .line 3607
    nop

    .line 3608
    nop

    .line 3609
    nop

    .line 3611
    nop

    .line 3612
    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v1

    .line 3613
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 3615
    const-string v3, "video/avc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x3a980

    const/16 v5, 0x5cd

    const-string v7, "Unrecognized profile "

    const-string v10, " for "

    const-string v11, "VideoCapabilities"

    const/4 v13, 0x1

    .line 4437
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 3615
    const/4 v15, 0x4

    if-eqz v3, :cond_335

    .line 3616
    nop

    .line 3617
    nop

    .line 3618
    nop

    .line 3619
    nop

    .line 3620
    array-length v3, v1

    const-wide/16 v16, 0x5cd

    const v18, 0xfa00

    move/from16 v20, v4

    move/from16 v21, v5

    move-wide/from16 v4, v16

    move/from16 v12, v18

    const/4 v6, 0x0

    const/16 v8, 0x63

    const/16 v9, 0x18c

    :goto_42
    if-ge v6, v3, :cond_31c

    aget-object v13, v1, v6

    .line 3621
    nop

    .line 3622
    nop

    .line 3623
    iget v0, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v0, :sswitch_data_13a2

    .line 3665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v3

    const-string v3, "Unrecognized level "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    or-int/lit8 v15, v15, 0x1

    move/from16 v24, v6

    move/from16 v25, v15

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    goto/16 :goto_28f

    .line 3663
    :sswitch_7b
    const/high16 v0, 0xff0000

    const v23, 0x22000

    const v24, 0xc3500

    const v25, 0xaa000

    move/from16 v41, v23

    move/from16 v23, v3

    move/from16 v3, v41

    move/from16 v41, v24

    move/from16 v24, v6

    move/from16 v6, v41

    move/from16 v41, v25

    move/from16 v25, v15

    move/from16 v15, v41

    goto/16 :goto_28f

    .line 3661
    :sswitch_9a
    const v0, 0x7f8000

    const v23, 0x22000

    const v24, 0x75300

    const v25, 0xaa000

    move/from16 v41, v23

    move/from16 v23, v3

    move/from16 v3, v41

    move/from16 v41, v24

    move/from16 v24, v6

    move/from16 v6, v41

    move/from16 v41, v25

    move/from16 v25, v15

    move/from16 v15, v41

    goto/16 :goto_28f

    .line 3659
    :sswitch_ba
    const v0, 0x3fc000

    const v23, 0x22000

    const v25, 0xaa000

    move/from16 v24, v23

    move/from16 v23, v3

    move/from16 v3, v24

    move/from16 v24, v25

    move/from16 v25, v15

    move/from16 v15, v24

    move/from16 v24, v6

    move/from16 v6, v20

    goto/16 :goto_28f

    .line 3657
    :sswitch_d5
    const v0, 0x1fa400

    const v23, 0x9000

    const v25, 0x2d000

    move/from16 v24, v23

    move/from16 v23, v3

    move/from16 v3, v24

    move/from16 v24, v25

    move/from16 v25, v15

    move/from16 v15, v24

    move/from16 v24, v6

    move/from16 v6, v20

    goto/16 :goto_28f

    .line 3655
    :sswitch_f0
    const/high16 v0, 0xf0000

    const v23, 0x9000

    const v25, 0x2d000

    move/from16 v24, v23

    move/from16 v23, v3

    move/from16 v3, v24

    move/from16 v24, v25

    move/from16 v25, v15

    move/from16 v15, v24

    move/from16 v24, v6

    move/from16 v6, v20

    goto/16 :goto_28f

    .line 3653
    :sswitch_10a
    const/high16 v0, 0x90000

    const/16 v23, 0x5640

    const v24, 0x20f58

    const v25, 0x1af40

    move/from16 v41, v23

    move/from16 v23, v3

    move/from16 v3, v41

    move/from16 v41, v24

    move/from16 v24, v6

    move/from16 v6, v41

    move/from16 v41, v25

    move/from16 v25, v15

    move/from16 v15, v41

    goto/16 :goto_28f

    .line 3651
    :sswitch_128
    const v0, 0x7f800

    const/16 v23, 0x2200

    const v24, 0xc350

    const v25, 0x8800

    move/from16 v41, v23

    move/from16 v23, v3

    move/from16 v3, v41

    move/from16 v41, v24

    move/from16 v24, v6

    move/from16 v6, v41

    move/from16 v41, v25

    move/from16 v25, v15

    move/from16 v15, v41

    goto/16 :goto_28f

    .line 3649
    :sswitch_147
    const v0, 0x3c000

    const/16 v23, 0x2000

    const v24, 0xc350

    const v25, 0x8000

    move/from16 v41, v23

    move/from16 v23, v3

    move/from16 v3, v41

    move/from16 v41, v24

    move/from16 v24, v6

    move/from16 v6, v41

    move/from16 v41, v25

    move/from16 v25, v15

    move/from16 v15, v41

    goto/16 :goto_28f

    .line 3647
    :sswitch_166
    const v0, 0x3c000

    const/16 v23, 0x2000

    const/16 v24, 0x4e20

    const v25, 0x8000

    move/from16 v41, v23

    move/from16 v23, v3

    move/from16 v3, v41

    move/from16 v41, v24

    move/from16 v24, v6

    move/from16 v6, v41

    move/from16 v41, v25

    move/from16 v25, v15

    move/from16 v15, v41

    goto/16 :goto_28f

    .line 3645
    :sswitch_184
    const v0, 0x34bc0

    const/16 v23, 0x1400

    const/16 v24, 0x4e20

    const/16 v25, 0x5000

    move/from16 v41, v23

    move/from16 v23, v3

    move/from16 v3, v41

    move/from16 v41, v24

    move/from16 v24, v6

    move/from16 v6, v41

    move/from16 v41, v25

    move/from16 v25, v15

    move/from16 v15, v41

    goto/16 :goto_28f

    .line 3643
    :sswitch_1a1
    const v0, 0x1a5e0

    const/16 v23, 0xe10

    const/16 v24, 0x36b0

    const/16 v25, 0x4650

    move/from16 v41, v23

    move/from16 v23, v3

    move/from16 v3, v41

    move/from16 v41, v24

    move/from16 v24, v6

    move/from16 v6, v41

    move/from16 v41, v25

    move/from16 v25, v15

    move/from16 v15, v41

    goto/16 :goto_28f

    .line 3641
    :sswitch_1be
    const v0, 0x9e34

    const/16 v23, 0x654

    const/16 v24, 0x2710

    const/16 v25, 0x1fa4

    move/from16 v41, v23

    move/from16 v23, v3

    move/from16 v3, v41

    move/from16 v41, v24

    move/from16 v24, v6

    move/from16 v6, v41

    move/from16 v41, v25

    move/from16 v25, v15

    move/from16 v15, v41

    goto/16 :goto_28f

    .line 3639
    :sswitch_1db
    const/16 v0, 0x4f1a

    const/16 v23, 0x654

    const/16 v24, 0xfa0

    const/16 v25, 0x1fa4

    move/from16 v41, v23

    move/from16 v23, v3

    move/from16 v3, v41

    move/from16 v41, v24

    move/from16 v24, v6

    move/from16 v6, v41

    move/from16 v41, v25

    move/from16 v25, v15

    move/from16 v15, v41

    goto/16 :goto_28f

    .line 3637
    :sswitch_1f7
    const/16 v0, 0x4d58

    const/16 v23, 0x318

    const/16 v24, 0xfa0

    const/16 v25, 0x1290

    move/from16 v41, v23

    move/from16 v23, v3

    move/from16 v3, v41

    move/from16 v41, v24

    move/from16 v24, v6

    move/from16 v6, v41

    move/from16 v41, v25

    move/from16 v25, v15

    move/from16 v15, v41

    goto/16 :goto_28f

    .line 3635
    :sswitch_213
    const/16 v24, 0x7d0

    const/16 v25, 0x948

    move/from16 v0, v24

    move/from16 v24, v6

    move v6, v0

    move/from16 v0, v25

    move/from16 v25, v15

    move v15, v0

    move/from16 v23, v3

    const/16 v0, 0x2e68

    const/16 v3, 0x18c

    goto/16 :goto_28f

    .line 3633
    :sswitch_229
    const/16 v24, 0x300

    const/16 v25, 0x948

    move/from16 v0, v24

    move/from16 v24, v6

    move v6, v0

    move/from16 v0, v25

    move/from16 v25, v15

    move v15, v0

    move/from16 v23, v3

    const/16 v0, 0x2e68

    const/16 v3, 0x18c

    goto :goto_28f

    .line 3631
    :sswitch_23e
    const/16 v0, 0x1770

    const/16 v24, 0x180

    const/16 v25, 0x948

    move/from16 v23, v24

    move/from16 v24, v6

    move/from16 v6, v23

    move/from16 v23, v25

    move/from16 v25, v15

    move/from16 v15, v23

    move/from16 v23, v3

    const/16 v3, 0x18c

    goto :goto_28f

    .line 3629
    :sswitch_255
    const/16 v0, 0xbb8

    const/16 v24, 0xc0

    const/16 v25, 0x384

    move/from16 v23, v24

    move/from16 v24, v6

    move/from16 v6, v23

    move/from16 v23, v25

    move/from16 v25, v15

    move/from16 v15, v23

    move/from16 v23, v3

    const/16 v3, 0x18c

    goto :goto_28f

    .line 3627
    :sswitch_26c
    const/16 v24, 0x80

    move/from16 v0, v24

    move/from16 v24, v6

    move v6, v0

    move/from16 v23, v3

    move/from16 v25, v15

    move/from16 v0, v21

    const/16 v3, 0x63

    const/16 v15, 0x18c

    goto :goto_28f

    .line 3625
    :sswitch_27e
    const/16 v24, 0x40

    move/from16 v0, v24

    move/from16 v24, v6

    move v6, v0

    move/from16 v23, v3

    move/from16 v25, v15

    move/from16 v0, v21

    const/16 v3, 0x63

    const/16 v15, 0x18c

    .line 3669
    :goto_28f
    move-object/from16 v26, v14

    iget v14, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v14, :sswitch_data_13f4

    .line 3688
    move-object/from16 v27, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v13, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    or-int/lit8 v1, v25, 0x1

    .line 3691
    mul-int/lit16 v6, v6, 0x3e8

    const/4 v13, 0x1

    goto :goto_2f9

    .line 3674
    :sswitch_2bc
    mul-int/lit16 v6, v6, 0xbb8

    move-object/from16 v27, v1

    move/from16 v1, v25

    const/4 v13, 0x1

    goto :goto_2f9

    .line 3672
    :sswitch_2c4
    mul-int/lit16 v6, v6, 0x4e2

    move-object/from16 v27, v1

    move/from16 v1, v25

    const/4 v13, 0x1

    goto :goto_2f9

    .line 3678
    :sswitch_2cc
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v1

    const-string v1, "Unsupported profile "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v13, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    or-int/lit8 v1, v25, 0x2

    .line 3681
    const/4 v13, 0x0

    goto :goto_2f7

    .line 3669
    :sswitch_2f2
    move-object/from16 v27, v1

    move/from16 v1, v25

    const/4 v13, 0x1

    .line 3686
    :goto_2f7
    mul-int/lit16 v6, v6, 0x3e8

    .line 3693
    :goto_2f9
    if-eqz v13, :cond_2fd

    .line 3694
    and-int/lit8 v1, v1, -0x5

    .line 3696
    :cond_2fd
    int-to-long v13, v0

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3697
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3698
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 3699
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 3620
    add-int/lit8 v6, v24, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v15, v1

    move/from16 v3, v23

    move-object/from16 v14, v26

    move-object/from16 v1, v27

    goto/16 :goto_42

    .line 3702
    :cond_31c
    move-object/from16 v26, v14

    mul-int/lit8 v0, v8, 0x8

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 3703
    move v3, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x10

    move v2, v1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyMacroBlockLimits(IIIJIIII)V

    .line 3708
    goto/16 :goto_138e

    :cond_335
    move-object/from16 v27, v1

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v26, v14

    const-string v0, "video/mpeg2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0xf

    const/16 v4, 0x16

    const/16 v5, 0x12

    if-eqz v0, :cond_569

    .line 3709
    nop

    .line 3710
    nop

    .line 3711
    nop

    .line 3712
    nop

    .line 3713
    move-object/from16 v0, v27

    array-length v12, v0

    const-wide/16 v13, 0x5cd

    const v20, 0xfa00

    move/from16 v24, v4

    move/from16 v25, v5

    move-wide v4, v13

    move/from16 v14, v20

    const/4 v1, 0x0

    const/16 v6, 0x9

    const/16 v8, 0xb

    move v13, v3

    const/16 v3, 0x63

    :goto_366
    if-ge v1, v12, :cond_547

    aget-object v9, v0, v1

    .line 3714
    nop

    .line 3715
    nop

    .line 3716
    move/from16 v18, v1

    iget v1, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v1, :pswitch_data_141a

    .line 3757
    move/from16 v20, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    or-int/lit8 v15, v15, 0x1

    move-object/from16 v29, v7

    move-object/from16 v30, v11

    move/from16 v21, v15

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v28, 0x1

    goto/16 :goto_514

    .line 3751
    :pswitch_3a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v12

    const-string v12, "Unsupported profile "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    or-int/lit8 v15, v15, 0x2

    .line 3754
    nop

    .line 3755
    move-object/from16 v29, v7

    move-object/from16 v30, v11

    move/from16 v21, v15

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v28, 0x0

    goto/16 :goto_514

    .line 3729
    :pswitch_3da
    move/from16 v20, v12

    iget v1, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v1, :pswitch_data_142a

    .line 3741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unrecognized profile/level "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "/"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    or-int/lit8 v15, v15, 0x1

    .line 3746
    move-object/from16 v29, v7

    move-object/from16 v30, v11

    move/from16 v21, v15

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v28, 0x1

    goto/16 :goto_514

    .line 3739
    :pswitch_41f
    const/16 v1, 0x3c

    const/16 v9, 0x78

    const/16 v12, 0x44

    const v21, 0x77880

    const/16 v28, 0x1fe0

    const v29, 0x13880

    move/from16 v30, v21

    move/from16 v21, v15

    move/from16 v15, v30

    move-object/from16 v30, v11

    move/from16 v11, v29

    move-object/from16 v29, v7

    move/from16 v7, v28

    const/16 v28, 0x1

    goto/16 :goto_514

    .line 3737
    :pswitch_43f
    const/16 v1, 0x3c

    const/16 v9, 0x78

    const/16 v12, 0x44

    const v21, 0x3bc40

    const/16 v28, 0x1fe0

    const v29, 0x13880

    move/from16 v30, v21

    move/from16 v21, v15

    move/from16 v15, v30

    move-object/from16 v30, v11

    move/from16 v11, v29

    move-object/from16 v29, v7

    move/from16 v7, v28

    const/16 v28, 0x1

    goto/16 :goto_514

    .line 3735
    :pswitch_45f
    const/16 v1, 0x3c

    const/16 v9, 0x5a

    const/16 v12, 0x44

    const v21, 0x2cd30

    const/16 v28, 0x17e8

    const v29, 0xea60

    move/from16 v30, v21

    move/from16 v21, v15

    move/from16 v15, v30

    move-object/from16 v30, v11

    move/from16 v11, v29

    move-object/from16 v29, v7

    move/from16 v7, v28

    const/16 v28, 0x1

    goto/16 :goto_514

    .line 3733
    :pswitch_47f
    const/16 v12, 0x24

    const v21, 0x9e34

    const/16 v28, 0x654

    const/16 v29, 0x3a98

    move/from16 v1, v21

    move/from16 v21, v15

    move v15, v1

    move-object/from16 v30, v11

    move/from16 v11, v29

    const/16 v1, 0x1e

    const/16 v9, 0x2d

    move-object/from16 v29, v7

    move/from16 v7, v28

    const/16 v28, 0x1

    goto/16 :goto_514

    .line 3731
    :pswitch_49d
    const/16 v29, 0xfa0

    move-object/from16 v30, v11

    move/from16 v21, v15

    move/from16 v9, v24

    move/from16 v12, v25

    move/from16 v11, v29

    const/16 v1, 0x1e

    const/16 v15, 0x2e68

    const/16 v28, 0x1

    move-object/from16 v29, v7

    const/16 v7, 0x18c

    goto :goto_514

    .line 3718
    :pswitch_4b4
    move/from16 v20, v12

    iget v1, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v1, :pswitch_data_1438

    .line 3722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unrecognized profile/level "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "/"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3725
    or-int/lit8 v15, v15, 0x1

    .line 3727
    move-object/from16 v29, v7

    move-object/from16 v30, v11

    move/from16 v21, v15

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v28, 0x1

    goto :goto_514

    .line 3720
    :pswitch_4f8
    const/16 v12, 0x24

    const v21, 0x9e34

    const/16 v28, 0x654

    const/16 v29, 0x3a98

    move/from16 v1, v21

    move/from16 v21, v15

    move v15, v1

    move-object/from16 v30, v11

    move/from16 v11, v29

    const/16 v1, 0x1e

    const/16 v9, 0x2d

    move-object/from16 v29, v7

    move/from16 v7, v28

    const/16 v28, 0x1

    .line 3761
    :goto_514
    if-eqz v28, :cond_518

    .line 3762
    and-int/lit8 v21, v21, -0x5

    .line 3764
    :cond_518
    move-object/from16 v28, v0

    move/from16 v31, v1

    int-to-long v0, v15

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3765
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3766
    mul-int/lit16 v11, v11, 0x3e8

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 3767
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3768
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3769
    move/from16 v1, v31

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 3713
    add-int/lit8 v1, v18, 0x1

    move/from16 v12, v20

    move/from16 v15, v21

    move-object/from16 v0, v28

    move-object/from16 v7, v29

    move-object/from16 v11, v30

    goto/16 :goto_366

    .line 3771
    :cond_547
    move v1, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    move v2, v6

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyMacroBlockLimits(IIIJIIII)V

    .line 3775
    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    .line 3776
    move v12, v14

    goto/16 :goto_138e

    :cond_569
    move-object/from16 v0, p0

    move/from16 v24, v4

    move/from16 v25, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v11

    move-object/from16 v28, v27

    const-string v1, "video/mp4v-es"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8ce

    .line 3777
    nop

    .line 3778
    nop

    .line 3779
    nop

    .line 3780
    nop

    .line 3781
    move-object/from16 v1, v28

    array-length v4, v1

    const-wide/16 v11, 0x5cd

    const v5, 0xfa00

    move-object v7, v1

    move v14, v3

    move/from16 v28, v14

    move v13, v5

    const/16 v1, 0xb

    const/16 v3, 0x63

    const/4 v5, 0x0

    const/16 v9, 0x9

    :goto_595
    if-ge v5, v4, :cond_8ac

    aget-object v6, v7, v5

    .line 3782
    nop

    .line 3783
    nop

    .line 3784
    nop

    .line 3785
    iget v8, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_143e

    .line 3860
    move/from16 v20, v4

    move-object/from16 v8, v30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    or-int/lit8 v15, v15, 0x1

    move-object/from16 v34, v4

    move/from16 v30, v5

    move-object/from16 v35, v8

    move/from16 v29, v15

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    goto/16 :goto_854

    .line 3814
    :sswitch_5db
    iget v8, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_1480

    .line 3829
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized profile/level "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v30

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    or-int/lit8 v15, v15, 0x1

    .line 3834
    move/from16 v20, v4

    move/from16 v30, v5

    move-object/from16 v35, v8

    move-object/from16 v34, v29

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v29, v15

    const/4 v15, 0x0

    goto/16 :goto_854

    .line 3827
    :sswitch_626
    const/16 v6, 0x24

    const v8, 0xbdd8

    const/16 v20, 0x654

    const/16 v32, 0x1f40

    move v0, v6

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    const/16 v6, 0x2d

    const/16 v33, 0x0

    move/from16 v30, v5

    move/from16 v29, v15

    move/from16 v5, v20

    move/from16 v20, v4

    move v15, v8

    move/from16 v4, v32

    const/16 v8, 0x1e

    const/16 v32, 0x1

    goto/16 :goto_854

    .line 3825
    :sswitch_649
    const/16 v6, 0x2c

    const/16 v8, 0x24

    const/16 v20, 0x5cd0

    const/16 v32, 0x318

    const/16 v33, 0xbb8

    move v0, v8

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    const/16 v8, 0x1e

    move/from16 v30, v5

    move/from16 v29, v15

    move/from16 v15, v20

    move/from16 v5, v32

    const/16 v32, 0x1

    move/from16 v20, v4

    move/from16 v4, v33

    const/16 v33, 0x0

    goto/16 :goto_854

    .line 3823
    :sswitch_66c
    const/16 v32, 0x5dc

    move/from16 v20, v4

    move/from16 v6, v24

    move/from16 v0, v25

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    move/from16 v4, v32

    const/16 v8, 0x1e

    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v30, v5

    move/from16 v29, v15

    const/16 v5, 0x18c

    const/16 v15, 0x2e68

    goto/16 :goto_854

    .line 3821
    :sswitch_68a
    const/16 v32, 0x300

    move/from16 v20, v4

    move/from16 v6, v24

    move/from16 v0, v25

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    move/from16 v4, v32

    const/16 v8, 0x1e

    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v30, v5

    move/from16 v29, v15

    const/16 v5, 0x18c

    const/16 v15, 0x2e68

    goto/16 :goto_854

    .line 3819
    :sswitch_6a8
    const/16 v8, 0x1734

    const/16 v32, 0x180

    move/from16 v20, v4

    move/from16 v6, v24

    move/from16 v0, v25

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    move/from16 v4, v32

    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v30, v5

    move/from16 v29, v15

    const/16 v5, 0x18c

    move v15, v8

    const/16 v8, 0x1e

    goto/16 :goto_854

    .line 3817
    :sswitch_6c7
    const/16 v8, 0xb9a

    const/16 v32, 0x80

    move/from16 v20, v4

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    move/from16 v4, v32

    const/16 v0, 0x9

    const/16 v6, 0xb

    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v30, v5

    move/from16 v29, v15

    const/16 v5, 0x63

    move v15, v8

    const/16 v8, 0x1e

    goto/16 :goto_854

    .line 3854
    :sswitch_6e6
    move-object/from16 v8, v30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    const-string v4, "Unsupported profile "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    or-int/lit8 v15, v15, 0x2

    .line 3857
    nop

    .line 3858
    move/from16 v30, v5

    move-object/from16 v35, v8

    move-object/from16 v34, v29

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v29, v15

    const/4 v15, 0x0

    goto/16 :goto_854

    .line 3787
    :sswitch_721
    move/from16 v20, v4

    move-object/from16 v8, v30

    iget v0, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v0, :sswitch_data_149e

    .line 3807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized profile/level "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    or-int/lit8 v15, v15, 0x1

    .line 3812
    move/from16 v30, v5

    move-object/from16 v35, v8

    move-object/from16 v34, v29

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v29, v15

    const/4 v15, 0x0

    goto/16 :goto_854

    .line 3805
    :sswitch_76c
    const/16 v6, 0x50

    const v0, 0x1a5e0

    const/16 v4, 0xe10

    const/16 v32, 0x2ee0

    move/from16 v30, v5

    move-object/from16 v35, v8

    move-object/from16 v34, v29

    const/16 v8, 0x1e

    const/16 v33, 0x0

    move v5, v4

    move/from16 v29, v15

    move/from16 v4, v32

    const/16 v32, 0x1

    move v15, v0

    const/16 v0, 0x2d

    goto/16 :goto_854

    .line 3803
    :sswitch_78b
    const/16 v6, 0x24

    const v0, 0x9e34

    const/16 v4, 0x654

    const/16 v32, 0x1f40

    move/from16 v30, v5

    move-object/from16 v35, v8

    move-object/from16 v34, v29

    const/16 v8, 0x1e

    const/16 v33, 0x0

    move v5, v4

    move/from16 v29, v15

    move/from16 v4, v32

    const/16 v32, 0x1

    move v15, v0

    move v0, v6

    const/16 v6, 0x2d

    goto/16 :goto_854

    .line 3801
    :sswitch_7ab
    const/16 v6, 0x28

    const v0, 0x8ca0

    const/16 v4, 0x4b0

    const/16 v32, 0xfa0

    move/from16 v30, v5

    move-object/from16 v35, v8

    move-object/from16 v34, v29

    const/16 v8, 0x1e

    const/16 v33, 0x0

    move v5, v4

    move/from16 v29, v15

    move/from16 v4, v32

    const/16 v32, 0x1

    move v15, v0

    const/16 v0, 0x1e

    goto/16 :goto_854

    .line 3799
    :sswitch_7ca
    const/16 v32, 0x180

    move/from16 v30, v5

    move-object/from16 v35, v8

    move/from16 v6, v24

    move/from16 v0, v25

    move-object/from16 v34, v29

    move/from16 v4, v32

    const/16 v5, 0x18c

    const/16 v8, 0x1e

    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v29, v15

    const/16 v15, 0x2e68

    goto/16 :goto_854

    .line 3797
    :sswitch_7e6
    const/16 v0, 0x1734

    const/16 v32, 0x80

    move/from16 v30, v5

    move-object/from16 v35, v8

    move/from16 v6, v24

    move-object/from16 v34, v29

    move/from16 v4, v32

    const/16 v5, 0x18c

    const/16 v8, 0x1e

    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v29, v15

    move v15, v0

    move/from16 v0, v25

    goto :goto_854

    .line 3792
    :sswitch_802
    const/16 v32, 0x40

    move/from16 v30, v5

    move-object/from16 v35, v8

    move-object/from16 v34, v29

    move/from16 v4, v32

    const/16 v0, 0x9

    const/16 v5, 0x63

    const/16 v6, 0xb

    const/16 v8, 0x1e

    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v29, v15

    move/from16 v15, v21

    goto :goto_854

    .line 3794
    :sswitch_81d
    nop

    .line 3795
    const/16 v32, 0x80

    move/from16 v30, v5

    move-object/from16 v35, v8

    move/from16 v8, v28

    move-object/from16 v34, v29

    move/from16 v4, v32

    const/16 v0, 0x9

    const/16 v5, 0x63

    const/16 v6, 0xb

    const/16 v32, 0x1

    const/16 v33, 0x1

    move/from16 v29, v15

    move/from16 v15, v21

    goto :goto_854

    .line 3789
    :sswitch_839
    nop

    .line 3790
    const/16 v32, 0x40

    move/from16 v30, v5

    move-object/from16 v35, v8

    move/from16 v8, v28

    move-object/from16 v34, v29

    move/from16 v4, v32

    const/16 v0, 0x9

    const/16 v5, 0x63

    const/16 v6, 0xb

    const/16 v32, 0x1

    const/16 v33, 0x1

    move/from16 v29, v15

    move/from16 v15, v21

    .line 3864
    :goto_854
    if-eqz v32, :cond_858

    .line 3865
    and-int/lit8 v29, v29, -0x5

    .line 3867
    :cond_858
    move-object/from16 v32, v7

    move/from16 v36, v8

    int-to-long v7, v15

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 3868
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3869
    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 3870
    if-eqz v33, :cond_87e

    .line 3871
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3872
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3873
    move/from16 v4, v36

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v9, v0

    move v14, v4

    goto :goto_89c

    .line 3876
    :cond_87e
    move/from16 v4, v36

    mul-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 3877
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3878
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3879
    const/16 v5, 0x3c

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v9, v0

    move v14, v4

    .line 3781
    :goto_89c
    add-int/lit8 v5, v30, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v20

    move/from16 v15, v29

    move-object/from16 v7, v32

    move-object/from16 v29, v34

    move-object/from16 v30, v35

    goto/16 :goto_595

    .line 3882
    :cond_8ac
    const/4 v8, 0x1

    move v2, v9

    const/4 v9, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object/from16 v0, p0

    move-wide v4, v11

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyMacroBlockLimits(IIIJIIII)V

    .line 3886
    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    .line 3887
    move v12, v13

    goto/16 :goto_138e

    :cond_8ce
    move-object/from16 v32, v28

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    move/from16 v28, v3

    const-string v1, "video/3gpp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b41

    .line 3888
    nop

    .line 3889
    nop

    .line 3890
    nop

    .line 3891
    nop

    .line 3892
    nop

    .line 3893
    nop

    .line 3894
    move-object/from16 v1, v32

    array-length v3, v1

    const/16 v4, 0x10

    const-wide/16 v5, 0x5cd

    const v7, 0xfa00

    move v12, v7

    move/from16 v9, v28

    const/16 v1, 0xb

    const/4 v8, 0x0

    const/16 v11, 0x9

    const/16 v13, 0xb

    const/16 v14, 0x9

    move-wide v6, v5

    const/16 v5, 0x63

    :goto_8fd
    if-ge v8, v3, :cond_b02

    move/from16 v18, v3

    aget-object v3, v32, v8

    .line 3895
    nop

    .line 3896
    nop

    .line 3897
    move/from16 v19, v4

    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v4, :sswitch_data_14c0

    .line 3932
    move/from16 v20, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized profile/level "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v35

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    or-int/lit8 v15, v15, 0x1

    move/from16 v38, v1

    move/from16 v29, v11

    move/from16 v37, v29

    move/from16 v30, v15

    move/from16 v33, v19

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v19, v38

    const/4 v1, 0x0

    goto/16 :goto_a80

    .line 3929
    :sswitch_954
    nop

    .line 3930
    const/4 v4, 0x4

    const/16 v19, 0x3c

    const/16 v20, 0x24

    const/16 v29, 0x100

    const v30, 0x13c68

    move/from16 v38, v1

    move/from16 v33, v4

    move/from16 v37, v11

    move/from16 v4, v19

    move/from16 v36, v29

    move/from16 v11, v30

    const/16 v1, 0x2d

    const/16 v19, 0x1

    const/16 v29, 0x1

    move/from16 v30, v15

    move/from16 v15, v20

    move/from16 v20, v8

    move-object/from16 v8, v35

    const/16 v35, 0x0

    goto/16 :goto_a80

    .line 3925
    :sswitch_97d
    nop

    .line 3926
    const/4 v4, 0x4

    const/16 v19, 0x3c

    const/16 v20, 0x80

    const v30, 0x9e34

    move/from16 v38, v1

    move/from16 v33, v4

    move/from16 v37, v11

    move/from16 v4, v19

    move/from16 v36, v20

    move/from16 v11, v30

    const/16 v1, 0x2d

    const/16 v19, 0x1

    const/16 v29, 0x1

    move/from16 v20, v8

    move/from16 v30, v15

    move/from16 v15, v25

    move-object/from16 v8, v35

    const/16 v35, 0x0

    goto/16 :goto_a80

    .line 3921
    :sswitch_9a4
    nop

    .line 3922
    const/4 v4, 0x4

    const/16 v19, 0x3c

    const/16 v20, 0x40

    const/16 v30, 0x4d58

    move/from16 v38, v1

    move/from16 v33, v4

    move/from16 v37, v11

    move/from16 v4, v19

    move/from16 v36, v20

    move/from16 v1, v24

    move/from16 v11, v30

    const/16 v19, 0x1

    const/16 v29, 0x1

    move/from16 v20, v8

    move/from16 v30, v15

    move/from16 v15, v25

    move-object/from16 v8, v35

    const/16 v35, 0x0

    goto/16 :goto_a80

    .line 3912
    :sswitch_9ca
    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v20, v8

    const/4 v8, 0x1

    if-eq v4, v8, :cond_9d9

    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v8, 0x4

    if-ne v4, v8, :cond_9d7

    goto :goto_9d9

    :cond_9d7
    const/4 v8, 0x0

    goto :goto_9da

    :cond_9d9
    :goto_9d9
    const/4 v8, 0x1

    .line 3915
    :goto_9da
    if-nez v8, :cond_9e2

    .line 3916
    const/4 v4, 0x4

    const/16 v19, 0x1

    const/16 v29, 0x1

    goto :goto_9e8

    .line 3915
    :cond_9e2
    move/from16 v29, v11

    move/from16 v4, v19

    move/from16 v19, v1

    .line 3918
    :goto_9e8
    const/16 v30, 0x2

    move-object/from16 v33, v35

    move/from16 v35, v8

    move-object/from16 v8, v33

    move/from16 v38, v1

    move/from16 v33, v4

    move/from16 v37, v11

    move/from16 v11, v21

    move/from16 v4, v28

    move/from16 v36, v30

    const/16 v1, 0xb

    move/from16 v30, v15

    const/16 v15, 0x9

    goto/16 :goto_a80

    .line 3908
    :sswitch_a04
    move/from16 v20, v8

    .line 3909
    const/16 v29, 0x20

    move/from16 v38, v1

    move/from16 v37, v11

    move/from16 v30, v15

    move/from16 v33, v19

    move/from16 v15, v25

    move/from16 v36, v29

    move-object/from16 v8, v35

    const/16 v4, 0x1e

    const/16 v35, 0x1

    move/from16 v19, v38

    move/from16 v29, v37

    move/from16 v1, v24

    const/16 v11, 0x2e68

    goto/16 :goto_a80

    .line 3905
    :sswitch_a24
    move/from16 v20, v8

    .line 3906
    const/16 v29, 0x6

    move/from16 v38, v1

    move/from16 v37, v11

    move/from16 v30, v15

    move/from16 v33, v19

    move/from16 v15, v25

    move/from16 v36, v29

    move-object/from16 v8, v35

    const/16 v4, 0x1e

    const/16 v35, 0x1

    move/from16 v19, v38

    move/from16 v29, v37

    move/from16 v1, v24

    const/16 v11, 0x2e68

    goto :goto_a80

    .line 3902
    :sswitch_a43
    move/from16 v20, v8

    .line 3903
    const/16 v29, 0x2

    const/16 v30, 0x1734

    move/from16 v38, v1

    move/from16 v37, v11

    move/from16 v33, v19

    move/from16 v36, v29

    move-object/from16 v8, v35

    const/16 v4, 0x1e

    const/16 v35, 0x1

    move/from16 v19, v38

    move/from16 v29, v37

    move/from16 v1, v24

    move/from16 v11, v30

    move/from16 v30, v15

    move/from16 v15, v25

    goto :goto_a80

    .line 3899
    :sswitch_a64
    move/from16 v20, v8

    .line 3900
    move/from16 v38, v1

    move/from16 v29, v11

    move/from16 v37, v29

    move/from16 v30, v15

    move/from16 v33, v19

    move/from16 v11, v21

    move/from16 v4, v28

    move-object/from16 v8, v35

    const/16 v15, 0x9

    const/16 v35, 0x1

    const/16 v36, 0x1

    move/from16 v19, v38

    const/16 v1, 0xb

    .line 3936
    :goto_a80
    move/from16 v39, v4

    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v4, :sswitch_data_14e2

    .line 3948
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v40, v9

    move-object/from16 v9, v34

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    or-int/lit8 v30, v30, 0x1

    goto :goto_ab0

    .line 3946
    :sswitch_aac
    move/from16 v40, v9

    move-object/from16 v9, v34

    .line 3952
    :goto_ab0
    if-eqz v35, :cond_ab7

    .line 3957
    const/16 v3, 0x9

    const/16 v4, 0xb

    goto :goto_abe

    .line 3962
    :cond_ab7
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAllowMbOverride:Z

    move/from16 v4, v19

    move/from16 v3, v29

    .line 3964
    :goto_abe
    and-int/lit8 v19, v30, -0x5

    .line 3965
    move-object/from16 v30, v8

    move-object/from16 v29, v9

    int-to-long v8, v11

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 3966
    mul-int v8, v1, v15

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3967
    const v8, 0xfa00

    mul-int v8, v8, v36

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 3968
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 3969
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 3970
    move/from16 v8, v39

    move/from16 v1, v40

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 3971
    move/from16 v8, v38

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3972
    move/from16 v4, v37

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 3894
    add-int/lit8 v8, v20, 0x1

    move/from16 v3, v18

    move/from16 v15, v19

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    move/from16 v4, v33

    goto/16 :goto_8fd

    .line 3976
    :cond_b02
    move v8, v1

    move/from16 v19, v4

    move v1, v9

    move v4, v11

    iget-boolean v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAllowMbOverride:Z

    if-nez v2, :cond_b1f

    .line 3977
    new-instance v2, Landroid/util/Rational;

    const/16 v3, 0x9

    const/16 v9, 0xb

    invoke-direct {v2, v9, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v10, Landroid/util/Rational;

    invoke-direct {v10, v9, v3}, Landroid/util/Rational;-><init>(II)V

    .line 3978
    invoke-static {v2, v10}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3980
    :cond_b1f
    move/from16 v38, v8

    const/16 v8, 0x10

    const/16 v9, 0x10

    move/from16 v11, v19

    move/from16 v40, v1

    move v2, v4

    move v3, v13

    move v4, v14

    move/from16 v10, v19

    move/from16 v1, v38

    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyMacroBlockLimits(IIIIIJIIII)V

    .line 3986
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v11, v26

    invoke-static {v11, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    .line 3987
    goto/16 :goto_138e

    :cond_b41
    move-object/from16 v11, v26

    move-object/from16 v29, v34

    move-object/from16 v30, v35

    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd5

    .line 3988
    nop

    .line 3989
    nop

    .line 3992
    nop

    .line 3996
    move-object/from16 v1, v32

    array-length v3, v1

    const/4 v12, 0x0

    :goto_b56
    if-ge v12, v3, :cond_bb9

    aget-object v4, v1, v12

    .line 3997
    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v5, :sswitch_data_1508

    .line 4004
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, v30

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    or-int/lit8 v15, v15, 0x1

    goto :goto_b86

    .line 4002
    :sswitch_b84
    move-object/from16 v8, v30

    .line 4008
    :goto_b86
    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v5, :pswitch_data_151a

    .line 4012
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v29

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    or-int/lit8 v15, v15, 0x1

    goto :goto_bb0

    .line 4010
    :pswitch_bae
    move-object/from16 v9, v29

    .line 4016
    :goto_bb0
    and-int/lit8 v15, v15, -0x5

    .line 3996
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v30, v8

    move-object/from16 v29, v9

    goto :goto_b56

    .line 4020
    :cond_bb9
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v1, 0x7fff

    const/16 v2, 0x7fff

    const v3, 0x7fffffff

    const-wide/32 v4, 0x7fffffff

    const/16 v6, 0x10

    const/16 v7, 0x10

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyMacroBlockLimits(IIIJIIII)V

    const v12, 0x5f5e100

    move-object/from16 v0, p0

    move-object/from16 v26, v11

    goto/16 :goto_138e

    .line 4023
    :cond_bd5
    move-object/from16 v9, v29

    move-object/from16 v8, v30

    move-object/from16 v1, v32

    const-string v0, "video/x-vnd.on2.vp9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dff

    .line 4024
    nop

    .line 4025
    nop

    .line 4026
    nop

    .line 4027
    nop

    .line 4029
    array-length v0, v1

    const-wide/32 v5, 0xca800

    const v7, 0x9000

    const v12, 0x30d40

    const/16 v13, 0x200

    const/4 v14, 0x0

    :goto_bf4
    if-ge v14, v0, :cond_ddd

    aget-object v3, v1, v14

    .line 4030
    nop

    .line 4031
    nop

    .line 4032
    nop

    .line 4033
    nop

    .line 4034
    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v4, :sswitch_data_1520

    .line 4064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    const-string v0, "Unrecognized level "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    or-int/lit8 v15, v15, 0x1

    const-wide/16 v21, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v23, 0x0

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto/16 :goto_d95

    .line 4062
    :sswitch_c35
    const-wide v21, 0x118800000L

    const v4, 0x75300

    const/16 v19, 0x41c0

    move/from16 v23, v19

    move/from16 v19, v0

    move v0, v4

    const/high16 v4, 0x2200000

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto/16 :goto_d95

    .line 4060
    :sswitch_c50
    const-wide v21, 0x8c400000L

    const/16 v19, 0x41c0

    move/from16 v23, v19

    const/high16 v4, 0x2200000

    move/from16 v19, v0

    move/from16 v0, v20

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto/16 :goto_d95

    .line 4058
    :sswitch_c69
    const-wide/32 v21, 0x46200000

    const v4, 0x2bf20

    const/16 v19, 0x41c0

    move/from16 v23, v19

    move/from16 v19, v0

    move v0, v4

    const/high16 v4, 0x2200000

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto/16 :goto_d95

    .line 4056
    :sswitch_c82
    const-wide/32 v21, 0x46200000

    const v4, 0x2bf20

    const/16 v19, 0x20c0

    move/from16 v23, v19

    move/from16 v19, v0

    move v0, v4

    const/high16 v4, 0x880000

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto/16 :goto_d95

    .line 4054
    :sswitch_c9b
    const-wide/32 v21, 0x23100000

    const v4, 0x1d4c0

    const/16 v19, 0x20c0

    move/from16 v23, v19

    move/from16 v19, v0

    move v0, v4

    const/high16 v4, 0x880000

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto/16 :goto_d95

    .line 4052
    :sswitch_cb4
    const-wide/32 v21, 0x12980000

    const v4, 0xea60

    const/16 v19, 0x20c0

    move/from16 v23, v19

    move/from16 v19, v0

    move v0, v4

    const/high16 v4, 0x880000

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto/16 :goto_d95

    .line 4050
    :sswitch_ccd
    const-wide/32 v21, 0x9900000

    const/high16 v4, 0x220000

    const/16 v19, 0x7530

    const/16 v23, 0x1040

    move/from16 v41, v19

    move/from16 v19, v0

    move/from16 v0, v41

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto/16 :goto_d95

    .line 4048
    :sswitch_ce6
    const-wide/32 v21, 0x4fb0000

    const/high16 v4, 0x220000

    const/16 v19, 0x4650

    const/16 v23, 0x1040

    move/from16 v41, v19

    move/from16 v19, v0

    move/from16 v0, v41

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto/16 :goto_d95

    .line 4046
    :sswitch_cff
    const-wide/32 v21, 0x2328000

    const/high16 v4, 0xf0000

    const/16 v19, 0x2ee0

    const/16 v23, 0xac0

    move/from16 v41, v19

    move/from16 v19, v0

    move/from16 v0, v41

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto/16 :goto_d95

    .line 4044
    :sswitch_d18
    const-wide/32 v21, 0x13c6800

    const v4, 0x87000

    const/16 v19, 0x1c20

    const/16 v23, 0x800

    move/from16 v41, v19

    move/from16 v19, v0

    move/from16 v0, v41

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto/16 :goto_d95

    .line 4042
    :sswitch_d32
    const-wide/32 v21, 0x8ca000

    const v4, 0x3c000

    const/16 v19, 0xe10

    const/16 v23, 0x540

    move/from16 v41, v19

    move/from16 v19, v0

    move/from16 v0, v41

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto :goto_d95

    .line 4040
    :sswitch_d4b
    const-wide/32 v21, 0x465000

    const v4, 0x1e000

    const/16 v19, 0x708

    const/16 v23, 0x3c0

    move/from16 v41, v19

    move/from16 v19, v0

    move/from16 v0, v41

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto :goto_d95

    .line 4038
    :sswitch_d64
    const-wide/32 v21, 0x2a3000

    const v4, 0x12000

    const/16 v19, 0x320

    const/16 v23, 0x300

    move/from16 v41, v19

    move/from16 v19, v0

    move/from16 v0, v41

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    goto :goto_d95

    .line 4036
    :sswitch_d7d
    const-wide/32 v21, 0xca800

    const v4, 0x9000

    const/16 v19, 0xc8

    const/16 v23, 0x200

    move/from16 v41, v19

    move/from16 v19, v0

    move/from16 v0, v41

    move-wide/from16 v41, v21

    move/from16 v22, v13

    move/from16 v21, v14

    move-wide/from16 v13, v41

    .line 4068
    :goto_d95
    move/from16 v24, v15

    iget v15, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v15, :sswitch_data_155a

    .line 4079
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    or-int/lit8 v15, v24, 0x1

    goto :goto_dbf

    .line 4077
    :sswitch_dbd
    move/from16 v15, v24

    .line 4083
    :goto_dbf
    and-int/lit8 v15, v15, -0x5

    .line 4084
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 4085
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 4086
    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 4087
    move/from16 v13, v22

    move/from16 v0, v23

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 4029
    add-int/lit8 v14, v21, 0x1

    move/from16 v0, v19

    goto/16 :goto_bf4

    .line 4091
    :cond_ddd
    const/16 v0, 0x8

    invoke-static {v13, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    .line 4092
    const/16 v0, 0x40

    invoke-static {v7, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    .line 4093
    const-wide/16 v7, 0x40

    invoke-static {v5, v6, v7, v8}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v4

    .line 4095
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x8

    const/16 v7, 0x8

    move v2, v1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyMacroBlockLimits(IIIJIIII)V

    .line 4100
    move-object/from16 v26, v11

    goto/16 :goto_138e

    :cond_dff
    const-string v0, "video/hevc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f4e

    .line 4102
    nop

    .line 4103
    const/16 v0, 0x21c0

    int-to-long v3, v0

    .line 4104
    nop

    .line 4105
    array-length v0, v1

    const/16 v5, 0x240

    const v6, 0x1f400

    move-wide/from16 v41, v3

    move v3, v5

    move-wide/from16 v4, v41

    move v12, v6

    const/4 v6, 0x0

    :goto_e19
    if-ge v6, v0, :cond_f36

    aget-object v7, v1, v6

    .line 4106
    nop

    .line 4107
    nop

    .line 4108
    nop

    .line 4109
    iget v13, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const-wide/high16 v21, 0x403e000000000000L    # 30.0

    sparse-switch v13, :sswitch_data_157c

    .line 4162
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unrecognized level "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    or-int/lit8 v15, v15, 0x1

    const-wide/16 v21, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_eef

    .line 4160
    :sswitch_e4f
    const-wide/high16 v21, 0x405e000000000000L    # 120.0

    const v13, 0xc3500

    move v14, v13

    const/high16 v13, 0x2200000

    goto/16 :goto_eef

    .line 4158
    :sswitch_e59
    const-wide/high16 v21, 0x405e000000000000L    # 120.0

    move/from16 v14, v20

    const/high16 v13, 0x2200000

    goto/16 :goto_eef

    .line 4156
    :sswitch_e61
    const-wide/high16 v21, 0x404e000000000000L    # 60.0

    const v13, 0x75300

    move v14, v13

    const/high16 v13, 0x2200000

    goto/16 :goto_eef

    .line 4154
    :sswitch_e6b
    const-wide/high16 v21, 0x404e000000000000L    # 60.0

    const v13, 0x1d4c0

    move v14, v13

    const/high16 v13, 0x2200000

    goto/16 :goto_eef

    .line 4152
    :sswitch_e75
    move/from16 v14, v20

    const/high16 v13, 0x2200000

    goto/16 :goto_eef

    .line 4150
    :sswitch_e7b
    const v13, 0xea60

    move v14, v13

    const/high16 v13, 0x2200000

    goto/16 :goto_eef

    .line 4148
    :sswitch_e83
    const-wide/high16 v21, 0x405e000000000000L    # 120.0

    move/from16 v14, v20

    const/high16 v13, 0x880000

    goto/16 :goto_eef

    .line 4146
    :sswitch_e8b
    const-wide/high16 v21, 0x405e000000000000L    # 120.0

    const v13, 0xea60

    move v14, v13

    const/high16 v13, 0x880000

    goto :goto_eef

    .line 4144
    :sswitch_e94
    const-wide/high16 v21, 0x404e000000000000L    # 60.0

    const v13, 0x27100

    move v14, v13

    const/high16 v13, 0x880000

    goto :goto_eef

    .line 4142
    :sswitch_e9d
    const-wide/high16 v21, 0x404e000000000000L    # 60.0

    const v13, 0x9c40

    move v14, v13

    const/high16 v13, 0x880000

    goto :goto_eef

    .line 4140
    :sswitch_ea6
    const v13, 0x186a0

    move v14, v13

    const/high16 v13, 0x880000

    goto :goto_eef

    .line 4138
    :sswitch_ead
    const/16 v13, 0x61a8

    move v14, v13

    const/high16 v13, 0x880000

    goto :goto_eef

    .line 4136
    :sswitch_eb3
    const-wide/high16 v21, 0x404e000000000000L    # 60.0

    const/high16 v13, 0x220000

    const v14, 0xc350

    goto :goto_eef

    .line 4134
    :sswitch_ebb
    const-wide/high16 v21, 0x404e000000000000L    # 60.0

    const/high16 v13, 0x220000

    const/16 v14, 0x4e20

    goto :goto_eef

    .line 4132
    :sswitch_ec2
    const/high16 v13, 0x220000

    const/16 v14, 0x7530

    goto :goto_eef

    .line 4130
    :sswitch_ec7
    const/high16 v13, 0x220000

    const/16 v14, 0x2ee0

    goto :goto_eef

    .line 4128
    :sswitch_ecc
    const-wide v21, 0x4040e00000000000L    # 33.75

    const/high16 v13, 0xf0000

    const/16 v14, 0x2710

    goto :goto_eef

    .line 4125
    :sswitch_ed6
    const v13, 0x87000

    const/16 v14, 0x1770

    goto :goto_eef

    .line 4122
    :sswitch_edc
    const v13, 0x3c000

    const/16 v14, 0xbb8

    goto :goto_eef

    .line 4119
    :sswitch_ee2
    const v13, 0x1e000

    const/16 v14, 0x5dc

    goto :goto_eef

    .line 4116
    :sswitch_ee8
    const-wide/high16 v21, 0x402e000000000000L    # 15.0

    const v13, 0x9000

    const/16 v14, 0x80

    .line 4166
    :goto_eef
    move/from16 v19, v0

    iget v0, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v0, :sswitch_data_15e6

    .line 4174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    or-int/lit8 v15, v15, 0x1

    goto :goto_f18

    .line 4172
    :sswitch_f17
    nop

    .line 4186
    :goto_f18
    shr-int/lit8 v0, v13, 0x6

    .line 4187
    and-int/lit8 v15, v15, -0x5

    .line 4188
    move v13, v6

    int-to-double v6, v0

    mul-double v6, v6, v21

    double-to-int v6, v6

    int-to-long v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 4189
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4190
    mul-int/lit16 v14, v14, 0x3e8

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 4105
    add-int/lit8 v6, v13, 0x1

    move/from16 v0, v19

    goto/16 :goto_e19

    .line 4193
    :cond_f36
    mul-int/lit8 v0, v3, 0x8

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 4194
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x8

    const/16 v7, 0x8

    move v2, v1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyMacroBlockLimits(IIIJIIII)V

    .line 4199
    move-object/from16 v26, v11

    goto/16 :goto_138e

    :cond_f4e
    const-string v0, "video/av01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11a1

    .line 4200
    nop

    .line 4201
    nop

    .line 4202
    nop

    .line 4203
    nop

    .line 4209
    array-length v0, v1

    const-wide/32 v3, 0xca800

    const v5, 0x9000

    const v6, 0x30d40

    const/16 v7, 0x200

    move v12, v6

    const/4 v6, 0x0

    :goto_f68
    if-ge v6, v0, :cond_117e

    aget-object v13, v1, v6

    .line 4210
    nop

    .line 4211
    nop

    .line 4212
    nop

    .line 4213
    nop

    .line 4214
    iget v14, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v14, :sswitch_data_15fc

    .line 4255
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    const-string v0, "Unrecognized level "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    or-int/lit8 v15, v15, 0x1

    const-wide/16 v20, 0x0

    move/from16 v22, v15

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v41, v20

    move/from16 v21, v6

    move/from16 v20, v7

    move-wide/from16 v6, v41

    goto/16 :goto_1134

    .line 4252
    :sswitch_faa
    const-wide v19, 0x118800000L

    const v14, 0x27100

    const/16 v21, 0x4000

    move/from16 v22, v15

    move/from16 v15, v21

    move/from16 v21, v6

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move v0, v14

    move-wide/from16 v6, v41

    const/high16 v14, 0x2200000

    goto/16 :goto_1134

    .line 4250
    :sswitch_fc7
    const-wide v19, 0x105090000L

    const v14, 0x27100

    const/16 v21, 0x4000

    move/from16 v22, v15

    move/from16 v15, v21

    move/from16 v21, v6

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move v0, v14

    move-wide/from16 v6, v41

    const/high16 v14, 0x2200000

    goto/16 :goto_1134

    .line 4248
    :sswitch_fe4
    const-wide v19, 0x82848000L

    const v14, 0x186a0

    const/16 v21, 0x4000

    move/from16 v22, v15

    move/from16 v15, v21

    move/from16 v21, v6

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move v0, v14

    move-wide/from16 v6, v41

    const/high16 v14, 0x2200000

    goto/16 :goto_1134

    .line 4246
    :sswitch_1001
    const-wide/32 v19, 0x46200000

    const v14, 0xea60

    const/16 v21, 0x4000

    move/from16 v22, v15

    move/from16 v15, v21

    move/from16 v21, v6

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move v0, v14

    move-wide/from16 v6, v41

    const/high16 v14, 0x2200000

    goto/16 :goto_1134

    .line 4243
    :sswitch_101c
    const-wide/32 v19, 0x46200000

    const v14, 0xea60

    const/16 v21, 0x2000

    move/from16 v22, v15

    move/from16 v15, v21

    move/from16 v21, v6

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move v0, v14

    move-wide/from16 v6, v41

    const/high16 v14, 0x880000

    goto/16 :goto_1134

    .line 4241
    :sswitch_1037
    const-wide/32 v19, 0x41424000

    const v14, 0xea60

    const/16 v21, 0x2000

    move/from16 v22, v15

    move/from16 v15, v21

    move/from16 v21, v6

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move v0, v14

    move-wide/from16 v6, v41

    const/high16 v14, 0x880000

    goto/16 :goto_1134

    .line 4239
    :sswitch_1052
    const-wide/32 v19, 0x20a12000

    const v14, 0x9c40

    const/16 v21, 0x2000

    move/from16 v22, v15

    move/from16 v15, v21

    move/from16 v21, v6

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move v0, v14

    move-wide/from16 v6, v41

    const/high16 v14, 0x880000

    goto/16 :goto_1134

    .line 4237
    :sswitch_106d
    const-wide/32 v19, 0x10509000

    const/16 v14, 0x7530

    const/16 v21, 0x2000

    move/from16 v22, v15

    move/from16 v15, v21

    move/from16 v21, v6

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move v0, v14

    move-wide/from16 v6, v41

    const/high16 v14, 0x880000

    goto/16 :goto_1134

    .line 4234
    :sswitch_1087
    const-wide/32 v19, 0x9480000

    const/high16 v14, 0x240000

    const/16 v21, 0x4e20

    const/16 v22, 0x1800

    move/from16 v41, v22

    move/from16 v22, v15

    move/from16 v15, v41

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move/from16 v0, v21

    move/from16 v21, v6

    move-wide/from16 v6, v41

    goto/16 :goto_1134

    .line 4230
    :sswitch_10a4
    const-wide/32 v19, 0x4a40000

    const/high16 v14, 0x240000

    const/16 v21, 0x2ee0

    const/16 v22, 0x1800

    move/from16 v41, v22

    move/from16 v22, v15

    move/from16 v15, v41

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move/from16 v0, v21

    move/from16 v21, v6

    move-wide/from16 v6, v41

    goto/16 :goto_1134

    .line 4227
    :sswitch_10c1
    const-wide/32 v19, 0x2616960

    const v14, 0x104040

    const/16 v21, 0x2710

    const/16 v22, 0x1580

    move/from16 v41, v22

    move/from16 v22, v15

    move/from16 v15, v41

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move/from16 v0, v21

    move/from16 v21, v6

    move-wide/from16 v6, v41

    goto :goto_1134

    .line 4223
    :sswitch_10de
    const-wide/32 v19, 0x17d0180

    const v14, 0xa2900

    const/16 v21, 0x1770

    const/16 v22, 0x1100

    move/from16 v41, v22

    move/from16 v22, v15

    move/from16 v15, v41

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move/from16 v0, v21

    move/from16 v21, v6

    move-wide/from16 v6, v41

    goto :goto_1134

    .line 4220
    :sswitch_10fb
    const-wide/32 v19, 0x9f8580

    const v14, 0x44100

    const/16 v21, 0xbb8

    const/16 v22, 0xb00

    move/from16 v41, v22

    move/from16 v22, v15

    move/from16 v15, v41

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move/from16 v0, v21

    move/from16 v21, v6

    move-wide/from16 v6, v41

    goto :goto_1134

    .line 4216
    :sswitch_1118
    const-wide/32 v19, 0x546000

    const v14, 0x24000

    const/16 v21, 0x5dc

    const/16 v22, 0x800

    move/from16 v41, v22

    move/from16 v22, v15

    move/from16 v15, v41

    move-wide/from16 v41, v19

    move/from16 v19, v0

    move/from16 v20, v7

    move/from16 v0, v21

    move/from16 v21, v6

    move-wide/from16 v6, v41

    .line 4259
    :goto_1134
    move-object/from16 v26, v11

    iget v11, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v11, :sswitch_data_164e

    .line 4266
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    or-int/lit8 v11, v22, 0x1

    move/from16 v22, v11

    goto :goto_115f

    .line 4264
    :sswitch_115e
    nop

    .line 4270
    :goto_115f
    and-int/lit8 v11, v22, -0x5

    .line 4271
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 4272
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 4273
    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 4274
    move/from16 v7, v20

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 4209
    add-int/lit8 v6, v21, 0x1

    move v15, v11

    move/from16 v0, v19

    move-object/from16 v11, v26

    goto/16 :goto_f68

    .line 4278
    :cond_117e
    move-object/from16 v26, v11

    const/16 v0, 0x8

    invoke-static {v7, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    .line 4279
    const/16 v0, 0x40

    invoke-static {v5, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    .line 4280
    const-wide/16 v5, 0x40

    invoke-static {v3, v4, v5, v6}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v4

    .line 4281
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x8

    const/16 v7, 0x8

    move v2, v1

    move v3, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyMacroBlockLimits(IIIJIIII)V

    .line 4286
    goto/16 :goto_138e

    :cond_11a1
    move-object/from16 v26, v11

    const-string v0, "video/apv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1371

    .line 4287
    nop

    .line 4288
    nop

    .line 4294
    array-length v0, v1

    const-wide/16 v3, 0x2e68

    const v5, 0x6acfc0

    move v12, v5

    const/4 v5, 0x0

    :goto_11b5
    const v6, 0x7fffffff

    if-ge v5, v0, :cond_1344

    aget-object v7, v1, v5

    .line 4295
    nop

    .line 4296
    nop

    .line 4297
    iget v11, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v11, :sswitch_data_1660

    .line 4399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrecognized level "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v11, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    or-int/lit8 v15, v15, 0x1

    const-wide/16 v13, 0x0

    const/4 v6, 0x0

    goto/16 :goto_130f

    .line 4397
    :sswitch_11ea
    const-wide v13, 0x7e9000000L

    goto/16 :goto_130f

    .line 4392
    :sswitch_11f1
    const-wide v13, 0x3f4800000L

    goto/16 :goto_130f

    .line 4387
    :sswitch_11f8
    const-wide v13, 0x1fa400000L

    goto/16 :goto_130f

    .line 4382
    :sswitch_11ff
    const-wide v13, 0x11cc40000L

    goto/16 :goto_130f

    .line 4377
    :sswitch_1206
    const-wide/32 v13, 0x7e900000

    goto/16 :goto_130f

    .line 4372
    :sswitch_120b
    const-wide/32 v13, 0x3f480000

    goto/16 :goto_130f

    .line 4370
    :sswitch_1210
    const-wide/32 v13, 0x3f480000

    goto/16 :goto_130f

    .line 4368
    :sswitch_1215
    const-wide/32 v13, 0x3f480000

    goto/16 :goto_130f

    .line 4366
    :sswitch_121a
    const-wide/32 v13, 0x3f480000

    const v6, 0x5cfbb600

    goto/16 :goto_130f

    .line 4364
    :sswitch_1222
    const-wide/32 v13, 0x1fa40000

    goto/16 :goto_130f

    .line 4359
    :sswitch_1227
    const-wide/32 v13, 0x1fa40000

    const v6, 0x5cfbb600

    goto/16 :goto_130f

    .line 4357
    :sswitch_122f
    const-wide/32 v13, 0x1fa40000

    const v6, 0x45bcc880

    goto/16 :goto_130f

    .line 4355
    :sswitch_1237
    const-wide/32 v13, 0x1fa40000

    const v6, 0x2e7ddb00

    goto/16 :goto_130f

    .line 4353
    :sswitch_123f
    const-wide/32 v13, 0xfd20000

    const v6, 0x45bcc880

    goto/16 :goto_130f

    .line 4351
    :sswitch_1247
    const-wide/32 v13, 0xfd20000

    const v6, 0x2e7ddb00

    goto/16 :goto_130f

    .line 4349
    :sswitch_124f
    const-wide/32 v13, 0xfd20000

    const v6, 0x23e1ca80

    goto/16 :goto_130f

    .line 4347
    :sswitch_1257
    const-wide/32 v13, 0xfd20000

    const v6, 0x17e6c640

    goto/16 :goto_130f

    .line 4345
    :sswitch_125f
    const-wide/32 v13, 0x7f80000

    const v6, 0x23e1ca80

    goto/16 :goto_130f

    .line 4343
    :sswitch_1267
    const-wide/32 v13, 0x7f80000

    const v6, 0x17e6c640

    goto/16 :goto_130f

    .line 4341
    :sswitch_126f
    const-wide/32 v13, 0x7f80000

    const v6, 0x11f0e540

    goto/16 :goto_130f

    .line 4339
    :sswitch_1277
    const-wide/32 v13, 0x7f80000

    const v6, 0xbfb0440

    goto/16 :goto_130f

    .line 4337
    :sswitch_127f
    const-wide/32 v13, 0x3fc0000

    const v6, 0x11f0e540

    goto/16 :goto_130f

    .line 4335
    :sswitch_1287
    const-wide/32 v13, 0x3fc0000

    const v6, 0xbfb0440

    goto/16 :goto_130f

    .line 4333
    :sswitch_128f
    const-wide/32 v13, 0x3fc0000

    const v6, 0x90013c0

    goto/16 :goto_130f

    .line 4331
    :sswitch_1297
    const-wide/32 v13, 0x3fc0000

    const v6, 0x6052340

    goto/16 :goto_130f

    .line 4329
    :sswitch_129f
    const-wide/32 v13, 0x1de2000

    const v6, 0xca2dd00

    goto/16 :goto_130f

    .line 4327
    :sswitch_12a7
    const-wide/32 v13, 0x1de2000

    const v6, 0x8677d40

    goto :goto_130f

    .line 4325
    :sswitch_12ae
    const-wide/32 v13, 0x1de2000

    const v6, 0x6516e80

    goto :goto_130f

    .line 4323
    :sswitch_12b5
    const-wide/32 v13, 0x1de2000

    const v6, 0x43b5fc0

    goto :goto_130f

    .line 4321
    :sswitch_12bc
    const-wide/32 v13, 0xef1000

    const v6, 0x6516e80

    goto :goto_130f

    .line 4319
    :sswitch_12c3
    const-wide/32 v13, 0xef1000

    const v6, 0x43b5fc0

    goto :goto_130f

    .line 4317
    :sswitch_12ca
    const-wide/32 v13, 0xef1000

    const v6, 0x328b740

    goto :goto_130f

    .line 4315
    :sswitch_12d1
    const-wide/32 v13, 0xef1000

    const v6, 0x2255100

    goto :goto_130f

    .line 4313
    :sswitch_12d8
    const-wide/32 v13, 0x5cd000

    const v6, 0x280de80

    goto :goto_130f

    .line 4311
    :sswitch_12df
    const-wide/32 v13, 0x5cd000

    const v6, 0x1ab3f00

    goto :goto_130f

    .line 4309
    :sswitch_12e6
    const-wide/32 v13, 0x5cd000

    const v6, 0x1406f40

    goto :goto_130f

    .line 4307
    :sswitch_12ed
    const-wide/32 v13, 0x5cd000

    const v6, 0xd59f80

    goto :goto_130f

    .line 4305
    :sswitch_12f4
    const-wide/32 v13, 0x2e6800

    const v6, 0x1406f40

    goto :goto_130f

    .line 4303
    :sswitch_12fb
    const-wide/32 v13, 0x2e6800

    const v6, 0xd59f80

    goto :goto_130f

    .line 4301
    :sswitch_1302
    const-wide/32 v13, 0x2e6800

    const v6, 0xa7d8c0

    goto :goto_130f

    .line 4299
    :sswitch_1309
    const-wide/32 v13, 0x2e6800

    const v6, 0x6acfc0

    .line 4403
    :goto_130f
    iget v11, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v11, :sswitch_data_1742

    .line 4409
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v7, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    or-int/lit8 v15, v15, 0x1

    goto :goto_1336

    .line 4407
    :sswitch_1335
    nop

    .line 4413
    :goto_1336
    and-int/lit8 v15, v15, -0x5

    .line 4414
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 4415
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 4294
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11b5

    .line 4419
    :cond_1344
    nop

    .line 4420
    const-wide/16 v0, 0x100

    invoke-static {v3, v4, v0, v1}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v4

    .line 4421
    int-to-long v0, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v3, v0

    .line 4423
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    .line 4424
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4425
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x10

    move v2, v1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyMacroBlockLimits(IIIJIIII)V

    .line 4430
    goto :goto_138e

    .line 4431
    :cond_1371
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported mime "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    nop

    .line 4435
    const v12, 0xfa00

    const/4 v15, 0x6

    .line 4437
    :goto_138e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v11, v26

    invoke-static {v11, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    .line 4438
    iget-object v0, v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    iget v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    or-int/2addr v1, v15

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    .line 4439
    return-void

    :sswitch_data_13a2
    .sparse-switch
        0x1 -> :sswitch_27e
        0x2 -> :sswitch_26c
        0x4 -> :sswitch_255
        0x8 -> :sswitch_23e
        0x10 -> :sswitch_229
        0x20 -> :sswitch_213
        0x40 -> :sswitch_1f7
        0x80 -> :sswitch_1db
        0x100 -> :sswitch_1be
        0x200 -> :sswitch_1a1
        0x400 -> :sswitch_184
        0x800 -> :sswitch_166
        0x1000 -> :sswitch_147
        0x2000 -> :sswitch_128
        0x4000 -> :sswitch_10a
        0x8000 -> :sswitch_f0
        0x10000 -> :sswitch_d5
        0x20000 -> :sswitch_ba
        0x40000 -> :sswitch_9a
        0x80000 -> :sswitch_7b
    .end sparse-switch

    :sswitch_data_13f4
    .sparse-switch
        0x1 -> :sswitch_2f2
        0x2 -> :sswitch_2f2
        0x4 -> :sswitch_2cc
        0x8 -> :sswitch_2c4
        0x10 -> :sswitch_2bc
        0x20 -> :sswitch_2cc
        0x40 -> :sswitch_2cc
        0x10000 -> :sswitch_2f2
        0x80000 -> :sswitch_2c4
    .end sparse-switch

    :pswitch_data_141a
    .packed-switch 0x0
        :pswitch_4b4
        :pswitch_3da
        :pswitch_3a5
        :pswitch_3a5
        :pswitch_3a5
        :pswitch_3a5
    .end packed-switch

    :pswitch_data_142a
    .packed-switch 0x0
        :pswitch_49d
        :pswitch_47f
        :pswitch_45f
        :pswitch_43f
        :pswitch_41f
    .end packed-switch

    :pswitch_data_1438
    .packed-switch 0x1
        :pswitch_4f8
    .end packed-switch

    :sswitch_data_143e
    .sparse-switch
        0x1 -> :sswitch_721
        0x2 -> :sswitch_6e6
        0x4 -> :sswitch_6e6
        0x8 -> :sswitch_6e6
        0x10 -> :sswitch_6e6
        0x20 -> :sswitch_6e6
        0x40 -> :sswitch_6e6
        0x80 -> :sswitch_6e6
        0x100 -> :sswitch_6e6
        0x200 -> :sswitch_6e6
        0x400 -> :sswitch_6e6
        0x800 -> :sswitch_6e6
        0x1000 -> :sswitch_6e6
        0x2000 -> :sswitch_6e6
        0x4000 -> :sswitch_6e6
        0x8000 -> :sswitch_5db
    .end sparse-switch

    :sswitch_data_1480
    .sparse-switch
        0x1 -> :sswitch_6c7
        0x4 -> :sswitch_6c7
        0x8 -> :sswitch_6a8
        0x10 -> :sswitch_68a
        0x18 -> :sswitch_66c
        0x20 -> :sswitch_649
        0x80 -> :sswitch_626
    .end sparse-switch

    :sswitch_data_149e
    .sparse-switch
        0x1 -> :sswitch_839
        0x2 -> :sswitch_81d
        0x4 -> :sswitch_802
        0x8 -> :sswitch_7e6
        0x10 -> :sswitch_7ca
        0x40 -> :sswitch_7ab
        0x80 -> :sswitch_78b
        0x100 -> :sswitch_76c
    .end sparse-switch

    :sswitch_data_14c0
    .sparse-switch
        0x1 -> :sswitch_a64
        0x2 -> :sswitch_a43
        0x4 -> :sswitch_a24
        0x8 -> :sswitch_a04
        0x10 -> :sswitch_9ca
        0x20 -> :sswitch_9a4
        0x40 -> :sswitch_97d
        0x80 -> :sswitch_954
    .end sparse-switch

    :sswitch_data_14e2
    .sparse-switch
        0x1 -> :sswitch_aac
        0x2 -> :sswitch_aac
        0x4 -> :sswitch_aac
        0x8 -> :sswitch_aac
        0x10 -> :sswitch_aac
        0x20 -> :sswitch_aac
        0x40 -> :sswitch_aac
        0x80 -> :sswitch_aac
        0x100 -> :sswitch_aac
    .end sparse-switch

    :sswitch_data_1508
    .sparse-switch
        0x1 -> :sswitch_b84
        0x2 -> :sswitch_b84
        0x4 -> :sswitch_b84
        0x8 -> :sswitch_b84
    .end sparse-switch

    :pswitch_data_151a
    .packed-switch 0x1
        :pswitch_bae
    .end packed-switch

    :sswitch_data_1520
    .sparse-switch
        0x1 -> :sswitch_d7d
        0x2 -> :sswitch_d64
        0x4 -> :sswitch_d4b
        0x8 -> :sswitch_d32
        0x10 -> :sswitch_d18
        0x20 -> :sswitch_cff
        0x40 -> :sswitch_ce6
        0x80 -> :sswitch_ccd
        0x100 -> :sswitch_cb4
        0x200 -> :sswitch_c9b
        0x400 -> :sswitch_c82
        0x800 -> :sswitch_c69
        0x1000 -> :sswitch_c50
        0x2000 -> :sswitch_c35
    .end sparse-switch

    :sswitch_data_155a
    .sparse-switch
        0x1 -> :sswitch_dbd
        0x2 -> :sswitch_dbd
        0x4 -> :sswitch_dbd
        0x8 -> :sswitch_dbd
        0x1000 -> :sswitch_dbd
        0x2000 -> :sswitch_dbd
        0x4000 -> :sswitch_dbd
        0x8000 -> :sswitch_dbd
    .end sparse-switch

    :sswitch_data_157c
    .sparse-switch
        0x1 -> :sswitch_ee8
        0x2 -> :sswitch_ee8
        0x4 -> :sswitch_ee2
        0x8 -> :sswitch_ee2
        0x10 -> :sswitch_edc
        0x20 -> :sswitch_edc
        0x40 -> :sswitch_ed6
        0x80 -> :sswitch_ed6
        0x100 -> :sswitch_ecc
        0x200 -> :sswitch_ecc
        0x400 -> :sswitch_ec7
        0x800 -> :sswitch_ec2
        0x1000 -> :sswitch_ebb
        0x2000 -> :sswitch_eb3
        0x4000 -> :sswitch_ead
        0x8000 -> :sswitch_ea6
        0x10000 -> :sswitch_e9d
        0x20000 -> :sswitch_e94
        0x40000 -> :sswitch_e8b
        0x80000 -> :sswitch_e83
        0x100000 -> :sswitch_e7b
        0x200000 -> :sswitch_e75
        0x400000 -> :sswitch_e6b
        0x800000 -> :sswitch_e61
        0x1000000 -> :sswitch_e59
        0x2000000 -> :sswitch_e4f
    .end sparse-switch

    :sswitch_data_15e6
    .sparse-switch
        0x1 -> :sswitch_f17
        0x2 -> :sswitch_f17
        0x4 -> :sswitch_f17
        0x1000 -> :sswitch_f17
        0x2000 -> :sswitch_f17
    .end sparse-switch

    :sswitch_data_15fc
    .sparse-switch
        0x1 -> :sswitch_1118
        0x2 -> :sswitch_10fb
        0x4 -> :sswitch_10fb
        0x8 -> :sswitch_10fb
        0x10 -> :sswitch_10de
        0x20 -> :sswitch_10c1
        0x40 -> :sswitch_10c1
        0x80 -> :sswitch_10c1
        0x100 -> :sswitch_10a4
        0x200 -> :sswitch_1087
        0x400 -> :sswitch_1087
        0x800 -> :sswitch_1087
        0x1000 -> :sswitch_106d
        0x2000 -> :sswitch_1052
        0x4000 -> :sswitch_1037
        0x8000 -> :sswitch_101c
        0x10000 -> :sswitch_1001
        0x20000 -> :sswitch_fe4
        0x40000 -> :sswitch_fc7
        0x80000 -> :sswitch_faa
    .end sparse-switch

    :sswitch_data_164e
    .sparse-switch
        0x1 -> :sswitch_115e
        0x2 -> :sswitch_115e
        0x1000 -> :sswitch_115e
        0x2000 -> :sswitch_115e
    .end sparse-switch

    :sswitch_data_1660
    .sparse-switch
        0x101 -> :sswitch_1309
        0x102 -> :sswitch_1302
        0x104 -> :sswitch_12fb
        0x108 -> :sswitch_12f4
        0x201 -> :sswitch_12ed
        0x202 -> :sswitch_12e6
        0x204 -> :sswitch_12df
        0x208 -> :sswitch_12d8
        0x401 -> :sswitch_12d1
        0x402 -> :sswitch_12ca
        0x404 -> :sswitch_12c3
        0x408 -> :sswitch_12bc
        0x801 -> :sswitch_12b5
        0x802 -> :sswitch_12ae
        0x804 -> :sswitch_12a7
        0x808 -> :sswitch_129f
        0x1001 -> :sswitch_1297
        0x1002 -> :sswitch_128f
        0x1004 -> :sswitch_1287
        0x1008 -> :sswitch_127f
        0x2001 -> :sswitch_1277
        0x2002 -> :sswitch_126f
        0x2004 -> :sswitch_1267
        0x2008 -> :sswitch_125f
        0x4001 -> :sswitch_1257
        0x4002 -> :sswitch_124f
        0x4004 -> :sswitch_1247
        0x4008 -> :sswitch_123f
        0x8001 -> :sswitch_1237
        0x8002 -> :sswitch_122f
        0x8004 -> :sswitch_1227
        0x8008 -> :sswitch_1222
        0x10001 -> :sswitch_121a
        0x10002 -> :sswitch_1215
        0x10004 -> :sswitch_1210
        0x10008 -> :sswitch_120b
        0x20001 -> :sswitch_1206
        0x20002 -> :sswitch_1206
        0x20004 -> :sswitch_1206
        0x20008 -> :sswitch_1206
        0x40001 -> :sswitch_11ff
        0x40002 -> :sswitch_11ff
        0x40004 -> :sswitch_11ff
        0x40008 -> :sswitch_11ff
        0x80001 -> :sswitch_11f8
        0x80002 -> :sswitch_11f8
        0x80004 -> :sswitch_11f8
        0x80008 -> :sswitch_11f8
        0x100001 -> :sswitch_11f1
        0x100002 -> :sswitch_11f1
        0x100004 -> :sswitch_11f1
        0x100008 -> :sswitch_11f1
        0x200001 -> :sswitch_11ea
        0x200002 -> :sswitch_11ea
        0x200004 -> :sswitch_11ea
        0x200008 -> :sswitch_11ea
    .end sparse-switch

    :sswitch_data_1742
    .sparse-switch
        0x1 -> :sswitch_1335
        0x1000 -> :sswitch_1335
        0x2000 -> :sswitch_1335
    .end sparse-switch
.end method

.method private blacklist applyMacroBlockLimits(IIIIIJIIII)V
    .registers 18

    .line 3588
    move/from16 v1, p10

    move/from16 v2, p11

    invoke-direct {p0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyAlignment(II)V

    .line 3589
    nop

    .line 3590
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 3591
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v1, p4}, Landroid/util/Rational;-><init>(II)V

    new-instance v5, Landroid/util/Rational;

    invoke-direct {v5, p3, v1}, Landroid/util/Rational;-><init>(II)V

    .line 3592
    invoke-static {v2, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    .line 3589
    move-object v0, p0

    move v1, p8

    move v2, p9

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 3595
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    div-int/2addr v2, p8

    .line 3597
    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    div-int/2addr v3, p8

    div-int v3, p3, v3

    .line 3598
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3596
    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3599
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    div-int/2addr v2, p9

    .line 3601
    invoke-static {p2, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    div-int/2addr v3, p9

    div-int v3, p4, v3

    .line 3602
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3600
    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    .line 3603
    return-void
.end method

.method private blacklist applyMacroBlockLimits(IIIJIIII)V
    .registers 22

    .line 3575
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyMacroBlockLimits(IIIIIJIIII)V

    .line 3580
    return-void
.end method

.method public static greylist-max-p create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;
    .registers 4

    .line 2853
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2854
    const-string v0, "VideoCapabilities"

    const-string v1, "Legacy implementation is called while native flag is on."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :cond_12
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;-><init>()V

    .line 2858
    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)V

    .line 2859
    return-object v0
.end method

.method public static blacklist equivalentVP9Level(Landroid/media/MediaFormat;)I
    .registers 12

    .line 3251
    invoke-virtual {p0}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object p0

    .line 3253
    const-string v0, "block-size"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, v1}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 3254
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/2addr v1, v0

    .line 3256
    const-string v0, "block-count-range"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    .line 3257
    const/4 v4, 0x0

    if-nez v0, :cond_2e

    move v0, v4

    goto :goto_39

    :cond_2e
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v1

    .line 3259
    :goto_39
    nop

    .line 3260
    const-string v5, "blocks-per-second-range"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    .line 3261
    if-nez v5, :cond_49

    const-wide/16 v5, 0x0

    goto :goto_56

    :cond_49
    int-to-long v6, v1

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long v5, v6, v8

    .line 3263
    :goto_56
    nop

    .line 3264
    const-string v1, "size-range"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 3265
    if-nez v1, :cond_65

    move v1, v4

    goto :goto_85

    :cond_65
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/util/Range;

    .line 3266
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3265
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3268
    :goto_85
    const-string v7, "bitrate-range"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object p0

    .line 3269
    if-nez p0, :cond_92

    goto :goto_a2

    :cond_92
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v3, 0x3e8

    invoke-static {p0, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    .line 3271
    :goto_a2
    const-wide/32 v7, 0xca800

    cmp-long p0, v5, v7

    const/16 v3, 0x200

    if-gtz p0, :cond_b8

    const p0, 0x9000

    if-gt v0, p0, :cond_b8

    const/16 p0, 0xc8

    if-gt v4, p0, :cond_b8

    if-gt v1, v3, :cond_b8

    .line 3272
    const/4 p0, 0x1

    return p0

    .line 3273
    :cond_b8
    const-wide/32 v7, 0x2a3000

    cmp-long p0, v5, v7

    if-gtz p0, :cond_ce

    const p0, 0x12000

    if-gt v0, p0, :cond_ce

    const/16 p0, 0x320

    if-gt v4, p0, :cond_ce

    const/16 p0, 0x300

    if-gt v1, p0, :cond_ce

    .line 3274
    const/4 p0, 0x2

    return p0

    .line 3275
    :cond_ce
    const-wide/32 v7, 0x465000

    cmp-long p0, v5, v7

    if-gtz p0, :cond_e4

    const p0, 0x1e000

    if-gt v0, p0, :cond_e4

    const/16 p0, 0x708

    if-gt v4, p0, :cond_e4

    const/16 p0, 0x3c0

    if-gt v1, p0, :cond_e4

    .line 3276
    const/4 p0, 0x4

    return p0

    .line 3277
    :cond_e4
    const-wide/32 v7, 0x8ca000

    cmp-long p0, v5, v7

    if-gtz p0, :cond_f9

    const p0, 0x3c000

    if-gt v0, p0, :cond_f9

    const/16 p0, 0xe10

    if-gt v4, p0, :cond_f9

    const/16 p0, 0x540

    if-gt v1, p0, :cond_f9

    .line 3278
    return v2

    .line 3279
    :cond_f9
    const-wide/32 v7, 0x13c6800

    cmp-long p0, v5, v7

    const/16 v2, 0x800

    if-gtz p0, :cond_110

    const p0, 0x87000

    if-gt v0, p0, :cond_110

    const/16 p0, 0x1c20

    if-gt v4, p0, :cond_110

    if-gt v1, v2, :cond_110

    .line 3280
    const/16 p0, 0x10

    return p0

    .line 3281
    :cond_110
    const-wide/32 v7, 0x2328000

    cmp-long p0, v5, v7

    if-gtz p0, :cond_126

    const/high16 p0, 0xf0000

    if-gt v0, p0, :cond_126

    const/16 p0, 0x2ee0

    if-gt v4, p0, :cond_126

    const/16 p0, 0xac0

    if-gt v1, p0, :cond_126

    .line 3282
    const/16 p0, 0x20

    return p0

    .line 3283
    :cond_126
    const-wide/32 v7, 0x4fb0000

    cmp-long p0, v5, v7

    const/16 v7, 0x1040

    const/high16 v8, 0x220000

    if-gtz p0, :cond_13c

    if-gt v0, v8, :cond_13c

    const/16 p0, 0x4650

    if-gt v4, p0, :cond_13c

    if-gt v1, v7, :cond_13c

    .line 3284
    const/16 p0, 0x40

    return p0

    .line 3285
    :cond_13c
    const-wide/32 v9, 0x9900000

    cmp-long p0, v5, v9

    if-gtz p0, :cond_14e

    if-gt v0, v8, :cond_14e

    const/16 p0, 0x7530

    if-gt v4, p0, :cond_14e

    if-gt v1, v7, :cond_14e

    .line 3286
    const/16 p0, 0x80

    return p0

    .line 3287
    :cond_14e
    const-wide/32 v7, 0x12980000

    cmp-long p0, v5, v7

    const/16 v7, 0x20c0

    const/high16 v8, 0x880000

    if-gtz p0, :cond_165

    if-gt v0, v8, :cond_165

    const p0, 0xea60

    if-gt v4, p0, :cond_165

    if-gt v1, v7, :cond_165

    .line 3288
    const/16 p0, 0x100

    return p0

    .line 3289
    :cond_165
    const-wide/32 v9, 0x23100000

    cmp-long p0, v5, v9

    if-gtz p0, :cond_176

    if-gt v0, v8, :cond_176

    const p0, 0x1d4c0

    if-gt v4, p0, :cond_176

    if-gt v1, v7, :cond_176

    .line 3290
    return v3

    .line 3291
    :cond_176
    const-wide/32 v9, 0x46200000

    cmp-long p0, v5, v9

    const v3, 0x2bf20

    if-gtz p0, :cond_189

    if-gt v0, v8, :cond_189

    if-gt v4, v3, :cond_189

    if-gt v1, v7, :cond_189

    .line 3292
    const/16 p0, 0x400

    return p0

    .line 3293
    :cond_189
    const/16 v7, 0x41c0

    const/high16 v8, 0x2200000

    if-gtz p0, :cond_196

    if-gt v0, v8, :cond_196

    if-gt v4, v3, :cond_196

    if-gt v1, v7, :cond_196

    .line 3294
    return v2

    .line 3295
    :cond_196
    const-wide v2, 0x8c400000L

    cmp-long p0, v5, v2

    if-gtz p0, :cond_1ab

    if-gt v0, v8, :cond_1ab

    const p0, 0x3a980

    if-gt v4, p0, :cond_1ab

    if-gt v1, v7, :cond_1ab

    .line 3296
    const/16 p0, 0x1000

    return p0

    .line 3297
    :cond_1ab
    const-wide v2, 0x118800000L

    cmp-long p0, v5, v2

    const/16 v2, 0x2000

    if-gtz p0, :cond_1c0

    if-gt v0, v8, :cond_1c0

    const p0, 0x75300

    if-gt v4, p0, :cond_1c0

    if-gt v1, v7, :cond_1c0

    .line 3298
    return v2

    .line 3300
    :cond_1c0
    return v2
.end method

.method private blacklist estimateFrameRatesFor(II)Landroid/util/Range;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 3015
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->findClosestSize(II)Landroid/util/Size;

    move-result-object v0

    .line 3016
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 3017
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p0, v2, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->getBlockCount(II)I

    move-result v0

    int-to-double v2, v0

    .line 3018
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->getBlockCount(II)I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v2, p1

    .line 3017
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 3019
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method

.method private blacklist findClosestSize(II)Landroid/util/Size;
    .registers 8

    .line 3000
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->getBlockCount(II)I

    move-result p1

    .line 3001
    nop

    .line 3002
    nop

    .line 3003
    iget-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 3004
    nop

    .line 3005
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->getBlockCount(II)I

    move-result v3

    sub-int v3, p1, v3

    .line 3004
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3006
    if-ge v3, v1, :cond_38

    .line 3007
    nop

    .line 3008
    move-object v0, v2

    move v1, v3

    .line 3010
    :cond_38
    goto :goto_14

    .line 3011
    :cond_39
    return-object v0
.end method

.method private blacklist getBlockCount(II)I
    .registers 4

    .line 2995
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    move-result p1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    invoke-static {p2, v0}, Landroid/media/Utils;->divUp(II)I

    move-result p2

    mul-int/2addr p1, p2

    return p1
.end method

.method private blacklist getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 3208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3210
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3211
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3213
    const-string v3, "measured-frame-rate-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 3214
    goto :goto_d

    .line 3216
    :cond_22
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 3217
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3218
    array-length v4, v3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_34

    .line 3219
    goto :goto_d

    .line 3221
    :cond_34
    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 3222
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    .line 3223
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    if-gtz v5, :cond_4a

    .line 3224
    goto :goto_d

    .line 3226
    :cond_4a
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    .line 3227
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_d

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_73

    .line 3228
    goto :goto_d

    .line 3230
    :cond_73
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3231
    goto :goto_d

    .line 3232
    :cond_77
    return-object v0
.end method

.method private blacklist getPerformancePoints(Ljava/util/Map;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation

    .line 3150
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 3152
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3153
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3155
    const-string v4, "performance-point-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 3156
    goto :goto_d

    .line 3158
    :cond_23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3159
    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_3e

    .line 3163
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3165
    :cond_3e
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3166
    array-length v5, v4

    const/4 v6, 0x4

    if-eq v5, v6, :cond_49

    .line 3167
    goto :goto_d

    .line 3169
    :cond_49
    const/4 v5, 0x2

    aget-object v4, v4, v5

    .line 3170
    invoke-static {v4, v3}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v4

    .line 3171
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    if-gtz v5, :cond_5e

    .line 3172
    goto :goto_d

    .line 3174
    :cond_5e
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    .line 3175
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_d

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v7

    if-gez v3, :cond_87

    .line 3176
    goto :goto_d

    .line 3178
    :cond_87
    new-instance v5, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 3179
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v8

    .line 3180
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v9

    new-instance v10, Landroid/util/Size;

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    iget v11, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    invoke-direct {v10, v3, v11}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {v5 .. v10}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    .line 3181
    new-instance v6, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 3182
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v9

    .line 3183
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v10

    new-instance v11, Landroid/util/Size;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    invoke-direct {v11, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {v6 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    .line 3184
    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3185
    invoke-virtual {v5, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v2

    if-nez v2, :cond_e7

    .line 3186
    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3188
    :cond_e7
    goto/16 :goto_d

    .line 3191
    :cond_e9
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_f0

    .line 3192
    return-object v3

    .line 3196
    :cond_f0
    new-instance p1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->sort(Ljava/util/Comparator;)V

    .line 3204
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private blacklist init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)V
    .registers 3

    .line 2863
    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    .line 2864
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->initWithPlatformLimits()V

    .line 2865
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyLevelLimits()V

    .line 2866
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 2867
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->updateLimits()V

    .line 2868
    return-void
.end method

.method private blacklist initWithPlatformLimits()V
    .registers 2

    .line 3126
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    .line 3128
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    .line 3129
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    .line 3130
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    .line 3132
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3133
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    .line 3136
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3137
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3139
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3140
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAspectRatioRange:Landroid/util/Range;

    .line 3142
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthAlignment:I

    .line 3143
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightAlignment:I

    .line 3144
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    .line 3145
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    .line 3146
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mSmallerDimensionUpperLimit:I

    .line 3147
    return-void
.end method

.method static synthetic blacklist lambda$create$0()Ljava/lang/Boolean;
    .registers 1

    .line 2853
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->nativeCapabilites()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getPerformancePoints$1(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I
    .registers 8

    .line 3197
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_19

    .line 3198
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result p0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result p1

    if-ge p0, p1, :cond_17

    goto :goto_4c

    :cond_17
    move v2, v3

    goto :goto_4c

    .line 3199
    :cond_19
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_34

    .line 3200
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_32

    goto :goto_4c

    :cond_32
    move v2, v3

    goto :goto_4c

    .line 3201
    :cond_34
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v1

    if-eq v0, v1, :cond_4b

    .line 3202
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result p0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result p1

    if-ge p0, p1, :cond_49

    goto :goto_4c

    :cond_49
    move v2, v3

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    neg-int p0, v2

    .line 3197
    return p0
.end method

.method private blacklist parseFromInfo(Landroid/media/MediaFormat;)V
    .registers 22

    .line 3304
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v2

    .line 3305
    new-instance v0, Landroid/util/Size;

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 3306
    new-instance v3, Landroid/util/Size;

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthAlignment:I

    iget v5, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightAlignment:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    .line 3307
    nop

    .line 3308
    nop

    .line 3309
    nop

    .line 3310
    nop

    .line 3312
    const-string v4, "block-size"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v11

    .line 3313
    const-string v0, "alignment"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    .line 3314
    const-string v0, "block-count-range"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v12

    .line 3315
    nop

    .line 3316
    const-string v0, "blocks-per-second-range"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v13

    .line 3317
    invoke-direct {v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mMeasuredFrameRates:Ljava/util/Map;

    .line 3318
    invoke-direct {v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->getPerformancePoints(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mPerformancePoints:Ljava/util/List;

    .line 3319
    nop

    .line 3320
    const-string v0, "size-range"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 3321
    if-eqz v0, :cond_68

    .line 3322
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Range;

    .line 3323
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/Range;

    goto :goto_6a

    .line 3321
    :cond_68
    move-object v0, v4

    move-object v5, v0

    .line 3329
    :goto_6a
    const-string v6, "feature-can-swap-width-height"

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "VideoCapabilities"

    if-eqz v6, :cond_c7

    .line 3330
    if-eqz v5, :cond_98

    .line 3331
    nop

    .line 3332
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mSmallerDimensionUpperLimit:I

    .line 3333
    invoke-virtual {v5, v0}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    move-object v14, v0

    move-object v15, v14

    goto :goto_c9

    .line 3335
    :cond_98
    const-string v6, "feature can-swap-width-height is best used with size-range"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    iget-object v6, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    .line 3337
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mSmallerDimensionUpperLimit:I

    .line 3338
    iget-object v6, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    iget-object v8, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v6, v8}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    iput-object v6, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    .line 3342
    :cond_c7
    move-object v14, v0

    move-object v15, v5

    :goto_c9
    nop

    .line 3343
    const-string v0, "block-aspect-ratio-range"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3342
    invoke-static {v0, v4}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    .line 3344
    nop

    .line 3345
    const-string v0, "pixel-aspect-ratio-range"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3344
    invoke-static {v0, v4}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    .line 3346
    const-string v0, "frame-rate-range"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v8

    .line 3347
    const-string v9, ") is out of limits: "

    if-eqz v8, :cond_11a

    .line 3349
    :try_start_ed
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v8
    :try_end_f5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ed .. :try_end_f5} :catch_f6

    .line 3354
    goto :goto_11a

    .line 3350
    :catch_f6
    move-exception v0

    .line 3351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "frame rate range ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    move-object v8, v4

    .line 3356
    :cond_11a
    :goto_11a
    const-string v0, "bitrate-range"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    .line 3357
    if-eqz v2, :cond_155

    .line 3359
    :try_start_126
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4
    :try_end_12e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_126 .. :try_end_12e} :catch_130

    .line 3364
    move-object v0, v4

    goto :goto_156

    .line 3360
    :catch_130
    move-exception v0

    .line 3361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitrate range ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    move-object v0, v4

    goto :goto_156

    .line 3357
    :cond_155
    move-object v0, v2

    .line 3367
    :goto_156
    nop

    .line 3368
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 3367
    const-string v4, "block-size width must be power of two"

    invoke-static {v2, v4}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3369
    nop

    .line 3370
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 3369
    const-string v4, "block-size height must be power of two"

    invoke-static {v2, v4}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3372
    nop

    .line 3373
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 3372
    const-string v4, "alignment width must be power of two"

    invoke-static {v2, v4}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3374
    nop

    .line 3375
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 3374
    const-string v4, "alignment height must be power of two"

    invoke-static {v2, v4}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3378
    nop

    .line 3380
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v7

    move-object v4, v8

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 3381
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v10

    .line 3378
    const v2, 0x7fffffff

    const v3, 0x7fffffff

    move-object/from16 v16, v4

    const v4, 0x7fffffff

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    const-wide v5, 0x7fffffffffffffffL

    move-object/from16 p1, v11

    move-object/from16 v19, v16

    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v10}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->applyMacroBlockLimits(IIIJIIII)V

    .line 3383
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_24e

    iget-boolean v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAllowMbOverride:Z

    if-eqz v2, :cond_1bf

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    goto/16 :goto_252

    .line 3424
    :cond_1bf
    if-eqz v15, :cond_1c9

    .line 3425
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v2, v15}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    .line 3427
    :cond_1c9
    if-eqz v14, :cond_1d3

    .line 3428
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2, v14}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    .line 3430
    :cond_1d3
    if-eqz v12, :cond_1f0

    .line 3431
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    mul-int/2addr v3, v4

    .line 3433
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    .line 3432
    invoke-static {v12, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    .line 3431
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3435
    :cond_1f0
    if-eqz v13, :cond_20e

    .line 3436
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    mul-int/2addr v3, v4

    .line 3438
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v3, v3

    .line 3437
    invoke-static {v13, v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    .line 3436
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3440
    :cond_20e
    if-eqz v11, :cond_22a

    .line 3441
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    .line 3443
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    .line 3444
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    .line 3442
    invoke-static {v11, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    .line 3441
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3446
    :cond_22a
    if-eqz v17, :cond_236

    .line 3447
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAspectRatioRange:Landroid/util/Range;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAspectRatioRange:Landroid/util/Range;

    .line 3449
    :cond_236
    move-object/from16 v4, v19

    if-eqz v4, :cond_242

    .line 3450
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    .line 3452
    :cond_242
    if-eqz v0, :cond_2fc

    .line 3453
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_2fc

    .line 3383
    :cond_24e
    move-object/from16 v3, v17

    move-object/from16 v4, v19

    .line 3386
    :goto_252
    if-eqz v15, :cond_25e

    .line 3387
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    .line 3389
    :cond_25e
    if-eqz v14, :cond_26a

    .line 3390
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    .line 3392
    :cond_26a
    if-eqz v12, :cond_289

    .line 3393
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v2

    iget v5, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    iget v6, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    mul-int/2addr v5, v6

    .line 3395
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    div-int/2addr v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    div-int/2addr v5, v6

    .line 3394
    invoke-static {v12, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v5

    .line 3393
    invoke-virtual {v2, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3397
    :cond_289
    if-eqz v13, :cond_2a9

    .line 3398
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;

    move-result-object v2

    iget v5, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    iget v6, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    mul-int/2addr v5, v6

    .line 3400
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    div-int/2addr v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    div-int/2addr v5, v6

    int-to-long v5, v5

    .line 3399
    invoke-static {v13, v5, v6}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v5

    .line 3398
    invoke-virtual {v2, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3402
    :cond_2a9
    if-eqz v11, :cond_2c7

    .line 3403
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v2

    iget v5, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    .line 3405
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    div-int/2addr v5, v6

    iget v6, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    .line 3406
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    .line 3404
    invoke-static {v11, v5, v6}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v5

    .line 3403
    invoke-virtual {v2, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3408
    :cond_2c7
    if-eqz v3, :cond_2d3

    .line 3409
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAspectRatioRange:Landroid/util/Range;

    .line 3411
    :cond_2d3
    if-eqz v4, :cond_2df

    .line 3412
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    .line 3414
    :cond_2df
    if-eqz v0, :cond_2fc

    .line 3416
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2f4

    .line 3417
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    goto :goto_2fc

    .line 3419
    :cond_2f4
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    .line 3456
    :cond_2fc
    :goto_2fc
    invoke-direct {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->updateLimits()V

    .line 3457
    return-void
.end method

.method private static blacklist parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 3236
    invoke-static {p0}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 3237
    if-eqz v0, :cond_62

    .line 3239
    :try_start_6
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    .line 3240
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    .line 3241
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 3239
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_42} :catch_43

    return-object p0

    .line 3242
    :catch_43
    move-exception v0

    .line 3243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not parse size range \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoCapabilities"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    :cond_62
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .registers 11

    .line 3052
    nop

    .line 3054
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1a

    .line 3055
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v2, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3056
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthAlignment:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_18

    move v2, v1

    goto :goto_1b

    :cond_18
    move v2, v0

    goto :goto_1b

    .line 3058
    :cond_1a
    move v2, v1

    :goto_1b
    if-eqz v2, :cond_33

    if-eqz p2, :cond_33

    .line 3059
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 3060
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightAlignment:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_32

    move v2, v1

    goto :goto_33

    :cond_32
    move v2, v0

    .line 3062
    :cond_33
    :goto_33
    if-eqz v2, :cond_45

    if-eqz p3, :cond_45

    .line 3063
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v2

    .line 3065
    :cond_45
    if-eqz v2, :cond_bd

    if-eqz p2, :cond_bd

    if-eqz p1, :cond_bd

    .line 3066
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mSmallerDimensionUpperLimit:I

    if-gt v2, v3, :cond_5d

    move v2, v1

    goto :goto_5e

    :cond_5d
    move v2, v0

    .line 3068
    :goto_5e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    invoke-static {v3, v4}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    .line 3069
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    invoke-static {v4, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    .line 3070
    mul-int v5, v3, v4

    .line 3071
    if-eqz v2, :cond_a6

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_a6

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v6, Landroid/util/Rational;

    invoke-direct {v6, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 3072
    invoke-virtual {v2, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_a6

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAspectRatioRange:Landroid/util/Range;

    new-instance v3, Landroid/util/Rational;

    .line 3074
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v3, p1, p2}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_a6

    move v0, v1

    goto :goto_a7

    :cond_a6
    nop

    .line 3075
    :goto_a7
    if-eqz v0, :cond_bc

    if-eqz p3, :cond_bc

    .line 3076
    int-to-double p1, v5

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    mul-double/2addr p1, v0

    .line 3077
    iget-object p3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3078
    invoke-static {p1, p2}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    move-result-object p1

    .line 3077
    invoke-virtual {p3, p1}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v2

    goto :goto_bd

    .line 3081
    :cond_bc
    move v2, v0

    :cond_bd
    :goto_bd
    return v2
.end method

.method private blacklist updateLimits()V
    .registers 7

    .line 3520
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    .line 3521
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    .line 3520
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3522
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3524
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3525
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3523
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 3522
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3526
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    .line 3527
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    .line 3526
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    .line 3528
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3530
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3531
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3529
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 3528
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    .line 3532
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3534
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    .line 3535
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v1, v2

    .line 3534
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3536
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    .line 3537
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v2, v3

    .line 3536
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3533
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 3532
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3538
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3540
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3542
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 3538
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3545
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3546
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthAlignment:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3547
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3545
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    .line 3548
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    .line 3549
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightAlignment:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mVerticalBlockRange:Landroid/util/Range;

    .line 3550
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3548
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    .line 3551
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAspectRatioRange:Landroid/util/Range;

    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    .line 3552
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    .line 3553
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 3551
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAspectRatioRange:Landroid/util/Range;

    .line 3555
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mSmallerDimensionUpperLimit:I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    .line 3557
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3555
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mSmallerDimensionUpperLimit:I

    .line 3560
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3561
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3562
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3560
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3563
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3564
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3565
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 3564
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3566
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 3567
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 3566
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3563
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    .line 3568
    return-void
.end method


# virtual methods
.method public blacklist areSizeAndRateSupported(IID)Z
    .registers 5

    .line 3044
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result p1

    return p1
.end method

.method public blacklist getAchievableFrameRatesFor(II)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 3025
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3029
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mMeasuredFrameRates:Ljava/util/Map;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1c

    goto :goto_21

    .line 3034
    :cond_1c
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->estimateFrameRatesFor(II)Landroid/util/Range;

    move-result-object p1

    return-object p1

    .line 3030
    :cond_21
    :goto_21
    const-string p1, "VideoCapabilities"

    const-string p2, "Codec did not publish any measurement data."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    return-object v2

    .line 3026
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getAspectRatioRange(Z)Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .line 3122
    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAspectRatioRange:Landroid/util/Range;

    :goto_7
    return-object p1
.end method

.method public blacklist getBitrateRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2871
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getBlockCountRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3112
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getBlockSize()Landroid/util/Size;
    .registers 4

    .line 3107
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public blacklist getBlocksPerSecondRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3117
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getHeightAlignment()I
    .registers 2

    .line 2887
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightAlignment:I

    return v0
.end method

.method public blacklist getSmallerDimensionUpperLimit()I
    .registers 2

    .line 2892
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mSmallerDimensionUpperLimit:I

    return v0
.end method

.method public blacklist getSupportedFrameRates()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2896
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getSupportedFrameRatesFor(II)Landroid/util/Range;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2980
    nop

    .line 2981
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2984
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    .line 2985
    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    move-result p1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    invoke-static {p2, v0}, Landroid/media/Utils;->divUp(II)I

    move-result p2

    mul-int/2addr p1, p2

    .line 2987
    iget-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2988
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    int-to-double p1, p1

    div-double/2addr v0, p1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    .line 2989
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    .line 2988
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2990
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, p1

    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mFrameRateRange:Landroid/util/Range;

    .line 2991
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double p1, p1

    .line 2990
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 2987
    invoke-static {v0, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    return-object p1

    .line 2982
    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getSupportedHeights()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2879
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getSupportedHeightsFor(I)Landroid/util/Range;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2941
    const-string v0, "unsupported width"

    :try_start_2
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    .line 2942
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_bb

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthAlignment:I

    rem-int v2, p1, v2

    if-nez v2, :cond_bb

    .line 2946
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    .line 2949
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 2950
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    int-to-double v4, v2

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2952
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Landroid/util/Rational;

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    div-double v6, v4, v6

    .line 2951
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 2949
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2953
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 2954
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/2addr v6, v2

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2956
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    invoke-virtual {v2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v7

    div-double/2addr v4, v7

    double-to-int v2, v4

    .line 2953
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2957
    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    mul-int/2addr v3, v5

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightAlignment:I

    add-int/2addr v3, v5

    .line 2958
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    mul-int/2addr v2, v5

    .line 2959
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2957
    invoke-virtual {v1, v3, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 2962
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mSmallerDimensionUpperLimit:I

    if-le p1, v2, :cond_8c

    .line 2963
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mSmallerDimensionUpperLimit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 2967
    :cond_8c
    int-to-double v2, p1

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAspectRatioRange:Landroid/util/Range;

    .line 2969
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Landroid/util/Rational;

    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    div-double v4, v2, v4

    .line 2968
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAspectRatioRange:Landroid/util/Range;

    .line 2970
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v5

    div-double/2addr v2, v5

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2967
    invoke-virtual {v1, v4, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    .line 2971
    return-object p1

    .line 2944
    :cond_bb
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_c1} :catch_c1

    .line 2972
    :catch_c1
    move-exception v1

    .line 2974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not get supported heights for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideoCapabilities"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getSupportedPerformancePoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation

    .line 3039
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mPerformancePoints:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSupportedWidths()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2875
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getSupportedWidthsFor(I)Landroid/util/Range;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2901
    const-string v0, "unsupported height"

    :try_start_2
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthRange:Landroid/util/Range;

    .line 2902
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_b9

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mHeightAlignment:I

    rem-int v2, p1, v2

    if-nez v2, :cond_b9

    .line 2906
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockHeight:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    .line 2909
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 2910
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2911
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Landroid/util/Rational;

    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    int-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 2909
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2913
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockCountRange:Landroid/util/Range;

    .line 2914
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/2addr v4, v2

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2915
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    invoke-virtual {v2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v8, v6

    double-to-int v2, v8

    .line 2913
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2917
    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    mul-int/2addr v3, v5

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthAlignment:I

    add-int/2addr v3, v5

    .line 2918
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBlockWidth:I

    mul-int/2addr v2, v5

    .line 2919
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2917
    invoke-virtual {v1, v3, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 2922
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mSmallerDimensionUpperLimit:I

    if-le p1, v2, :cond_8b

    .line 2923
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mSmallerDimensionUpperLimit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 2927
    :cond_8b
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAspectRatioRange:Landroid/util/Range;

    .line 2928
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    invoke-virtual {v2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v2

    int-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mAspectRatioRange:Landroid/util/Range;

    .line 2930
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Landroid/util/Rational;

    invoke-virtual {v3}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2927
    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    .line 2931
    return-object p1

    .line 2904
    :cond_b9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_bf} :catch_bf

    .line 2932
    :catch_bf
    move-exception v1

    .line 2934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not get supported widths for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideoCapabilities"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getWidthAlignment()I
    .registers 2

    .line 2883
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mWidthAlignment:I

    return v0
.end method

.method public blacklist isSizeSupported(II)Z
    .registers 4

    .line 3048
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result p1

    return p1
.end method

.method public blacklist supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 6

    .line 3088
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 3089
    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3090
    const-string v2, "height"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3091
    const-string v3, "frame-rate"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 3093
    invoke-direct {p0, v1, v2, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 3094
    return v1

    .line 3097
    :cond_24
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    invoke-static {v0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->-$$Nest$smsupportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 3098
    return v1

    .line 3102
    :cond_2d
    const/4 p1, 0x1

    return p1
.end method
