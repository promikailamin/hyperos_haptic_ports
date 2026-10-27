.class Lcom/android/server/audio/MediaFocusControl$3;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/MediaFocusControl;->initFocusThreading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1411
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1414
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    goto :goto_53

    .line 1440
    :pswitch_6
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1441
    :try_start_b
    invoke-static {}, Lcom/android/server/audio/MediaFocusControlStub;->getInstance()Lcom/android/server/audio/MediaFocusControlStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusHandler(Lcom/android/server/audio/MediaFocusControl;)Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/server/audio/MediaFocusControlStub;->handleDelayedMessage(Landroid/os/Message;Landroid/os/Handler;)V

    .line 1442
    monitor-exit v0

    .line 1443
    goto :goto_53

    .line 1442
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v1

    .line 1431
    :pswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->-$$Nest$fgetmUid(Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;)I

    move-result v0

    .line 1435
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/audio/PlayerFocusEnforcer;->forgetUid(I)V

    .line 1436
    goto :goto_53

    .line 1420
    .end local v0    # "uid":I
    :pswitch_2f
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1421
    :try_start_34
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 1422
    .local v1, "loser":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->isInFocusLossLimbo()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1423
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    .line 1424
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 1425
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$mpostForgetUidLater(Lcom/android/server/audio/MediaFocusControl;I)V

    .line 1427
    .end local v1    # "loser":Lcom/android/server/audio/FocusRequester;
    :cond_4e
    monitor-exit v0

    .line 1428
    goto :goto_53

    .line 1427
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_34 .. :try_end_52} :catchall_50

    throw v1

    .line 1448
    :goto_53
    return-void

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_1d
        :pswitch_6
    .end packed-switch
.end method
