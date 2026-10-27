.class Lcom/android/server/biometrics/sensors/AuthenticationClient$1;
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

.field final synthetic val$byteToken:[B

.field final synthetic val$identifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

.field final synthetic val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;[BLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 247
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient$1;, "Lcom/android/server/biometrics/sensors/AuthenticationClient$1;"
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$identifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLifecycleAfterAuth()V
    .registers 3

    .line 293
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient$1;, "Lcom/android/server/biometrics/sensors/AuthenticationClient$1;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleLifecycleAfterAuth(Z)V

    .line 294
    return-void
.end method

.method public sendAuthenticationCanceled()V
    .registers 3

    .line 298
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient$1;, "Lcom/android/server/biometrics/sensors/AuthenticationClient$1;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$msendCancelOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    .line 299
    return-void
.end method

.method public sendAuthenticationResult(Z)V
    .registers 10
    .param p1, "addAuthTokenIfStrong"    # Z

    .line 250
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient$1;, "Lcom/android/server/biometrics/sensors/AuthenticationClient$1;"
    const-string v0, "Biometrics/AuthenticationClient"

    if-eqz p1, :cond_2d

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmIsStrongBiometric(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 251
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->addAuthToken([B)I

    move-result v1

    .line 252
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v1    # "result":I
    goto :goto_32

    .line 254
    :cond_2d
    const-string v1, "Skipping addAuthToken"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_32
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    if-eqz v1, :cond_7c

    .line 261
    :try_start_36
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmIsRestricted(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 262
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$identifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 265
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmIsStrongBiometric(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v7

    .line 262
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V

    goto :goto_7b

    .line 268
    :cond_5a
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 271
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmIsStrongBiometric(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v7

    .line 268
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_74} :catch_75

    goto :goto_7b

    .line 274
    :catch_75
    move-exception v1

    .line 275
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to notify listener"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_7b
    goto :goto_81

    .line 278
    :cond_7c
    const-string v1, "Client not listening"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_81
    return-void
.end method

.method public sendHapticFeedback()V
    .registers 1

    .line 289
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient$1;, "Lcom/android/server/biometrics/sensors/AuthenticationClient$1;"
    return-void
.end method
