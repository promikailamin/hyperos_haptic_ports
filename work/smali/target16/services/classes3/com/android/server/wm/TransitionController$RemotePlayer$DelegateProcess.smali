.class public Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;
.super Ljava/lang/Object;
.source "TransitionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mNeedReport:Z

.field public final mProc:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TransitionController$RemotePlayer;Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    .line 1786
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1787
    iput-object p2, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1793
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;

    invoke-static {v0}, Lcom/android/server/wm/TransitionController$RemotePlayer;->-$$Nest$fgetmAtm(Lcom/android/server/wm/TransitionController$RemotePlayer;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1794
    :try_start_9
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2}, Lcom/android/server/wm/TransitionController$RemotePlayer;->update(Lcom/android/server/wm/WindowProcessController;ZZ)V

    .line 1795
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw p0
.end method
