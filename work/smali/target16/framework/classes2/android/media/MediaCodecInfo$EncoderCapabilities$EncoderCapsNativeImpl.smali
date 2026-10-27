.class final Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsNativeImpl;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"

# interfaces
.implements Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$EncoderCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EncoderCapsNativeImpl"
.end annotation


# instance fields
.field private blacklist mComplexityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNativeContext:J

.field private blacklist mQualityRange:Landroid/util/Range;
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

    .line 5051
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5052
    invoke-static {}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsNativeImpl;->native_init()V

    .line 5053
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 5014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/util/Range;Landroid/util/Range;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5019
    iput-object p1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsNativeImpl;->mQualityRange:Landroid/util/Range;

    .line 5020
    iput-object p2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsNativeImpl;->mComplexityRange:Landroid/util/Range;

    .line 5021
    return-void
.end method

.method private static native blacklist native_init()V
.end method

.method private native blacklist native_isBitrateModeSupported(I)Z
.end method


# virtual methods
.method public blacklist getComplexityRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5028
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsNativeImpl;->mComplexityRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getDefaultFormat(Landroid/media/MediaFormat;)V
    .registers 3

    .line 5037
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Java Implementation should not call native implemenatation"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getQualityRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5024
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsNativeImpl;->mQualityRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist isBitrateModeSupported(I)Z
    .registers 2

    .line 5032
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsNativeImpl;->native_isBitrateModeSupported(I)Z

    move-result p1

    return p1
.end method

.method public blacklist supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 3

    .line 5043
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Java Implementation should not call native implemenatation"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
