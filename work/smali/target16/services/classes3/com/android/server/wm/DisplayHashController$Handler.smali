.class public Lcom/android/server/wm/DisplayHashController$Handler;
.super Landroid/os/Handler;
.source "DisplayHashController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayHashController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayHashController;Landroid/os/Looper;)V
    .registers 3

    .line 547
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    .line 548
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 553
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    .line 557
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-static {p1}, Lcom/android/server/wm/DisplayHashController;->-$$Nest$fgetmServiceConnectionLock(Lcom/android/server/wm/DisplayHashController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 558
    :try_start_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-static {v0}, Lcom/android/server/wm/DisplayHashController;->-$$Nest$fgetmServiceConnection(Lcom/android/server/wm/DisplayHashController;)Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 559
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-static {v0}, Lcom/android/server/wm/DisplayHashController;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayHashController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-static {v1}, Lcom/android/server/wm/DisplayHashController;->-$$Nest$fgetmServiceConnection(Lcom/android/server/wm/DisplayHashController;)Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 560
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayHashController;->-$$Nest$fputmServiceConnection(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;)V

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 562
    :cond_2c
    :goto_2c
    monitor-exit p1

    return-void

    :goto_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_2a

    throw p0

    :cond_30
    return-void
.end method

.method public resetTimeoutMessage()V
    .registers 4

    const/4 v0, 0x1

    .line 577
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v1, 0x2710

    .line 578
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
