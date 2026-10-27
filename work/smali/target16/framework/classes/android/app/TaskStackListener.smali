.class public abstract Landroid/app/TaskStackListener;
.super Landroid/app/ITaskStackListener$Stub;
.source "TaskStackListener.java"


# instance fields
.field private blacklist mIsRemote:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/TaskStackListener;->mIsRemote:Z

    .line 39
    return-void
.end method


# virtual methods
.method public greylist-max-r onActivityDismissingDockedTask()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public greylist-max-r onActivityForcedResizable(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public greylist-max-r onActivityLaunchOnSecondaryDisplayFailed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    return-void
.end method

.method public blacklist onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Landroid/app/TaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed()V

    .line 83
    return-void
.end method

.method public greylist-max-r onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public greylist-max-r onActivityPinned(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public greylist-max-r onActivityRequestedOrientationChanged(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    return-void
.end method

.method public greylist-max-r onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist onActivityRotation(I)V
    .registers 2

    .line 229
    return-void
.end method

.method public greylist-max-r onActivityUnpinned()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    return-void
.end method

.method public blacklist onLockTaskModeChanged(I)V
    .registers 2

    .line 237
    return-void
.end method

.method public blacklist onRecentTaskListFrozenChanged(Z)V
    .registers 2

    .line 213
    return-void
.end method

.method public blacklist onRecentTaskListUpdated()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    return-void
.end method

.method public blacklist onRecentTaskRemovedForAddTask(I)V
    .registers 2

    .line 217
    return-void
.end method

.method public greylist-max-o onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public greylist-max-o onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    return-void
.end method

.method public blacklist onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, v0, p1}, Landroid/app/TaskStackListener;->onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V

    .line 140
    return-void
.end method

.method public blacklist onTaskDisplayChanged(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    return-void
.end method

.method public blacklist onTaskFocusChanged(IZ)V
    .registers 3

    .line 221
    return-void
.end method

.method public blacklist onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    .line 233
    return-void
.end method

.method public greylist-max-r onTaskMovedToFront(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    return-void
.end method

.method public blacklist onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/app/TaskStackListener;->onTaskMovedToFront(I)V

    .line 113
    return-void
.end method

.method public greylist-max-r onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    return-void
.end method

.method public blacklist onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1}, Landroid/app/TaskStackListener;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 160
    return-void
.end method

.method public greylist-max-o onTaskRemovalStarted(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    return-void
.end method

.method public blacklist onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/app/TaskStackListener;->onTaskRemovalStarted(I)V

    .line 127
    return-void
.end method

.method public greylist-max-r onTaskRemoved(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public blacklist onTaskRequestedOrientationChanged(II)V
    .registers 3

    .line 225
    return-void
.end method

.method public greylist-max-r onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    iget-boolean p1, p0, Landroid/app/TaskStackListener;->mIsRemote:Z

    if-eqz p1, :cond_1f

    if-nez p2, :cond_7

    goto :goto_1f

    .line 182
    :cond_7
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->reduceTaskSnapshotMemoryUsage()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 183
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->closeBuffer()V

    goto :goto_1e

    .line 184
    :cond_11
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 186
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 188
    :cond_1e
    :goto_1e
    return-void

    .line 180
    :cond_1f
    :goto_1f
    return-void
.end method

.method public blacklist onTaskSnapshotInvalidated(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    return-void
.end method

.method public greylist-max-r onTaskStackChanged()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist setIsLocal()V
    .registers 2

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/TaskStackListener;->mIsRemote:Z

    .line 44
    return-void
.end method
