.class public Lcom/android/server/wm/CameraStateMonitor;
.super Ljava/lang/Object;
.source "CameraStateMonitor.java"


# instance fields
.field final mAppCompatCameraStatePolicy:Lcom/android/server/wm/AppCompatCameraStatePolicy;

.field final mAppCompatCameraStateStrategy:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;

.field public final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mHandler:Landroid/os/Handler;

.field public mIsListeningToCameraState:Z

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$2Bjsnsi-yl4Sv19TayrbFTkJk9E(Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/CameraAppInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->lambda$notifyCameraOpenedWithDelay$0(Lcom/android/server/wm/CameraAppInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qQWkEfa46UfnsuZdVhdQb676QWw(Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/CameraAppInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->lambda$scheduleRemoveCameraId$1(Lcom/android/server/wm/CameraAppInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmWmService(Lcom/android/server/wm/CameraStateMonitor;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyCameraClosedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->notifyCameraClosedWithDelay(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyCameraOpenedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->notifyCameraOpenedWithDelay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/os/Handler;Lcom/android/server/wm/AppCompatCameraStatePolicy;)V
    .registers 5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/server/wm/CameraStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CameraStateMonitor$1;-><init>(Lcom/android/server/wm/CameraStateMonitor;)V

    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 90
    iput-object p2, p0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    .line 91
    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 92
    iput-object p3, p0, Lcom/android/server/wm/CameraStateMonitor;->mAppCompatCameraStatePolicy:Lcom/android/server/wm/AppCompatCameraStatePolicy;

    .line 93
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 94
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-class p3, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 95
    new-instance p2, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;

    invoke-direct {p2, p1}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object p2, p0, Lcom/android/server/wm/CameraStateMonitor;->mAppCompatCameraStateStrategy:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;

    return-void
.end method


# virtual methods
.method public isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 161
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mAppCompatCameraStateStrategy:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public isCameraWithIdRunningForActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 3

    .line 168
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mAppCompatCameraStateStrategy:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->isCameraWithIdRunningForActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isListeningToCameraState()Z
    .registers 1

    .line 121
    iget-boolean p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mIsListeningToCameraState:Z

    return p0
.end method

.method public final synthetic lambda$notifyCameraOpenedWithDelay$0(Lcom/android/server/wm/CameraAppInfo;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 137
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->notifyCameraOpenedInternal(Lcom/android/server/wm/CameraAppInfo;)V

    .line 138
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$scheduleRemoveCameraId$1(Lcom/android/server/wm/CameraAppInfo;)V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 178
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->removeCameraId(Lcom/android/server/wm/CameraAppInfo;)V

    .line 179
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final notifyCameraClosedWithDelay(Ljava/lang/String;)V
    .registers 7

    .line 153
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, -0x346191b45817c013L    # -1.8654051817180032E56

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 156
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->scheduleRemoveCameraId(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyCameraOpenedInternal(Lcom/android/server/wm/CameraAppInfo;)V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mAppCompatCameraStateStrategy:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;

    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mAppCompatCameraStatePolicy:Lcom/android/server/wm/AppCompatCameraStatePolicy;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->notifyPolicyCameraOpenedIfNeeded(Lcom/android/server/wm/CameraAppInfo;Lcom/android/server/wm/AppCompatCameraStatePolicy;)V

    return-void
.end method

.method public final notifyCameraOpenedWithDelay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 130
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0x70a1ee89665f30c5L    # 3.5634456542814795E234

    const/4 v3, 0x1

    invoke-static {v4, v1, v2, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 133
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mAppCompatCameraStateStrategy:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->trackOnCameraOpened(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wm/CameraAppInfo;

    move-result-object p1

    .line 135
    iget-object p2, p0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/CameraAppInfo;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final removeCameraId(Lcom/android/server/wm/CameraAppInfo;)V
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mAppCompatCameraStateStrategy:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;

    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mAppCompatCameraStatePolicy:Lcom/android/server/wm/AppCompatCameraStatePolicy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->notifyPolicyCameraClosedIfNeeded(Lcom/android/server/wm/CameraAppInfo;Lcom/android/server/wm/AppCompatCameraStatePolicy;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 188
    iget-object p1, p1, Lcom/android/server/wm/CameraAppInfo;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->scheduleRemoveCameraId(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final scheduleRemoveCameraId(Ljava/lang/String;)V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mAppCompatCameraStateStrategy:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;

    .line 175
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->trackOnCameraClosed(Ljava/lang/String;)Lcom/android/server/wm/CameraAppInfo;

    move-result-object p1

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/CameraAppInfo;)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startListeningToCameraState()V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_11

    .line 101
    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/CameraStateMonitor;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_11
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mIsListeningToCameraState:Z

    return-void
.end method

.method public stopListeningToCameraState()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_9

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_9
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mIsListeningToCameraState:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mAppCompatCameraStateStrategy:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
