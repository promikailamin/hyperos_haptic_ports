.class public final Landroid/media/metrics/PlaybackMetrics;
.super Ljava/lang/Object;
.source "PlaybackMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/PlaybackMetrics$Builder;,
        Landroid/media/metrics/PlaybackMetrics$ContentType;,
        Landroid/media/metrics/PlaybackMetrics$DrmType;,
        Landroid/media/metrics/PlaybackMetrics$PlaybackType;,
        Landroid/media/metrics/PlaybackMetrics$StreamType;,
        Landroid/media/metrics/PlaybackMetrics$StreamSource;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE_AD:I = 0x2

.field public static final whitelist CONTENT_TYPE_MAIN:I = 0x1

.field public static final whitelist CONTENT_TYPE_OTHER:I = 0x3

.field public static final whitelist CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/PlaybackMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DRM_TYPE_CLEARKEY:I = 0x6

.field public static final whitelist DRM_TYPE_NONE:I = 0x0

.field public static final whitelist DRM_TYPE_OTHER:I = 0x1

.field public static final whitelist DRM_TYPE_PLAY_READY:I = 0x2

.field public static final whitelist DRM_TYPE_WIDEVINE_L1:I = 0x3

.field public static final whitelist DRM_TYPE_WIDEVINE_L3:I = 0x4

.field public static final whitelist DRM_TYPE_WV_L3_FALLBACK:I = 0x5

.field public static final whitelist PLAYBACK_TYPE_LIVE:I = 0x2

.field public static final whitelist PLAYBACK_TYPE_OTHER:I = 0x3

.field public static final whitelist PLAYBACK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist PLAYBACK_TYPE_VOD:I = 0x1

.field public static final whitelist STREAM_SOURCE_DEVICE:I = 0x2

.field public static final whitelist STREAM_SOURCE_MIXED:I = 0x3

.field public static final whitelist STREAM_SOURCE_NETWORK:I = 0x1

.field public static final whitelist STREAM_SOURCE_UNKNOWN:I = 0x0

.field public static final whitelist STREAM_TYPE_DASH:I = 0x3

.field public static final whitelist STREAM_TYPE_HLS:I = 0x4

.field public static final whitelist STREAM_TYPE_OTHER:I = 0x1

.field public static final whitelist STREAM_TYPE_PROGRESSIVE:I = 0x2

.field public static final whitelist STREAM_TYPE_SS:I = 0x5

.field public static final whitelist STREAM_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mAudioUnderrunCount:I

.field private final blacklist mContentType:I

