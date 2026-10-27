.class public final Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "AudioServiceEvents.java"


# instance fields
.field public final mEventType:I

.field public final mIntValue1:I

.field public final mIntValue2:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 752
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 753
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mEventType:I

    .line 754
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue1:I

    .line 755
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue2:I

    return-void
.end method

.method public static getClientDied(I)Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;
    .registers 4

    .line 767
    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;-><init>(III)V

    return-object v0
.end method

.method public static getStartPiid(II)Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;
    .registers 4

    .line 759
    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;-><init>(III)V

    return-object v0
.end method

.method public static getStopPiid(II)Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;
    .registers 4

    .line 763
    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 3

    .line 773
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mEventType:I

    if-eqz v0, :cond_43

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FIXME invalid event type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mEventType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 783
    :cond_1b
    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Loudness client with pid %d died"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 779
    :cond_2c
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue1:I

    .line 781
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 779
    const-string v0, "Stop loudness updates for piid %d for client pid %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 775
    :cond_43
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue1:I

    .line 777
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 775
    const-string v0, "Start loudness updates for piid %d for client pid %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
