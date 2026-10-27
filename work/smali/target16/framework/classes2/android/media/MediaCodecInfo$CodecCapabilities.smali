.class public final Landroid/media/MediaCodecInfo$CodecCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;,
        Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;,
        Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;
    }
.end annotation


# static fields
.field public static final whitelist COLOR_Format12bitRGB444:I = 0x3

.field public static final whitelist COLOR_Format16bitARGB1555:I = 0x5

.field public static final whitelist COLOR_Format16bitARGB4444:I = 0x4

.field public static final whitelist COLOR_Format16bitBGR565:I = 0x7

.field public static final whitelist COLOR_Format16bitRGB565:I = 0x6

.field public static final whitelist COLOR_Format18BitBGR666:I = 0x29

.field public static final whitelist COLOR_Format18bitARGB1665:I = 0x9

.field public static final whitelist COLOR_Format18bitRGB666:I = 0x8

.field public static final whitelist COLOR_Format19bitARGB1666:I = 0xa

.field public static final whitelist COLOR_Format24BitABGR6666:I = 0x2b

.field public static final whitelist COLOR_Format24BitARGB6666:I = 0x2a

.field public static final whitelist COLOR_Format24bitARGB1887:I = 0xd

.field public static final whitelist COLOR_Format24bitBGR888:I = 0xc

.field public static final whitelist COLOR_Format24bitRGB888:I = 0xb

.field public static final whitelist COLOR_Format25bitARGB1888:I = 0xe

.field public static final whitelist COLOR_Format32bitABGR2101010:I = 0x7f00aaa2

.field public static final whitelist COLOR_Format32bitABGR8888:I = 0x7f00a000

.field public static final whitelist COLOR_Format32bitARGB8888:I = 0x10

.field public static final whitelist COLOR_Format32bitBGRA8888:I = 0xf

.field public static final whitelist COLOR_Format64bitABGRFloat:I = 0x7f000f16

.field public static final whitelist COLOR_Format8bitRGB332:I = 0x2

.field public static final whitelist COLOR_FormatCbYCrY:I = 0x1b

.field public static final whitelist COLOR_FormatCrYCbY:I = 0x1c

.field public static final whitelist COLOR_FormatL16:I = 0x24

.field public static final whitelist COLOR_FormatL2:I = 0x21

.field public static final whitelist COLOR_FormatL24:I = 0x25

.field public static final whitelist COLOR_FormatL32:I = 0x26

.field public static final whitelist COLOR_FormatL4:I = 0x22

.field public static final whitelist COLOR_FormatL8:I = 0x23

.field public static final whitelist COLOR_FormatMonochrome:I = 0x1

.field public static final whitelist COLOR_FormatRGBAFlexible:I = 0x7f36a888

.field public static final whitelist COLOR_FormatRGBFlexible:I = 0x7f36b888

.field public static final whitelist COLOR_FormatRawBayer10bit:I = 0x1f

.field public static final whitelist COLOR_FormatRawBayer8bit:I = 0x1e

.field public static final whitelist COLOR_FormatRawBayer8bitcompressed:I = 0x20

.field public static final whitelist COLOR_FormatSurface:I = 0x7f000789

.field public static final whitelist COLOR_FormatYCbYCr:I = 0x19

.field public static final whitelist COLOR_FormatYCrYCb:I = 0x1a

.field public static final whitelist COLOR_FormatYUV411PackedPlanar:I = 0x12

.field public static final whitelist COLOR_FormatYUV411Planar:I = 0x11

.field public static final whitelist COLOR_FormatYUV420Flexible:I = 0x7f420888

.field public static final whitelist COLOR_FormatYUV420PackedPlanar:I = 0x14

.field public static final whitelist COLOR_FormatYUV420PackedSemiPlanar:I = 0x27

.field public static final whitelist COLOR_FormatYUV420Planar:I = 0x13

.field public static final whitelist COLOR_FormatYUV420SemiPlanar:I = 0x15

.field public static final whitelist COLOR_FormatYUV422Flexible:I = 0x7f422888

.field public static final whitelist COLOR_FormatYUV422PackedPlanar:I = 0x17

.field public static final whitelist COLOR_FormatYUV422PackedSemiPlanar:I = 0x28

.field public static final whitelist COLOR_FormatYUV422Planar:I = 0x16

.field public static final whitelist COLOR_FormatYUV422SemiPlanar:I = 0x18

.field public static final whitelist COLOR_FormatYUV444Flexible:I = 0x7f444888

