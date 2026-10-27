.class Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskOrganizerCallbacks"
.end annotation


# instance fields
.field final mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field final synthetic this$0:Lcom/android/server/wm/TaskOrganizerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;Ljava/util/function/Consumer;)V
    .registers 4
    .param p2, "taskOrg"    # Landroid/window/ITaskOrganizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ITaskOrganizer;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p3, "deferTaskOrgCallbacksConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p3, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    .line 104
    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 105
    return-void
.end method


# virtual methods
.method getBinder()Landroid/os/IBinder;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method onBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 158
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x7a2c55cf

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 160
    .end local v0    # "protoLogParam0":J
    :cond_1a
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v0, :cond_1f

    .line 162
    return-void

    .line 164
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_26

    .line 166
    return-void

    .line 169
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/window/ITaskOrganizer;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    .line 172
    goto :goto_38

    .line 170
    :catch_30
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TaskOrganizerController"

    const-string v2, "Exception sending onBackPressedOnTaskRoot callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_38
    return-void
.end method

.method onTaskAppeared(Lcom/android/server/wm/Task;)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 116
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x725932d9

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .end local v0    # "protoLogParam0":J
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 119
    .local v0, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const-string v2, "TaskOrganizerController.onTaskAppeared"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->prepareLeash(Lcom/android/server/wm/Task;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/window/ITaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    .line 123
    goto :goto_32

    .line 121
    :catch_2a
    move-exception v1

    .line 122
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TaskOrganizerController"

    const-string v3, "Exception sending onTaskAppeared callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method onTaskInfoChanged(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 12
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 138
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v0, :cond_5

    .line 140
    return-void

    .line 142
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_1f

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x120ef2a7

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .end local v0    # "protoLogParam0":J
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_26

    .line 145
    return-void

    .line 151
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, p2}, Landroid/window/ITaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 154
    goto :goto_34

    .line 152
    :catch_2c
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TaskOrganizerController"

    const-string v2, "Exception sending onTaskInfoChanged callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method

.method onTaskVanished(Lcom/android/server/wm/Task;)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 128
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x51588141

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .end local v0    # "protoLogParam0":J
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 131
    .local v0, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v1, v0}, Landroid/window/ITaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_24

    .line 134
    goto :goto_2c

    .line 132
    :catch_24
    move-exception v1

    .line 133
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TaskOrganizerController"

    const-string v3, "Exception sending onTaskVanished callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method

.method prepareLeash(Lcom/android/server/wm/Task;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "reason"    # Ljava/lang/String;

    .line 112
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-object v0
.end method
