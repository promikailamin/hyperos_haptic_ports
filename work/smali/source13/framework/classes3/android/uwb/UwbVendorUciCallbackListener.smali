.class public final Landroid/uwb/UwbVendorUciCallbackListener;
.super Landroid/uwb/IUwbVendorUciCallback$Stub;
.source "UwbVendorUciCallbackListener.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Uwb.UwbVendorUciCallbacks"


# instance fields
.field private final blacklist mAdapter:Landroid/uwb/IUwbAdapter;

.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/uwb/UwbManager$UwbVendorUciCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsRegistered:Z


# direct methods
.method public constructor blacklist <init>(Landroid/uwb/IUwbAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/uwb/IUwbAdapter;

    .line 37
    invoke-direct {p0}, Landroid/uwb/IUwbVendorUciCallback$Stub;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mIsRegistered:Z

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mCallbackMap:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mAdapter:Landroid/uwb/IUwbAdapter;

    .line 39
    return-void
.end method

.method static synthetic blacklist lambda$onVendorNotificationReceived$1(Landroid/uwb/UwbManager$UwbVendorUciCallback;II[B)V
    .registers 4
    .param p0, "callback"    # Landroid/uwb/UwbManager$UwbVendorUciCallback;
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B

    .line 102
    invoke-interface {p0, p1, p2, p3}, Landroid/uwb/UwbManager$UwbVendorUciCallback;->onVendorUciNotification(II[B)V

    return-void
.end method

.method static synthetic blacklist lambda$onVendorResponseReceived$0(Landroid/uwb/UwbManager$UwbVendorUciCallback;II[B)V
    .registers 4
    .param p0, "callback"    # Landroid/uwb/UwbManager$UwbVendorUciCallback;
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B

    .line 84
    invoke-interface {p0, p1, p2, p3}, Landroid/uwb/UwbManager$UwbVendorUciCallback;->onVendorUciResponse(II[B)V

    return-void
.end method


# virtual methods
.method public blacklist onVendorNotificationReceived(II[B)V
    .registers 10
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    monitor-enter p0

    .line 98
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3c

    .line 100
    .local v0, "identity":J
    :try_start_5
    iget-object v2, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/UwbManager$UwbVendorUciCallback;

    .line 101
    .local v3, "callback":Landroid/uwb/UwbManager$UwbVendorUciCallback;
    iget-object v4, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 102
    .local v4, "executor":Ljava/util/concurrent/Executor;
    new-instance v5, Landroid/uwb/UwbVendorUciCallbackListener$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, p1, p2, p3}, Landroid/uwb/UwbVendorUciCallbackListener$$ExternalSyntheticLambda1;-><init>(Landroid/uwb/UwbManager$UwbVendorUciCallback;II[B)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_2b} :catch_34
    .catchall {:try_start_5 .. :try_end_2b} :catchall_32

    .line 103
    .end local v3    # "callback":Landroid/uwb/UwbManager$UwbVendorUciCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_f

    .line 107
    :cond_2c
    :try_start_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    nop

    .line 109
    .end local v0    # "identity":J
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_3c

    .line 110
    return-void

    .line 107
    .restart local v0    # "identity":J
    :catchall_32
    move-exception v2

    goto :goto_37

    .line 104
    :catch_34
    move-exception v2

    .line 105
    .local v2, "ex":Ljava/lang/RuntimeException;
    nop

    .end local v0    # "identity":J
    .end local p0    # "this":Landroid/uwb/UwbVendorUciCallbackListener;
    .end local p1    # "gid":I
    .end local p2    # "oid":I
    .end local p3    # "payload":[B
    :try_start_36
    throw v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_32

    .line 107
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "identity":J
    .restart local p0    # "this":Landroid/uwb/UwbVendorUciCallbackListener;
    .restart local p1    # "gid":I
    .restart local p2    # "oid":I
    .restart local p3    # "payload":[B
    :goto_37
    :try_start_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    nop

    .end local p0    # "this":Landroid/uwb/UwbVendorUciCallbackListener;
    .end local p1    # "gid":I
    .end local p2    # "oid":I
    .end local p3    # "payload":[B
    throw v2

    .line 109
    .end local v0    # "identity":J
    .restart local p0    # "this":Landroid/uwb/UwbVendorUciCallbackListener;
    .restart local p1    # "gid":I
    .restart local p2    # "oid":I
    .restart local p3    # "payload":[B
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public blacklist onVendorResponseReceived(II[B)V
    .registers 10
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    monitor-enter p0

    .line 80
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3c

    .line 82
    .local v0, "identity":J
    :try_start_5
    iget-object v2, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/UwbManager$UwbVendorUciCallback;

    .line 83
    .local v3, "callback":Landroid/uwb/UwbManager$UwbVendorUciCallback;
    iget-object v4, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 84
    .local v4, "executor":Ljava/util/concurrent/Executor;
    new-instance v5, Landroid/uwb/UwbVendorUciCallbackListener$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, p1, p2, p3}, Landroid/uwb/UwbVendorUciCallbackListener$$ExternalSyntheticLambda0;-><init>(Landroid/uwb/UwbManager$UwbVendorUciCallback;II[B)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_2b} :catch_34
    .catchall {:try_start_5 .. :try_end_2b} :catchall_32

    .line 85
    .end local v3    # "callback":Landroid/uwb/UwbManager$UwbVendorUciCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_f

    .line 89
    :cond_2c
    :try_start_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    nop

    .line 91
    .end local v0    # "identity":J
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_3c

    .line 92
    return-void

    .line 89
    .restart local v0    # "identity":J
    :catchall_32
    move-exception v2

    goto :goto_37

    .line 86
    :catch_34
    move-exception v2

    .line 87
    .local v2, "ex":Ljava/lang/RuntimeException;
    nop

    .end local v0    # "identity":J
    .end local p0    # "this":Landroid/uwb/UwbVendorUciCallbackListener;
    .end local p1    # "gid":I
    .end local p2    # "oid":I
    .end local p3    # "payload":[B
    :try_start_36
    throw v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_32

    .line 89
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "identity":J
    .restart local p0    # "this":Landroid/uwb/UwbVendorUciCallbackListener;
    .restart local p1    # "gid":I
    .restart local p2    # "oid":I
    .restart local p3    # "payload":[B
    :goto_37
    :try_start_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    nop

    .end local p0    # "this":Landroid/uwb/UwbVendorUciCallbackListener;
    .end local p1    # "gid":I
    .end local p2    # "oid":I
    .end local p3    # "payload":[B
    throw v2

    .line 91
    .end local v0    # "identity":J
    .restart local p0    # "this":Landroid/uwb/UwbVendorUciCallbackListener;
    .restart local p1    # "gid":I
    .restart local p2    # "oid":I
    .restart local p3    # "payload":[B
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public blacklist register(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$UwbVendorUciCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/UwbManager$UwbVendorUciCallback;

    .line 42
    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 44
    monitor-exit p0

    return-void

    .line 46
    :cond_b
    iget-object v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-boolean v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mIsRegistered:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2c

    if-nez v0, :cond_2a

    .line 49
    :try_start_14
    iget-object v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p0}, Landroid/uwb/IUwbAdapter;->registerVendorExtensionCallback(Landroid/uwb/IUwbVendorUciCallback;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mIsRegistered:Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1c} :catch_1d
    .catchall {:try_start_14 .. :try_end_1c} :catchall_2c

    .line 54
    goto :goto_2a

    .line 51
    :catch_1d
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1e
    const-string v1, "Uwb.UwbVendorUciCallbacks"

    const-string v2, "Failed to register adapter state callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/uwb/UwbVendorUciCallbackListener;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/uwb/UwbManager$UwbVendorUciCallback;
    throw v1

    .line 56
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/uwb/UwbVendorUciCallbackListener;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/uwb/UwbManager$UwbVendorUciCallback;
    :cond_2a
    :goto_2a
    monitor-exit p0

    .line 57
    return-void

    .line 56
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public blacklist unregister(Landroid/uwb/UwbManager$UwbVendorUciCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/uwb/UwbManager$UwbVendorUciCallback;

    .line 59
    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 61
    monitor-exit p0

    return-void

    .line 63
    :cond_b
    iget-object v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mIsRegistered:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_35

    if-eqz v0, :cond_33

    .line 66
    :try_start_1c
    iget-object v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p0}, Landroid/uwb/IUwbAdapter;->unregisterVendorExtensionCallback(Landroid/uwb/IUwbVendorUciCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_26
    .catchall {:try_start_1c .. :try_end_21} :catchall_35

    .line 70
    nop

    .line 71
    const/4 v0, 0x0

    :try_start_23
    iput-boolean v0, p0, Landroid/uwb/UwbVendorUciCallbackListener;->mIsRegistered:Z

    goto :goto_33

    .line 67
    :catch_26
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Uwb.UwbVendorUciCallbacks"

    const-string v2, "Failed to unregister AdapterStateCallback with service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/uwb/UwbVendorUciCallbackListener;
    .end local p1    # "callback":Landroid/uwb/UwbManager$UwbVendorUciCallback;
    throw v1

    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/uwb/UwbVendorUciCallbackListener;
    .restart local p1    # "callback":Landroid/uwb/UwbManager$UwbVendorUciCallback;
    :cond_33
    :goto_33
    monitor-exit p0

    .line 74
    return-void

    .line 73
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_35

    throw v0
.end method
