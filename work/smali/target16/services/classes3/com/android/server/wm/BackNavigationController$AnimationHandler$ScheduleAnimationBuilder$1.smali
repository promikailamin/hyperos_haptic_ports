.class public Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;
.super Landroid/window/IBackAnimationFinishedCallback$Stub;
.source "BackNavigationController.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V
    .registers 2

    .line 2045
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;->this$1:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    invoke-direct {p0}, Landroid/window/IBackAnimationFinishedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Z)V
    .registers 4

    .line 2048
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;->this$1:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmWindowManagerService(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2049
    :try_start_e
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;->this$1:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2051
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_46

    .line 2053
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;->this$1:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;->this$1:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object v1

    if-nez v1, :cond_41

    :cond_37
    if-nez p1, :cond_41

    .line 2057
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;->this$1:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    .line 2060
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_1f .. :try_end_42} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_46
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
