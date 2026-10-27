.class public Lcom/android/server/audio/AudioService$2;
.super Landroid/media/IAudioManagerNative$Stub;
.source "AudioService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 935
    iput-object p1, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/media/IAudioManagerNative$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public permissionUpdateBarrier()V
    .registers 1

    .line 966
    iget-object p0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->permissionUpdateBarrier()V

    return-void
.end method

.method public playbackHardeningEvent(IBZ)V
    .registers 7

    .line 943
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x411

    if-eq v0, v1, :cond_9

    return-void

    .line 946
    :cond_9
    const-string v0, "AS.AudioService"

    if-nez p2, :cond_14

    .line 947
    const-string/jumbo v1, "media_audio.value_audio_playback_hardening_partial_restriction"

    invoke-static {v1, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_1d

    :cond_14
    const/4 v1, 0x1

    if-ne p2, v1, :cond_6c

    .line 949
    const-string/jumbo v1, "media_audio.value_audio_playback_hardening_strict_would_restrict"

    invoke-static {v1, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 954
    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioHardening background playback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2d

    .line 955
    const-string/jumbo v2, "would be "

    goto :goto_2f

    :cond_2d
    const-string v2, ""

    :goto_2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "muted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    .line 957
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetPackageNameForUid(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), level: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_54

    .line 958
    const-string/jumbo p1, "partial"

    goto :goto_56

    :cond_54
    const-string p1, "full"

    :goto_56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 960
    iget-object p0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHardeningLogger(Lcom/android/server/audio/AudioService;)Lcom/android/server/utils/EventLogger;

    move-result-object p0

    if-eqz p3, :cond_67

    const/4 p2, 0x0

    goto :goto_68

    :cond_67
    const/4 p2, 0x2

    :goto_68
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 951
    :cond_6c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected hardening type"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public portMuteEvent(II)V
    .registers 4

    .line 976
    iget-object p0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPlaybackMonitor(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->portMuteEvent(III)V

    return-void
.end method
