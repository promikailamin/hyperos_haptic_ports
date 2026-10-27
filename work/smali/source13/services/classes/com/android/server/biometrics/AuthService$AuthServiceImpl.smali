.class final Lcom/android/server/biometrics/AuthService$AuthServiceImpl;
.super Landroid/hardware/biometrics/IAuthService$Stub;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/AuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AuthServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/AuthService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/AuthService;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-direct {p0}, Landroid/hardware/biometrics/IAuthService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/AuthService;Lcom/android/server/biometrics/AuthService$AuthServiceImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;)V

    return-void
.end method

.method private authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authenticateFastFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x5

    const/4 v2, 0x0

    :try_start_1a
    invoke-interface {p2, v2, v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 294
    goto :goto_24

    .line 292
    :catch_1e
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "authenticateFastFail failed to notify caller"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method


# virtual methods
.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J
    .registers 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    move-object/from16 v1, p0

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 239
    .local v13, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 240
    .local v14, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 241
    .local v15, "callingPid":I
    if-ne v10, v13, :cond_1c

    .line 242
    iget-object v0, v1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_43

    .line 244
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is requesting authentication of userid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AuthService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, v1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 249
    :goto_43
    iget-object v0, v1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    const-string v2, "authenticate()"

    invoke-static {v0, v14, v12, v2}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckAppOps(Lcom/android/server/biometrics/AuthService;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v2, -0x1

    if-nez v0, :cond_66

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Denied by app ops: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v11}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V

    .line 251
    return-wide v2

    .line 254
    :cond_66
    if-eqz p1, :cond_d3

    if-eqz v11, :cond_d3

    if-eqz v12, :cond_d3

    if-nez p7, :cond_6f

    goto :goto_d3

    .line 260
    :cond_6f
    invoke-static {v14, v15}, Lcom/android/server/biometrics/Utils;->isForeground(II)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller is not foreground: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v11}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V

    .line 262
    return-wide v2

    .line 265
    :cond_8c
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->containsTestConfigurations()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 266
    iget-object v0, v1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a5

    .line 268
    iget-object v0, v1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 273
    :cond_a5
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->containsPrivateApiConfigurations()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 274
    iget-object v0, v1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 277
    :cond_b0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 279
    .local v16, "identity":J
    :try_start_b4
    iget-object v0, v1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroid/hardware/biometrics/IBiometricService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide v2
    :try_end_ca
    .catchall {:try_start_b4 .. :try_end_ca} :catchall_ce

    .line 282
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    return-wide v2

    .line 282
    :catchall_ce
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    throw v0

    .line 255
    .end local v16    # "identity":J
    :cond_d3
    :goto_d3
    const-string v0, "Unable to authenticate, one or more null arguments"

    invoke-direct {v1, v0, v11}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V

    .line 257
    return-wide v2
.end method

.method public canAuthenticate(Ljava/lang/String;II)I
    .registers 11
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "authenticators"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 322
    .local v0, "callingUserId":I
    if-eq p2, v0, :cond_c

    .line 323
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 325
    :cond_c
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 328
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 330
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    invoke-interface {v3, p1, p2, v0, p3}, Landroid/hardware/biometrics/IBiometricService;->canAuthenticate(Ljava/lang/String;III)I

    move-result v3

    .line 332
    .local v3, "result":I
    const-string v4, "AuthService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canAuthenticate, userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", callingUserId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", authenticators: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_15 .. :try_end_55} :catchall_5a

    .line 337
    nop

    .line 339
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    return v3

    .line 339
    .end local v3    # "result":I
    :catchall_5a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 340
    throw v3
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 302
    if-eqz p1, :cond_21

    if-nez p2, :cond_a

    goto :goto_21

    .line 307
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 309
    .local v0, "identity":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1c

    .line 311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    nop

    .line 313
    return-void

    .line 311
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    throw v2

    .line 303
    .end local v0    # "identity":J
    :cond_21
    :goto_21
    const-string v0, "AuthService"

    const-string v1, "Unable to cancel authentication, one or more null arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 203
    .local v0, "identity":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    .line 204
    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_21

    .line 206
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    return-object v2

    .line 206
    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw v2
.end method

