.class final Lcom/android/server/am/ProcessList$KillHandler;
.super Landroid/os/Handler;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KillHandler"
.end annotation


# static fields
.field static final KILL_PROCESS_GROUP_MSG:I = 0xfa0

.field static final LMKD_RECONNECT_MSG:I = 0xfa1


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ProcessList;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 743
    iput-object p1, p0, Lcom/android/server/am/ProcessList$KillHandler;->this$0:Lcom/android/server/am/ProcessList;

    .line 744
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 745
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 749
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    .line 765
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_3d

    .line 756
    :pswitch_9
    invoke-static {}, Lcom/android/server/am/ProcessList;->-$$Nest$sfgetsLmkdConnection()Lcom/android/server/am/LmkdConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/LmkdConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 757
    const-string v0, "ActivityManager"

    const-string v1, "Failed to connect to lmkd, retry after 1000 ms"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v2, 0xfa1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3d

    .line 751
    :pswitch_2a
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "killProcessGroup"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 752
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/os/Process;->killProcessGroup(II)I

    .line 753
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 754
    nop

    .line 767
    :cond_3d
    :goto_3d
    return-void

    :pswitch_data_3e
    .packed-switch 0xfa0
        :pswitch_2a
        :pswitch_9
    .end packed-switch
.end method
