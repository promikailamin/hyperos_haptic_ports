.class final Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;
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
    name = "VideoCapsNativeImpl"
.end annotation


# instance fields
.field private blacklist mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
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

.field private blacklist mNativeContext:J

.field private blacklist mPerformancePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
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
    .registers 1

    .line 4554
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4555
    invoke-static {}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->native_init()V

    .line 4556
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 4474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;Ljava/util/List;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;II)V"
        }
    .end annotation

    .line 4458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4459
    new-instance v0, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4460
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mBitrateRange:Landroid/util/Range;

    .line 4461
    new-instance p1, Landroid/util/Range;

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {p1, v0, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mWidthRange:Landroid/util/Range;

    .line 4462
    new-instance p1, Landroid/util/Range;

    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-direct {p1, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mHeightRange:Landroid/util/Range;

    .line 4463
    new-instance p1, Landroid/util/Range;

    invoke-virtual {p4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 4464
    invoke-virtual {p4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-direct {p1, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mFrameRateRange:Landroid/util/Range;

    .line 4465
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mPerformancePoints:Ljava/util/List;

    .line 4466
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_72

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 4467
    iget-object p3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mPerformancePoints:Ljava/util/List;

    new-instance p4, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/4 p5, 0x0

    invoke-direct {p4, p2, p5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo-IA;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4468
    goto :goto_5a

    .line 4469
    :cond_72
    iput p6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mWidthAlignment:I

    .line 4470
    iput p7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mHeightAlignment:I

    .line 4471
    return-void
.end method

.method private native blacklist native_areSizeAndRateSupported(IID)Z
.end method

.method private native blacklist native_getAchievableFrameRatesFor(II)Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method private native blacklist native_getSmallerDimensionUpperLimit()I
.end method

.method private native blacklist native_getSupportedFrameRatesFor(II)Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method private native blacklist native_getSupportedHeightsFor(I)Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method private native blacklist native_getSupportedWidthsFor(I)Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method private static native blacklist native_init()V
.end method

.method private native blacklist native_isSizeSupported(II)Z
.end method


# virtual methods
.method public blacklist areSizeAndRateSupported(IID)Z
    .registers 5

    .line 4529
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->native_areSizeAndRateSupported(IID)Z

    move-result p1

    return p1
.end method

.method public blacklist getAchievableFrameRatesFor(II)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 4525
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->native_getAchievableFrameRatesFor(II)Landroid/util/Range;

    move-result-object p1

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

    .line 4477
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getHeightAlignment()I
    .registers 2

    .line 4493
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mHeightAlignment:I

    return v0
.end method

.method public blacklist getSmallerDimensionUpperLimit()I
    .registers 2

    .line 4498
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->native_getSmallerDimensionUpperLimit()I

    move-result v0

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

    .line 4502
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getSupportedFrameRatesFor(II)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 4519
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->native_getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object p1

    return-object p1
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

    .line 4485
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mHeightRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getSupportedHeightsFor(I)Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4515
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->native_getSupportedHeightsFor(I)Landroid/util/Range;

    move-result-object p1

    return-object p1
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

    .line 4507
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mPerformancePoints:Ljava/util/List;

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

    .line 4481
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mWidthRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getSupportedWidthsFor(I)Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4511
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->native_getSupportedWidthsFor(I)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getWidthAlignment()I
    .registers 2

    .line 4489
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->mWidthAlignment:I

    return v0
.end method

.method public blacklist isSizeSupported(II)Z
    .registers 3

    .line 4533
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsNativeImpl;->native_isSizeSupported(II)Z

    move-result p1

    return p1
.end method

.method public blacklist supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 3

    .line 4538
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Java Implementation should not call native implemenatation"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
