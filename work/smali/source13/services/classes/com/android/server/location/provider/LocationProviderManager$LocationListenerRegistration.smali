.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;
.super Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;
.source "LocationProviderManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "LocationListenerRegistration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/location/provider/LocationProviderManager;
    .param p2, "request"    # Landroid/location/LocationRequest;
    .param p3, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p4, "transport"    # Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;
    .param p5, "permissionLevel"    # I

    .line 1143
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 1144
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    .line 1145
    return-void
.end method

.method private onTransportFailure(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1176
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_3b

    .line 1177
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1178
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    :try_start_33
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->remove()V

    .line 1180
    monitor-exit v0

    .line 1184
    return-void

    .line 1180
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    throw v1

    .line 1182
    :cond_3b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1189
    :try_start_0
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_2e

    .line 1190
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_2e
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_33} :catch_3c

    .line 1194
    :try_start_33
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->remove()V

    .line 1195
    monitor-exit v0

    .line 1200
    nop

    .line 1201
    return-void

    .line 1195
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_39

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;
    :try_start_3b
    throw v1
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3c} :catch_3c

    .line 1196
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;
    :catch_3c
    move-exception v0

    .line 1199
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected onLocationListenerRegister()V
    .registers 3

    .line 1151
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1154
    goto :goto_f

    .line 1152
    :catch_b
    move-exception v0

    .line 1153
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->remove()V

    .line 1155
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method protected onLocationListenerUnregister()V
    .registers 3

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1161
    return-void
.end method

.method public onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .registers 3
    .param p2, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1172
    .local p1, "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;>;"
    invoke-direct {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->onTransportFailure(Ljava/lang/Exception;)V

    .line 1173
    return-void
.end method

.method protected onProviderOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .registers 3
    .param p2, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1166
    .local p1, "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;>;"
    invoke-direct {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->onTransportFailure(Ljava/lang/Exception;)V

    .line 1167
    return-void
.end method
