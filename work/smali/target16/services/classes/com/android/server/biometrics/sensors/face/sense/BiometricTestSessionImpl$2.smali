.class public Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl$2;
.super Ljava/lang/Object;
.source "BiometricTestSessionImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 3

    .line 220
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/ITestSessionCallback;->onCleanupFinished(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 222
    const-string p1, "face/sense/BiometricTestSessionImpl"

    const-string p2, "Remote exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 3

    .line 210
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/ITestSessionCallback;->onCleanupStarted(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 212
    const-string p1, "face/sense/BiometricTestSessionImpl"

    const-string v0, "Remote exception"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
