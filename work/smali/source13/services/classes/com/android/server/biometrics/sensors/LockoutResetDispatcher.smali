.class public Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
.super Ljava/lang/Object;
.source "LockoutResetDispatcher.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockoutResetTracker"


# instance fields
.field final mClientCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mMutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mMutex:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mClientCallbacks:Ljava/util/List;

    .line 92
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    if-nez p1, :cond_25

    .line 110
    :try_start_5
    const-string v1, "LockoutResetTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    monitor-exit v0

    return-void

    .line 114
    :cond_25
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mClientCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_44

    .line 116
    :try_start_31
    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_39} :catch_3a
    .catchall {:try_start_31 .. :try_end_39} :catchall_44

    .line 119
    goto :goto_42

    .line 117
    :catch_3a
    move-exception v1

    .line 118
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3b
    const-string v2, "LockoutResetTracker"

    const-string v3, "Failed to link to death"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_42
    monitor-exit v0

    .line 122
    return-void

    .line 120
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_44

    throw v1
.end method

.method public binderDied()V
    .registers 1

    .line 127
    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "who"    # Landroid/os/IBinder;

    .line 142
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    const-string v1, "LockoutResetTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback binder died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mClientCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 145
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;>;"
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 147
    .local v2, "callback":Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;
    invoke-static {v2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 148
    const-string v3, "LockoutResetTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing dead callback for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->-$$Nest$fgetmOpPackageName(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {v2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->-$$Nest$mreleaseWakelock(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 152
    .end local v2    # "callback":Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;
    :cond_5d
    goto :goto_21

    .line 153
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;>;"
    :cond_5e
    monitor-exit v0

    .line 155
    return-void

    .line 153
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public notifyLockoutResetCallbacks(I)V
    .registers 5
    .param p1, "sensorId"    # I

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mClientCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 164
    .local v2, "callback":Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;
    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->sendLockoutReset(I)V

    .line 165
    .end local v2    # "callback":Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;
    goto :goto_9

    .line 166
    :cond_19
    monitor-exit v0

    .line 168
    return-void

    .line 166
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method
