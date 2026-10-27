.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;
.super Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;
.source "LocationProviderManager.java"

# interfaces
.implements Landroid/app/PendingIntent$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "LocationPendingIntentRegistration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/location/provider/LocationProviderManager;
    .param p2, "request"    # Landroid/location/LocationRequest;
    .param p3, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p4, "transport"    # Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;
    .param p5, "permissionLevel"    # I

    .line 1209
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 1210
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    .line 1211
    return-void
.end method

.method private onTransportFailure(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1240
    instance-of v0, p1, Landroid/app/PendingIntent$CanceledException;

    if-eqz v0, :cond_3b

    .line 1241
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1242
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1243
    :try_start_33
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->remove()V

    .line 1244
    monitor-exit v0

    .line 1248
    return-void

    .line 1244
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    throw v1

    .line 1246
    :cond_3b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public onCanceled(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 1252
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_2e

    .line 1253
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " canceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_2e
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1257
    :try_start_33
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->remove()V

    .line 1258
    monitor-exit v0

    .line 1259
    return-void

    .line 1258
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method protected onLocationListenerRegister()V
    .registers 3

    .line 1216
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Landroid/app/PendingIntent;->addCancelListener(Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1217
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->remove()V

    .line 1219
    :cond_11
    return-void
.end method

.method protected onLocationListenerUnregister()V
    .registers 2

    .line 1224
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->removeCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 1225
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

    .line 1236
    .local p1, "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;>;"
    invoke-direct {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->onTransportFailure(Ljava/lang/Exception;)V

    .line 1237
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

    .line 1230
    .local p1, "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;>;"
    invoke-direct {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->onTransportFailure(Ljava/lang/Exception;)V

    .line 1231
    return-void
.end method
