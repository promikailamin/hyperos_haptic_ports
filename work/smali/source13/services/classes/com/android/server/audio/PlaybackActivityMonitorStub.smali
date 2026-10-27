.class public interface abstract Lcom/android/server/audio/PlaybackActivityMonitorStub;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitorStub.java"


# static fields
.field public static final KEY_IGNORE_MUSIC_FOCUS_REQ:Ljava/lang/String; = "key_ignore_music_focus_req"

.field public static final SOUND_ASSIST_KEY:Ljava/lang/String; = "sound_assist_key"


# direct methods
.method public static get()Lcom/android/server/audio/PlaybackActivityMonitorStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/audio/PlaybackActivityMonitorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitorStub;

    return-object v0
.end method


# virtual methods
.method public abstract enableScreenRecordingMode(ZLandroid/content/Context;)V
.end method

.method public getPkgVolumes()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayerVolume(Landroid/content/Context;Landroid/media/AudioPlaybackConfiguration;)F
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getPlayerVolume(Ljava/lang/String;)F
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getRouteCastUID()I
    .registers 2

    .line 64
    const/4 v0, -0x1

    return v0
.end method

.method public ignoreFocusRequest(Lcom/android/server/audio/FocusRequester;I)Z
    .registers 4
    .param p1, "frWinner"    # Lcom/android/server/audio/FocusRequester;
    .param p2, "uid"    # I

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public interruptMusicPlayback(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isForceIgnoreGranted()Z
    .registers 2

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public isSoundAssistOpen()Z
    .registers 2

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public abstract loadAppsVolume(Landroid/content/ContentResolver;)Z
.end method

.method public abstract loadSoundAssistSettings(Landroid/content/ContentResolver;)V
.end method

.method public abstract resetPlayerVolume(Landroid/content/Context;)V
.end method

.method public abstract setForceIgnoreGrantedStatus(Z)V
.end method

.method public abstract setPlayerVolume(Landroid/media/AudioPlaybackConfiguration;FLjava/lang/String;Landroid/content/Context;)V
.end method

.method public setRouteCastUID(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .line 61
    return-void
.end method

.method public abstract setSoundAssistStatus(Z)V
.end method

.method public abstract startPlayerVolumeService(Landroid/content/Context;II)V
.end method

.method public abstract updatePlayerVolumeByApc(Landroid/media/AudioPlaybackConfiguration;Ljava/lang/String;Landroid/content/Context;)V
.end method
