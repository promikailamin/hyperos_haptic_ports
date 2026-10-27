.class Landroid/media/AudioTrack$StreamEventHandler;
.super Landroid/os/Handler;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamEventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioTrack;


# direct methods
.method public static synthetic blacklist $r8$lambda$4JJwngYADJwb6KtDnABGBlRkVEc(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioTrack$StreamEventHandler;->lambda$handleMessage$1(Landroid/media/AudioTrack$StreamEventCbInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nzI9tmPZ94tmqtB7zJCXQZn0ELc(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioTrack$StreamEventHandler;->lambda$handleMessage$2(Landroid/media/AudioTrack$StreamEventCbInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uKbHnBYiMZkL3kxt1XR7urTT-hs(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;Landroid/os/Message;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack$StreamEventHandler;->lambda$handleMessage$0(Landroid/media/AudioTrack$StreamEventCbInfo;Landroid/os/Message;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/AudioTrack;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4234
    iput-object p1, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    .line 4235
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4236
    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$0(Landroid/media/AudioTrack$StreamEventCbInfo;Landroid/os/Message;)V
    .registers 4

    .line 4270
    iget-object p1, p1, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    iget-object v0, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    iget p2, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0, p2}, Landroid/media/AudioTrack$StreamEventCallback;->onDataRequest(Landroid/media/AudioTrack;I)V

    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$1(Landroid/media/AudioTrack$StreamEventCbInfo;)V
    .registers 3

    .line 4275
    iget-object p1, p1, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    iget-object v0, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$StreamEventCallback;->onTearDown(Landroid/media/AudioTrack;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$2(Landroid/media/AudioTrack$StreamEventCbInfo;)V
    .registers 3

    .line 4279
    iget-object p1, p1, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    iget-object v0, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$StreamEventCallback;->onPresentationEnded(Landroid/media/AudioTrack;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 4241
    iget-object v0, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroid/media/AudioTrack;->-$$Nest$fgetmStreamEventCbLock(Landroid/media/AudioTrack;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4242
    :try_start_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_55

    .line 4243
    iget-object v1, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-static {v1}, Landroid/media/AudioTrack;->-$$Nest$fgetmPlayStateLock(Landroid/media/AudioTrack;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_b5

    .line 4244
    :try_start_13
    iget-object v2, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-static {v2}, Landroid/media/AudioTrack;->-$$Nest$fgetmPlayState(Landroid/media/AudioTrack;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_50

    .line 4245
    iget-object v2, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-static {v2}, Landroid/media/AudioTrack;->-$$Nest$fgetmOffloadEosPending(Landroid/media/AudioTrack;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_31

    .line 4246
    iget-object v2, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-static {v2}, Landroid/media/AudioTrack;->-$$Nest$mnative_start(Landroid/media/AudioTrack;)V

    .line 4247
    iget-object v2, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/media/AudioTrack;->-$$Nest$fputmPlayState(Landroid/media/AudioTrack;I)V

    goto :goto_42

    .line 4249
    :cond_31
    iget-object v2, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/media/AudioTrack;->-$$Nest$fputmAvSyncHeader(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;)V

    .line 4250
    iget-object v2, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-static {v2, v3}, Landroid/media/AudioTrack;->-$$Nest$fputmAvSyncBytesRemaining(Landroid/media/AudioTrack;I)V

    .line 4251
    iget-object v2, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/media/AudioTrack;->-$$Nest$fputmPlayState(Landroid/media/AudioTrack;I)V

    .line 4253
    :goto_42
    iget-object v2, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-static {v2, v3}, Landroid/media/AudioTrack;->-$$Nest$fputmOffloadEosPending(Landroid/media/AudioTrack;Z)V

    .line 4254
    iget-object v2, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-static {v2}, Landroid/media/AudioTrack;->-$$Nest$fgetmPlayStateLock(Landroid/media/AudioTrack;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 4256
    :cond_50
    monitor-exit v1

    goto :goto_55

    :catchall_52
    move-exception p1

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_52

    :try_start_54
    throw p1

    .line 4258
    :cond_55
    :goto_55
    iget-object v1, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-static {v1}, Landroid/media/AudioTrack;->-$$Nest$fgetmStreamEventCbInfoList(Landroid/media/AudioTrack;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_63

    .line 4259
    monitor-exit v0

    return-void

    .line 4261
    :cond_63
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-static {v2}, Landroid/media/AudioTrack;->-$$Nest$fgetmStreamEventCbInfoList(Landroid/media/AudioTrack;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 4262
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_54 .. :try_end_6f} :catchall_b5

    .line 4264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4266
    :try_start_73
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack$StreamEventCbInfo;

    .line 4267
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_b8

    :pswitch_88
    goto :goto_aa

    .line 4269
    :pswitch_89
    iget-object v4, v1, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventExec:Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v1, p1}, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;Landroid/os/Message;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4271
    goto :goto_aa

    .line 4278
    :pswitch_94
    iget-object v4, v1, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventExec:Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v1}, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda2;-><init>(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_aa

    .line 4274
    :pswitch_9f
    iget-object v4, v1, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventExec:Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v1}, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a9
    .catchall {:try_start_73 .. :try_end_a9} :catchall_b0

    .line 4276
    nop

    .line 4282
    :goto_aa
    goto :goto_77

    .line 4284
    :cond_ab
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4285
    nop

    .line 4286
    return-void

    .line 4284
    :catchall_b0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4285
    throw p1

    .line 4262
    :catchall_b5
    move-exception p1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw p1

    :pswitch_data_b8
    .packed-switch 0x6
        :pswitch_9f
        :pswitch_94
        :pswitch_88
        :pswitch_89
    .end packed-switch
.end method
