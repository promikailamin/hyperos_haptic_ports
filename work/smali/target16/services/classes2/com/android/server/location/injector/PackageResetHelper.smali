.class public abstract Lcom/android/server/location/injector/PackageResetHelper;
.super Ljava/lang/Object;
.source "PackageResetHelper.java"


# instance fields
.field public final mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/PackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final notifyPackageReset(Ljava/lang/String;)V
    .registers 4

    .line 83
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_20

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_20
    iget-object p0, p0, Lcom/android/server/location/injector/PackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/PackageResetHelper$Responder;

    .line 88
    invoke-interface {v0, p1}, Lcom/android/server/location/injector/PackageResetHelper$Responder;->onPackageReset(Ljava/lang/String;)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public abstract onRegister()V
.end method

.method public abstract onUnregister()V
.end method

.method public final queryResetableForPackage(Ljava/lang/String;)Z
    .registers 3

    .line 93
    iget-object p0, p0, Lcom/android/server/location/injector/PackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/PackageResetHelper$Responder;

    .line 94
    invoke-interface {v0, p1}, Lcom/android/server/location/injector/PackageResetHelper$Responder;->isResetableForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized register(Lcom/android/server/location/injector/PackageResetHelper$Responder;)V
    .registers 4

    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/PackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/android/server/location/injector/PackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_14

    .line 64
    invoke-virtual {p0}, Lcom/android/server/location/injector/PackageResetHelper;->onRegister()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    goto :goto_14

    :catchall_12
    move-exception p1

    goto :goto_16

    .line 66
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_12

    throw p1
.end method

.method public declared-synchronized unregister(Lcom/android/server/location/injector/PackageResetHelper$Responder;)V
    .registers 3

    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/PackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lcom/android/server/location/injector/PackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 72
    invoke-virtual {p0}, Lcom/android/server/location/injector/PackageResetHelper;->onUnregister()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    goto :goto_14

    :catchall_12
    move-exception p1

    goto :goto_16

    .line 74
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_12

    throw p1
.end method
