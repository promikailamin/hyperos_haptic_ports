.class Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RankTaskLayersRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .registers 2

    .line 3850
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3853
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3854
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-static {v1}, Lcom/android/server/wm/RootWindowContainer;->-$$Nest$fgetmTaskLayersChanged(Lcom/android/server/wm/RootWindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3855
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->this$0:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->-$$Nest$fputmTaskLayersChanged(Lcom/android/server/wm/RootWindowContainer;Z)V

    .line 3856
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 3858
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3859
    return-void

    .line 3858
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
