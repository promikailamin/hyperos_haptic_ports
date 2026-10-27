.class public final Landroid/media/metrics/MediaItemInfo$Builder;
.super Ljava/lang/Object;
.source "MediaItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/MediaItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioChannelCount:I

.field private blacklist mAudioSampleCount:J

.field private blacklist mAudioSampleRateHz:I

.field private blacklist mClipDurationMillis:J

.field private final blacklist mCodecNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContainerMimeType:Ljava/lang/String;

.field private blacklist mDataTypes:J

.field private blacklist mDurationMillis:J

.field private final blacklist mSampleMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSourceType:I

.field private blacklist mVideoDataSpace:I

.field private blacklist mVideoFrameRate:F

.field private blacklist mVideoSampleCount:J

.field private blacklist mVideoSize:Landroid/util/Size;


# direct methods
.method public constructor whitelist <init>()V
    .registers 5

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mSourceType:I

    .line 316
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mDurationMillis:J

    .line 317
    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mClipDurationMillis:J

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mSampleMimeTypes:Ljava/util/ArrayList;

    .line 319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mCodecNames:Ljava/util/ArrayList;

    .line 320
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleRateHz:I

    .line 321
    iput v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioChannelCount:I

    .line 322
    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleCount:J

    .line 323
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSize:Landroid/util/Size;

    .line 324
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoFrameRate:F

    .line 325
    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSampleCount:J

    .line 326
    return-void
.end method


# virtual methods
.method public whitelist addCodecName(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 3

    .line 369
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mCodecNames:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    return-object p0
.end method

.method public whitelist addDataType(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 5

    .line 336
    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mDataTypes:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mDataTypes:J

    .line 337
    return-object p0
.end method

.method public whitelist addSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 3

    .line 360
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mSampleMimeTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    return-object p0
.end method

.method public whitelist build()Landroid/media/metrics/MediaItemInfo;
    .registers 24

    .line 422
    move-object/from16 v0, p0

    new-instance v1, Landroid/media/metrics/MediaItemInfo;

    move-object v2, v1

    iget v1, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mSourceType:I

    move-object v4, v2

    iget-wide v2, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mDataTypes:J

    move-object v6, v4

    iget-wide v4, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mDurationMillis:J

    move-object v8, v6

    iget-wide v6, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mClipDurationMillis:J

    move-object v9, v8

    iget-object v8, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mContainerMimeType:Ljava/lang/String;

    move-object v10, v9

    iget-object v9, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mSampleMimeTypes:Ljava/util/ArrayList;

    move-object v11, v10

    iget-object v10, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mCodecNames:Ljava/util/ArrayList;

    move-object v12, v11

    iget v11, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleRateHz:I

    move-object v13, v12

    iget v12, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioChannelCount:I

    move-object v15, v13

    iget-wide v13, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleCount:J

    move-object/from16 v16, v15

    iget-object v15, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSize:Landroid/util/Size;

    move/from16 v17, v1

    iget v1, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoDataSpace:I

    move/from16 v18, v1

    iget v1, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoFrameRate:F

    move/from16 v19, v1

    iget-wide v0, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSampleCount:J

    const/16 v20, 0x0

    move-wide/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move-wide/from16 v18, v21

    invoke-direct/range {v0 .. v20}, Landroid/media/metrics/MediaItemInfo;-><init>(IJJJLjava/lang/String;Ljava/util/List;Ljava/util/List;IIJLandroid/util/Size;IFJLandroid/media/metrics/MediaItemInfo-IA;)V

    move-object v15, v0

    return-object v15
.end method

.method public whitelist setAudioChannelCount(I)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 2

    .line 381
    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioChannelCount:I

    .line 382
    return-object p0
.end method

.method public whitelist setAudioSampleCount(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 3

    .line 387
    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleCount:J

    .line 388
    return-object p0
.end method

.method public whitelist setAudioSampleRateHz(I)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 2

    .line 375
    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleRateHz:I

    .line 376
    return-object p0
.end method

.method public whitelist setClipDurationMillis(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 3

    .line 348
    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mClipDurationMillis:J

    .line 349
    return-object p0
.end method

.method public whitelist setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 2

    .line 354
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mContainerMimeType:Ljava/lang/String;

    .line 355
    return-object p0
.end method

.method public whitelist setDurationMillis(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 3

    .line 342
    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mDurationMillis:J

    .line 343
    return-object p0
.end method

.method public whitelist setSourceType(I)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 2

    .line 330
    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mSourceType:I

    .line 331
    return-object p0
.end method

.method public whitelist setVideoDataSpace(I)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 2

    .line 403
    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoDataSpace:I

    .line 404
    return-object p0
.end method

.method public whitelist setVideoFrameRate(F)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 2

    .line 409
    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoFrameRate:F

    .line 410
    return-object p0
.end method

.method public whitelist setVideoSampleCount(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 3

    .line 415
    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSampleCount:J

    .line 416
    return-object p0
.end method

.method public whitelist setVideoSize(Landroid/util/Size;)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 2

    .line 393
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    iput-object p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSize:Landroid/util/Size;

    .line 394
    return-object p0
.end method
