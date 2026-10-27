.class Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;
.super Ljava/lang/Object;
.source "BiometricTestSessionImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->cleanupInternalState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    .line 225
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 6
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 240
    const-string v0, "face/aidl/BiometricTestSessionImpl"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/biometrics/ITestSessionCallback;->onCleanupFinished(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_26} :catch_27

    .line 244
    goto :goto_2d

    .line 242
    :catch_27
    move-exception v1

    .line 243
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 5
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 229
    const-string v0, "face/aidl/BiometricTestSessionImpl"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/biometrics/ITestSessionCallback;->onCleanupStarted(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_26} :catch_27

    .line 233
    goto :goto_2d

    .line 231
    :catch_27
    move-exception v1

    .line 232
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method
