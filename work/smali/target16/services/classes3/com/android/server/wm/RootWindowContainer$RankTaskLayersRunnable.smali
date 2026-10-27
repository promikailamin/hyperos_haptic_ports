.class public Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mCheckUpdateOomAdj:Z

.field public final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .registers 2

    .line 3959
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3964
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 3965
    :try_start_a
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-static {v1}, Lcom/android/server/wm/RootWindowContainer;->-$$Nest$fgetmTaskLayersChanged(Lcom/android/server/wm/RootWindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3966
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->this$0:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->-$$Nest$fputmTaskLayersChanged(Lcom/android/server/wm/RootWindowContainer;Z)V

    .line 3967
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_25

    .line 3969
    :cond_20
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
