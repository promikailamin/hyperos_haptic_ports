.class Lcom/android/server/audio/PlaybackActivityMonitor$1;
.super Landroid/os/Handler;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;->initEventHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/PlaybackActivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/audio/PlaybackActivityMonitor;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/audio/PlaybackActivityMonitor;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1357
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1360
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4a

    goto :goto_48

    .line 1362
    :pswitch_6
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout for muting waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unmuting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioService.PlaybackActivityMonitor"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;->loglogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmPlayerLock(Lcom/android/server/audio/PlaybackActivityMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1365
    :try_start_31
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$munmutePlayersExpectingDevice(Lcom/android/server/audio/PlaybackActivityMonitor;)V

    .line 1366
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_45

    .line 1367
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmMuteAwaitConnectionTimeoutCb(Lcom/android/server/audio/PlaybackActivityMonitor;)Ljava/util/function/Consumer;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1368
    goto :goto_48

    .line 1366
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1

    .line 1372
    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
