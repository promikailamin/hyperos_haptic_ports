.class public Lcom/android/server/wm/TransitionController$RemotePlayer;
.super Ljava/lang/Object;
.source "TransitionController.java"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mDelegateProcesses:Landroid/util/ArrayMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/wm/TransitionController$RemotePlayer;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 1799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1777
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 1800
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 1836
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1837
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_20

    .line 1838
    iget-object v2, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :catchall_1e
    move-exception p0

    goto :goto_27

    .line 1840
    :cond_20
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 1841
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_1e

    throw p0
.end method

.method public reportRunning(Landroid/app/IApplicationThread;)Z
    .registers 5

    .line 1847
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1848
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;

    const/4 v1, 0x0

    if-eqz p1, :cond_22

    .line 1849
    iget-boolean v2, p1, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mNeedReport:Z

    if-eqz v2, :cond_22

    .line 1852
    iput-boolean v1, p1, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mNeedReport:Z

    .line 1853
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_28

    .line 1855
    :cond_22
    :goto_22
    monitor-exit v0

    if-eqz p1, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    return v1

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_20

    throw p0
.end method

.method public update(Lcom/android/server/wm/WindowProcessController;ZZ)V
    .registers 6

    const/4 v0, 0x1

    if-nez p2, :cond_2f

    .line 1805
    iget-object p2, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 1807
    :try_start_6
    iget-object p3, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_d
    if-ltz p3, :cond_2b

    .line 1808
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, p1, :cond_28

    .line 1809
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1815
    monitor-exit p2
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_26

    const/4 p0, 0x0

    .line 1816
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    return-void

    :catchall_26
    move-exception p0

    goto :goto_2d

    :cond_28
    add-int/lit8 p3, p3, -0x1

    goto :goto_d

    .line 1814
    :cond_2b
    :try_start_2b
    monitor-exit p2

    return-void

    .line 1815
    :goto_2d
    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_26

    throw p0

    .line 1819
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isRunningRemoteTransition()Z

    move-result p2

    if-nez p2, :cond_66

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result p2

    if-nez p2, :cond_3c

    goto :goto_66

    .line 1820
    :cond_3c
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    .line 1821
    new-instance p2, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;-><init>(Lcom/android/server/wm/TransitionController$RemotePlayer;Lcom/android/server/wm/WindowProcessController;)V

    if-eqz p3, :cond_51

    .line 1827
    iput-boolean v0, p2, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mNeedReport:Z

    .line 1828
    iget-object p3, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const-wide/16 v0, 0xc8

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1830
    :cond_51
    iget-object p3, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 1831
    :try_start_54
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    monitor-exit p3

    return-void

    :catchall_63
    move-exception p0

    monitor-exit p3
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_63

    throw p0

    :cond_66
    :goto_66
    return-void
.end method
