.class public final Landroid/media/MediaCodecInfo$VideoCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;,
        Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;,
        Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;,
        Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "VideoCapabilities"


# instance fields
.field private blacklist mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 4574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;)V
    .registers 2

    .line 4569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4570
    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    .line 4571
    return-void
.end method

.method public static blacklist create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .registers 2

    .line 4564
    invoke-static {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;

    move-result-object p0

    .line 4565
    new-instance p1, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-direct {p1, p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;)V

    .line 4566
    return-object p1
.end method


# virtual methods
.method public whitelist areSizeAndRateSupported(IID)Z
    .registers 6

    .line 4763
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->areSizeAndRateSupported(IID)Z

    move-result p1

    return p1
.end method

.method public whitelist getAchievableFrameRatesFor(II)Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 4729
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->getAchievableFrameRatesFor(II)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method

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

    .line 4580
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->getBitrateRange()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHeightAlignment()I
    .registers 2

    .line 4620
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->getWidthAlignment()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSmallerDimensionUpperLimit()I
    .registers 2

    .line 4637
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->getSmallerDimensionUpperLimit()I

    move-result v0

    return v0
.end method

.method public whitelist getSupportedFrameRates()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4649
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->getSupportedFrameRates()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedFrameRatesFor(II)Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 4680
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getSupportedHeights()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4600
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->getSupportedHeights()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedHeightsFor(I)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4665
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->getSupportedHeightsFor(I)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getSupportedPerformancePoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation

    .line 4755
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->getSupportedPerformancePoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedWidths()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4590
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->getSupportedWidths()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedWidthsFor(I)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4657
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->getSupportedWidthsFor(I)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getWidthAlignment()I
    .registers 2

    .line 4610
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->getWidthAlignment()I

    move-result v0

    return v0
.end method

.method public whitelist isSizeSupported(II)Z
    .registers 4

    .line 4771
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->isSizeSupported(II)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 3

    .line 4780
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mImpl:Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;

    invoke-interface {v0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsIntf;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1
.end method
