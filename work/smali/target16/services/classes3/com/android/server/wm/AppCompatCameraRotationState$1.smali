.class public Lcom/android/server/wm/AppCompatCameraRotationState$1;
.super Landroid/view/OrientationEventListener;
.source "AppCompatCameraRotationState.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppCompatCameraRotationState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppCompatCameraRotationState;Landroid/content/Context;)V
    .registers 3

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraRotationState$1;->this$0:Lcom/android/server/wm/AppCompatCameraRotationState;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraRotationState$1;->this$0:Lcom/android/server/wm/AppCompatCameraRotationState;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatCameraRotationState;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/AppCompatCameraRotationState;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 85
    :try_start_e
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraRotationState$1;->this$0:Lcom/android/server/wm/AppCompatCameraRotationState;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatCameraRotationState;->-$$Nest$mtransformSensorOrientationToDisplayRotation(Lcom/android/server/wm/AppCompatCameraRotationState;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatCameraRotationState;->-$$Nest$fputmDisplayRotationIfExternal(Lcom/android/server/wm/AppCompatCameraRotationState;I)V

    .line 87
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
