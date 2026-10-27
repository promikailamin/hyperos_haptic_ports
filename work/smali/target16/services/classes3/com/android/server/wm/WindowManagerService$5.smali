.class public Lcom/android/server/wm/WindowManagerService$5;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "WindowManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 1216
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 4

    .line 1224
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_34

    .line 1229
    :cond_7
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 1230
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 1231
    iput-boolean v1, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    return-void

    .line 1233
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 1234
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    if-eqz p0, :cond_34

    .line 1235
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 1236
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p0

    if-eqz p0, :cond_34

    .line 1238
    :try_start_29
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-interface {p0, p1}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    :goto_34
    return-void
.end method
