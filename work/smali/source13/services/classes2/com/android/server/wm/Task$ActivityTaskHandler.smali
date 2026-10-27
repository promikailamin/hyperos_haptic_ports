.class Lcom/android/server/wm/Task$ActivityTaskHandler;
.super Landroid/os/Handler;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityTaskHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/Task;


# direct methods
.method constructor <init>(Lcom/android/server/wm/Task;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 600
    iput-object p1, p0, Lcom/android/server/wm/Task$ActivityTaskHandler;->this$0:Lcom/android/server/wm/Task;

    .line 601
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 602
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 606
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_3a

    goto :goto_38

    .line 614
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wm/Task$ActivityTaskHandler;->this$0:Lcom/android/server/wm/Task;

    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task$ActivityTaskHandler;->this$0:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/wm/Task$ActivityTaskHandler;->this$0:Lcom/android/server/wm/Task;

    iget-object v3, v3, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/wm/Task$ActivityTaskHandler;->this$0:Lcom/android/server/wm/Task;

    .line 615
    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/wm/PreloadStateManagerStub;->stopPreloadActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mForceStop:Z

    goto :goto_38

    .line 608
    :sswitch_1d
    iget-object v0, p0, Lcom/android/server/wm/Task$ActivityTaskHandler;->this$0:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 609
    iget-object v1, p0, Lcom/android/server/wm/Task$ActivityTaskHandler;->this$0:Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 610
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 611
    goto :goto_38

    .line 610
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 620
    :goto_38
    return-void

    nop

    :sswitch_data_3a
    .sparse-switch
        0x65 -> :sswitch_1d
        0xc7 -> :sswitch_6
    .end sparse-switch
.end method
