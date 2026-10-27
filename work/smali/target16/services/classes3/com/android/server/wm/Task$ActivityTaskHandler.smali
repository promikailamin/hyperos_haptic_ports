.class public Lcom/android/server/wm/Task$ActivityTaskHandler;
.super Landroid/os/Handler;
.source "Task.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Task;Landroid/os/Looper;)V
    .registers 3

    .line 552
    iput-object p1, p0, Lcom/android/server/wm/Task$ActivityTaskHandler;->this$0:Lcom/android/server/wm/Task;

    .line 553
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 558
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_7

    return-void

    .line 560
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/Task$ActivityTaskHandler;->this$0:Lcom/android/server/wm/Task;

    iget-object p1, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 561
    :try_start_11
    iget-object p0, p0, Lcom/android/server/wm/Task$ActivityTaskHandler;->this$0:Lcom/android/server/wm/Task;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 562
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
