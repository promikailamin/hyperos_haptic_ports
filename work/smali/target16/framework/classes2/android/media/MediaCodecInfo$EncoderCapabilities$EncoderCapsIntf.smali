.class interface abstract Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$EncoderCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "EncoderCapsIntf"
.end annotation


# virtual methods
.method public abstract blacklist getComplexityRange()Landroid/util/Range;
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

.method public abstract blacklist getQualityRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist isBitrateModeSupported(I)Z
.end method

.method public abstract blacklist supportsFormat(Landroid/media/MediaFormat;)Z
.end method