.method public getAuthenticatorIds(I)[J
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 400
    .local v0, "callingUserId":I
    if-eq p1, v0, :cond_13

    .line 401
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v3, "Must have android.permission.USE_BIOMETRIC_INTERNAL permission."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 406
    .local v1, "identity":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/hardware/biometrics/IBiometricService;->getAuthenticatorIds(I)[J

    move-result-object v3
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_25

    .line 408
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    return-object v3

    .line 408
    :catchall_25
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 409
    throw v3
.end method

.method public getButtonLabel(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "authenticators"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 435
    .local v0, "callingUserId":I
    if-eq p1, v0, :cond_c

    .line 436
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 438
    :cond_c
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 441
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 443
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    .line 444
    invoke-interface {v3, p2, p1, v0, p3}, Landroid/hardware/biometrics/IBiometricService;->getCurrentModality(Ljava/lang/String;III)I

    move-result v3

    .line 448
    .local v3, "modality":I
    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$smgetCredentialBackupModality(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_6a

    .line 462
    iget-object v4, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    goto :goto_55

    .line 459
    :sswitch_29
    iget-object v4, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10403d0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, "result":Ljava/lang/String;
    goto :goto_60

    .line 456
    .end local v4    # "result":Ljava/lang/String;
    :sswitch_37
    iget-object v4, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040407

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 457
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_60

    .line 453
    .end local v4    # "result":Ljava/lang/String;
    :sswitch_45
    iget-object v4, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040887

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 454
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_60

    .line 450
    .end local v4    # "result":Ljava/lang/String;
    :sswitch_53
    const/4 v4, 0x0

    .line 451
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_60

    .line 462
    .end local v4    # "result":Ljava/lang/String;
    :goto_55
    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10401cb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_60
    .catchall {:try_start_15 .. :try_end_60} :catchall_65

    .line 466
    .restart local v4    # "result":Ljava/lang/String;
    :goto_60
    nop

    .line 468
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    return-object v4

    .line 468
    .end local v3    # "modality":I
    .end local v4    # "result":Ljava/lang/String;
    :catchall_65
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 469
    throw v3

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_53
        0x1 -> :sswitch_45
        0x2 -> :sswitch_37
        0x8 -> :sswitch_29
    .end sparse-switch
.end method

.method public getPromptMessage(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "authenticators"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 481
    .local v0, "callingUserId":I
    if-eq p1, v0, :cond_c

    .line 482
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 484
    :cond_c
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 487
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 489
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    .line 490
    invoke-interface {v3, p2, p1, v0, p3}, Landroid/hardware/biometrics/IBiometricService;->getCurrentModality(Ljava/lang/String;III)I

    move-result v3

    .line 493
    .local v3, "modality":I
    invoke-static {p3}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v4

    .line 496
    .local v4, "isCredentialAllowed":Z
    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$smgetCredentialBackupModality(I)I

    move-result v5

    sparse-switch v5, :sswitch_data_9e

    .line 526
    if-eqz v4, :cond_87

    .line 527
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    goto :goto_7b

    .line 517
    :sswitch_2f
    if-eqz v4, :cond_3f

    .line 518
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10403e4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "result":Ljava/lang/String;
    goto :goto_94

    .line 521
    .end local v5    # "result":Ljava/lang/String;
    :cond_3f
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10403d3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 523
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_94

    .line 507
    .end local v5    # "result":Ljava/lang/String;
    :sswitch_4d
    if-eqz v4, :cond_5d

    .line 508
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104041a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_94

    .line 511
    .end local v5    # "result":Ljava/lang/String;
    :cond_5d
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040409

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 514
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_94

    .line 502
    .end local v5    # "result":Ljava/lang/String;
    :sswitch_6b
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040888

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 504
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_94

    .line 498
    .end local v5    # "result":Ljava/lang/String;
    :sswitch_79
    const/4 v5, 0x0

    .line 499
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_94

    .line 527
    .end local v5    # "result":Ljava/lang/String;
    :goto_7b
    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10401d5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_94

    .line 530
    .end local v5    # "result":Ljava/lang/String;
    :cond_87
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10401cc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_94
    .catchall {:try_start_15 .. :try_end_94} :catchall_99

    .line 536
    .restart local v5    # "result":Ljava/lang/String;
    :goto_94
    nop

    .line 538
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    return-object v5

    .line 538
    .end local v3    # "modality":I
    .end local v4    # "isCredentialAllowed":Z
    .end local v5    # "result":Ljava/lang/String;
    :catchall_99
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    throw v3

    :sswitch_data_9e
    .sparse-switch
        0x0 -> :sswitch_79
        0x1 -> :sswitch_6b
        0x2 -> :sswitch_4d
        0x8 -> :sswitch_2f
    .end sparse-switch
.end method

.method public getSensorProperties(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 219
    .local v0, "identity":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/biometrics/IBiometricService;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_21

    .line 221
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    return-object v2

    .line 221
    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    throw v2
.end method

.method public getSettingName(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "authenticators"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 551
    .local v0, "callingUserId":I
    if-eq p1, v0, :cond_c

    .line 552
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 554
    :cond_c
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 557
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 559
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    .line 560
    invoke-interface {v3, p3}, Landroid/hardware/biometrics/IBiometricService;->getSupportedModalities(I)I

    move-result v3

    .line 563
    .local v3, "modality":I
    const v4, 0x10401cb

    packed-switch v3, :pswitch_data_ac

    .line 583
    :pswitch_25
    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_6d

    .line 585
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    goto :goto_64

    .line 578
    :pswitch_2c
    iget-object v4, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10403d0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, "result":Ljava/lang/String;
    goto/16 :goto_a2

    .line 572
    .end local v4    # "result":Ljava/lang/String;
    :pswitch_3b
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 573
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_a2

    .line 575
    .end local v4    # "result":Ljava/lang/String;
    :pswitch_46
    iget-object v4, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040407

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 576
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_a2

    .line 569
    .end local v4    # "result":Ljava/lang/String;
    :pswitch_54
    iget-object v4, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040887

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 570
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_a2

    .line 566
    .end local v4    # "result":Ljava/lang/String;
    :pswitch_62
    const/4 v4, 0x0

    .line 567
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_a2

    .line 585
    .end local v4    # "result":Ljava/lang/String;
    :goto_64
    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_a2

    .line 587
    .end local v4    # "result":Ljava/lang/String;
    :cond_6d
    and-int/lit8 v4, v3, -0x2

    .line 589
    .local v4, "biometricModality":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_81

    .line 591
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040419

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .local v5, "result":Ljava/lang/String;
    goto :goto_a2

    .line 593
    .end local v5    # "result":Ljava/lang/String;
    :cond_81
    const/16 v5, 0x8

    if-ne v4, v5, :cond_94

    .line 595
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10403e3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_a2

    .line 599
    .end local v5    # "result":Ljava/lang/String;
    :cond_94
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10401d4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_a1
    .catchall {:try_start_15 .. :try_end_a1} :catchall_a7

    move-object v4, v5

    .line 605
    .local v4, "result":Ljava/lang/String;
    :goto_a2
    nop

    .line 607
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    return-object v4

    .line 607
    .end local v3    # "modality":I
    .end local v4    # "result":Ljava/lang/String;
    :catchall_a7
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 608
    throw v3

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_62
        :pswitch_54
        :pswitch_46
        :pswitch_25
        :pswitch_3b
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method public getUiPackage()Ljava/lang/String;
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 230
    const v1, 0x104022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    return-object v0
.end method

.method public hasEnrolledBiometrics(ILjava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 347
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 349
    .local v0, "identity":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/biometrics/IBiometricService;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 351
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 349
    return v2

    .line 351
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    throw v2
.end method

.method public invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "fromSensorId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/IInvalidationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 375
    .local v0, "identity":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricService;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_17

    .line 377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    nop

    .line 379
    return-void

    .line 377
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    throw v2
.end method

.method public registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 359
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 360
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 362
    .local v1, "identity":J
    :try_start_d
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Landroid/hardware/biometrics/IBiometricService;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;I)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1b

    .line 364
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    nop

    .line 366
    return-void

    .line 364
    :catchall_1b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    throw v3
.end method

.method public resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "fromSensorId"    # I
    .param p4, "userId"    # I
    .param p5, "hardwareAuthToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 417
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 419
    .local v0, "identity":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/hardware/biometrics/IBiometricService;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1c

    .line 422
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    nop

    .line 424
    return-void

    .line 422
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    throw v2
.end method
