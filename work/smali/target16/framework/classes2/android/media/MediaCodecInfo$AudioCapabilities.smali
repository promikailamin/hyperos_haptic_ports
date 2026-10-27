.class public final Landroid/media/MediaCodecInfo$AudioCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;,
        Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;,
        Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioCapabilities"


# instance fields
.field private blacklist mImpl:Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;)V
    .registers 2

    .line 2241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2242
    iput-object p1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mImpl:Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;

    .line 2243
    return-void
.end method

.method public static blacklist create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)Landroid/media/MediaCodecInfo$AudioCapabilities;
    .registers 2

    .line 2236
    invoke-static {p0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;

    move-result-object p0

    .line 2237
    new-instance p1, Landroid/media/MediaCodecInfo$AudioCapabilities;

    invoke-direct {p1, p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;-><init>(Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;)V

    .line 2238
    return-object p1
.end method


# virtual methods
.method public whitelist getBitrateRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2252
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mImpl:Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;->getBitrateRange()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDefaultFormat(Landroid/media/MediaFormat;)V
    .registers 3

    .line 2328
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mImpl:Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;

    invoke-interface {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;->getDefaultFormat(Landroid/media/MediaFormat;)V

    .line 2329
    return-void
.end method

.method public whitelist getInputChannelCountRanges()[Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2284
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mImpl:Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;->getInputChannelCountRanges()[Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMaxInputChannelCount()I
    .registers 2

    .line 2304
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mImpl:Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;->getMaxInputChannelCount()I

    move-result v0

    return v0
.end method

.method public whitelist getMinInputChannelCount()I
    .registers 2

    .line 2316
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mImpl:Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;->getMinInputChannelCount()I

    move-result v0

    return v0
.end method

.method public whitelist getSupportedSampleRateRanges()[Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2270
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mImpl:Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;->getSupportedSampleRateRanges()[Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedSampleRates()[I
    .registers 2

    .line 2261
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mImpl:Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;->getSupportedSampleRates()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist isSampleRateSupported(I)Z
    .registers 3

    .line 2323
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mImpl:Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;

    invoke-interface {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;->isSampleRateSupported(I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 3

    .line 2333
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mImpl:Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;

    invoke-interface {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1
.end method
