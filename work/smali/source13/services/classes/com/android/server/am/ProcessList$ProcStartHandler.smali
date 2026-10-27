.class final Lcom/android/server/am/ProcessList$ProcStartHandler;
.super Landroid/os/Handler;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcStartHandler"
.end annotation


# static fields
.field static final MSG_PROCESS_DIED:I = 0x1

.field static final MSG_PROCESS_KILL_TIMEOUT:I = 0x2


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2165
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2166
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2167
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_2d

    .line 2176
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2177
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->handleProcessStartOrKillTimeoutLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 2179
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2d

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2173
    :pswitch_21
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->-$$Nest$mhandlePredecessorProcDied(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;)V

    .line 2174
    nop

    .line 2182
    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_6
    .end packed-switch
.end method
