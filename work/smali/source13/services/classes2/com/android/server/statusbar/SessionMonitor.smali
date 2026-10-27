.class public Lcom/android/server/statusbar/SessionMonitor;
.super Ljava/lang/Object;
.source "SessionMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionMonitor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSessionToListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/internal/statusbar/ISessionListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lcom/android/server/statusbar/SessionMonitor;->mContext:Landroid/content/Context;

    .line 52
    sget-object v0, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 53
    .local v1, "session":I
    iget-object v2, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .end local v1    # "session":I
    goto :goto_12

    .line 55
    :cond_31
    return-void
.end method

.method private isValidSessionType(I)Z
    .registers 4
    .param p1, "sessionType"    # I

    .line 137
    sget-object v0, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private requireListenerPermissions(I)V
    .registers 5
    .param p1, "sessionFlags"    # I

    .line 141
    and-int/lit8 v0, p1, 0x1

    const-string v1, "StatusBarManagerService.SessionMonitor"

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    if-eqz v0, :cond_d

    .line 142
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_d
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_16

    .line 148
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_16
    return-void
.end method

.method private requireSetterPermissions(I)V
    .registers 5
    .param p1, "sessionFlags"    # I

    .line 155
    and-int/lit8 v0, p1, 0x1

    const-string v1, "StatusBarManagerService.SessionMonitor"

    if-eqz v0, :cond_d

    .line 156
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_d
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_18

    .line 162
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_18
    return-void
.end method


# virtual methods
.method public onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    .registers 10
    .param p1, "sessionType"    # I
    .param p2, "instanceId"    # Lcom/android/internal/logging/InstanceId;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/SessionMonitor;->requireSetterPermissions(I)V

    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/SessionMonitor;->isValidSessionType(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 121
    const-string v0, "SessionMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid onSessionEnded sessionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 125
    :cond_22
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    monitor-enter v0

    .line 126
    :try_start_25
    iget-object v1, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/ISessionListener;
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_62

    .line 128
    .local v2, "listener":Lcom/android/internal/statusbar/ISessionListener;
    :try_start_41
    invoke-interface {v2, p1, p2}, Lcom/android/internal/statusbar/ISessionListener;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_62

    .line 131
    goto :goto_5f

    .line 129
    :catch_45
    move-exception v3

    .line 130
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_46
    const-string v4, "SessionMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to send session end to listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v2    # "listener":Lcom/android/internal/statusbar/ISessionListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_5f
    goto :goto_35

    .line 133
    :cond_60
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_46 .. :try_end_64} :catchall_62

    throw v1
.end method

.method public onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    .registers 10
    .param p1, "sessionType"    # I
    .param p2, "instanceId"    # Lcom/android/internal/logging/InstanceId;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/SessionMonitor;->requireSetterPermissions(I)V

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/SessionMonitor;->isValidSessionType(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 96
    const-string v0, "SessionMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid onSessionStarted sessionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 100
    :cond_22
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    monitor-enter v0

    .line 101
    :try_start_25
    iget-object v1, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/ISessionListener;
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_62

    .line 103
    .local v2, "listener":Lcom/android/internal/statusbar/ISessionListener;
    :try_start_41
    invoke-interface {v2, p1, p2}, Lcom/android/internal/statusbar/ISessionListener;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_62

    .line 106
    goto :goto_5f

    .line 104
    :catch_45
    move-exception v3

    .line 105
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_46
    const-string v4, "SessionMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to send session start to listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v2    # "listener":Lcom/android/internal/statusbar/ISessionListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_5f
    goto :goto_35

    .line 108
    :cond_60
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_46 .. :try_end_64} :catchall_62

    throw v1
.end method

.method public registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    .registers 8
    .param p1, "sessionFlags"    # I
    .param p2, "listener"    # Lcom/android/internal/statusbar/ISessionListener;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/SessionMonitor;->requireListenerPermissions(I)V

    .line 63
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    monitor-enter v0

    .line 64
    :try_start_6
    sget-object v1, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 65
    .local v2, "sessionType":I
    and-int v3, p1, v2

    if-eqz v3, :cond_2f

    .line 66
    iget-object v3, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v2    # "sessionType":I
    :cond_2f
    goto :goto_c

    .line 69
    :cond_30
    monitor-exit v0

    .line 70
    return-void

    .line 69
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    .registers 8
    .param p1, "sessionFlags"    # I
    .param p2, "listener"    # Lcom/android/internal/statusbar/ISessionListener;

    .line 77
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    monitor-enter v0

    .line 78
    :try_start_3
    sget-object v1, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 79
    .local v2, "sessionType":I
    and-int v3, p1, v2

    if-eqz v3, :cond_2c

    .line 80
    iget-object v3, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 82
    .end local v2    # "sessionType":I
    :cond_2c
    goto :goto_9

    .line 83
    :cond_2d
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method
