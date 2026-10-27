.class Landroid/media/AudioManager$3;
.super Landroid/media/IPlaybackConfigDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5950
    iput-object p1, p0, Landroid/media/AudioManager$3;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IPlaybackConfigDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .line 5954
    if-eqz p2, :cond_5

    .line 5955
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 5957
    :cond_5
    iget-object p2, p0, Landroid/media/AudioManager$3;->this$0:Landroid/media/AudioManager;

    invoke-static {p2}, Landroid/media/AudioManager;->-$$Nest$fgetmPlaybackCallbackLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 5958
    :try_start_c
    iget-object v0, p0, Landroid/media/AudioManager$3;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmPlaybackCallbackList(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 5959
    const/4 v0, 0x0

    :goto_15
    iget-object v1, p0, Landroid/media/AudioManager$3;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmPlaybackCallbackList(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 5960
    iget-object v1, p0, Landroid/media/AudioManager$3;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmPlaybackCallbackList(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    .line 5961
    iget-object v2, v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_49

    .line 5962
    iget-object v2, v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;

    iget-object v4, v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-direct {v3, v4, p1}, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;-><init>(Landroid/media/AudioManager$AudioPlaybackCallback;Ljava/util/List;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5966
    iget-object v3, v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5967
    iget-object v1, v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5959
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 5971
    :cond_4c
    monitor-exit p2

    .line 5972
    return-void

    .line 5971
    :catchall_4e
    move-exception p1

    monitor-exit p2
    :try_end_50
    .catchall {:try_start_c .. :try_end_50} :catchall_4e

    throw p1
.end method
