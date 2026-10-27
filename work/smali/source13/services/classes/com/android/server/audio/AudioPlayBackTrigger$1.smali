.class Lcom/android/server/audio/AudioPlayBackTrigger$1;
.super Landroid/media/IPlaybackConfigDispatcher$Stub;
.source "AudioPlayBackTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioPlayBackTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioPlayBackTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioPlayBackTrigger;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/audio/AudioPlayBackTrigger;

    .line 44
    iput-object p1, p0, Lcom/android/server/audio/AudioPlayBackTrigger$1;->this$0:Lcom/android/server/audio/AudioPlayBackTrigger;

    invoke-direct {p0}, Landroid/media/IPlaybackConfigDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    .registers 4
    .param p2, "flush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .line 48
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/audio/AudioPlayBackTrigger$1;->this$0:Lcom/android/server/audio/AudioPlayBackTrigger;

    invoke-static {v0}, Lcom/android/server/audio/AudioPlayBackTrigger;->-$$Nest$fgetmTriggerCallback(Lcom/android/server/audio/AudioPlayBackTrigger;)Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;->onTriggerCallback(Ljava/util/List;)V

    .line 49
    return-void
.end method
