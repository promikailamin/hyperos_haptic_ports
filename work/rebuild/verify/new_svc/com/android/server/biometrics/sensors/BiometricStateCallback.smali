.class public Lcom/android/server/biometrics/sensors/BiometricStateCallback;
.super Ljava/lang/Object;
.source "BiometricStateCallback.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mBiometricState:I

.field public final mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mProviders:Ljava/util/List;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$gra2Sznc6rayrA1p1NXhswU9tqo(Landroid/os/IBinder;Landroid/hardware/biometrics/IBiometricStateListener;)Z
    .registers 2

    .line 215
    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/UserManager;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mProviders:Ljava/util/List;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 71
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mUserManager:Landroid/os/UserManager;

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

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback binder died: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricStateCallback"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 216
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removed dead listener for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_38
    const-string p0, "No dead listeners found"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 10

    monitor-enter p0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 176
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 177
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 178
    iget v6, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v6, v7}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->hasEnrollments(II)Z

    move-result v6

    if-eqz p1, :cond_51

    .line 180
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iget v7, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, p1, v5, v7, v6}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyEnrollmentStateChanged(Landroid/hardware/biometrics/IBiometricStateListener;IIZ)V

    goto :goto_31

    :catchall_4f
    move-exception p1

    goto :goto_5b

    .line 183
    :cond_51
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iget v7, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, v5, v7, v6}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyAllEnrollmentStateChanged(IIZ)V
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_4f

    goto :goto_31

    .line 189
    :cond_59
    monitor-exit p0

    return-void

    :goto_5b
    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_4f

    throw p1
.end method

.method public getBiometricState()I
    .registers 1

    .line 87
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    return p0
.end method

.method public final notifyAllEnrollmentStateChanged(IIZ)V
    .registers 6

    .line 193
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/IBiometricStateListener;

    .line 194
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyEnrollmentStateChanged(Landroid/hardware/biometrics/IBiometricStateListener;IIZ)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final notifyBiometricStateListeners(I)V
    .registers 5

    .line 136
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/IBiometricStateListener;

    .line 138
    :try_start_12
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricStateListener;->onStateChanged(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v0

    .line 140
    const-string v1, "BiometricStateCallback"

    const-string v2, "Remote exception in biometric state change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public final notifyEnrollmentStateChanged(Landroid/hardware/biometrics/IBiometricStateListener;IIZ)V
    .registers 5

    .line 201
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricStateListener;->onEnrollmentsChanged(IIZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 203
    const-string p1, "BiometricStateCallback"

    const-string p2, "Remote exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onBiometricAction(I)V
    .registers 5

    .line 147
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/IBiometricStateListener;

    .line 149
    :try_start_12
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricStateListener;->onBiometricAction(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v0

    .line 151
    const-string v1, "BiometricStateCallback"

    const-string v2, "Remote exception in onBiometricAction"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 7

    const/4 p2, 0x0

    .line 117
    iput p2, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Client finished, state updated to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", client "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BiometricStateCallback"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    instance-of p2, p1, Lcom/android/server/biometrics/sensors/EnrollmentModifier;

    if-eqz p2, :cond_53

    .line 122
    move-object p2, p1

    check-cast p2, Lcom/android/server/biometrics/sensors/EnrollmentModifier;

    .line 123
    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/EnrollmentModifier;->hasEnrollmentStateChanged()Z

    move-result v1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enrollment state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_53

    .line 126
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    .line 127
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p1

    .line 128
    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/EnrollmentModifier;->hasEnrollments()Z

    move-result p2

    .line 126
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyAllEnrollmentStateChanged(IIZ)V

    .line 132
    :cond_53
    iget p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyBiometricStateListeners(I)V

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 6

    .line 92
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 94
    instance-of v1, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const-string v2, "BiometricStateCallback"

    if-eqz v1, :cond_23

    .line 95
    move-object v1, p1

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 96
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x2

    .line 97
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_46

    .line 98
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x3

    .line 99
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_46

    :cond_1f
    const/4 v1, 0x4

    .line 101
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_46

    .line 103
    :cond_23
    instance-of v1, p1, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    .line 104
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_46

    .line 106
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other authentication client: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 107
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 110
    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State updated from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", client "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyBiometricStateListeners(I)V

    return-void
.end method

.method public declared-synchronized registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 4

    monitor-enter p0

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_12

    .line 167
    :try_start_9
    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_14
    .catchall {:try_start_9 .. :try_end_11} :catchall_12

    goto :goto_1c

    :catchall_12
    move-exception p1

    goto :goto_1e

    :catch_14
    move-exception p1

    .line 169
    :try_start_15
    const-string v0, "BiometricStateCallback"

    const-string v1, "Failed to link to death"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    .line 171
    :goto_1c
    monitor-exit p0

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_12

    throw p1
.end method

.method public declared-synchronized start(Ljava/util/List;)V
    .registers 2

    monitor-enter p0

    .line 80
    :try_start_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mProviders:Ljava/util/List;

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 82
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method
