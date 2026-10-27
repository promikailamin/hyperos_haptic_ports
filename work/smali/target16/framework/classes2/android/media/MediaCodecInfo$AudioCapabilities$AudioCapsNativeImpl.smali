.class final Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"

# interfaces
.implements Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$AudioCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AudioCapsNativeImpl"
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

.field private blacklist mInputChannelRanges:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNativeContext:J

.field private blacklist mSampleRateRanges:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSampleRates:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2226
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2227
    invoke-static {}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->native_init()V

    .line 2228
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 2177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/util/Range;[I[Landroid/util/Range;[Landroid/util/Range;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;[I[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2170
    iput-object p1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->mBitrateRange:Landroid/util/Range;

    .line 2171
    iput-object p2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->mSampleRates:[I

    .line 2172
    iput-object p3, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->mSampleRateRanges:[Landroid/util/Range;

    .line 2173
    iput-object p4, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->mInputChannelRanges:[Landroid/util/Range;

    .line 2174
    return-void
.end method

.method private native blacklist native_getMaxInputChannelCount()I
.end method

.method private native blacklist native_getMinInputChannelCount()I
.end method

.method private static native blacklist native_init()V
.end method

.method private native blacklist native_isSampleRateSupported(I)Z
.end method


# virtual methods
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

    .line 2180
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getDefaultFormat(Landroid/media/MediaFormat;)V
    .registers 3

    .line 2210
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Java Implementation should not call native implemenatation"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getInputChannelCountRanges()[Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2193
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->mInputChannelRanges:[Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->mInputChannelRanges:[Landroid/util/Range;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getMaxInputChannelCount()I
    .registers 2

    .line 2197
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->native_getMaxInputChannelCount()I

    move-result v0

    return v0
.end method

.method public blacklist getMinInputChannelCount()I
    .registers 2

    .line 2201
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->native_getMinInputChannelCount()I

    move-result v0

    return v0
.end method

.method public blacklist getSupportedSampleRateRanges()[Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2189
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->mSampleRateRanges:[Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->mSampleRateRanges:[Landroid/util/Range;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getSupportedSampleRates()[I
    .registers 3

    .line 2184
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->mSampleRates:[I

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->mSampleRates:[I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->mSampleRates:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_f

    .line 2185
    :cond_e
    const/4 v0, 0x0

    .line 2184
    :goto_f
    return-object v0
.end method

.method public blacklist isSampleRateSupported(I)Z
    .registers 2

    .line 2205
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsNativeImpl;->native_isSampleRateSupported(I)Z

    move-result p1

    return p1
.end method

.method public blacklist supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 3

    .line 2216
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Java Implementation should not call native implemenatation"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
