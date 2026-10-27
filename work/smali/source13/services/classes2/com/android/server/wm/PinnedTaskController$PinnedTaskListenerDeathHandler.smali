.class Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;
.super Ljava/lang/Object;
.source "PinnedTaskController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PinnedTaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedTaskListenerDeathHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PinnedTaskController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PinnedTaskController;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PinnedTaskController;Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedTaskController;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedTaskController;->-$$Nest$fgetmService(Lcom/android/server/wm/PinnedTaskController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 101
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/PinnedTaskController;->-$$Nest$fputmPinnedTaskListener(Lcom/android/server/wm/PinnedTaskController;Landroid/view/IPinnedTaskListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/PinnedTaskController;->-$$Nest$fputmFreezingTaskConfig(Lcom/android/server/wm/PinnedTaskController;Z)V

    .line 103
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    invoke-static {v1}, Lcom/android/server/wm/PinnedTaskController;->-$$Nest$fgetmDeferOrientationTimeoutRunnable(Lcom/android/server/wm/PinnedTaskController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 104
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 105
    return-void

    .line 104
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
