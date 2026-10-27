.class public final Landroid/media/EncoderProfiles$AudioProfile;
.super Ljava/lang/Object;
.source "EncoderProfiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/EncoderProfiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioProfile"
.end annotation


# instance fields
.field private blacklist bitrate:I

.field private blacklist channels:I

.field private blacklist codec:I

.field private blacklist profile:I

.field private blacklist sampleRate:I


# direct methods
.method constructor blacklist <init>(IIIII)V
    .registers 6

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput p1, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    .line 463
    iput p2, p0, Landroid/media/EncoderProfiles$AudioProfile;->channels:I

    .line 464
    iput p3, p0, Landroid/media/EncoderProfiles$AudioProfile;->sampleRate:I

    .line 465
    iput p4, p0, Landroid/media/EncoderProfiles$AudioProfile;->bitrate:I

    .line 466
    iput p5, p0, Landroid/media/EncoderProfiles$AudioProfile;->profile:I

    .line 467
    return-void
.end method


# virtual methods
.method public whitelist getBitrate()I
    .registers 2

    .line 420
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->bitrate:I

    return v0
.end method

.method public whitelist getChannels()I
    .registers 2

    .line 434
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->channels:I

    return v0
.end method

.method public whitelist getCodec()I
    .registers 2

    .line 391
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    return v0
.end method

.method public whitelist getMediaType()Ljava/lang/String;
    .registers 3

    .line 399
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 400
    const-string v0, "audio/3gpp"

    return-object v0

    .line 401
    :cond_8
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 402
    const-string v0, "audio/amr-wb"

    return-object v0

    .line 403
    :cond_10
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_38

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_38

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_20

    goto :goto_38

    .line 407
    :cond_20
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_28

    .line 408
    const-string v0, "audio/vorbis"

    return-object v0

    .line 409
    :cond_28
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_30

    .line 410
    const-string v0, "audio/opus"

    return-object v0

    .line 413
    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown codec"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_38
    :goto_38
    const-string v0, "audio/mp4a-latm"

    return-object v0
.end method

.method public whitelist getProfile()I
    .registers 4

    .line 444
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 445
    const/4 v0, 0x1

    return v0

    .line 446
    :cond_7
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x4

    const/4 v2, 0x5

    if-ne v0, v1, :cond_e

    .line 447
    return v2

    .line 448
    :cond_e
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    if-ne v0, v2, :cond_15

    .line 449
    const/16 v0, 0x27

    return v0

    .line 451
    :cond_15
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->profile:I

    return v0
.end method

.method public whitelist getSampleRate()I
    .registers 2

    .line 427
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->sampleRate:I

    return v0
.end method
