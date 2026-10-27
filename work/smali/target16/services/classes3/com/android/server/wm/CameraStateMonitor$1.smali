.class public Lcom/android/server/wm/CameraStateMonitor$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraStateMonitor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/CameraStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CameraStateMonitor;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed(Ljava/lang/String;)V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-static {v0}, Lcom/android/server/wm/CameraStateMonitor;->-$$Nest$fgetmWmService(Lcom/android/server/wm/CameraStateMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 81
    :try_start_c
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-static {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->-$$Nest$mnotifyCameraClosedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V

    .line 82
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-static {v0}, Lcom/android/server/wm/CameraStateMonitor;->-$$Nest$fgetmWmService(Lcom/android/server/wm/CameraStateMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 75
    :try_start_c
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->-$$Nest$mnotifyCameraOpenedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
