.class public Lcom/android/server/wm/RootWindowContainer$2;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic val$enterPipThrowable:Ljava/lang/Throwable;

.field public final synthetic val$rootTask:Lcom/android/server/wm/Task;


# direct methods
.method public static synthetic $r8$lambda$VW-uz22woI0-jAF4lBFxBrbGx_Q(Lcom/android/server/wm/RootWindowContainer$2;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$2;->lambda$run$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Task;Ljava/lang/Throwable;)V
    .registers 4

    .line 2348
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/Task;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$enterPipThrowable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$run$0(Ljava/lang/Runnable;)V
    .registers 3

    .line 2361
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-static {v0}, Lcom/android/server/wm/RootWindowContainer;->-$$Nest$fgetmMaybeAbortPipEnterRunnable(Lcom/android/server/wm/RootWindowContainer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq p1, v0, :cond_9

    return-void

    .line 2362
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/wm/RootWindowContainer;->-$$Nest$fputmMaybeAbortPipEnterRunnable(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/Runnable;)V

    .line 2363
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer$2;->run()V

    return-void
.end method

.method public run()V
    .registers 6

    .line 2351
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2352
    :try_start_a
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2356
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-static {v1}, Lcom/android/server/wm/RootWindowContainer;->-$$Nest$fgetmMaybeAbortPipEnterRunnable(Lcom/android/server/wm/RootWindowContainer;)Ljava/lang/Runnable;

    move-result-object v1

    .line 2357
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RootWindowContainer$2;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2365
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2d
    move-exception p0

    goto :goto_8a

    .line 2367
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->-$$Nest$fputmMaybeAbortPipEnterRunnable(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/Runnable;)V

    .line 2369
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 2370
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2371
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/Task;

    .line 2372
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v1, :cond_7e

    .line 2373
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-nez v3, :cond_7e

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/Task;

    .line 2374
    invoke-virtual {v3, v1}, Lcom/android/server/wm/Task;->abortPipEnter(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 2375
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter PiP was aborted via a scheduled timeouttask_state_before="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "task_state_after="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/Task;

    .line 2377
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$enterPipThrowable:Ljava/lang/Throwable;

    .line 2375
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2380
    :cond_7e
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2381
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_2f .. :try_end_86} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_8a
    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
