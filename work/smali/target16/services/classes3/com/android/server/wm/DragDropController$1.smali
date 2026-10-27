.class public Lcom/android/server/wm/DragDropController$1;
.super Ljava/lang/Object;
.source "DragDropController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragDropController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragDropController;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/android/server/wm/DragDropController$1;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$1;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {v0}, Lcom/android/server/wm/DragDropController;->-$$Nest$fgetmService(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 100
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$1;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1}, Lcom/android/server/wm/DragDropController;->hasPendingUnhandledDropCallback()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 101
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$1;->this$0:Lcom/android/server/wm/DragDropController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DragDropController;->onUnhandledDropCallback(Z)V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_28

    .line 103
    :cond_1d
    :goto_1d
    iget-object p0, p0, Lcom/android/server/wm/DragDropController$1;->this$0:Lcom/android/server/wm/DragDropController;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragDropController;->setGlobalDragListener(Landroid/window/IGlobalDragListener;)V

    .line 104
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
