.class public final Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "AudioServiceEvents.java"


# instance fields
.field public final mRingerZenMutedStreams:I

.field public final mStreamType:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 824
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 825
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mStreamType:I

    .line 826
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mRingerZenMutedStreams:I

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 4

    .line 832
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mStreamType:I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    if-gt v0, v1, :cond_11

    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mStreamType:I

    if-ltz v0, :cond_11

    .line 833
    sget-object v1, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_25

    .line 834
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid call to unmute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " despite muted streams 0x"

    .line 837
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mRingerZenMutedStreams:I

    .line 838
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
