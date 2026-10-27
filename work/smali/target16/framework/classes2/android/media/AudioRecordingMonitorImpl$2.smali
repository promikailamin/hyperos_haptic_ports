.class Landroid/media/AudioRecordingMonitorImpl$2;
.super Landroid/os/Handler;
.source "AudioRecordingMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioRecordingMonitorImpl;->beginRecordingCallbackHandling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioRecordingMonitorImpl;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioRecordingMonitorImpl;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 171
    iput-object p1, p0, Landroid/media/AudioRecordingMonitorImpl$2;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$0(Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;Ljava/util/ArrayList;)V
    .registers 2

    .line 196
    iget-object p0, p0, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager$AudioRecordingCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_80

    .line 203
    const-string v0, "android.media.AudioRecordingMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 176
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_25

    .line 177
    return-void

    .line 179
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object p1, p0, Landroid/media/AudioRecordingMonitorImpl$2;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-static {p1}, Landroid/media/AudioRecordingMonitorImpl;->-$$Nest$fgetmRecordCallbackLock(Landroid/media/AudioRecordingMonitorImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 185
    :try_start_38
    iget-object p1, p0, Landroid/media/AudioRecordingMonitorImpl$2;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-static {p1}, Landroid/media/AudioRecordingMonitorImpl;->-$$Nest$fgetmRecordCallbackList(Landroid/media/AudioRecordingMonitorImpl;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_46

    .line 186
    monitor-exit v1

    return-void

    .line 188
    :cond_46
    new-instance p1, Ljava/util/LinkedList;

    iget-object v2, p0, Landroid/media/AudioRecordingMonitorImpl$2;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-static {v2}, Landroid/media/AudioRecordingMonitorImpl;->-$$Nest$fgetmRecordCallbackList(Landroid/media/AudioRecordingMonitorImpl;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 190
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_7b

    .line 192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 194
    :try_start_56
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;

    .line 195
    iget-object v4, v3, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/media/AudioRecordingMonitorImpl$2$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v0}, Landroid/media/AudioRecordingMonitorImpl$2$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;Ljava/util/ArrayList;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_70
    .catchall {:try_start_56 .. :try_end_70} :catchall_76

    .line 197
    goto :goto_5a

    .line 199
    :cond_71
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    nop

    .line 201
    goto :goto_7e

    .line 199
    :catchall_76
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    throw p1

    .line 190
    :catchall_7b
    move-exception p1

    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p1

    .line 206
    :goto_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method
