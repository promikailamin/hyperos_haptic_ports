.class final Lcom/android/server/wm/ActivityTaskManagerService$H;
.super Landroid/os/Handler;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field static final END_POWER_MODE_UNKNOWN_VISIBILITY_MSG:I = 0x3

.field static final FIRST_ACTIVITY_TASK_MSG:I = 0x64

.field static final FIRST_SUPERVISOR_TASK_MSG:I = 0xc8

.field static final REPORT_TIME_TRACKER_MSG:I = 0x1

.field static final RESUME_FG_APP_SWITCH_MSG:I = 0x4

.field static final UPDATE_PROCESS_ANIMATING_STATE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 5714
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5715
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5716
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 5720
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_84

    goto/16 :goto_82

    .line 5748
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5749
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmAppSwitchesState(Lcom/android/server/wm/ActivityTaskManagerService;)I

    move-result v2

    if-nez v2, :cond_1d

    .line 5750
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmAppSwitchesState(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    .line 5752
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_82

    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5734
    :pswitch_28
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5735
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmRetainPowerModeAndTopProcessState(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    .line 5736
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    .line 5737
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    const/16 v4, 0xc

    if-ne v2, v4, :cond_51

    .line 5740
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v3, v3, v1, v3}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    .line 5744
    :cond_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_2d .. :try_end_52} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5746
    goto :goto_82

    .line 5744
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5727
    :pswitch_5c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    .line 5728
    .local v0, "proc":Lcom/android/server/wm/WindowProcessController;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5729
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    .line 5730
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_70

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5732
    .end local v0    # "proc":Lcom/android/server/wm/WindowProcessController;
    goto :goto_82

    .line 5730
    .restart local v0    # "proc":Lcom/android/server/wm/WindowProcessController;
    :catchall_70
    move-exception v2

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 5722
    .end local v0    # "proc":Lcom/android/server/wm/WindowProcessController;
    :pswitch_76
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppTimeTracker;

    .line 5723
    .local v0, "tracker":Lcom/android/server/am/AppTimeTracker;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    .line 5725
    .end local v0    # "tracker":Lcom/android/server/am/AppTimeTracker;
    nop

    .line 5756
    :goto_82
    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_76
        :pswitch_5c
        :pswitch_28
        :pswitch_8
    .end packed-switch
.end method
