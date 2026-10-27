.class Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceGetAuthenticatorIdClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceGetAuthenticatorIdClient"


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


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "sensorId"    # I
    .param p6, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p7, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;>;"
    .local p8, "authenticatorIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 46
    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;->mAuthenticatorIds:Ljava/util/Map;

    .line 47
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 2

    .line 75
    const/4 v0, 0x5

    return v0
.end method

.method public getTargetUserId()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;->mTargetUserId:I

    return v0
.end method

.method onAuthenticatorIdRetrieved(J)V
    .registers 6
    .param p1, "authenticatorId"    # J

    .line 69
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;->mAuthenticatorIds:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;->getTargetUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 71
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 55
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;->startHalOperation()V

    .line 57
    return-void
.end method

.method protected startHalOperation()V
    .registers 4

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISession;->getAuthenticatorId()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 65
    goto :goto_16

    .line 63
    :catch_e
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceGetAuthenticatorIdClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public unableToStart()V
    .registers 1

    .line 52
    return-void
.end method
