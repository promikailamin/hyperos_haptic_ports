.class public final Landroid/media/MediaExtractor;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaExtractor$CasInfo;,
        Landroid/media/MediaExtractor$MetricsConstants;,
        Landroid/media/MediaExtractor$SampleFlag;,
        Landroid/media/MediaExtractor$SeekMode;
    }
.end annotation


# static fields
.field public static final whitelist SAMPLE_FLAG_ENCRYPTED:I = 0x2

.field public static final whitelist SAMPLE_FLAG_PARTIAL_FRAME:I = 0x4

.field public static final whitelist SAMPLE_FLAG_SYNC:I = 0x1

.field public static final whitelist SEEK_TO_CLOSEST_SYNC:I = 0x2

.field public static final whitelist SEEK_TO_NEXT_SYNC:I = 0x1

.field public static final whitelist SEEK_TO_PREVIOUS_SYNC:I


# instance fields
.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private greylist-max-o mMediaCas:Landroid/media/MediaCas;

.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 813
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 814
    invoke-static {}, Landroid/media/MediaExtractor;->native_init()V

    .line 815
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v0, p0, Landroid/media/MediaExtractor;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 79
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_setup()V

    .line 80
    return-void
.end method

.method private native greylist-max-o getFileFormatNative()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private native greylist-max-o getTrackFormatNative(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method static synthetic blacklist lambda$getDrmInitData$0(Ljava/util/Map$Entry;)Landroid/media/DrmInitData$SchemeInitData;
    .registers 4

    .line 394
    new-instance v0, Landroid/media/DrmInitData$SchemeInitData;

    .line 395
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v2, "cenc"

    invoke-direct {v0, v1, v2, p0}, Landroid/media/DrmInitData$SchemeInitData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 394
    return-object v0
.end method

.method static synthetic blacklist lambda$getDrmInitData$1(I)[Landroid/media/DrmInitData$SchemeInitData;
    .registers 1

    .line 396
    new-array p0, p0, [Landroid/media/DrmInitData$SchemeInitData;

    return-object p0
.end method

.method static synthetic blacklist lambda$getDrmInitData$2(Landroid/media/DrmInitData$SchemeInitData;)Ljava/util/UUID;
    .registers 1

    .line 399
    iget-object p0, p0, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic blacklist lambda$getDrmInitData$3(Landroid/media/DrmInitData$SchemeInitData;)Landroid/media/DrmInitData$SchemeInitData;
    .registers 1

    .line 399
    return-object p0
.end method

.method private final native greylist-max-o nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native greylist-max-o nativeSetMediaCas(Landroid/os/IHwBinder;)V
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private native blacklist native_getAudioPresentations(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private native blacklist native_setLogSessionId(Ljava/lang/String;)V
.end method

.method private final native greylist-max-o native_setup()V
.end method


# virtual methods
.method public native whitelist advance()Z
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 360
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_finalize()V

    .line 361
    return-void
.end method

.method public whitelist getAudioPresentations(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation

    .line 458
    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->native_getAudioPresentations(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public native whitelist getCachedDuration()J
.end method

.method public whitelist getCasInfo(I)Landroid/media/MediaExtractor$CasInfo;
    .registers 7

    .line 335
    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    move-result-object p1

    .line 336
    const-string v0, "ca-system-id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    .line 337
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 338
    nop

    .line 339
    nop

    .line 340
    const-string v1, "ca-private-data"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 341
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 342
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 343
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 344
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_35

    .line 340
    :cond_34
    move-object v3, v2

    .line 346
    :goto_35
    iget-object v1, p0, Landroid/media/MediaExtractor;->mMediaCas:Landroid/media/MediaCas;

    if-eqz v1, :cond_59

    const-string v1, "ca-session-id"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 347
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 348
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 349
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 350
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 351
    iget-object p1, p0, Landroid/media/MediaExtractor;->mMediaCas:Landroid/media/MediaCas;

    invoke-virtual {p1, v1}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;

    move-result-object v2

    .line 353
    :cond_59
    new-instance p1, Landroid/media/MediaExtractor$CasInfo;

    invoke-direct {p1, v0, v2, v3}, Landroid/media/MediaExtractor$CasInfo;-><init>(ILandroid/media/MediaCas$Session;[B)V

    return-object p1

    .line 355
    :cond_5f
    return-object v2
.end method

.method public whitelist getDrmInitData()Landroid/media/DrmInitData;
    .registers 7

    .line 386
    invoke-direct {p0}, Landroid/media/MediaExtractor;->getFileFormatNative()Ljava/util/Map;

    move-result-object v0

    .line 387
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 388
    return-object v1

    .line 390
    :cond_8
    const-string v2, "pssh"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 391
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getPsshInfo()Ljava/util/Map;

    move-result-object v0

    .line 392
    nop

    .line 393
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/MediaExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaExtractor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/MediaExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/media/MediaExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 396
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/DrmInitData$SchemeInitData;

    .line 397
    nop

    .line 398
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/media/MediaExtractor$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Landroid/media/MediaExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroid/media/MediaExtractor$$ExternalSyntheticLambda3;-><init>()V

    .line 399
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 398
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 400
    new-instance v2, Landroid/media/MediaExtractor$1;

    invoke-direct {v2, p0, v1, v0}, Landroid/media/MediaExtractor$1;-><init>(Landroid/media/MediaExtractor;Ljava/util/Map;[Landroid/media/DrmInitData$SchemeInitData;)V

    return-object v2

    .line 416
    :cond_50
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    .line 417
    const/4 v2, 0x0

    :goto_55
    if-ge v2, v0, :cond_88

    .line 418
    invoke-direct {p0, v2}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    move-result-object v3

    .line 419
    const-string v4, "crypto-key"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_67

    .line 420
    nop

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 422
    :cond_67
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 423
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 424
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 425
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 427
    new-instance v0, Landroid/media/DrmInitData$SchemeInitData;

    sget-object v2, Landroid/media/DrmInitData$SchemeInitData;->UUID_NIL:Ljava/util/UUID;

    const-string v3, "webm"

    invoke-direct {v0, v2, v3, v1}, Landroid/media/DrmInitData$SchemeInitData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 430
    new-instance v1, Landroid/media/MediaExtractor$2;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaExtractor$2;-><init>(Landroid/media/MediaExtractor;Landroid/media/DrmInitData$SchemeInitData;)V

    return-object v1

    .line 447
    :cond_88
    return-object v1
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 785
    iget-object v0, p0, Landroid/media/MediaExtractor;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 801
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 802
    return-object v0
.end method

.method public whitelist getPsshInfo()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 476
    nop

    .line 477
    invoke-direct {p0}, Landroid/media/MediaExtractor;->getFileFormatNative()Ljava/util/Map;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_53

    const-string v1, "pssh"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 479
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 480
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 481
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 482
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 485
    :goto_27
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_54

    .line 486
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 487
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 488
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    .line 489
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    .line 490
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 491
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 492
    new-array v3, v3, [B

    .line 493
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 494
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    goto :goto_27

    .line 497
    :cond_53
    const/4 v0, 0x0

    :cond_54
    return-object v0
.end method

.method public native whitelist getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z
.end method

.method public native whitelist getSampleFlags()I
.end method

.method public native whitelist getSampleSize()J
.end method

.method public native whitelist getSampleTime()J
.end method

.method public native whitelist getSampleTrackIndex()I
.end method

.method public final native whitelist getTrackCount()I
.end method

.method public whitelist getTrackFormat(I)Landroid/media/MediaFormat;
    .registers 3

    .line 615
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public native whitelist hasCacheReachedEndOfStream()Z
.end method

.method public native whitelist readSampleData(Ljava/nio/ByteBuffer;I)I
.end method

.method public final native whitelist release()V
.end method

.method public native whitelist seekTo(JI)V
.end method

.method public native whitelist selectTrack(I)V
.end method

.method public final whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_6d

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v2, p0

    goto :goto_6e

    .line 114
    :cond_10
    nop

    .line 116
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 117
    const-string v0, "r"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_1c} :catch_5e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_59
    .catchall {:try_start_12 .. :try_end_1c} :catchall_51

    .line 118
    if-nez v1, :cond_24

    .line 136
    if-eqz v1, :cond_23

    .line 137
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 119
    :cond_23
    return-void

    .line 124
    :cond_24
    :try_start_24
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gez p1, :cond_36

    .line 125
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_47

    .line 127
    :cond_36
    nop

    .line 128
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 129
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    .line 130
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v6
    :try_end_43
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_43} :catch_5e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_43} :catch_59
    .catchall {:try_start_24 .. :try_end_43} :catchall_51

    .line 127
    move-object v2, p0

    :try_start_44
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_47} :catch_4f
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_4d
    .catchall {:try_start_44 .. :try_end_47} :catchall_51

    .line 136
    :goto_47
    if-eqz v1, :cond_4c

    .line 137
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 132
    :cond_4c
    return-void

    .line 134
    :catch_4d
    move-exception v0

    goto :goto_5b

    .line 133
    :catch_4f
    move-exception v0

    goto :goto_60

    .line 136
    :catchall_51
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_58

    .line 137
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 139
    :cond_58
    throw p1

    .line 134
    :catch_59
    move-exception v0

    move-object v2, p0

    .line 136
    :goto_5b
    if-eqz v1, :cond_65

    .line 137
    goto :goto_62

    .line 133
    :catch_5e
    move-exception v0

    move-object v2, p0

    .line 136
    :goto_60
    if-eqz v1, :cond_65

    .line 137
    :goto_62
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 141
    :cond_65
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 142
    return-void

    .line 109
    :cond_6d
    move-object v2, p0

    .line 110
    :goto_6e
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public final whitelist setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 218
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    .line 223
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_25

    .line 225
    :cond_15
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 227
    :goto_25
    return-void
.end method

.method public final native whitelist setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 237
    return-void
.end method

.method public final native whitelist setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist setDataSource(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    nop

    .line 203
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 202
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public final whitelist setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    nop

    .line 159
    nop

    .line 161
    if-eqz p2, :cond_39

    .line 162
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 163
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 165
    nop

    .line 166
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 167
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v2

    .line 168
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 169
    add-int/lit8 v2, v2, 0x1

    .line 170
    goto :goto_1a

    .line 161
    :cond_39
    const/4 v0, 0x0

    move-object v1, v0

    .line 173
    :cond_3b
    nop

    .line 174
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 173
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 3

    .line 776
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/LogSessionId;

    iput-object v0, p0, Landroid/media/MediaExtractor;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 777
    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->native_setLogSessionId(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method public final whitelist setMediaCas(Landroid/media/MediaCas;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    iput-object p1, p0, Landroid/media/MediaExtractor;->mMediaCas:Landroid/media/MediaCas;

    .line 265
    invoke-virtual {p1}, Landroid/media/MediaCas;->getBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->nativeSetMediaCas(Landroid/os/IHwBinder;)V

    .line 266
    return-void
.end method

.method public native whitelist unselectTrack(I)V
.end method
