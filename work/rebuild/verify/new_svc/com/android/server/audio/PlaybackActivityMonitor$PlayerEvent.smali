.class public final Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "PlaybackActivityMonitor.java"


# instance fields
.field public final mEvent:I

.field public final mEventValues:[I

.field public final mPlayerIId:I


# direct methods
.method public constructor <init>(II[I)V
    .registers 4

    .line 1333
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 1334
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mPlayerIId:I

    .line 1335
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEvent:I

    .line 1336
    iput-object p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEventValues:[I

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 5

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "player piid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mPlayerIId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEvent:I

    .line 1343
    invoke-static {v1}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEvent:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v1, v2, :cond_bd

    const/4 v2, 0x6

    if-eq v1, v2, :cond_92

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2c

    .line 1389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1356
    :cond_2c
    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEventValues:[I

    aget p0, p0, v3

    if-gtz p0, :cond_3e

    .line 1359
    const-string/jumbo p0, "none "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8d

    :cond_3e
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_48

    .line 1362
    const-string/jumbo v1, "masterMute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_52

    .line 1365
    const-string/jumbo v1, "streamVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_5c

    .line 1368
    const-string/jumbo v1, "streamMute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_66

    .line 1371
    const-string/jumbo v1, "opPlayAudio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_66
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_6f

    .line 1374
    const-string v1, "clientVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6f
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_79

    .line 1377
    const-string/jumbo v1, "volumeShaper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_79
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_83

    .line 1380
    const-string/jumbo v1, "portVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_83
    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_8d

    .line 1383
    const-string/jumbo p0, "opControlAudio "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    :cond_8d
    :goto_8d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1347
    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEvent:I

    invoke-static {v1}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " portId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEventValues:[I

    .line 1348
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mapped to player piid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mPlayerIId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1351
    :cond_bd
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEventValues:[I

    array-length v2, v1

    if-lez v2, :cond_d4

    aget v1, v1, v3

    if-eqz v1, :cond_d4

    .line 1352
    const-string v1, " deviceIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEventValues:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    :cond_d4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
