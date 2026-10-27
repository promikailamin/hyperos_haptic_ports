.class Landroid/media/TextTrackCueSpan;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# instance fields
.field greylist-max-o mEnabled:Z

.field greylist-max-o mText:Ljava/lang/String;

.field greylist-max-o mTimestampMs:J


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;J)V
    .registers 6

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-wide p2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 78
    iput-object p1, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    .line 80
    iget-wide p1, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    .line 81
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 85
    instance-of v0, p1, Landroid/media/TextTrackCueSpan;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 86
    return v1

    .line 88
    :cond_6
    check-cast p1, Landroid/media/TextTrackCueSpan;

    .line 89
    iget-wide v2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iget-wide v4, p1, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    nop

    .line 89
    :goto_1d
    return v1
.end method
