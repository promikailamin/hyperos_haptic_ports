.class public Lcom/android/server/audio/AudioPlayBackTrigger;
.super Ljava/lang/Object;
.source "AudioPlayBackTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPlayBackTrigger"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMusicPlaybackMonitor:Landroid/media/IPlaybackConfigDispatcher;

.field private mSafeMediaVolumeDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTriggerCallback:Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTriggerCallback(Lcom/android/server/audio/AudioPlayBackTrigger;)Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioPlayBackTrigger;->mTriggerCallback:Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;Ljava/util/Set;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "triggerCallback"    # Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p3, "safeMediaVolumeDevices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/server/audio/AudioPlayBackTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioPlayBackTrigger$1;-><init>(Lcom/android/server/audio/AudioPlayBackTrigger;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioPlayBackTrigger;->mMusicPlaybackMonitor:Landroid/media/IPlaybackConfigDispatcher;

    .line 34
    iput-object p1, p0, Lcom/android/server/audio/AudioPlayBackTrigger;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/server/audio/AudioPlayBackTrigger;->mTriggerCallback:Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;

    .line 36
    iput-object p3, p0, Lcom/android/server/audio/AudioPlayBackTrigger;->mSafeMediaVolumeDevices:Ljava/util/Set;

    .line 37
    return-void
.end method


# virtual methods
.method public onCheckMusicPlaybackContinuous(Landroid/content/Context;IZLjava/util/Set;)V
    .registers 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "device"    # I
    .param p3, "isHigh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p4, "safeMediaVolumeDevices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioServiceStub;->onCheckMusicPlaybackContinuous(Landroid/content/Context;IZLjava/util/Set;)Z

    move-result v0

    .line 65
    .local v0, "needQueue":Z
    if-eqz v0, :cond_10

    .line 66
    iget-object v1, p0, Lcom/android/server/audio/AudioPlayBackTrigger;->mTriggerCallback:Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;->onQueueCallback(Z)V

    .line 68
    :cond_10
    return-void
.end method

.method public onTrigger(Ljava/util/List;I)V
    .registers 6
    .param p2, "device"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;I)V"
        }
    .end annotation

    .line 53
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/audio/AudioServiceStub;->onTrigger(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/audio/AudioPlayBackTrigger;->mSafeMediaVolumeDevices:Ljava/util/Set;

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 55
    .local v0, "isTrigger":Z
    :goto_1a
    if-eqz v0, :cond_21

    .line 56
    iget-object v2, p0, Lcom/android/server/audio/AudioPlayBackTrigger;->mTriggerCallback:Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;

    invoke-interface {v2, v1}, Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;->onQueueCallback(Z)V

    .line 58
    :cond_21
    return-void
.end method

.method public registerMusicPlaybackTrigger(Lcom/android/server/audio/PlaybackActivityMonitor;)V
    .registers 4
    .param p1, "mPlaybackMonitor"    # Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 40
    iget-object v0, p0, Lcom/android/server/audio/AudioPlayBackTrigger;->mMusicPlaybackMonitor:Landroid/media/IPlaybackConfigDispatcher;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    .line 41
    return-void
.end method
