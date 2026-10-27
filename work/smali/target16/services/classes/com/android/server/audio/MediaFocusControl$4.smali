.class public Lcom/android/server/audio/MediaFocusControl$4;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V
    .registers 3

    .line 1620
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1623
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    return-void

    .line 1640
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    invoke-static {p1}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->-$$Nest$fgetmUid(Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;)I

    move-result p1

    .line 1644
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->forgetUid(I)V

    return-void

    .line 1629
    :cond_1b
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1630
    :try_start_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/FocusRequester;

    .line 1631
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isInFocusLossLimbo()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1632
    const-string/jumbo v1, "loss after fade"

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(ILjava/lang/String;)I

    .line 1633
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 1634
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$mpostForgetUidLater(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/FocusRequester;)V

    goto :goto_3c

    :catchall_3a
    move-exception p0

    goto :goto_3e

    .line 1636
    :cond_3c
    :goto_3c
    monitor-exit v0

    return-void

    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_3a

    throw p0
.end method
