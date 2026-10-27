.class Lcom/android/server/biometrics/sensors/AuthenticationClient$2;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

.field final synthetic val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 315
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient$2;, "Lcom/android/server/biometrics/sensors/AuthenticationClient$2;"
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLifecycleAfterAuth()V
    .registers 3

    .line 339
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient$2;, "Lcom/android/server/biometrics/sensors/AuthenticationClient$2;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleLifecycleAfterAuth(Z)V

    .line 340
    return-void
.end method

.method public sendAuthenticationCanceled()V
    .registers 3

    .line 344
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient$2;, "Lcom/android/server/biometrics/sensors/AuthenticationClient$2;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$msendCancelOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    .line 345
    return-void
.end method

.method public sendAuthenticationResult(Z)V
    .registers 5
    .param p1, "addAuthTokenIfStrong"    # Z

    .line 318
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient$2;, "Lcom/android/server/biometrics/sensors/AuthenticationClient$2;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    if-eqz v0, :cond_16

    .line 320
    :try_start_4
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationFailed(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 323
    goto :goto_16

    .line 321
    :catch_e
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Biometrics/AuthenticationClient"

    const-string v2, "Unable to notify listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public sendHapticFeedback()V
    .registers 2

    .line 332
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient$2;, "Lcom/android/server/biometrics/sensors/AuthenticationClient$2;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldVibrate:Z

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getIsFod()Z

    move-result v0

    if-nez v0, :cond_19

    .line 333
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->vibrateError()V

    .line 335
    :cond_19
    return-void
.end method
