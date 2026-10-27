.class final Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;
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
    name = "CodecCapsLegacyImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl$FeatureList;
    }
.end annotation


# instance fields
.field private blacklist mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

.field private blacklist mCapabilitiesInfo:Landroid/media/MediaFormat;

.field private blacklist mColorFormats:[I

.field private blacklist mDefaultFormat:Landroid/media/MediaFormat;

.field private blacklist mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

.field blacklist mError:I

.field private blacklist mFlagsRequired:I

.field private blacklist mFlagsSupported:I

.field private blacklist mFlagsVerified:I

.field private blacklist mMaxSupportedInstances:I

.field private blacklist mMime:Ljava/lang/String;

.field private blacklist mProfileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

.field private blacklist mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsupportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->supportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZLandroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .registers 10

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1250
    invoke-virtual {p5}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1251
    iput-object p2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mColorFormats:[I

    .line 1252
    const/4 p2, 0x0

    iput p2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsVerified:I

    .line 1253
    iput-object p4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mDefaultFormat:Landroid/media/MediaFormat;

    .line 1254
    iput-object p5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    .line 1255
    iget-object p4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mDefaultFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {p4, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    .line 1259
    array-length p4, p1

    const/4 v1, 0x1

    if-nez p4, :cond_3a

    iget-object p4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    .line 1260
    const-string v2, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3a

    .line 1261
    new-instance p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {p1}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 1262
    iput v1, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 1263
    invoke-static {p5}, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->equivalentVP9Level(Landroid/media/MediaFormat;)I

    move-result p4

    iput p4, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 1264
    new-array p4, v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aput-object p1, p4, p2

    move-object p1, p4

    .line 1266
    :cond_3a
    iput-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mProfileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 1268
    iget-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "audio/"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 1269
    invoke-static {p5, p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 1270
    iget-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    iget-object p4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mDefaultFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1, p4}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getDefaultFormat(Landroid/media/MediaFormat;)V

    goto :goto_7a

    .line 1271
    :cond_5a
    iget-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "video/"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_74

    iget-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    .line 1272
    const-string p4, "image/vnd.android.heic"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 1273
    :cond_74
    invoke-static {p5, p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 1275
    :cond_7a
    :goto_7a
    if-eqz p3, :cond_89

    .line 1276
    invoke-static {p5, p0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    .line 1277
    iget-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    iget-object p3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mDefaultFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1, p3}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->getDefaultFormat(Landroid/media/MediaFormat;)V

    .line 1280
    :cond_89
    invoke-static {}, Landroid/media/MediaCodecList;->getGlobalSettings()Ljava/util/Map;

    move-result-object p1

    .line 1281
    nop

    .line 1282
    const-string p3, "max-concurrent-instances"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1281
    const/16 p4, 0x20

    invoke-static {p1, p4}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMaxSupportedInstances:I

    .line 1284
    nop

    .line 1285
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget p3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMaxSupportedInstances:I

    .line 1284
    invoke-static {p1, p3}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    move-result p1

    .line 1286
    nop

    .line 1287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x100

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMaxSupportedInstances:I

    .line 1289
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object p1

    array-length p3, p1

    :goto_cb
    if-ge p2, p3, :cond_10d

    aget-object p4, p1, p2

    .line 1290
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature-"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    iget-object v2, p4, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 1291
    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1292
    if-nez v2, :cond_ed

    .line 1293
    goto :goto_10a

    .line 1295
    :cond_ed
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_fa

    .line 1296
    iget v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsRequired:I

    iget v3, p4, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    or-int/2addr v2, v3

    iput v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsRequired:I

    .line 1298
    :cond_fa
    iget v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsSupported:I

    iget v3, p4, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    or-int/2addr v2, v3

    iput v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsSupported:I

    .line 1299
    iget-boolean p4, p4, Landroid/media/MediaCodecInfo$Feature;->mInternal:Z

    if-nez p4, :cond_10a

    .line 1300
    iget-object p4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mDefaultFormat:Landroid/media/MediaFormat;

    invoke-virtual {p4, p5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1289
    :cond_10a
    :goto_10a
    add-int/lit8 p2, p2, 0x1

    goto :goto_cb

    .line 1304
    :cond_10d
    return-void
.end method

.method constructor blacklist <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZLjava/util/Map;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/media/MediaCodecInfo$CodecProfileLevel;",
            "[IZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1242
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4, p4}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5, p5}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZLandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 1245
    return-void
.end method

.method private blacklist checkFeature(Ljava/lang/String;I)Z
    .registers 9

    .line 993
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_1d

    aget-object v4, v0, v3

    .line 994
    iget-object v5, v4, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 995
    iget p1, v4, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_19

    const/4 v2, 0x1

    :cond_19
    return v2

    .line 993
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 998
    :cond_1d
    return v2
.end method

.method public static blacklist createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;
    .registers 10

    .line 1222
    new-instance v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 1223
    iput p1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 1224
    iput p2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 1225
    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    .line 1226
    const-string p1, "mime"

    invoke-virtual {v5, p1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    new-instance v1, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    const/4 p0, 0x1

    new-array v2, p0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const/4 p0, 0x0

    aput-object v0, v2, p0

    new-array v3, p0, [I

    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZLandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 1231
    iget p0, v1, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    if-eqz p0, :cond_2c

    .line 1232
    const/4 p0, 0x0

    return-object p0

    .line 1234
    :cond_2c
    return-object v1
.end method

.method private blacklist getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;
    .registers 2

    .line 989
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->isEncoder()Z

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl$FeatureList;->getFeatures(Z)[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isAudio()Z
    .registers 2

    .line 1197
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist isEncoder()Z
    .registers 2

    .line 1205
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist isVideo()Z
    .registers 2

    .line 1213
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static blacklist supportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/media/MediaFormat;",
            ")Z"
        }
    .end annotation

    .line 1101
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 1104
    const-string v0, "max-bitrate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1105
    const-string v1, "bitrate"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1106
    if-nez p1, :cond_17

    .line 1107
    goto :goto_2b

    .line 1108
    :cond_17
    if-eqz v0, :cond_2a

    .line 1109
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2b

    .line 1108
    :cond_2a
    move-object v0, p1

    .line 1112
    :goto_2b
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_38

    .line 1113
    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    .line 1116
    :cond_38
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist supportsProfileLevel(ILjava/lang/Integer;)Z
    .registers 12

    .line 1120
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mProfileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_c7

    aget-object v4, v0, v3

    .line 1121
    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v5, p1, :cond_f

    .line 1122
    goto/16 :goto_c2

    .line 1126
    :cond_f
    const/4 v5, 0x1

    if-nez p2, :cond_13

    .line 1127
    return v5

    .line 1131
    :cond_13
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1132
    return v5

    .line 1136
    :cond_1e
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    const-string v7, "audio/vnd.dts"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c6

    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    .line 1137
    const-string v7, "audio/vnd.dts.hd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c6

    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    .line 1138
    const-string v7, "audio/vnd.dts.uhd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto/16 :goto_c6

    .line 1144
    :cond_3e
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    const-string v7, "video/3gpp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1145
    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_5e

    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_5e

    .line 1146
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v5, :cond_5e

    .line 1147
    goto/16 :goto_c2

    .line 1153
    :cond_5e
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    const-string v7, "video/mp4v-es"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 1154
    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_7c

    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7c

    .line 1155
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v5, :cond_7c

    .line 1156
    goto :goto_c2

    .line 1161
    :cond_7c
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 1162
    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const v7, 0x2aaaaaa

    and-int/2addr v6, v7

    if-eqz v6, :cond_90

    move v6, v5

    goto :goto_91

    :cond_90
    move v6, v2

    .line 1164
    :goto_91
    nop

    .line 1165
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_9b

    move v7, v5

    goto :goto_9c

    :cond_9b
    move v7, v2

    .line 1167
    :goto_9c
    if-eqz v7, :cond_a1

    if-nez v6, :cond_a1

    .line 1168
    goto :goto_c2

    .line 1172
    :cond_a1
    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v6, v7, :cond_c2

    .line 1175
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    iget v1, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v0, p1, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 1176
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    move-result-object p1

    if-eqz p1, :cond_c0

    move v2, v5

    :cond_c0
    return v2

    .line 1178
    :cond_c1
    return v5

    .line 1120
    :cond_c2
    :goto_c2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 1139
    :cond_c6
    :goto_c6
    return v5

    .line 1181
    :cond_c7
    return v2
.end method


# virtual methods
.method public bridge synthetic blacklist dup()Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsIntf;
    .registers 2

    .line 847
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->dup()Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dup()Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;
    .registers 4

    .line 888
    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;-><init>()V

    .line 890
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mProfileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mProfileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mProfileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 891
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mColorFormats:[I

    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mColorFormats:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mColorFormats:[I

    .line 893
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    .line 894
    iget v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMaxSupportedInstances:I

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMaxSupportedInstances:I

    .line 895
    iget v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsRequired:I

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsRequired:I

    .line 896
    iget v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsSupported:I

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsSupported:I

    .line 897
    iget v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsVerified:I

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsVerified:I

    .line 898
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 899
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 900
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    .line 901
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mDefaultFormat:Landroid/media/MediaFormat;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mDefaultFormat:Landroid/media/MediaFormat;

    .line 902
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    .line 904
    return-object v0
.end method

.method public blacklist getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;
    .registers 2

    .line 1201
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    return-object v0
.end method

.method public blacklist getColorFormats()[I
    .registers 2

    .line 882
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mColorFormats:[I

    return-object v0
.end method

.method public blacklist getDefaultFormat()Landroid/media/MediaFormat;
    .registers 2

    .line 1185
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mDefaultFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public blacklist getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .registers 2

    .line 1209
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    return-object v0
.end method

.method public blacklist getMaxSupportedInstances()I
    .registers 2

    .line 1193
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMaxSupportedInstances:I

    return v0
.end method

.method public blacklist getMimeType()Ljava/lang/String;
    .registers 2

    .line 1189
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .registers 2

    .line 878
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mProfileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    return-object v0
.end method

.method public blacklist getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;
    .registers 2

    .line 1217
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    return-object v0
.end method

.method public blacklist isFeatureRequired(Ljava/lang/String;)Z
    .registers 3

    .line 912
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsRequired:I

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->checkFeature(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public blacklist isFeatureSupported(Ljava/lang/String;)Z
    .registers 3

    .line 908
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mFlagsSupported:I

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->checkFeature(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public blacklist isFormatSupported(Landroid/media/MediaFormat;)Z
    .registers 13

    .line 1012
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1013
    const-string v1, "mime"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1016
    const/4 v2, 0x0

    if-eqz v1, :cond_18

    iget-object v3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1017
    return v2

    .line 1021
    :cond_18
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_1e
    const/4 v5, 0x1

    if-ge v4, v3, :cond_66

    aget-object v6, v1, v4

    .line 1022
    iget-boolean v7, v6, Landroid/media/MediaCodecInfo$Feature;->mInternal:Z

    if-eqz v7, :cond_28

    .line 1023
    goto :goto_63

    .line 1026
    :cond_28
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "feature-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1027
    if-nez v7, :cond_46

    .line 1028
    goto :goto_63

    .line 1030
    :cond_46
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v5, :cond_54

    iget-object v5, v6, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1031
    :cond_54
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_63

    iget-object v5, v6, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1032
    :cond_62
    return v2

    .line 1021
    :cond_63
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1036
    :cond_66
    const-string v1, "profile"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1037
    const-string v3, "level"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1039
    if-eqz v1, :cond_f0

    .line 1040
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->supportsProfileLevel(ILjava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 1041
    return v2

    .line 1051
    :cond_83
    nop

    .line 1052
    nop

    .line 1053
    iget-object v3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mProfileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v4, v3

    move v6, v2

    move v7, v6

    :goto_8a
    if-ge v6, v4, :cond_b1

    aget-object v8, v3, v6

    .line 1054
    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_ae

    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-le v9, v7, :cond_ae

    .line 1057
    iget-object v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    const-string v10, "video/3gpp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ac

    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/16 v10, 0x10

    if-ne v9, v10, :cond_ac

    if-ne v7, v5, :cond_ae

    .line 1060
    :cond_ac
    iget v7, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 1053
    :cond_ae
    add-int/lit8 v6, v6, 0x1

    goto :goto_8a

    .line 1064
    :cond_b1
    iget-object v3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mMime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1, v7}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    move-result-object v1

    .line 1069
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1070
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 1071
    sget-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$VideoCapsLegacyImpl;->VIDEO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;

    goto :goto_d3

    .line 1072
    :cond_c9
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 1073
    sget-object v0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->AUDIO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;

    goto :goto_d3

    .line 1074
    :cond_d2
    const/4 v0, 0x0

    .line 1078
    :goto_d3
    if-eqz v0, :cond_f0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-le v4, v5, :cond_f0

    if-eqz v1, :cond_f0

    .line 1079
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1081
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0, v3}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    .line 1082
    invoke-virtual {v1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_f0

    .line 1083
    return v2

    .line 1087
    :cond_f0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    if-eqz v0, :cond_fd

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 1088
    return v2

    .line 1090
    :cond_fd
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-eqz v0, :cond_10a

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_10a

    .line 1091
    return v2

    .line 1093
    :cond_10a
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    if-eqz v0, :cond_117

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result p1

    if-nez p1, :cond_117

    .line 1094
    return v2

    .line 1096
    :cond_117
    return v5
.end method

.method public blacklist isRegular()Z
    .registers 7

    .line 1003
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_1b

    aget-object v4, v0, v3

    .line 1004
    iget-boolean v5, v4, Landroid/media/MediaCodecInfo$Feature;->mDefault:Z

    if-nez v5, :cond_18

    iget-object v4, v4, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1005
    return v2

    .line 1003
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1008
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist validFeatures()[Ljava/lang/String;
    .registers 6

    .line 978
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    .line 979
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 980
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    array-length v4, v0

    if-ge v3, v4, :cond_1e

    .line 981
    aget-object v4, v0, v3

    iget-boolean v4, v4, Landroid/media/MediaCodecInfo$Feature;->mInternal:Z

    if-nez v4, :cond_1b

    .line 982
    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 985
    :cond_1e
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
