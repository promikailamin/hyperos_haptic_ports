.class public abstract Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;
.super Ljava/lang/Object;
.source "BiometricServiceRegistry.java"


# instance fields
.field public volatile mAllProps:Ljava/util/List;

.field public final mBiometricServiceSupplier:Ljava/util/function/Supplier;

.field public final mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

.field public volatile mServiceProviders:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$x0WsIKdzUnRnfbom1Yua11lD2N0(Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;Ljava/util/function/Supplier;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->lambda$registerAll$0(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 67
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mBiometricServiceSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public declared-synchronized addAllRegisteredCallback(Landroid/os/IInterface;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_e

    .line 150
    :try_start_3
    const-string p1, "BiometricServiceRegistry"

    const-string v0, "addAllRegisteredCallback, callback is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 151
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    goto :goto_2e

    .line 154
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p1

    .line 155
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz p1, :cond_23

    if-eqz v0, :cond_23

    .line 157
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->broadcastAllAuthenticatorsRegistered()V

    goto :goto_2c

    :cond_23
    if-nez p1, :cond_2c

    .line 159
    const-string p1, "BiometricServiceRegistry"

    const-string v0, "addAllRegisteredCallback failed to register callback"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_c

    .line 161
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_c

    throw p1
.end method

.method public final declared-synchronized broadcastAllAuthenticatorsRegistered()V
    .registers 7

    monitor-enter p0

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_31

    .line 166
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1b

    .line 168
    :try_start_10
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->invokeRegisteredCallback(Landroid/os/IInterface;Ljava/util/List;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1f
    .catchall {:try_start_10 .. :try_end_15} :catchall_1d

    .line 172
    :goto_15
    :try_start_15
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_28

    :catchall_1b
    move-exception v0

    goto :goto_38

    :catchall_1d
    move-exception v0

    goto :goto_2b

    :catch_1f
    move-exception v3

    .line 170
    :try_start_20
    const-string v4, "BiometricServiceRegistry"

    const-string v5, "Remote exception in broadcastAllAuthenticatorsRegistered"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    goto :goto_15

    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 172
    :goto_2b
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 173
    throw v0

    .line 175
    :cond_31
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_1b

    .line 176
    monitor-exit p0

    return-void

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_1b

    throw v0
.end method

.method public final declared-synchronized finishRegistration(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    monitor-enter p0

    .line 137
    :try_start_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    .line 138
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 139
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->broadcastAllAuthenticatorsRegistered()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 140
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public getAllProperties()Ljava/util/List;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    return-object p0

    :cond_7
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 196
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 197
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->containsSensor(I)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProviders()Ljava/util/List;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    return-object p0

    :cond_7
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getSingleProvider()Landroid/util/Pair;
    .registers 6

    .line 216
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "BiometricServiceRegistry"

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_a1

    .line 223
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_37

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSingleProvider() called but multiple sensors present: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 225
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :catch_35
    move-exception v0

    goto :goto_6c

    .line 228
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/SensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 231
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 234
    :cond_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Single sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but provider not found"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_6b} :catch_35

    return-object v1

    .line 238
    :goto_6c
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    if-nez v1, :cond_74

    .line 239
    const-string/jumbo p0, "mAllProps: null"

    goto :goto_8c

    .line 241
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAllProps.size(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 243
    :goto_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This shouldn\'t happen. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    throw v0

    .line 217
    :cond_a1
    :goto_a1
    const-string p0, "No sensors found"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public abstract invokeRegisteredCallback(Landroid/os/IInterface;Ljava/util/List;)V
.end method

.method public final synthetic lambda$registerAll$0(Ljava/util/function/Supplier;)V
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->registerAllInBackground(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public registerAll(Ljava/util/function/Supplier;)V
    .registers 6

    .line 99
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "BiometricServiceRegistry"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 101
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 102
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;Ljava/util/function/Supplier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->quitSafely()Z

    return-void
.end method

.method public registerAllInBackground(Ljava/util/function/Supplier;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/BiometricServiceProvider;",
            ">;>;)V"
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_d

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :cond_d
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mBiometricServiceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/IBiometricService;

    if-eqz v0, :cond_4e

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    if-eqz v3, :cond_20

    .line 124
    invoke-interface {v3}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v3

    .line 125
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 126
    invoke-virtual {p0, v0, v5}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/biometrics/SensorPropertiesInternal;)V

    goto :goto_36

    .line 128
    :cond_46
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 132
    :cond_4a
    invoke-virtual {p0, p1, v1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->finishRegistration(Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 117
    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "biometric service cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/biometrics/SensorPropertiesInternal;)V
.end method
