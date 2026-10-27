.class final Lcom/android/server/audio/AudioServiceEvents$SetMasterMuteEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioServiceEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioServiceEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SetMasterMuteEvent"
.end annotation


# instance fields
.field final mEventSource:Ljava/lang/String;

.field final mMute:Z

.field final mUserId:I


# direct methods
.method constructor <init>(ZILjava/lang/String;)V
    .registers 4
    .param p1, "mute"    # Z
    .param p2, "userId"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 154
    iput-boolean p1, p0, Lcom/android/server/audio/AudioServiceEvents$SetMasterMuteEvent;->mMute:Z

    .line 155
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$SetMasterMuteEvent;->mUserId:I

    .line 156
    iput-object p3, p0, Lcom/android/server/audio/AudioServiceEvents$SetMasterMuteEvent;->mEventSource:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call AudioSystem.setMasterMute() with parameter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v1, "mute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioServiceEvents$SetMasterMuteEvent;->mMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string v1, ", userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$SetMasterMuteEvent;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    const-string v1, ", from eventSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$SetMasterMuteEvent;->mEventSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    return-object v0
.end method
