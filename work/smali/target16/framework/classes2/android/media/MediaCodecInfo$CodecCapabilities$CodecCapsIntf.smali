.class interface abstract Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$CodecCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CodecCapsIntf"
.end annotation


# virtual methods
.method public abstract blacklist dup()Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;
.end method

.method public abstract blacklist getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;
.end method

.method public abstract blacklist getColorFormats()[I
.end method

.method public abstract blacklist getDefaultFormat()Landroid/media/MediaFormat;
.end method

.method public abstract blacklist getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;
.end method

.method public abstract blacklist getMaxSupportedInstances()I
.end method

.method public abstract blacklist getMimeType()Ljava/lang/String;
.end method

.method public abstract blacklist getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
.end method

.method public abstract blacklist getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;
.end method

.method public abstract blacklist isFeatureRequired(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isFeatureSupported(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isFormatSupported(Landroid/media/MediaFormat;)Z
.end method

.method public abstract blacklist isRegular()Z
.end method

.method public abstract blacklist validFeatures()[Ljava/lang/String;
.end method
