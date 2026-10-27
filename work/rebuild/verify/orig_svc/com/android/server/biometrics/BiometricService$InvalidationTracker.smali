.class Lcom/android/server/biometrics/BiometricService$InvalidationTracker;
.super Ljava/lang/Object;
.source "BiometricService.java"


# instance fields
.field public final mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

.field public final mSensorsPendingInvalidation:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 9

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    .line 181
    new-instance p5, Landroid/util/ArraySet;

    invoke-direct {p5}, Landroid/util/ArraySet;-><init>()V

    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 183
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_7d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/biometrics/BiometricSensor;

    .line 184
    iget v0, p5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v0, p4, :cond_21

    goto :goto_10

    .line 188
    :cond_21
    iget v0, p5, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_10

    .line 193
    :cond_2c
    :try_start_2c
    iget-object v0, p5, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_36} :catch_39

    if-nez v0, :cond_41

    goto :goto_10

    :catch_39
    move-exception v0

    .line 197
    const-string v1, "BiometricService"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    :cond_41
    const-string v0, "BiometricService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting authenticatorId invalidation for sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-enter p0

    .line 203
    :try_start_5a
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    iget v1, p5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_7a

    .line 207
    :try_start_66
    iget-object v0, p5, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;

    invoke-direct {v1, p0, p5}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;-><init>(Lcom/android/server/biometrics/BiometricService$InvalidationTracker;Lcom/android/server/biometrics/BiometricSensor;)V

    invoke-interface {v0, p3, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_70} :catch_71

    goto :goto_10

    :catch_71
    move-exception p5

    .line 214
    const-string v0, "BiometricService"

    const-string v1, "RemoteException"

    invoke-static {v0, v1, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :catchall_7a
    move-exception p1

    .line 204
    :try_start_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p1

    .line 218
    :cond_7d
    monitor-enter p0

    .line 219
    :try_start_7e
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_93

    if-eqz p1, :cond_9d

    .line 221
    :try_start_86
    const-string p1, "BiometricService"

    const-string p2, "No sensors require invalidation"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    invoke-interface {p1}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_92} :catch_95
    .catchall {:try_start_86 .. :try_end_92} :catchall_93

    goto :goto_9d

    :catchall_93
    move-exception p1

    goto :goto_9f

    :catch_95
    move-exception p1

    .line 224
    :try_start_96
    const-string p2, "BiometricService"

    const-string p3, "Remote Exception"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    :cond_9d
    :goto_9d
    monitor-exit p0

    return-void

    :goto_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_93

    throw p1
.end method

.method public static start(Landroid/content/Context;Ljava/util/List;IILandroid/hardware/biometrics/IInvalidationCallback;)Lcom/android/server/biometrics/BiometricService$InvalidationTracker;
    .registers 11

    .line 174
    new-instance v0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;-><init>(Landroid/content/Context;Ljava/util/List;IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-object v0
.end method


# virtual methods
.method public onInvalidated(I)V
    .registers 5

    .line 232
    monitor-enter p0

    .line 233
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 235
    const-string v0, "BiometricService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " invalidated, remaining size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 236
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_3c

    if-eqz p1, :cond_46

    .line 240
    :try_start_36
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    invoke-interface {p1}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3e
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3c

    goto :goto_46

    :catchall_3c
    move-exception p1

    goto :goto_48

    :catch_3e
    move-exception p1

    .line 242
    :try_start_3f
    const-string v0, "BiometricService"

    const-string v1, "Remote Exception"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    :cond_46
    :goto_46
    monitor-exit p0

    return-void

    :goto_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_3c

    throw p1
.end method
