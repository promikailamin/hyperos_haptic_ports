.class public final Landroid/media/MediaCodecInfo$EncoderCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncoderCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;,
        Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;,
        Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsNativeImpl;
    }
.end annotation


# static fields
.field public static final whitelist BITRATE_MODE_CBR:I = 0x2

.field public static final whitelist BITRATE_MODE_CBR_FD:I = 0x3

.field public static final whitelist BITRATE_MODE_CQ:I = 0x0

.field public static final whitelist BITRATE_MODE_VBR:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "EncoderCapabilities"


# instance fields
.field private blacklist mImpl:Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;)V
    .registers 2

    .line 5066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5067
    iput-object p1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mImpl:Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;

    .line 5068
    return-void
.end method

.method public static blacklist create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .registers 2

    .line 5061
    invoke-static {p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;

    move-result-object p0

    .line 5062
    new-instance p1, Landroid/media/MediaCodecInfo$EncoderCapabilities;

    invoke-direct {p1, p0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;-><init>(Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;)V

    .line 5063
    return-object p1
.end method


# virtual methods
.method public whitelist getComplexityRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5089
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mImpl:Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;->getComplexityRange()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDefaultFormat(Landroid/media/MediaFormat;)V
    .registers 3

    .line 5101
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mImpl:Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;

    invoke-interface {v0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;->getDefaultFormat(Landroid/media/MediaFormat;)V

    .line 5102
    return-void
.end method

.method public whitelist getQualityRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5077
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mImpl:Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;

    invoke-interface {v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;->getQualityRange()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isBitrateModeSupported(I)Z
    .registers 3

    .line 5096
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mImpl:Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;

    invoke-interface {v0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;->isBitrateModeSupported(I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 3

    .line 5106
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mImpl:Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;

    invoke-interface {v0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1
.end method
