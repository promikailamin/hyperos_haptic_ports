.class public Lcom/android/server/wm/ActivityClientController;
.super Landroid/app/IActivityClientController$Stub;
.source "ActivityClientController.java"


# instance fields
.field public mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public final mContext:Landroid/content/Context;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method public static synthetic $r8$lambda$1K74oNoLM00IYeFPYBFWMo7jaJA(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 741
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$XDVPmSdO0TMqES0GwXvvEaWnMbQ(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 643
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->finishIfSubActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZeND8mzkQh_40uyO6jAvnWund7s(Lcom/android/server/wm/ActivityClientController;ILandroid/os/IRemoteCallback;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;Z)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityClientController;->lambda$requestMultiwindowFullscreenLocked$3(ILandroid/os/IRemoteCallback;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$_yDUpQL7bkortdMmLrMuunWf26Q(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 621
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->finishIfSameAffinity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qNqLz69Nnzxwo0uHEnCtzeO7idI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 1842
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_9

    if-ne p1, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 160
    invoke-direct {p0}, Landroid/app/IActivityClientController$Stub;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 162
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 163
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 164
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static canGetLaunchedFromLocked(ILcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;Z)Z
    .registers 6

    const-wide/32 v0, 0xf7b60d9

    .line 878
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    if-eqz p3, :cond_11

    .line 880
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isCallerShareIdentityEnabled(Landroid/os/IBinder;)Z

    move-result v0

    goto :goto_13

    :cond_11
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    :goto_13
    if-eqz p3, :cond_1a

    .line 881
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->getCallerUid(Landroid/os/IBinder;)I

    move-result p1

    goto :goto_1c

    :cond_1a
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    :goto_1c
    if-nez v0, :cond_22

    if-ne p1, p0, :cond_21

    goto :goto_22

    :cond_21
    return v1

    :cond_22
    :goto_22
    const/4 p0, 0x1

    return p0

    :cond_24
    return v1
.end method

.method public static getCallingRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 770
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 771
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isRelativeTaskRootActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 1841
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 1842
    new-instance v1, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq p0, v1, :cond_11

    return v2

    .line 1849
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    .line 1850
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getCompanionTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-ne p1, v0, :cond_23

    .line 1851
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldBeFinishedWithCompanionTaskFragment()Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    return v2
.end method

.method public static isTopActivityInTaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1855
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static reportMultiwindowFullscreenRequestValidatingResult(Landroid/os/IRemoteCallback;I)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 1403
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1404
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1406
    :try_start_d
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    return-void

    .line 1408
    :catch_11
    const-string p0, "ActivityTaskManager"

    const-string p1, "client throws an exception back to the server, ignore it"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static shouldMoveTaskToBack(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    const/4 v0, 0x0

    if-eq p0, p1, :cond_a

    .line 1897
    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityClientController;->isRelativeTaskRootActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 1900
    :cond_a
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1901
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1900
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1902
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-eqz v1, :cond_33

    .line 1912
    invoke-static {p0}, Lcom/android/server/wm/ActivityClientController;->isTopActivityInTaskFragment(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x2

    .line 1913
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isLaunchSourceType(I)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 1914
    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    return v0
.end method


# virtual methods
.method public activityDestroyed(Landroid/os/IBinder;)V
    .registers 7

    .line 310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 311
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 312
    :try_start_a
    const-string v2, "activityDestroyed"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_2a

    .line 314
    :try_start_11
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 316
    const-string v2, "activityDestroyed"

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->destroyed(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1d

    goto :goto_1f

    :catchall_1d
    move-exception p1

    goto :goto_2c

    .line 319
    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2a
    move-exception p1

    goto :goto_33

    .line 319
    :goto_2c
    :try_start_2c
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    throw p1

    .line 322
    :goto_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .registers 10

    .line 184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    .line 186
    :try_start_6
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_3c

    .line 187
    :try_start_c
    const-string v5, "activityIdle"

    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 188
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_24

    .line 190
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_22

    .line 199
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_1b
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 200
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_22
    move-exception p0

    goto :goto_3e

    .line 192
    :cond_24
    :try_start_24
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, v5, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    if-eqz p3, :cond_37

    .line 194
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result p0

    if-eqz p0, :cond_37

    .line 195
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->clearProfilerIfNeeded()V

    .line 197
    :cond_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_22

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_1b

    :catchall_3c
    move-exception p0

    goto :goto_43

    :goto_3e
    :try_start_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_22

    :try_start_3f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_3c

    .line 199
    :goto_43
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 200
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    throw p0
.end method

.method public activityLocalRelaunch(Landroid/os/IBinder;)V
    .registers 4

    .line 327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 328
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 329
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 331
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->startRelaunching()V

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_1e

    .line 333
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 334
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 333
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public activityPaused(Landroid/os/IBinder;)V
    .registers 7

    .line 241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 242
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 243
    :try_start_a
    const-string v2, "activityPaused"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 244
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1e

    const/4 v2, 0x0

    .line 246
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    goto :goto_1e

    :catchall_1c
    move-exception p1

    goto :goto_29

    .line 248
    :cond_1e
    :goto_1e
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 249
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 250
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 249
    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public activityRefreshed(Landroid/os/IBinder;)V
    .registers 4

    .line 215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 216
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 217
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->activityRefreshedLocked(Landroid/os/IBinder;)V

    .line 218
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 219
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p1

    .line 218
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public activityRelaunched(Landroid/os/IBinder;)V
    .registers 4

    .line 339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 340
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 341
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 343
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->finishRelaunching()V

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_1e

    .line 345
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 346
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 345
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public activityResumed(Landroid/os/IBinder;Z)V
    .registers 5

    .line 206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 207
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 208
    :try_start_a
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->activityResumedLocked(Landroid/os/IBinder;Z)V

    .line 209
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p1

    .line 209
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Landroid/app/HandoffActivityData;Ljava/lang/CharSequence;)V
    .registers 16

    if-eqz p2, :cond_11

    .line 263
    invoke-virtual {p2}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 264
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File descriptors passed in Bundle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 272
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 273
    :try_start_1b
    const-string v3, "activityStopped"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 274
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_5c

    .line 276
    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v7

    if-nez v7, :cond_44

    iget-object v7, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 277
    invoke-virtual {v7, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->hasScheduledRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 279
    const-string v7, "continue-restart"

    invoke-virtual {p1, v8, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_7e

    .line 281
    :cond_44
    :goto_44
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-virtual {p1, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 284
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v6, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 285
    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move-object v9, v6

    move v6, v3

    move-object v3, v9

    .line 287
    :cond_59
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/wm/ActivityRecord;->activityStopped(Landroid/os/Bundle;Landroid/os/PersistableBundle;Landroid/app/HandoffActivityData;Ljava/lang/CharSequence;)V

    .line 289
    :cond_5c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 290
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_1b .. :try_end_60} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v3, :cond_73

    .line 298
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 299
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string p2, "restartActivityProcess"

    invoke-virtual {p1, v3, v6, p2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    :cond_73
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    .line 304
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 290
    :goto_7e
    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public activityTopResumedStateLost(Landroid/os/IBinder;)V
    .registers 6

    .line 224
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 225
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 227
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 229
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleTopResumedStateReleasedIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_21

    .line 235
    :cond_19
    :goto_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 236
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 235
    :goto_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public checkActivityCallerContentUriPermission(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/net/Uri;II)I
    .registers 9

    .line 835
    new-instance v0, Lcom/android/server/uri/GrantUri;

    invoke-direct {v0, p5, p3, p4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    .line 836
    iget-object p5, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p5, p5, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p5, v0, v1, p4, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkUriPermission(Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result p5

    if-eqz p5, :cond_39

    .line 843
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 844
    :try_start_1a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 p3, -0x1

    if-eqz p1, :cond_2f

    .line 846
    invoke-virtual {p1, p2, v0, p4}, Lcom/android/server/wm/ActivityRecord;->checkContentUriPermission(Landroid/os/IBinder;Lcom/android/server/uri/GrantUri;I)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p3, 0x0

    .line 847
    :cond_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p3

    :catchall_2d
    move-exception p1

    goto :goto_34

    .line 849
    :cond_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p3

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 838
    :cond_39
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "You don\'t have access to the content URI, hence can\'t check if the caller has access to it: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearOverrideActivityTransition(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1659
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1660
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1661
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1663
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->clearCustomTransition(Z)V

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_1e

    .line 1665
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1666
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1665
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public convertFromTranslucent(Landroid/os/IBinder;)Z
    .registers 9

    .line 962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 964
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_78

    .line 965
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_1b

    .line 967
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_19

    .line 999
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_19
    move-exception p0

    goto :goto_73

    .line 969
    :cond_1b
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v4, "fromTransluce"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v3

    .line 975
    iget-object v4, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 974
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3c

    .line 975
    invoke-virtual {v3}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 976
    iget-object v4, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v4

    goto :goto_3d

    :cond_3c
    move-object v4, v5

    :goto_3d
    if-eqz v4, :cond_42

    .line 978
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActionChain;->attachTransition(Lcom/android/server/wm/Transition;)V

    :cond_42
    const/4 v3, 0x1

    .line 980
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->setOccludesParent(Z)Z

    move-result v3

    if-eqz v4, :cond_64

    if-eqz v3, :cond_61

    .line 985
    invoke-static {}, Landroid/window/TransitionInfo$AnimationOptions;->makeSceneTransitionAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v6

    .line 984
    invoke-virtual {v4, v6, p1, v5, v5}, Lcom/android/server/wm/Transition;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 987
    iget-object v6, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6, v4, v5, v5, v5}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 990
    iget-object v4, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_64

    .line 992
    :cond_61
    invoke-virtual {v4}, Lcom/android/server/wm/Transition;->abort()V

    .line 995
    :cond_64
    :goto_64
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 996
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_1b .. :try_end_6c} :catchall_19

    .line 999
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 997
    :goto_73
    :try_start_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_19

    :try_start_74
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception p0

    .line 999
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1000
    throw p0
.end method

.method public convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 11

    .line 1005
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1006
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1007
    invoke-static {p2, v0, v1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object p2

    .line 1009
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1011
    :try_start_10
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_a5

    .line 1012
    :try_start_16
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_28

    .line 1014
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_25

    .line 1051
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_25
    move-exception p0

    goto/16 :goto_a0

    .line 1016
    :cond_28
    :try_start_28
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3d

    if-eqz p2, :cond_3a

    .line 1018
    invoke-virtual {p2, p1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;

    move-result-object p2

    goto :goto_3b

    :cond_3a
    move-object p2, v5

    :goto_3b
    iput-object p2, v4, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 1020
    :cond_3d
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v6, "toTransluce"

    invoke-virtual {p2, v6}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object p2

    .line 1023
    iget-object v6, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1022
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 1023
    invoke-virtual {p2}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v6

    if-nez v6, :cond_5d

    .line 1024
    iget-object v6, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v6

    goto :goto_5e

    :cond_5d
    move-object v6, v5

    :goto_5e
    if-eqz v6, :cond_63

    .line 1026
    invoke-virtual {p2, v6}, Lcom/android/server/wm/ActionChain;->attachTransition(Lcom/android/server/wm/Transition;)V

    .line 1028
    :cond_63
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->setOccludesParent(Z)Z

    move-result p2

    if-eqz v6, :cond_91

    if-eqz p2, :cond_8e

    .line 1031
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v6, v5, v5, v5}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 1034
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;)V

    if-eqz v4, :cond_91

    .line 1035
    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_91

    .line 1036
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_91

    .line 1040
    invoke-static {}, Landroid/window/TransitionInfo$AnimationOptions;->makeSceneTransitionAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v3

    .line 1039
    invoke-virtual {v6, v3, p1, v5, v5}, Lcom/android/server/wm/Transition;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    goto :goto_91

    .line 1044
    :cond_8e
    invoke-virtual {v6}, Lcom/android/server/wm/Transition;->abort()V

    .line 1047
    :cond_91
    :goto_91
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 1048
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_28 .. :try_end_99} :catchall_25

    .line 1051
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    .line 1049
    :goto_a0
    :try_start_a0
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_25

    :try_start_a1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception p0

    .line 1051
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1052
    throw p0
.end method

.method public dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 7

    if-eqz p3, :cond_d

    .line 1786
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SHOW_KEYGUARD_MESSAGE"

    const-string v2, "dismissKeyguard"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1791
    :try_start_11
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_26

    .line 1792
    :try_start_17
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/KeyguardController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1793
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_28

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_26

    .line 1795
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_26
    move-exception p0

    goto :goto_2e

    :catchall_28
    move-exception p0

    .line 1793
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_26

    .line 1795
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1796
    throw p0
.end method

.method public enableTaskLocaleOverride(Landroid/os/IBinder;)V
    .registers 4

    .line 1919
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_d

    return-void

    .line 1924
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1925
    :try_start_13
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 1927
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mAlignActivityLocaleWithTask:Z

    goto :goto_23

    :catchall_21
    move-exception p1

    goto :goto_28

    .line 1929
    :cond_23
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final ensureSetPipAspectRatioQuotaTracker()V
    .registers 5

    .line 1143
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    if-nez v0, :cond_19

    .line 1144
    new-instance v0, Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/utils/quota/Categorizer;->SINGLE_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 1146
    sget-object p0, Lcom/android/server/utils/quota/Category;->SINGLE_CATEGORY:Lcom/android/server/utils/quota/Category;

    const/16 v1, 0x3c

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    :cond_19
    return-void
.end method

.method public final ensureValidPictureInPictureActivityParams(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;
    .registers 9

    .line 1159
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_134

    .line 1164
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_11a

    .line 1170
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result p2

    if-eqz p2, :cond_103

    .line 1177
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    .line 1178
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1179
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 1180
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->getAspectRatio()Landroid/util/Rational;

    move-result-object v1

    .line 1181
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getAspectRatio()Landroid/util/Rational;

    move-result-object v2

    .line 1180
    invoke-virtual {v1, v2}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v3, "setPipAspectRatio"

    .line 1182
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_41

    goto :goto_5d

    .line 1184
    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Too many PiP aspect ratio change requests from "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1188
    :cond_5d
    :goto_5d
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1050116

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    .line 1190
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050115

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 1193
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v2

    if-eqz v2, :cond_b5

    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1195
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    move-result v4

    .line 1194
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->isValidPictureInPictureAspectRatio(Lcom/android/server/wm/DisplayContent;F)Z

    move-result v2

    if-eqz v2, :cond_8e

    goto :goto_b5

    .line 1196
    :cond_8e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Aspect ratio is too extreme (must be between %f and %f)."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1198
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 1196
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1201
    :cond_b5
    :goto_b5
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsExpandedPictureInPicture:Z

    if-eqz v2, :cond_f9

    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetExpandedAspectRatio()Z

    move-result v2

    if-eqz v2, :cond_f9

    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1203
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getExpandedAspectRatioFloat()F

    move-result v4

    .line 1202
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->isValidExpandedPictureInPictureAspectRatio(Lcom/android/server/wm/DisplayContent;F)Z

    move-result v2

    if-eqz v2, :cond_d2

    goto :goto_f9

    .line 1204
    :cond_d2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Expanded aspect ratio is not extreme enough (must not be between %f and %f)."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1207
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 1204
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1211
    :cond_f9
    :goto_f9
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->getMaxNumPictureInPictureActions(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/app/PictureInPictureParams;->truncateActions(I)V

    return-object v0

    .line 1171
    :cond_103
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Current activity does not support picture-in-picture."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1166
    :cond_11a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Can\'t find activity for token="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1160
    :cond_134
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Device doesn\'t support picture-in-picture mode."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
    .registers 7

    .line 1085
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1087
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityClientController;->ensureSetPipAspectRatioQuotaTracker()V

    .line 1088
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_28

    .line 1089
    :try_start_d
    const-string v3, "enterPictureInPictureMode"

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityClientController;->ensureValidPictureInPictureActivityParams(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1091
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;Z)Z

    move-result p0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_22

    .line 1094
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_22
    move-exception p0

    .line 1092
    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    .line 1094
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1095
    throw p0
.end method

.method public final executeFullscreenRequestTransition(ILandroid/os/IRemoteCallback;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;Z)V
    .registers 6

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityClientController;->getMultiwindowFullscreenTargetTask()Lcom/android/server/wm/Task;

    move-result-object p5

    .line 1381
    invoke-virtual {p0, p5, p1, p3}, Lcom/android/server/wm/ActivityClientController;->validateMultiwindowFullscreenRequestLocked(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;)I

    move-result p5

    .line 1383
    invoke-static {p2, p5}, Lcom/android/server/wm/ActivityClientController;->reportMultiwindowFullscreenRequestValidatingResult(Landroid/os/IRemoteCallback;I)V

    if-eqz p5, :cond_11

    .line 1385
    invoke-virtual {p4}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    .line 1388
    :cond_11
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string p5, "reqMWFS"

    invoke-virtual {p2, p5, p4}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p2

    .line 1389
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p5

    .line 1390
    invoke-virtual {p2, p5}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1391
    invoke-virtual {p0, p1, p5}, Lcom/android/server/wm/ActivityClientController;->executeMultiWindowFullscreenRequest(ILcom/android/server/wm/Task;)V

    .line 1392
    iget-object p1, p3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p5, p2, p2}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    const/4 p1, 0x1

    .line 1394
    invoke-virtual {p4, p5, p1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 1395
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    return-void
.end method

.method public final executeMultiWindowFullscreenRequest(ILcom/android/server/wm/Task;)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 1415
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result p0

    .line 1417
    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    .line 1420
    iput p0, p2, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    .line 1422
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object p0

    iput-object p0, p2, Lcom/android/server/wm/Task;->mMultiWindowRestoreParent:Landroid/window/WindowContainerToken;

    move p1, v0

    goto :goto_36

    .line 1424
    :cond_1a
    iget p1, p2, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    .line 1425
    sget-object v1, Landroid/window/DesktopModeFlags;->ENABLE_REQUEST_FULLSCREEN_BUGFIX:Landroid/window/DesktopModeFlags;

    invoke-virtual {v1}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x2

    if-ne p1, v1, :cond_33

    .line 1427
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1428
    iget-object v2, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivityClientController;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    goto :goto_36

    .line 1430
    :cond_33
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->restoreWindowingMode()V

    :goto_36
    if-ne p1, v0, :cond_3c

    const/4 p0, 0x0

    .line 1434
    invoke-virtual {p2, p0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :cond_3c
    return-void
.end method

.method public finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v1, p4

    if-eqz v2, :cond_17

    .line 504
    invoke-virtual {v2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_17

    .line 505
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_17
    :goto_17
    iget-object v3, v0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    .line 510
    :try_start_1d
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_2c

    .line 512
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :catchall_29
    move-exception v0

    goto/16 :goto_129

    .line 514
    :cond_2c
    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 517
    iget-object v3, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v2, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v3

    .line 519
    iget-object v6, v0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v6

    .line 521
    :try_start_3e
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v7

    if-nez v7, :cond_4c

    .line 522
    monitor-exit v6
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :catchall_49
    move-exception v0

    goto/16 :goto_124

    .line 526
    :cond_4c
    :try_start_4c
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 527
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_5d

    .line 529
    const-string v9, "ActivityTaskManager"

    const-string v10, "Finishing task with all activities already finished"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_5d
    iget-object v9, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v9

    const/4 v15, 0x0

    if-eqz v9, :cond_6f

    .line 534
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_4c .. :try_end_6b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v15

    .line 539
    :cond_6f
    :try_start_6f
    iget-object v9, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v9, :cond_a8

    .line 542
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    const/4 v10, -0x1

    move-object/from16 v11, p1

    invoke-virtual {v9, v11, v10}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9
    :try_end_80
    .catchall {:try_start_6f .. :try_end_80} :catchall_49

    if-eqz v9, :cond_a8

    .line 547
    :try_start_82
    iget-object v10, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v10, v9}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v9
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8c} :catch_8d
    .catchall {:try_start_82 .. :try_end_8c} :catchall_49

    goto :goto_9a

    .line 549
    :catch_8d
    :try_start_8d
    iget-object v9, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 550
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    move v9, v5

    :goto_9a
    if-nez v9, :cond_a8

    .line 554
    const-string v0, "ActivityTaskManager"

    const-string v1, "Not finishing activity because controller resumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    monitor-exit v6
    :try_end_a4
    .catchall {:try_start_8d .. :try_end_a4} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v15

    .line 562
    :cond_a8
    :try_start_a8
    iget-object v9, v4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v9, :cond_b3

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowProcessController;->setLastActivityFinishTimeIfNeeded(J)V

    .line 566
    :cond_b3
    iget-object v9, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v10, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2, v10}, Landroid/app/ActivityManagerInternal;->addCreatorToken(Landroid/content/Intent;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 569
    const-string v9, "finishActivity"

    const-wide/16 v10, 0x20

    invoke-static {v10, v11, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_a8 .. :try_end_c7} :catchall_49

    move-wide v11, v10

    if-ne v1, v5, :cond_cc

    move v10, v5

    goto :goto_cd

    :cond_cc
    move v10, v15

    .line 574
    :goto_cd
    :try_start_cd
    iget-object v9, v0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;

    move-result-object v9

    .line 575
    invoke-virtual {v9, v4}, Lcom/android/server/wm/BackgroundActivityStartController;->onActivityRequestedFinishing(Lcom/android/server/wm/ActivityRecord;)V

    const/4 v9, 0x2

    if-eq v1, v9, :cond_dd

    if-eqz v10, :cond_df

    if-ne v4, v7, :cond_df

    :cond_dd
    move-object v1, v4

    goto :goto_fa

    :cond_df
    move-object v0, v4

    .line 590
    const-string v4, "app-request"

    const/4 v5, 0x1

    move/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    move-object v1, v0

    .line 592
    iget-boolean v5, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_f8

    .line 594
    const-string v0, "ActivityTaskManager"

    const-string v1, "Failed to finish by app-request"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f8

    :catchall_f5
    move-exception v0

    move-wide v2, v11

    goto :goto_11d

    :cond_f8
    :goto_f8
    move-wide v2, v11

    goto :goto_111

    .line 583
    :goto_fa
    iget-object v7, v0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;
    :try_end_fc
    .catchall {:try_start_cd .. :try_end_fc} :catchall_f5

    move-wide v2, v11

    :try_start_fd
    const-string v11, "finish-activity"

    .line 584
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v12

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v13

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    .line 583
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;IILjava/lang/String;)V

    .line 588
    iput v15, v1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I
    :try_end_111
    .catchall {:try_start_fd .. :try_end_111} :catchall_11c

    .line 599
    :goto_111
    :try_start_111
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 600
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6
    :try_end_118
    .catchall {:try_start_111 .. :try_end_118} :catchall_49

    .line 597
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :catchall_11c
    move-exception v0

    .line 599
    :goto_11d
    :try_start_11d
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 600
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    throw v0

    .line 602
    :goto_124
    monitor-exit v6
    :try_end_125
    .catchall {:try_start_11d .. :try_end_125} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 514
    :goto_129
    :try_start_129
    monitor-exit v3
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public finishActivityAffinity(Landroid/os/IBinder;)Z
    .registers 7

    .line 607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 609
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_43

    .line 610
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_1b

    .line 612
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_19

    .line 627
    :goto_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_19
    move-exception p0

    goto :goto_3e

    .line 617
    :cond_1b
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 618
    monitor-exit v2

    goto :goto_12

    .line 621
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    new-instance v3, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p1, v4, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 624
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_19

    .line 627
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 625
    :goto_3e
    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_19

    :try_start_3f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p0

    .line 627
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    throw p0
.end method

.method public finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 10

    .line 633
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 635
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_41

    .line 636
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 637
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_18

    .line 650
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    goto :goto_4f

    .line 639
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->startBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_18

    .line 642
    :try_start_22
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda3;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {v4, v5, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 646
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_43

    if-eqz v3, :cond_39

    .line 647
    :try_start_36
    invoke-virtual {v3}, Lcom/android/server/am/psc/BatchSession;->close()V

    .line 648
    :cond_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_18

    :try_start_3a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_41

    .line 650
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_41
    move-exception p0

    goto :goto_54

    :catchall_43
    move-exception p0

    if-eqz v3, :cond_4e

    .line 639
    :try_start_46
    invoke-virtual {v3}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception p1

    :try_start_4b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4e
    :goto_4e
    throw p0

    .line 648
    :goto_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_18

    :try_start_50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_41

    .line 650
    :goto_54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    throw p0
.end method

.method public getActivityCallerPackage(Landroid/os/IBinder;Landroid/os/IBinder;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 791
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityClientController;->getPackage(Landroid/os/IBinder;Landroid/os/IBinder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActivityCallerUid(Landroid/os/IBinder;Landroid/os/IBinder;)I
    .registers 4

    const/4 v0, 0x1

    .line 786
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityClientController;->getUid(Landroid/os/IBinder;Landroid/os/IBinder;Z)I

    move-result p0

    return p0
.end method

.method public getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 9

    .line 733
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 735
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_48

    .line 736
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_1b

    .line 738
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_19

    .line 748
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_19
    move-exception p1

    goto :goto_4a

    .line 741
    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda2;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, p1, v5, v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 743
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p1

    if-ne v4, p1, :cond_40

    .line 744
    iget-object p1, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_19

    .line 748
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 746
    :cond_40
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_19

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_48

    .line 748
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_48
    move-exception p0

    goto :goto_4f

    .line 746
    :goto_4a
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_19

    :try_start_4b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_48

    .line 748
    :goto_4f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 749
    throw p0
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 2

    .line 755
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 756
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityClientController;->getCallingRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 757
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_16

    :catchall_13
    move-exception p1

    goto :goto_1b

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 758
    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 2

    .line 763
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 764
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityClientController;->getCallingRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 765
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_14

    :catchall_11
    move-exception p1

    goto :goto_19

    :cond_13
    const/4 p1, 0x0

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 766
    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getDisplayId(Landroid/os/IBinder;)I
    .registers 4

    .line 689
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 690
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask(Landroid/os/IBinder;)Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 692
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_15

    move v0, p1

    .line 693
    :cond_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_1a
    move-exception p1

    goto :goto_21

    .line 695
    :cond_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 696
    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 781
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityClientController;->getPackage(Landroid/os/IBinder;Landroid/os/IBinder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 776
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityClientController;->getUid(Landroid/os/IBinder;Landroid/os/IBinder;Z)I

    move-result p0

    return p0
.end method

.method public final getMultiwindowFullscreenTargetTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 1295
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 1296
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_REQUEST_FULLSCREEN_RESTORE_FREEFORM_BUGFIX:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_19

    .line 1298
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_19

    return-object v0

    :cond_19
    return-object p0
.end method

.method public final getPackage(Landroid/os/IBinder;Landroid/os/IBinder;Z)Ljava/lang/String;
    .registers 7

    .line 809
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 810
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityClientController;->isInternalCallerGetLaunchedFrom(I)Z

    move-result v1

    .line 811
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 812
    :try_start_e
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_33

    if-nez v1, :cond_1f

    .line 813
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityClientController;->canGetLaunchedFromLocked(ILcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;Z)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_39

    .line 814
    :cond_1f
    :goto_1f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityClientController;->isValidCaller(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;Z)Z

    move-result p0

    if-eqz p0, :cond_33

    if-eqz p3, :cond_2c

    .line 816
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->getCallerPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2e

    :cond_2c
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    :goto_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_1d

    .line 815
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 818
    :cond_33
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return-object p0

    :goto_39
    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .registers 2

    .line 952
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 953
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 955
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p1

    goto :goto_14

    :catchall_11
    move-exception p1

    goto :goto_19

    :cond_13
    const/4 p1, -0x1

    .line 956
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_11

    .line 954
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 957
    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 2

    .line 721
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 722
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_14

    .line 724
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return-object p0

    :catchall_12
    move-exception p1

    goto :goto_21

    .line 726
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 727
    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getTaskForActivity(Landroid/os/IBinder;Z)I
    .registers 5

    .line 701
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 702
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_14

    .line 704
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_12
    move-exception p1

    goto :goto_2e

    .line 706
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz p2, :cond_27

    .line 708
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result p1

    if-eqz p1, :cond_22

    iget v0, v1, Lcom/android/server/wm/Task;->mTaskId:I

    :cond_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 710
    :cond_27
    :try_start_27
    iget p1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 711
    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final getUid(Landroid/os/IBinder;Landroid/os/IBinder;Z)I
    .registers 7

    .line 795
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 796
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityClientController;->isInternalCallerGetLaunchedFrom(I)Z

    move-result v1

    .line 797
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 798
    :try_start_e
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_33

    if-nez v1, :cond_1f

    .line 799
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityClientController;->canGetLaunchedFromLocked(ILcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;Z)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_39

    .line 800
    :cond_1f
    :goto_1f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityClientController;->isValidCaller(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;Z)Z

    move-result p0

    if-eqz p0, :cond_33

    if-eqz p3, :cond_2c

    .line 801
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->getCallerUid(Landroid/os/IBinder;)I

    move-result p0

    goto :goto_2e

    :cond_2c
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    :goto_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 803
    :cond_33
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, -0x1

    return p0

    :goto_39
    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    .registers 4

    if-nez p1, :cond_7

    .line 1762
    const-string v0, "invalidateHomeTaskSnapshot"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1765
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    if-nez p1, :cond_26

    .line 1768
    :try_start_f
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1769
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1770
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    goto :goto_2a

    :catchall_22
    move-exception p0

    goto :goto_46

    :cond_24
    const/4 p1, 0x0

    goto :goto_2a

    .line 1772
    :cond_26
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    :goto_2a
    if-eqz p1, :cond_41

    .line 1775
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1776
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 1777
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1776
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->removeSnapshotCache(I)V

    .line 1779
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_46
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isHandoffEnabled(Landroid/os/IBinder;)Z
    .registers 4

    .line 351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 353
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 354
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 356
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isHandoffEnabled()Z

    move-result p1

    goto :goto_18

    :catchall_15
    move-exception p1

    goto :goto_20

    :cond_17
    const/4 p1, 0x0

    .line 358
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 359
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 358
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isHandoffFullTaskRecreationAllowed(Landroid/os/IBinder;)Z
    .registers 4

    .line 365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 367
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 368
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 370
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isHandoffFullTaskRecreationAllowed()Z

    move-result p1

    goto :goto_18

    :catchall_15
    move-exception p1

    goto :goto_20

    :cond_17
    const/4 p1, 0x0

    .line 372
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 373
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 372
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .registers 2

    .line 1057
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1058
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1062
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_13
    move-exception p1

    goto :goto_1b

    .line 1060
    :cond_15
    :try_start_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1063
    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final isInternalCallerGetLaunchedFrom(I)Z
    .registers 6

    .line 855
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    return v2

    .line 858
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 859
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    return v1

    .line 863
    :cond_18
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v3

    if-eqz v3, :cond_1f

    return v2

    :cond_1f
    const/4 v3, 0x2

    .line 867
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 866
    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p0

    .line 868
    array-length p1, p0

    if-lez p1, :cond_38

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    return v2

    :cond_38
    return v1
.end method

.method public isRequestedToLaunchInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 4

    .line 1940
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1941
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 1942
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_12
    move-exception p1

    goto :goto_1e

    .line 1944
    :cond_14
    :try_start_14
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

    if-ne p1, p2, :cond_19

    const/4 v0, 0x1

    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1945
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .registers 2

    .line 1530
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1531
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1532
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :catchall_12
    move-exception p1

    goto :goto_1a

    :cond_14
    const/4 p1, 0x0

    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 1533
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isTopOfTask(Landroid/os/IBinder;)Z
    .registers 3

    .line 673
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 674
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 675
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :catchall_18
    move-exception p1

    goto :goto_20

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 676
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final isValidCaller(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;Z)Z
    .registers 4

    if-eqz p3, :cond_7

    .line 824
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->hasCaller(Landroid/os/IBinder;)Z

    move-result p0

    return p0

    :cond_7
    if-nez p2, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$requestMultiwindowFullscreenLocked$3(ILandroid/os/IRemoteCallback;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;Z)V
    .registers 6

    .line 1372
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityClientController;->executeFullscreenRequestTransition(ILandroid/os/IRemoteCallback;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;Z)V

    return-void
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .registers 6

    .line 426
    const-string v0, "moveActivityTaskToBack"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 429
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_3a

    xor-int/lit8 p2, p2, 0x1

    .line 430
    :try_start_11
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result p2

    .line 431
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 433
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask(Landroid/os/IBinder;)Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result p0

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_2f

    .line 437
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_3c

    .line 435
    :cond_31
    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2f

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3a

    .line 437
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_3a
    move-exception p0

    goto :goto_41

    .line 435
    :goto_3c
    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2f

    :try_start_3d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3a

    .line 437
    :goto_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    throw p0
.end method

.method public navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/Intent;)Z
    .registers 16

    .line 457
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 458
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_15

    .line 460
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_12
    move-exception v0

    move-object p0, v0

    goto :goto_45

    .line 462
    :cond_15
    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 465
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v6

    .line 466
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p5, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v9

    .line 468
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 469
    :try_start_2d
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/Task;->navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z

    move-result p1

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_3e
    move-exception v0

    move-object p1, v0

    .line 471
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 462
    :goto_45
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onBackPressed(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    .registers 10

    .line 1868
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1870
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_4a

    .line 1871
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 1872
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_18

    .line 1892
    :goto_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    goto :goto_4c

    .line 1874
    :cond_1a
    :try_start_1a
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1875
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v3, v4, :cond_34

    .line 1877
    iget-object v5, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v5, v5, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 1878
    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskOrganizerController;->handleInterceptBackPressedOnTaskRoot(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1881
    monitor-exit v2

    goto :goto_11

    .line 1883
    :cond_34
    invoke-static {v3, v4}, Lcom/android/server/wm/ActivityClientController;->shouldMoveTaskToBack(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1884
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wm/ActivityClientController;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    .line 1885
    monitor-exit v2

    goto :goto_11

    .line 1887
    :cond_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_18

    :try_start_40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1890
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityClientController;->requestCallbackFinish(Landroid/app/IRequestFinishCallback;)V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_4a

    .line 1892
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4a
    move-exception p0

    goto :goto_51

    .line 1887
    :goto_4c
    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_18

    :try_start_4d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_4a

    .line 1892
    :goto_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1893
    throw p0
.end method

.method public onPictureInPictureUiStateChanged(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureUiState;)V
    .registers 5

    .line 1246
    new-instance v0, Landroid/app/servertransaction/PipStateTransactionItem;

    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, v1, p2}, Landroid/app/servertransaction/PipStateTransactionItem;-><init>(Landroid/os/IBinder;Landroid/app/PictureInPictureUiState;)V

    .line 1247
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    return-void
.end method

.method public onSystemReady()V
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    .line 175
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IActivityClientController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 177
    const-string p1, "ActivityClientController"

    invoke-static {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public overrideActivityTransition(Landroid/os/IBinder;ZIII)V
    .registers 8

    .line 1647
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1648
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1649
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1651
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/wm/ActivityRecord;->overrideCustomTransition(ZIII)V

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_1e

    .line 1653
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1654
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1653
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 11

    .line 1672
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1673
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1674
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 1675
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1676
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    const/4 v4, 0x0

    .line 1677
    invoke-static {p2, p3, v4, p4, v3}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p2

    const/4 p3, 0x0

    .line 1676
    invoke-virtual {v2, p2, p1, p3, p3}, Lcom/android/server/wm/TransitionController;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 1681
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, p5}, Lcom/android/server/wm/TransitionController;->setOverrideBackgroundColor(I)V

    goto :goto_2f

    :catchall_2d
    move-exception p1

    goto :goto_37

    .line 1683
    :cond_2f
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1683
    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    .registers 6

    .line 1801
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 1804
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1806
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_34

    .line 1807
    :try_start_20
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 1809
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    goto :goto_2c

    :catchall_2a
    move-exception p1

    goto :goto_36

    .line 1811
    :cond_2c
    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2a

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_34

    .line 1813
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_34
    move-exception p0

    goto :goto_3b

    .line 1811
    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_2a

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_34

    .line 1813
    :goto_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1814
    throw p0
.end method

.method public releaseActivityInstance(Landroid/os/IBinder;)Z
    .registers 6

    .line 476
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 478
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_3c

    .line 479
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 480
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_2e

    .line 483
    :cond_17
    const-string v2, "app-req"

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 484
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_2c

    .line 487
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_2c
    move-exception p1

    goto :goto_37

    .line 481
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2c

    .line 487
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 485
    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_2c

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    throw p0
.end method

.method public reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    .registers 6

    .line 1630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1632
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_24

    .line 1633
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 1635
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyFullyDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_26

    .line 1638
    :cond_1c
    :goto_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1a

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    .line 1640
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_24
    move-exception p0

    goto :goto_2b

    .line 1638
    :goto_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_1a

    :try_start_27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_24

    .line 1640
    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1641
    throw p0
.end method

.method public reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V
    .registers 9

    .line 395
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1d

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x444be87d4eb7ca3dL    # -4.254612180629345E-21

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 397
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 398
    :try_start_23
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 400
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setSizeConfigurations(Landroid/window/SizeConfigurationBuckets;)V

    goto :goto_2f

    :catchall_2d
    move-exception p1

    goto :goto_34

    .line 402
    :cond_2f
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final requestCallbackFinish(Landroid/app/IRequestFinishCallback;)V
    .registers 3

    .line 1860
    :try_start_0
    invoke-interface {p1}, Landroid/app/IRequestFinishCallback;->requestFinish()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 1862
    const-string p1, "ActivityTaskManager"

    const-string v0, "Failed to invoke request finish callback"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    .registers 7

    .line 1337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1339
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_15

    .line 1340
    :try_start_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityClientController;->requestMultiwindowFullscreenLocked(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V

    .line 1341
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_17

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 1343
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    goto :goto_1d

    :catchall_17
    move-exception p0

    .line 1341
    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_15

    .line 1343
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1344
    throw p0
.end method

.method public final requestMultiwindowFullscreenLocked(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    .registers 10

    .line 1349
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_1f

    .line 1355
    :cond_7
    iget-object p1, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1356
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1358
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityClientController;->getMultiwindowFullscreenTargetTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 1359
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wm/ActivityClientController;->validateMultiwindowFullscreenRequestLocked(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 1361
    invoke-static {p3, v0}, Lcom/android/server/wm/ActivityClientController;->reportMultiwindowFullscreenRequestValidatingResult(Landroid/os/IRemoteCallback;I)V

    if-nez v0, :cond_1f

    .line 1363
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityClientController;->executeMultiWindowFullscreenRequest(ILcom/android/server/wm/Task;)V

    :cond_1f
    :goto_1f
    return-void

    .line 1368
    :cond_20
    new-instance v5, Lcom/android/server/wm/Transition;

    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v5, v1, v2, p1, v0}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 1370
    iget-object p1, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityClientController;ILandroid/os/IRemoteCallback;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;)V

    invoke-virtual {p1, v5, v0}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z

    return-void
.end method

.method public requestPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 1222
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1226
    :cond_8
    const-string v0, "requestPictureInPictureMode"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 1232
    :cond_11
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1233
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;Z)Z

    move-result p0

    return p0

    .line 1237
    :cond_22
    new-instance v0, Landroid/app/servertransaction/EnterPipRequestedItem;

    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/app/servertransaction/EnterPipRequestedItem;-><init>(Landroid/os/IBinder;)V

    .line 1238
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result p0

    return p0
.end method

.method public setActivityRecordInputSinkEnabled(Landroid/os/IBinder;Z)V
    .registers 6

    .line 1954
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v2, "setActivityRecordInputSinkEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1957
    :try_start_11
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 1959
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSinkEnabled:Z

    goto :goto_1c

    :catchall_1a
    move-exception p1

    goto :goto_21

    .line 1961
    :cond_1c
    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setAllowCrossUidActivitySwitchFromBelow(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1615
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1617
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1e

    .line 1618
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1620
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setAllowCrossUidActivitySwitchFromBelow(Z)V

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_20

    .line 1622
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_14

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    .line 1624
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_25

    .line 1622
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_14

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1e

    .line 1624
    :goto_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1625
    throw p0
.end method

.method public setForceSendResultForMediaProjection(Landroid/os/IBinder;)V
    .registers 5

    .line 657
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    const-string v2, "setForceSendResultForMediaProjection"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 663
    :try_start_11
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 664
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_28

    .line 667
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->setForceSendResultForMediaProjection()V

    .line 668
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_26
    move-exception p1

    goto :goto_2d

    .line 665
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 668
    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setHandoffEnabled(Landroid/os/IBinder;ZZ)V
    .registers 6

    .line 382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 383
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 384
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 386
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->setHandoffEnabled(ZZ)V

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_1e

    .line 388
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 389
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 388
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .registers 8

    .line 1068
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1069
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 1073
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 1076
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFocusedActivityOnDisplay()Z

    move-result p2

    if-eqz p2, :cond_36

    .line 1077
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    const/4 v1, 0x1

    aget-boolean p2, p2, v1

    if-eqz p2, :cond_31

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-wide v2, -0x162d2a884e53ca28L    # -5.766554428023569E201

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_41

    .line 1078
    :cond_31
    :goto_31
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1080
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1071
    :cond_3b
    :try_start_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1080
    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1586
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1588
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1e

    .line 1589
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1591
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setInheritShowWhenLocked(Z)V

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_20

    .line 1593
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_14

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    .line 1595
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_25

    .line 1593
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_14

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1e

    .line 1595
    :goto_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1596
    throw p0
.end method

.method public setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    .registers 7

    .line 1100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1102
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityClientController;->ensureSetPipAspectRatioQuotaTracker()V

    .line 1103
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_1e

    .line 1104
    :try_start_d
    const-string v3, "setPictureInPictureParams"

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityClientController;->ensureValidPictureInPictureActivityParams(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 1106
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    .line 1107
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_20

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    .line 1109
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_26

    :catchall_20
    move-exception p0

    .line 1107
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_1e

    .line 1109
    :goto_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1110
    throw p0
.end method

.method public setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1724
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1726
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1e

    .line 1727
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1729
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setRecentsScreenshotEnabled(Z)V

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_20

    .line 1731
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_14

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    .line 1733
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_25

    .line 1731
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_14

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1e

    .line 1733
    :goto_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1734
    throw p0
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .registers 3

    .line 890
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityClientController;->setRequestedOrientationWithTransition(Landroid/os/IBinder;I)V

    return-void
.end method

.method public final setRequestedOrientationWithTransition(Landroid/os/IBinder;I)V
    .registers 8

    .line 914
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 916
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_64

    .line 917
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 919
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_18

    .line 946
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p1

    goto :goto_66

    .line 921
    :cond_1a
    :try_start_1a
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/android/server/wm/EventLogTags;->writeWmSetRequestedOrientation(ILjava/lang/String;)V

    const/4 v2, 0x0

    .line 926
    invoke-virtual {p1, v2, p2}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(ZI)I

    move-result v2

    .line 928
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->handlesOrientationChangeFromDescendant(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_43

    .line 930
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 929
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 930
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v2

    if-nez v2, :cond_43

    .line 931
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v2

    goto :goto_44

    :cond_43
    move-object v2, v3

    .line 934
    :goto_44
    iget-object v4, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 936
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setRequestedOrientation(I)V

    if-eqz v2, :cond_5c

    .line 939
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2, v2, v3, v3, v3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 942
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;)V

    .line 944
    :cond_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_1a .. :try_end_5d} :catchall_18

    :try_start_5d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_64

    .line 946
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_64
    move-exception p0

    goto :goto_6b

    .line 944
    :goto_66
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_18

    :try_start_67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_64

    .line 946
    :goto_6b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 947
    throw p0
.end method

.method public setShouldDockBigOverlays(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1117
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_19

    .line 1118
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1119
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setShouldDockBigOverlays(Z)V

    .line 1120
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_1b

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 1122
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    goto :goto_21

    :catchall_1b
    move-exception p1

    .line 1120
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_19

    .line 1122
    :goto_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1123
    throw p0
.end method

.method public setShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1571
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1573
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1e

    .line 1574
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1576
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setShowWhenLocked(Z)V

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_20

    .line 1578
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_14

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    .line 1580
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_25

    .line 1578
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_14

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1e

    .line 1580
    :goto_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1581
    throw p0
.end method

.method public setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 3

    .line 1491
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1492
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1494
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    goto :goto_12

    :catchall_10
    move-exception p1

    goto :goto_17

    .line 1496
    :cond_12
    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setTurnScreenOn(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1601
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1603
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1e

    .line 1604
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1606
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setTurnScreenOn(Z)V

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_20

    .line 1608
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_14

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    .line 1610
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_25

    .line 1608
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_14

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1e

    .line 1610
    :goto_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1611
    throw p0
.end method

.method public setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I
    .registers 4

    .line 1689
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 1691
    const-class p2, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/HardwarePropertiesManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 1693
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1694
    :try_start_14
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1695
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-nez p1, :cond_24

    .line 1697
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_24
    const/4 p0, 0x0

    .line 1701
    throw p0

    :catchall_26
    move-exception p1

    .line 1695
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 4

    .line 444
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 445
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 447
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task;->shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_19
    move-exception p1

    goto :goto_21

    .line 449
    :cond_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 13

    .line 1501
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1504
    :try_start_4
    iget-object v3, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_7e

    .line 1505
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1506
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 1508
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    goto :goto_1f

    :catchall_1b
    move-exception v0

    move-object p0, v0

    goto :goto_81

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    const/4 v5, 0x0

    if-eq v4, v0, :cond_48

    .line 1510
    const-string p0, "ActivityTaskManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showAssistFromActivity failed: caller "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not current top "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_1b

    .line 1524
    :goto_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 1514
    :cond_48
    :try_start_48
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v6, :cond_69

    .line 1515
    const-string p0, "ActivityTaskManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showAssistFromActivity failed: caller "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not visible"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    monitor-exit v3

    goto :goto_41

    .line 1519
    :cond_69
    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 1520
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_48 .. :try_end_6c} :catchall_1b

    :try_start_6c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1521
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/16 v6, 0x8

    const/4 v8, 0x0

    move-object v9, p1

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p0
    :try_end_7a
    .catchall {:try_start_6c .. :try_end_7a} :catchall_7e

    .line 1524
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_7e
    move-exception v0

    move-object p0, v0

    goto :goto_86

    .line 1520
    :goto_81
    :try_start_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_1b

    :try_start_82
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_7e

    .line 1524
    :goto_86
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1525
    throw p0
.end method

.method public showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .registers 3

    .line 1482
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1483
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 1484
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1d

    .line 1486
    :cond_18
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public splashScreenAttached(Landroid/os/IBinder;)V
    .registers 4

    .line 1131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1132
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1133
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->splashScreenAttachedLocked(Landroid/os/IBinder;)V

    .line 1134
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p1

    .line 1134
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    .line 1538
    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity tried to startLocalVoiceInteraction"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1541
    :try_start_d
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1543
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_1d

    :catchall_1a
    move-exception p0

    goto :goto_6f

    :cond_1c
    const/4 v1, 0x0

    .line 1544
    :goto_1d
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v1, :cond_67

    .line 1547
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez p0, :cond_5b

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez p0, :cond_5b

    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p0, :cond_36

    goto :goto_5b

    .line 1552
    :cond_36
    iget-boolean p0, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    if-eqz p0, :cond_46

    .line 1553
    const-string p0, "ActivityTaskManager"

    const-string p1, "Pending start of voice interaction already."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_d .. :try_end_42} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_46
    const/4 p0, 0x1

    .line 1556
    :try_start_47
    iput-boolean p0, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 1557
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 1558
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1559
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 1560
    invoke-virtual {v0, p1, p0, p2}, Landroid/service/voice/VoiceInteractionManagerInternal;->startLocalVoiceInteraction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 1549
    :cond_5b
    :goto_5b
    :try_start_5b
    const-string p0, "ActivityTaskManager"

    const-string p1, "Already in a voice interaction, cannot start new voice interaction"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1545
    :cond_67
    :try_start_67
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only focused activity can call startVoiceInteraction"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1558
    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 10

    .line 1440
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1441
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_14

    .line 1442
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_11
    move-exception p0

    goto/16 :goto_bf

    .line 1444
    :cond_14
    :try_start_14
    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_DESKTOP_WINDOWING_ENTERPRISE_BUGFIX:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1445
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 1446
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 1448
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->canEnterLockTaskMode(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isTopMostTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 1453
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v3, "startLockTaskModeByToken"

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v1

    .line 1454
    invoke-virtual {v1}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_50

    move-object v3, v4

    goto :goto_63

    :cond_50
    new-instance v3, Lcom/android/server/wm/Transition;

    iget-object v5, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1457
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/16 v7, 0xf

    invoke-direct {v3, v7, v2, v5, v6}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    :goto_63
    if-eqz v3, :cond_6e

    .line 1459
    iget-object v5, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v5

    invoke-virtual {v5, v3, p1, v4, v4}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 1463
    :cond_6e
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1464
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskMode(Lcom/android/server/wm/Task;Z)V

    if-eqz v3, :cond_7c

    const/4 v1, 0x1

    .line 1466
    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 1468
    :cond_7c
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    goto :goto_ba

    .line 1449
    :cond_84
    const-string p0, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLockTaskMode: Can\'t lock due to auth, task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLockTaskMode: Can\'t lock due to auth, task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1470
    :cond_b1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskMode(Lcom/android/server/wm/Task;Z)V

    .line 1472
    :goto_ba
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_14 .. :try_end_bb} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_bf
    :try_start_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .registers 2

    .line 1565
    const-class p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 1566
    invoke-virtual {p0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    return-void
.end method

.method public stopLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 3

    .line 1477
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    .registers 7

    .line 1252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1254
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_5d

    .line 1255
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 1262
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 1268
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2e

    .line 1269
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    if-ne v3, v4, :cond_24

    goto :goto_2e

    .line 1270
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "toggleFreeformWindowingMode: You can only toggle between fullscreen and freeform."

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2c
    move-exception p1

    goto :goto_86

    .line 1274
    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1275
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    const/4 v2, 0x0

    .line 1276
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_55

    .line 1277
    :cond_3c
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1280
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v2, 0x0

    .line 1284
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    goto :goto_55

    :cond_51
    const/4 v2, 0x5

    .line 1286
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    .line 1288
    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_a .. :try_end_56} :catchall_2c

    :try_start_56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5d

    .line 1290
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_5d
    move-exception p0

    goto :goto_8b

    .line 1278
    :cond_5f
    :try_start_5f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "This activity is currently not freeform-enabled"

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1264
    :cond_67
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "toggleFreeformWindowingMode: the activity doesn\'t have a root task"

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1257
    :cond_6f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleFreeformWindowingMode: No activity record matching token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1288
    :goto_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_5f .. :try_end_87} :catchall_2c

    :try_start_87
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_5d

    .line 1290
    :goto_8b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1291
    throw p0
.end method

.method public unregisterRemoteAnimations(Landroid/os/IBinder;)V
    .registers 5

    .line 1819
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "unregisterRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1823
    :try_start_f
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_29

    .line 1824
    :try_start_15
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 1826
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->unregisterRemoteAnimations()V

    goto :goto_21

    :catchall_1f
    move-exception p1

    goto :goto_2b

    .line 1828
    :cond_21
    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_1f

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_29

    .line 1830
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_29
    move-exception p0

    goto :goto_30

    .line 1828
    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_1f

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_29

    .line 1830
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1831
    throw p0
.end method

.method public final validateMultiwindowFullscreenRequestLocked(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;)I
    .registers 6

    .line 1308
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    return v0

    .line 1312
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eq p3, p0, :cond_10

    return v1

    .line 1315
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 p3, 0x1

    if-nez p2, :cond_21

    if-eq p0, p3, :cond_1a

    return p3

    .line 1320
    :cond_1a
    iget p0, p1, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_20

    return p3

    :cond_20
    return v0

    .line 1326
    :cond_21
    sget-object p1, Landroid/window/DesktopModeFlags;->ENABLE_REQUEST_FULLSCREEN_BUGFIX:Landroid/window/DesktopModeFlags;

    invoke-virtual {p1}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_30

    if-eq p0, p3, :cond_2e

    const/4 p1, 0x6

    if-ne p0, p1, :cond_30

    :cond_2e
    const/4 p0, 0x3

    return p0

    :cond_30
    return v0
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .registers 3

    .line 681
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 682
    :try_start_6
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask(Landroid/os/IBinder;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 683
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :catchall_14
    move-exception p1

    goto :goto_1c

    :cond_16
    const/4 p1, 0x0

    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 684
    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method
