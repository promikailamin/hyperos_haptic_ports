.class public Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;
.super Ljava/lang/Object;
.source "PinnedTaskController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PinnedTaskController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PinnedTaskController;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/PinnedTaskController;Lcom/android/server/wm/PinnedTaskController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedTaskController;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedTaskController;->-$$Nest$fgetmService(Lcom/android/server/wm/PinnedTaskController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 77
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/PinnedTaskController;->-$$Nest$fputmPinnedTaskListener(Lcom/android/server/wm/PinnedTaskController;Landroid/view/IPinnedTaskListener;)V

    .line 78
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/wm/PinnedTaskController;->-$$Nest$fputmFreezingTaskConfig(Lcom/android/server/wm/PinnedTaskController;Z)V

    .line 79
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
