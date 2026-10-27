.class public Lcom/android/server/wm/ActivityServiceConnectionsHolder;
.super Ljava/lang/Object;
.source "ActivityServiceConnectionsHolder.java"


# instance fields
.field public final mActivity:Lcom/android/server/wm/ActivityRecord;

.field public mConnections:Landroid/util/ArraySet;

.field public volatile mIsDisconnecting:Z


# direct methods
.method public static synthetic $r8$lambda$EAi9VnxAGZQWsXgEuAgaGKr7s5k(Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->lambda$disconnectActivityFromServices$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public addConnection(Ljava/lang/Object;)V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    monitor-enter v0

    .line 63
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mIsDisconnecting:Z

    if-eqz v1, :cond_b

    .line 69
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_1d

    .line 71
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    if-nez v1, :cond_16

    .line 72
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    .line 74
    :cond_16
    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_9

    throw p0
.end method

.method public disconnectActivityFromServices()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mIsDisconnecting:Z

    if-eqz v0, :cond_f

    goto :goto_20

    :cond_f
    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mIsDisconnecting:Z

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityServiceConnectionsHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    :goto_20
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "activity="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public forEachConnection(Ljava/util/function/Consumer;)V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    monitor-enter v0

    .line 104
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_2b

    .line 107
    :cond_e
    new-instance v1, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 108
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_29

    .line 109
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1c
    if-ltz p0, :cond_28

    .line 110
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_1c

    :cond_28
    return-void

    :catchall_29
    move-exception p0

    goto :goto_2d

    .line 105
    :cond_2b
    :goto_2b
    :try_start_2b
    monitor-exit v0

    return-void

    .line 108
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_29

    throw p0
.end method

.method public getActivityPid()I
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p0, :cond_b

    .line 98
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method public isActivityVisible()Z
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleForServiceConnection:Z

    return p0
.end method

.method public final synthetic lambda$disconnectActivityFromServices$0()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->disconnectActivityFromServices(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mIsDisconnecting:Z

    return-void
.end method

.method public removeConnection(Ljava/lang/Object;)V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    if-nez p0, :cond_b

    .line 82
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_10

    .line 87
    :cond_b
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v0

    return-void

    :goto_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_9

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 147
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method
