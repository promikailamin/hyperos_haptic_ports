.class Lcom/android/server/servicewatcher/ServiceWatcherImpl;
.super Ljava/lang/Object;
.source "ServiceWatcherImpl.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher;
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TBoundServiceInfo:",
        "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/server/servicewatcher/ServiceWatcher;",
        "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;"
    }
.end annotation


# static fields
.field static final D:Z

.field static final RETRY_DELAY_MS:J = 0x3a98L

.field static final TAG:Ljava/lang/String; = "ServiceWatcher"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mRegistered:Z

.field private mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/servicewatcher/ServiceWatcherImpl<",
            "TTBoundServiceInfo;>.MyServiceConnection;"
        }
    .end annotation
.end field

.field final mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;"
        }
    .end annotation
.end field

.field final mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;"
        }
    .end annotation
.end field

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    const-string v0, "ServiceWatcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    .local p4, "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .local p5, "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 78
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 84
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    .line 88
    iput-object p5, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    .line 89
    return-void
.end method

.method static synthetic lambda$onServiceChanged$1(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V
    .registers 2
    .param p0, "oldServiceConnection"    # Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
    .param p1, "newServiceConnection"    # Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 144
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->unbind()V

    .line 145
    invoke-virtual {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->bind()V

    .line 146
    return-void
.end method

.method static synthetic lambda$runOnBinder$0(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .registers 2
    .param p0, "serviceConnection"    # Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
    .param p1, "operation"    # Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method


# virtual methods
.method public checkServiceResolves()Z
    .registers 2

    .line 93
    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->hasMatchingService()Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 163
    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 165
    .local v0, "serviceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3a

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "target service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    return-void

    .line 165
    .end local v0    # "serviceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public declared-synchronized onServiceChanged()V
    .registers 2

    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 120
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 121
    monitor-exit p0

    return-void

    .line 119
    .end local p0    # "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onServiceChanged(Z)V
    .registers 7
    .param p1, "forceRebind"    # Z

    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 131
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    if-eqz v0, :cond_c

    .line 132
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->getServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object v0

    .local v0, "newBoundServiceInfo":Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;, "TTBoundServiceInfo;"
    goto :goto_d

    .line 134
    .end local v0    # "newBoundServiceInfo":Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;, "TTBoundServiceInfo;"
    .end local p0    # "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    :cond_c
    const/4 v0, 0x0

    .line 137
    .restart local v0    # "newBoundServiceInfo":Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;, "TTBoundServiceInfo;"
    :goto_d
    if-nez p1, :cond_1b

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 139
    :cond_1b
    const-string v1, "ServiceWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] chose new implementation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 141
    .local v1, "oldServiceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    new-instance v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    invoke-direct {v2, p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V

    .line 142
    .local v2, "newServiceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    iput-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 143
    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    .line 148
    .end local v1    # "oldServiceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    .end local v2    # "newServiceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    :cond_52
    monitor-exit p0

    return-void

    .line 130
    .end local v0    # "newBoundServiceInfo":Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;, "TTBoundServiceInfo;"
    .end local p1    # "forceRebind":Z
    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized register()V
    .registers 7

    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 98
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 100
    iput-boolean v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 101
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->register(Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 105
    monitor-exit p0

    return-void

    .line 97
    .end local p0    # "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .registers 5
    .param p1, "operation"    # Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;

    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 126
    .local v0, "serviceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 127
    monitor-exit p0

    return-void

    .line 124
    .end local v0    # "serviceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    .end local p0    # "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    .end local p1    # "operation":Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 153
    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 155
    .local v0, "serviceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_d

    .line 157
    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 155
    .end local v0    # "serviceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized unregister()V
    .registers 2

    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 109
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->unregister()V

    .line 112
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 116
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
