.class public Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;
.super Ljava/lang/Object;
.source "AuthenticationStateListeners.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mIBinderToListenerMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mIBinderToListenerMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 0
    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .registers 4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback binder died: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthenticationStateListeners"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mIBinderToListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removed dead listener for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 197
    :cond_33
    const-string p0, "No dead listeners found"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V
    .registers 5

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mIBinderToListenerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 88
    :try_start_16
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v0

    .line 90
    const-string v1, "AuthenticationStateListeners"

    const-string v2, "Remote exception in notifying listener that authentication acquired"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_23
    return-void
.end method

.method public onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V
    .registers 5

    .line 101
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mIBinderToListenerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 103
    :try_start_16
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v0

    .line 105
    const-string v1, "AuthenticationStateListeners"

    const-string v2, "Remote exception in notifying listener of unrecoverable authentication error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_23
    return-void
.end method

.method public onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V
    .registers 5

    .line 116
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mIBinderToListenerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 118
    :try_start_16
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v0

    .line 120
    const-string v1, "AuthenticationStateListeners"

    const-string v2, "Remote exception in notifying listener that authentication failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_23
    return-void
.end method

.method public onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V
    .registers 5

    .line 131
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mIBinderToListenerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 133
    :try_start_16
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v0

    .line 135
    const-string v1, "AuthenticationStateListeners"

    const-string v2, "Remote exception in notifying listener of recoverable authentication error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_23
    return-void
.end method

.method public onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V
    .registers 5

    .line 146
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mIBinderToListenerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 148
    :try_start_16
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v0

    .line 150
    const-string v1, "AuthenticationStateListeners"

    const-string v2, "Remote exception in notifying listener that authentication started"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_23
    return-void
.end method

.method public onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V
    .registers 5

    .line 161
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mIBinderToListenerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 163
    :try_start_16
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v0

    .line 165
    const-string v1, "AuthenticationStateListeners"

    const-string v2, "Remote exception in notifying listener that authentication stopped"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_23
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V
    .registers 5

    .line 176
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mIBinderToListenerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 178
    :try_start_16
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v0

    .line 180
    const-string v1, "AuthenticationStateListeners"

    const-string v2, "Remote exception in notifying listener that authentication succeeded"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_23
    return-void
.end method

.method public registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .registers 5

    .line 55
    invoke-interface {p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 57
    :cond_7
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mIBinderToListenerMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 59
    :try_start_d
    invoke-interface {v0, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    .line 61
    const-string v1, "AuthenticationStateListeners"

    const-string v2, "Failed to link to death"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->binderDied(Landroid/os/IBinder;)V

    return-void
.end method

.method public unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .registers 3

    .line 73
    invoke-interface {p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_19

    .line 75
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mIBinderToListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/AuthenticationStateListener;

    if-eqz p1, :cond_19

    .line 77
    invoke-interface {p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_19
    :goto_19
    return-void
.end method