.field private final blacklist mDrmSessionId:[B

.field private final blacklist mDrmType:I

.field private final blacklist mExperimentIds:[J

.field private final blacklist mLocalBytesRead:J

.field private final blacklist mMediaDurationMillis:J

.field private final blacklist mMetricsBundle:Landroid/os/Bundle;

.field private final blacklist mNetworkBytesRead:J

.field private final blacklist mNetworkTransferDurationMillis:J

.field private final blacklist mPlaybackType:I

.field private final blacklist mPlayerName:Ljava/lang/String;

.field private final blacklist mPlayerVersion:Ljava/lang/String;

.field private final blacklist mStreamSource:I

.field private final blacklist mStreamType:I

.field private final blacklist mVideoFramesDropped:I

.field private final blacklist mVideoFramesPlayed:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 485
    new-instance v0, Landroid/media/metrics/PlaybackMetrics$1;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackMetrics$1;-><init>()V

    sput-object v0, Landroid/media/metrics/PlaybackMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JIIIIILjava/lang/String;Ljava/lang/String;[JIIIJJJ[BLandroid/os/Bundle;)V
    .registers 22

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    .line 195
    iput p3, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    .line 196
    iput p4, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    .line 197
    iput p5, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    .line 198
    iput p6, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    .line 199
    iput p7, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    .line 200
    iput-object p8, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    .line 201
    iput-object p9, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    .line 202
    iput-object p10, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    .line 203
    const-class p1, Landroid/annotation/NonNull;

    const/4 p2, 0x0

    iget-object p3, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 204
    iput p11, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    .line 205
    iput p12, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    .line 206
    iput p13, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    .line 207
    iput-wide p14, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    .line 208
    move-wide/from16 p1, p16

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    .line 209
    move-wide/from16 p1, p18

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    .line 210
    move-object/from16 p1, p20

    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    .line 211
    invoke-virtual/range {p21 .. p21}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    .line 212
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 25

    .line 443
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 444
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 451
    const-wide/16 v10, 0x80

    and-long/2addr v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_2c

    const/4 v10, 0x0

    goto :goto_30

    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 452
    :goto_30
    const-wide/16 v14, 0x100

    and-long/2addr v1, v14

    cmp-long v1, v1, v12

    if-nez v1, :cond_39

    const/4 v1, 0x0

    goto :goto_3d

    :cond_39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 453
    :goto_3d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 457
    move/from16 v16, v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 458
    move-wide/from16 v17, v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 459
    move-wide/from16 v19, v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 461
    new-array v15, v15, [B

    .line 462
    move-wide/from16 v21, v11

    move-object/from16 v11, p1

    invoke-virtual {v11, v15}, Landroid/os/Parcel;->readByteArray([B)V

    .line 463
    invoke-virtual {v11}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v11

    .line 465
    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    .line 466
    iput v5, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    .line 467
    iput v6, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    .line 468
    iput v7, v0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    .line 469
    iput v8, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    .line 470
    iput v9, v0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    .line 471
    iput-object v10, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    .line 472
    iput-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    .line 473
    iput-object v2, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    .line 474
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 475
    move/from16 v1, v16

    iput v1, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    .line 476
    iput v13, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    .line 477
    iput v14, v0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    .line 478
    move-wide/from16 v1, v17

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    .line 479
    move-wide/from16 v1, v19

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    .line 480
    move-wide/from16 v1, v21

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    .line 481
    iput-object v15, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    .line 482
    iput-object v11, v0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    .line 483
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 381
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 382
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_90

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_90

    .line 383
    :cond_13
    check-cast p1, Landroid/media/metrics/PlaybackMetrics;

    .line 384
    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    iget-wide v4, p1, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8e

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    if-ne v2, v3, :cond_8e

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    if-ne v2, v3, :cond_8e

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    if-ne v2, v3, :cond_8e

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    if-ne v2, v3, :cond_8e

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    if-ne v2, v3, :cond_8e

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    .line 390
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    .line 391
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    iget-object v3, p1, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    .line 392
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    if-ne v2, v3, :cond_8e

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    if-ne v2, v3, :cond_8e

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    if-ne v2, v3, :cond_8e

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    iget-wide v4, p1, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8e

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    iget-wide v4, p1, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8e

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    iget-wide v4, p1, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8e

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    iget-object p1, p1, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    .line 399
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_8e

    goto :goto_8f

    :cond_8e
    move v0, v1

    .line 384
    :goto_8f
    return v0

    .line 382
    :cond_90
    :goto_90
    return v1
.end method

.method public whitelist getAudioUnderrunCount()I
    .registers 2

    .line 310
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    return v0
.end method

.method public whitelist getContentType()I
    .registers 2

    .line 262
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    return v0
.end method

.method public whitelist getDrmSessionId()[B
    .registers 2

    .line 345
    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    return-object v0
.end method

.method public whitelist getDrmType()I
    .registers 2

    .line 254
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    return v0
.end method

.method public whitelist getExperimentIds()[J
    .registers 3

    .line 283
    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalBytesRead()J
    .registers 3

    .line 327
    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    return-wide v0
.end method

.method public whitelist getMediaDurationMillis()J
    .registers 3

    .line 221
    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    return-wide v0
.end method

.method public whitelist getMetricsBundle()Landroid/os/Bundle;
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getNetworkBytesRead()J
    .registers 3

    .line 319
    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    return-wide v0
.end method

.method public whitelist getNetworkTransferDurationMillis()J
    .registers 3

    .line 337
    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    return-wide v0
.end method

.method public whitelist getPlaybackType()I
    .registers 2

    .line 246
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    return v0
.end method

.method public whitelist getPlayerName()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPlayerVersion()Ljava/lang/String;
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStreamSource()I
    .registers 2

    .line 229
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    return v0
.end method

.method public whitelist getStreamType()I
    .registers 2

    .line 237
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    return v0
.end method

.method public whitelist getVideoFramesDropped()I
    .registers 2

    .line 301
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    return v0
.end method

.method public whitelist getVideoFramesPlayed()I
    .registers 2

    .line 292
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 20

    .line 404
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    .line 405
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    iget-object v10, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iget-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    .line 406
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    .line 408
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    iget-object v0, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    filled-new-array/range {v3 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    .line 404
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaybackMetrics { mediaDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drmType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", experimentIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    .line 368
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFramesPlayed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFramesDropped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioUnderrunCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkBytesRead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localBytesRead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkTransferDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "drmSessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    .line 375
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 413
    nop

    .line 414
    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    if-eqz p2, :cond_8

    const-wide/16 v0, 0x80

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x0

    .line 415
    :goto_a
    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    if-eqz p2, :cond_11

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    .line 416
    :cond_11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 417
    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 418
    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    if-eqz p2, :cond_3b

    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    :cond_3b
    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    if-eqz p2, :cond_44

    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    :cond_44
    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 426
    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 430
    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 431
    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 432
    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 434
    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 435
    return-void
.end method
