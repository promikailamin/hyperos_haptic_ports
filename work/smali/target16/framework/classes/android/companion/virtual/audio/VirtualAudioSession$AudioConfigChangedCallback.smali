.class public final Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;
.super Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;
.source "VirtualAudioSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/audio/VirtualAudioSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioConfigChangedCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$FEyDDe1j6fzOD4go87fgaypmTU8(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->lambda$onPlaybackConfigChanged$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OYXOc07TPmi1sveiUIlPjyNA8g8(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->lambda$onPlaybackConfigChanged$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$V7-KrE-maeqTUYewDRgjmopO1zY(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->lambda$onRecordingConfigChanged$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yLW09yMsXkPhBzUwpmqv0MI2KLQ(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->lambda$onRecordingConfigChanged$3(Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)V
    .registers 4

    .line 86
    invoke-direct {p0}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;-><init>()V

    .line 87
    if-eqz p2, :cond_6

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    :goto_a
    iput-object p2, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 88
    iput-object p3, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    .line 89
    return-void
.end method

.method private synthetic blacklist lambda$onPlaybackConfigChanged$0(Ljava/util/List;)V
    .registers 3

    .line 95
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPlaybackConfigChanged$1(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRecordingConfigChanged$2(Ljava/util/List;)V
    .registers 3

    .line 103
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRecordingConfigChanged$3(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onPlaybackConfigChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    if-eqz v0, :cond_c

    .line 94
    new-instance v0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda2;-><init>(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 97
    :cond_c
    return-void
.end method

.method public blacklist onRecordingConfigChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    if-eqz v0, :cond_c

    .line 102
    new-instance v0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda3;-><init>(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 105
    :cond_c
    return-void
.end method
