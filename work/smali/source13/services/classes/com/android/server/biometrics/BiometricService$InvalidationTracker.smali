.class Lcom/android/server/biometrics/BiometricService$InvalidationTracker;
.super Ljava/lang/Object;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InvalidationTracker"
.end annotation


# instance fields
.field private final mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

.field private final mSensorsPendingInvalidation:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "fromSensorId"    # I
    .param p5, "clientCallback"    # Landroid/hardware/biometrics/IInvalidationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;II",
            "Landroid/hardware/biometrics/IInvalidationCallback;",
            ")V"
        }
    .end annotation

    .line 140
    .local p2, "sensors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/biometrics/BiometricSensor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    .line 142
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 144
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 145
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v2, p4, :cond_21

    .line 146
    goto :goto_10

    .line 149
    :cond_21
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 150
    goto :goto_10

    .line 154
    :cond_2c
    :try_start_2c
    iget-object v2, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v2
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_36} :catch_3a

    if-nez v2, :cond_39

    .line 155
    goto :goto_10

    .line 159
    :cond_39
    goto :goto_42

    .line 157
    :catch_3a
    move-exception v2

    .line 158
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BiometricService"

    const-string v4, "Remote Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_42
    const-string v2, "BiometricService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting authenticatorId invalidation for sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    monitor-enter p0

    .line 164
    :try_start_5d
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    iget v3, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_7d

    .line 168
    :try_start_69
    iget-object v2, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    new-instance v3, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;-><init>(Lcom/android/server/biometrics/BiometricService$InvalidationTracker;Lcom/android/server/biometrics/BiometricSensor;)V

    invoke-interface {v2, p3, v3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_73} :catch_74

    .line 176
    goto :goto_7c

    .line 174
    :catch_74
    move-exception v2

    .line 175
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "BiometricService"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_7c
    goto :goto_10

    .line 165
    .restart local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :catchall_7d
    move-exception v0

    :try_start_7e
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v0

    .line 179
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_80
    monitor-enter p0

    .line 180
    :try_start_81
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_a0

    if-eqz v0, :cond_9e

    .line 182
    :try_start_89
    const-string v0, "BiometricService"

    const-string v1, "No sensors require invalidation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    invoke-interface {v0}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_95} :catch_96
    .catchall {:try_start_89 .. :try_end_95} :catchall_a0

    .line 186
    goto :goto_9e

    .line 184
    :catch_96
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_97
    const-string v1, "BiometricService"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9e
    :goto_9e
    monitor-exit p0

    .line 189
    return-void

    .line 188
    :catchall_a0
    move-exception v0

    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_97 .. :try_end_a2} :catchall_a0

    throw v0
.end method

.method public static start(Landroid/content/Context;Ljava/util/ArrayList;IILandroid/hardware/biometrics/IInvalidationCallback;)Lcom/android/server/biometrics/BiometricService$InvalidationTracker;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "fromSensorId"    # I
    .param p4, "clientCallback"    # Landroid/hardware/biometrics/IInvalidationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;II",
            "Landroid/hardware/biometrics/IInvalidationCallback;",
            ")",
            "Lcom/android/server/biometrics/BiometricService$InvalidationTracker;"
        }
    .end annotation

    .line 135
    .local p1, "sensors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/biometrics/BiometricSensor;>;"
    new-instance v6, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-object v6
.end method


# virtual methods
.method onInvalidated(I)V
    .registers 5
    .param p1, "sensorId"    # I

    .line 193
    monitor-enter p0

    .line 194
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 196
    const-string v0, "BiometricService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " invalidated, remaining size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 197
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_4a

    if-eqz v0, :cond_48

    .line 201
    :try_start_3a
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    invoke-interface {v0}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40
    .catchall {:try_start_3a .. :try_end_3f} :catchall_4a

    .line 204
    goto :goto_48

    .line 202
    :catch_40
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v1, "BiometricService"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_48
    :goto_48
    monitor-exit p0

    .line 207
    return-void

    .line 206
    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_4a

    throw v0
.end method
