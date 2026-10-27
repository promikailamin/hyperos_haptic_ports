.class final Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"

# interfaces
.implements Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$CodecCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodecCapsNativeImpl"
.end annotation


# instance fields
.field private blacklist mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

.field private blacklist mColorFormats:[I

.field private blacklist mDefaultFormat:Landroid/media/MediaFormat;

.field private blacklist mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

.field private blacklist mNativeContext:J

.field private blacklist mProfileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

.field private blacklist mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1438
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1439
    invoke-static {}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->native_init()V

    .line 1440
    return-void
.end method

.method constructor blacklist <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[ILandroid/media/MediaFormat;Landroid/media/MediaCodecInfo$AudioCapabilities;Landroid/media/MediaCodecInfo$VideoCapabilities;Landroid/media/MediaCodecInfo$EncoderCapabilities;)V
    .registers 7

    .line 1337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1338
    iput-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->mProfileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 1339
    iput-object p2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->mColorFormats:[I

    .line 1340
    iput-object p3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->mDefaultFormat:Landroid/media/MediaFormat;

    .line 1341
    iput-object p4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 1342
    iput-object p5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 1343
    iput-object p6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    .line 1344
    return-void
.end method

.method public static blacklist createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;
    .registers 3

    .line 1327
    invoke-static {p0, p1, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->native_createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;

    move-result-object p0

    return-object p0
.end method

.method private static native blacklist native_createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;
.end method

.method private native blacklist native_dup()Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;
.end method

.method private native blacklist native_finalize()V
.end method

.method private native blacklist native_getMaxSupportedInstances()I
.end method

.method private native blacklist native_getMimeType()Ljava/lang/String;
.end method

.method private static native blacklist native_init()V
.end method

.method private native blacklist native_isFeatureRequired(Ljava/lang/String;)Z
.end method

.method private native blacklist native_isFeatureSupported(Ljava/lang/String;)Z
.end method

.method private native blacklist native_isFormatSupported([Ljava/lang/String;[Ljava/lang/Object;)Z
.end method

.method private native blacklist native_isRegular()Z
.end method

.method private native blacklist native_validFeatures()[Ljava/lang/String;
.end method


# virtual methods
.method public bridge synthetic blacklist dup()Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;
    .registers 2

    .line 1307
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->dup()Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dup()Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;
    .registers 2

    .line 1347
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->native_dup()Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;

    move-result-object v0

    .line 1348
    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 1353
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->native_finalize()V

    .line 1354
    return-void
.end method

.method public blacklist getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;
    .registers 2

    .line 1412
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    return-object v0
.end method

.method public blacklist getColorFormats()[I
    .registers 2

    .line 1361
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->mColorFormats:[I

    return-object v0
.end method

.method public blacklist getDefaultFormat()Landroid/media/MediaFormat;
    .registers 2

    .line 1400
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->mDefaultFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public blacklist getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .registers 2

    .line 1416
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    return-object v0
.end method

.method public blacklist getMaxSupportedInstances()I
    .registers 2

    .line 1408
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->native_getMaxSupportedInstances()I

    move-result v0

    return v0
.end method

.method public blacklist getMimeType()Ljava/lang/String;
    .registers 2

    .line 1404
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->native_getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .registers 2

    .line 1357
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->mProfileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    return-object v0
.end method

.method public blacklist getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;
    .registers 2

    .line 1420
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    return-object v0
.end method

.method public blacklist isFeatureRequired(Ljava/lang/String;)Z
    .registers 2

    .line 1369
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->native_isFeatureRequired(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist isFeatureSupported(Ljava/lang/String;)Z
    .registers 2

    .line 1365
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->native_isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist isFormatSupported(Landroid/media/MediaFormat;)Z
    .registers 7

    .line 1381
    if-eqz p1, :cond_3e

    .line 1385
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 1386
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1387
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1389
    nop

    .line 1390
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1391
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v2

    .line 1392
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1393
    add-int/lit8 v2, v2, 0x1

    .line 1394
    goto :goto_1c

    .line 1396
    :cond_39
    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->native_isFormatSupported([Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1382
    :cond_3e
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public blacklist isRegular()Z
    .registers 2

    .line 1377
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->native_isRegular()Z

    move-result v0

    return v0
.end method

.method public blacklist validFeatures()[Ljava/lang/String;
    .registers 2

    .line 1373
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsNativeImpl;->native_validFeatures()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
