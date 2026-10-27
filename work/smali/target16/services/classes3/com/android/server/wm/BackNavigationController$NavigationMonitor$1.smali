.class public Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;
.super Ljava/lang/Object;
.source "BackNavigationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;)V
    .registers 2

    .line 826
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;->this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 830
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;->this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$fgetmWindowManagerService(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 831
    :try_start_e
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;->this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorForRemote()V

    .line 832
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;->this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorTransition()V

    .line 833
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
