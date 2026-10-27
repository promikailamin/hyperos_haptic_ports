.class public abstract Lcom/android/server/biometrics/sensors/RemovalClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "RemovalClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/RemovalConsumer;
.implements Lcom/android/server/biometrics/sensors/EnrollmentModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/RemovalConsumer;",
        "Lcom/android/server/biometrics/sensors/EnrollmentModifier;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics/RemovalClient"


# instance fields
.field private final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final mHasEnrollmentsBeforeStarting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "owner"    # Ljava/lang/String;
    .param p8, "sensorId"    # I
    .param p9, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p10, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "TS;>;I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/android/server/biometrics/sensors/RemovalClient;, "Lcom/android/server/biometrics/sensors/RemovalClient<TS;TT;>;"
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p7, "utils":Lcom/android/server/biometrics/sensors/BiometricUtils;, "Lcom/android/server/biometrics/sensors/BiometricUtils<TS;>;"
    .local p11, "authenticatorIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    move-object v11, p0

    move-object/from16 v12, p7

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 55
    iput-object v12, v11, Lcom/android/server/biometrics/sensors/RemovalClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 56
    move-object/from16 v0, p11

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/RemovalClient;->mAuthenticatorIds:Ljava/util/Map;

    .line 57
    move/from16 v2, p5

    invoke-interface {v12, p1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v11, Lcom/android/server/biometrics/sensors/RemovalClient;->mHasEnrollmentsBeforeStarting:Z

    .line 58
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 2

    .line 131
    .local p0, "this":Lcom/android/server/biometrics/sensors/RemovalClient;, "Lcom/android/server/biometrics/sensors/RemovalClient<TS;TT;>;"
    const/4 v0, 0x4

    return v0
.end method

.method public hasEnrollmentStateChanged()Z
    .registers 4

    .line 119
    .local p0, "this":Lcom/android/server/biometrics/sensors/RemovalClient;, "Lcom/android/server/biometrics/sensors/RemovalClient<TS;TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/RemovalClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 120
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 121
    .local v0, "hasEnrollmentsNow":Z
    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/RemovalClient;->mHasEnrollmentsBeforeStarting:Z

    if-eq v0, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method public hasEnrollments()Z
    .registers 4

    .line 126
    .local p0, "this":Lcom/android/server/biometrics/sensors/RemovalClient;, "Lcom/android/server/biometrics/sensors/RemovalClient<TS;TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/RemovalClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public interruptsPrecedingClients()Z
    .registers 2

    .line 136
    .local p0, "this":Lcom/android/server/biometrics/sensors/RemovalClient;, "Lcom/android/server/biometrics/sensors/RemovalClient<TS;TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 9
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 76
    .local p0, "this":Lcom/android/server/biometrics/sensors/RemovalClient;, "Lcom/android/server/biometrics/sensors/RemovalClient<TS;TT;>;"
    const-string v0, "Biometrics/RemovalClient"

    if-nez p1, :cond_34

    .line 77
    const-string/jumbo v1, "identifier was null, skipping onRemove()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 80
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getSensorId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getCookie()I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V

    goto :goto_27

    .line 84
    :cond_22
    const-string v2, "Error, listener was null, not sending onError callback"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_28

    .line 88
    :goto_27
    goto :goto_2e

    .line 86
    :catch_28
    move-exception v2

    .line 87
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to send error to client for onRemoved"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/RemovalClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 90
    return-void

    .line 93
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/RemovalClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getTargetUserId()I

    move-result v3

    .line 95
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    .line 94
    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/BiometricUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 98
    :try_start_6a
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 99
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_77} :catch_78

    .line 103
    :cond_77
    goto :goto_7e

    .line 101
    :catch_78
    move-exception v1

    .line 102
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to notify Removed:"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_7e
    if-nez p2, :cond_c7

    .line 106
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/RemovalClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getTargetUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last biometric removed for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getTargetUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/RemovalClient;->mAuthenticatorIds:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->getTargetUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_c1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/RemovalClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 115
    :cond_c7
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 67
    .local p0, "this":Lcom/android/server/biometrics/sensors/RemovalClient;, "Lcom/android/server/biometrics/sensors/RemovalClient<TS;TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RemovalClient;->startHalOperation()V

    .line 71
    return-void
.end method

.method public unableToStart()V
    .registers 1

    .line 63
    .local p0, "this":Lcom/android/server/biometrics/sensors/RemovalClient;, "Lcom/android/server/biometrics/sensors/RemovalClient<TS;TT;>;"
    return-void
.end method
