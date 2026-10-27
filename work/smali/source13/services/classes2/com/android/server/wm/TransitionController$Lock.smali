.class Lcom/android/server/wm/TransitionController$Lock;
.super Ljava/lang/Object;
.source "TransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Lock"
.end annotation


# instance fields
.field private mTransitionWaiters:I

.field final synthetic this$0:Lcom/android/server/wm/TransitionController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TransitionController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/TransitionController;

    .line 622
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    return-void
.end method


# virtual methods
.method doNotifyLocked()V
    .registers 2

    .line 653
    monitor-enter p0

    .line 654
    :try_start_1
    iget v0, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    if-lez v0, :cond_8

    .line 655
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 657
    :cond_8
    monitor-exit p0

    .line 658
    return-void

    .line 657
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method runWhenIdle(JLjava/lang/Runnable;)V
    .registers 12
    .param p1, "timeout"    # J
    .param p3, "r"    # Ljava/lang/Runnable;

    .line 625
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 626
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 627
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 628
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 630
    :cond_1a
    :try_start_1a
    iget v1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 631
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 633
    .local v1, "startTime":J
    add-long v3, v1, p1

    .line 635
    .local v3, "endTime":J
    :goto_2a
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 636
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v3

    if-lez v0, :cond_45

    goto :goto_57

    .line 641
    :cond_45
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 642
    monitor-enter p0

    .line 644
    :try_start_4a
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4d} :catch_52
    .catchall {:try_start_4a .. :try_end_4d} :catchall_50

    .line 647
    nop

    .line 648
    :try_start_4e
    monitor-exit p0

    goto :goto_2a

    :catchall_50
    move-exception v0

    goto :goto_55

    .line 645
    :catch_52
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/InterruptedException;
    monitor-exit p0

    return-void

    .line 648
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_50

    throw v0

    .line 637
    :cond_57
    :goto_57
    :try_start_57
    iget v0, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 638
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 639
    monitor-exit v5
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 641
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v5
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 631
    .end local v1    # "startTime":J
    .end local v3    # "endTime":J
    :catchall_6b
    move-exception v1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
