.class public Lcom/android/server/biometrics/sensors/BiometricStateCallback;
.super Ljava/lang/Object;
.source "BiometricStateCallback.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BiometricStateCallback"


# instance fields
.field private mBiometricState:I

.field private final mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/biometrics/IBiometricStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 50
    return-void
.end method

.method private notifyBiometricStateListeners(I)V
    .registers 7
    .param p1, "newState"    # I

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/IBiometricStateListener;

    .line 104
    .local v1, "listener":Landroid/hardware/biometrics/IBiometricStateListener;
    :try_start_12
    invoke-interface {v1, p1}, Landroid/hardware/biometrics/IBiometricStateListener;->onStateChanged(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 107
    goto :goto_1e

    .line 105
    :catch_16
    move-exception v2

    .line 106
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BiometricStateCallback"

    const-string v4, "Remote exception in biometric state change"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v1    # "listener":Landroid/hardware/biometrics/IBiometricStateListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1e
    goto :goto_6

    .line 109
    :cond_1f
    return-void
.end method


# virtual methods
.method public getBiometricState()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    return v0
.end method

.method public notifyAllEnrollmentStateChanged(IIZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "sensorId"    # I
    .param p3, "hasEnrollments"    # Z

    .line 120
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

    .line 121
    .local v1, "listener":Landroid/hardware/biometrics/IBiometricStateListener;
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyEnrollmentStateChanged(Landroid/hardware/biometrics/IBiometricStateListener;IIZ)V

    .line 122
    .end local v1    # "listener":Landroid/hardware/biometrics/IBiometricStateListener;
    goto :goto_6

    .line 123
    :cond_16
    return-void
.end method

.method public notifyEnrollmentStateChanged(Landroid/hardware/biometrics/IBiometricStateListener;IIZ)V
    .registers 8
    .param p1, "listener"    # Landroid/hardware/biometrics/IBiometricStateListener;
    .param p2, "userId"    # I
    .param p3, "sensorId"    # I
    .param p4, "hasEnrollments"    # Z

    .line 131
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricStateListener;->onEnrollmentsChanged(IIZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 134
    goto :goto_c

    .line 132
    :catch_4
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricStateCallback"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 8
    .param p1, "client"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client finished, state updated to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricStateCallback"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    instance-of v0, p1, Lcom/android/server/biometrics/sensors/EnrollmentModifier;

    if-eqz v0, :cond_59

    .line 88
    move-object v0, p1

    check-cast v0, Lcom/android/server/biometrics/sensors/EnrollmentModifier;

    .line 89
    .local v0, "enrollmentModifier":Lcom/android/server/biometrics/sensors/EnrollmentModifier;
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/EnrollmentModifier;->hasEnrollmentStateChanged()Z

    move-result v2

    .line 90
    .local v2, "enrollmentStateChanged":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enrollment state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz v2, :cond_59

    .line 92
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    .line 93
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v3

    .line 94
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/EnrollmentModifier;->hasEnrollments()Z

    move-result v4

    .line 92
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyAllEnrollmentStateChanged(IIZ)V

    .line 98
    .end local v0    # "enrollmentModifier":Lcom/android/server/biometrics/sensors/EnrollmentModifier;
    .end local v2    # "enrollmentStateChanged":Z
    :cond_59
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyBiometricStateListeners(I)V

    .line 99
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 6
    .param p1, "client"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 58
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 60
    .local v0, "previousBiometricState":I
    instance-of v1, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const-string v2, "BiometricStateCallback"

    if-eqz v1, :cond_23

    .line 61
    move-object v1, p1

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 62
    .local v1, "authClient":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 63
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_22

    .line 64
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 65
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_22

    .line 67
    :cond_1f
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 69
    .end local v1    # "authClient":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    :goto_22
    goto :goto_48

    :cond_23
    instance-of v1, p1, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz v1, :cond_2b

    .line 70
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_48

    .line 72
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other authentication client: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 76
    :goto_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State updated from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", client "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyBiometricStateListeners(I)V

    .line 79
    return-void
.end method

.method public registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/biometrics/IBiometricStateListener;

    .line 144
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method
