.class public final Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityTaskSupervisor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V
    .registers 3

    .line 2825
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2826
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final activityIdleFromMessage(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 4

    .line 2857
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 2831
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2832
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->handleMessageInner(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2833
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception p0

    goto :goto_60

    .line 2835
    :cond_17
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2837
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd5

    if-eq v0, v1, :cond_22

    goto :goto_5a

    .line 2839
    :cond_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2842
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 2843
    :try_start_30
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2844
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 2845
    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    goto :goto_49

    :catchall_45
    move-exception p0

    goto :goto_5b

    :cond_47
    const/4 v0, 0x0

    const/4 p1, 0x0

    .line 2847
    :goto_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_5a

    .line 2849
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "restartActivityProcessTimeout"

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5a
    :goto_5a
    return-void

    .line 2847
    :goto_5b
    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 2835
    :goto_60
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final handleMessageInner(Landroid/os/Message;)Z
    .registers 6

    .line 2867
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_101

    const-string v1, "ActivityTaskManager"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_112

    packed-switch v0, :pswitch_data_124

    return v3

    .line 2934
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity top resumed state loss timeout for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleTopResumedStateReleasedIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    goto/16 :goto_110

    .line 2928
    :pswitch_30
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->-$$Nest$fgetmHandler(Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    move-result-object v0

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2931
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnEmptyDisplays(Ljava/lang/String;)V

    goto/16 :goto_110

    .line 2875
    :pswitch_48
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->-$$Nest$fgetmPipModeChangedActivities(Lcom/android/server/wm/ActivityTaskSupervisor;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_53
    if-ltz p1, :cond_110

    .line 2876
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->-$$Nest$fgetmPipModeChangedActivities(Lcom/android/server/wm/ActivityTaskSupervisor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 2877
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->-$$Nest$fgetmPipModeChangedTargetRootTaskBounds(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_53

    .line 2869
    :pswitch_6d
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->-$$Nest$fgetmMultiWindowModeChangedActivities(Lcom/android/server/wm/ActivityTaskSupervisor;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_78
    if-ltz p1, :cond_110

    .line 2870
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->-$$Nest$fgetmMultiWindowModeChangedActivities(Lcom/android/server/wm/ActivityTaskSupervisor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 2871
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->updateMultiWindowMode()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_78

    .line 2915
    :pswitch_8c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/Task;

    .line 2916
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    if-eqz v0, :cond_110

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 2917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroy timeout of remove-task, attempt to kill "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->-$$Nest$mkillTaskProcessesIfPossible(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Task;)V

    goto :goto_110

    .line 2911
    :pswitch_b4
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 p1, 0x0

    const-string v0, "transit"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    goto :goto_110

    .line 2902
    :pswitch_bd
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_110

    .line 2903
    const-string p1, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_110

    .line 2896
    :pswitch_d4
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result p1

    if-eqz p1, :cond_110

    .line 2897
    const-string p1, "Sleep timeout!  Sleeping now."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    goto :goto_110

    .line 2893
    :pswitch_e9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_110

    .line 2890
    :pswitch_f1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->activityIdleFromMessage(Lcom/android/server/wm/ActivityRecord;Z)V

    goto :goto_110

    .line 2886
    :pswitch_f9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->activityIdleFromMessage(Lcom/android/server/wm/ActivityRecord;Z)V

    goto :goto_110

    .line 2922
    :cond_101
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_110

    .line 2924
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->-$$Nest$mhandleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityRecord;)V

    :cond_110
    :goto_110
    return v2

    nop

    :pswitch_data_112
    .packed-switch 0xc8
        :pswitch_f9
        :pswitch_f1
        :pswitch_e9
        :pswitch_d4
        :pswitch_bd
        :pswitch_b4
        :pswitch_8c
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0xd6
        :pswitch_6d
        :pswitch_48
        :pswitch_30
        :pswitch_11
    .end packed-switch
.end method
