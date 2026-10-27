.class interface abstract Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$AudioCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AudioCapsIntf"
.end annotation


# virtual methods
.method public abstract blacklist getBitrateRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getDefaultFormat(Landroid/media/MediaFormat;)V
.end method

.method public abstract blacklist getInputChannelCountRanges()[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getMaxInputChannelCount()I
.end method

.method public abstract blacklist getMinInputChannelCount()I
.end method

.method public abstract blacklist getSupportedSampleRateRanges()[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSupportedSampleRates()[I
.end method

.method public abstract blacklist isSampleRateSupported(I)Z
.end method

.method public abstract blacklist supportsFormat(Landroid/media/MediaFormat;)Z
.end method
