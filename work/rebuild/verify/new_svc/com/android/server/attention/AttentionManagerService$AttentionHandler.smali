.class public Lcom/android/server/attention/AttentionManagerService$AttentionHandler;
.super Landroid/os/Handler;
.source "AttentionManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 2

    .line 816
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 817
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 822
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    return-void

    .line 833
    :cond_9
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 834
    :try_start_10
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->cancel()V

    .line 835
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0

    .line 825
    :cond_1a
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 826
    :try_start_21
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$mcancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService;)V

    .line 827
    monitor-exit p1

    return-void

    :catchall_28
    move-exception p0

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw p0
.end method