.field public static final whitelist COLOR_FormatYUV444Interleaved:I = 0x1d

.field public static final whitelist COLOR_FormatYUVP010:I = 0x36

.field public static final whitelist COLOR_FormatYUVP210:I = 0x3c

.field public static final whitelist COLOR_QCOM_FormatYUV420SemiPlanar:I = 0x7fa30c00

.field public static final whitelist COLOR_TI_FormatYUV420PackedSemiPlanar:I = 0x7f000100

.field public static final whitelist FEATURE_AdaptivePlayback:Ljava/lang/String; = "adaptive-playback"

.field public static final whitelist FEATURE_DetachedSurface:Ljava/lang/String; = "detached-surface"

.field public static final whitelist FEATURE_DynamicColorAspects:Ljava/lang/String; = "dynamic-color-aspects"

.field public static final whitelist FEATURE_DynamicTimestamp:Ljava/lang/String; = "dynamic-timestamp"

.field public static final whitelist FEATURE_EncodingStatistics:Ljava/lang/String; = "encoding-statistics"

.field public static final whitelist FEATURE_FrameParsing:Ljava/lang/String; = "frame-parsing"

.field public static final whitelist FEATURE_HdrEditing:Ljava/lang/String; = "hdr-editing"

.field public static final whitelist FEATURE_HlgEditing:Ljava/lang/String; = "hlg-editing"

.field public static final whitelist FEATURE_IntraRefresh:Ljava/lang/String; = "intra-refresh"

.field public static final whitelist FEATURE_LowLatency:Ljava/lang/String; = "low-latency"

.field public static final whitelist FEATURE_MultipleFrames:Ljava/lang/String; = "multiple-frames"

.field public static final whitelist FEATURE_PartialFrame:Ljava/lang/String; = "partial-frame"

.field public static final whitelist FEATURE_QpBounds:Ljava/lang/String; = "qp-bounds"

.field public static final whitelist FEATURE_Roi:Ljava/lang/String; = "region-of-interest"

.field public static final whitelist FEATURE_SecurePlayback:Ljava/lang/String; = "secure-playback"

.field private static final blacklist FEATURE_SpecialCodec:Ljava/lang/String; = "special-codec"

.field public static final whitelist FEATURE_TunneledPlayback:Ljava/lang/String; = "tunneled-playback"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CodecCapabilities"


# instance fields
.field public whitelist colorFormats:[I

.field private blacklist mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

.field public whitelist profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1465
    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    .line 1466
    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;)V
    .registers 2

    .line 1468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1469
    iput-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    .line 1470
    iget-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 1471
    iget-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->getColorFormats()[I

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 1472
    return-void
.end method

.method public static whitelist createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;
    .registers 4

    .line 1456
    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1457
    invoke-static {p0, p1, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;

    move-result-object p0

    goto :goto_14

    .line 1459
    :cond_10
    invoke-static {p0, p1, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    move-result-object p0

    .line 1461
    :goto_14
    new-instance p1, Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-direct {p1, p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>(Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;)V

    return-object p1
.end method

.method static synthetic blacklist lambda$createFromProfileLevel$0()Ljava/lang/Boolean;
    .registers 1

    .line 1456
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->nativeCapabilites()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o dup()Landroid/media/MediaCodecInfo$CodecCapabilities;
    .registers 4

    .line 1476
    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>()V

    .line 1479
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 1480
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 1482
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->dup()Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    .line 1484
    return-object v0
.end method

.method public whitelist getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;
    .registers 2

    .line 1659
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefaultFormat()Landroid/media/MediaFormat;
    .registers 2

    .line 1632
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->getDefaultFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .registers 2

    .line 1667
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMaxSupportedInstances()I
    .registers 2

    .line 1651
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->getMaxSupportedInstances()I

    move-result v0

    return v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .registers 2

    .line 1639
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;
    .registers 2

    .line 1675
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist isFeatureRequired(Ljava/lang/String;)Z
    .registers 3

    .line 1505
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {v0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final whitelist isFeatureSupported(Ljava/lang/String;)Z
    .registers 3

    .line 1495
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {v0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final whitelist isFormatSupported(Landroid/media/MediaFormat;)Z
    .registers 3

    .line 1624
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {v0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o isRegular()Z
    .registers 2

    .line 1515
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->isRegular()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o validFeatures()[Ljava/lang/String;
    .registers 2

    .line 1510
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mImpl:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;->validFeatures()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
