.class Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
.super Landroid/os/Handler;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 422
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 423
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 424
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 428
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    :pswitch_5
    goto :goto_37

    .line 442
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mdisablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V

    goto :goto_37

    .line 439
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$menablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V

    .line 440
    goto :goto_37

    .line 430
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 431
    :try_start_19
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_24

    .line 432
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_2a

    :cond_24
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 433
    .local v1, "targetBar":Lcom/android/server/wm/WindowState;
    :goto_2a
    if-eqz v1, :cond_32

    .line 434
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mrequestTransientBars(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Z)V

    .line 436
    .end local v1    # "targetBar":Lcom/android/server/wm/WindowState;
    :cond_32
    monitor-exit v0

    .line 437
    goto :goto_37

    .line 436
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_34

    throw v1

    .line 445
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_12
        :pswitch_5
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
