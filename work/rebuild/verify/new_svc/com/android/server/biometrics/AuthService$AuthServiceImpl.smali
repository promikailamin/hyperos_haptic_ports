.class public final Lcom/android/server/biometrics/AuthService$AuthServiceImpl;
.super Landroid/hardware/biometrics/IAuthService$Stub;
.source "AuthService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/AuthService;


# direct methods
.method public static synthetic $r8$lambda$Xiaf50o0iHyg5xYjSs1mByWS48w(Landroid/hardware/biometrics/SensorPropertiesInternal;)Z
    .registers 1

    .line 274
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/biometrics/AuthService;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-direct {p0}, Landroid/hardware/biometrics/IAuthService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/AuthService;Lcom/android/server/biometrics/AuthService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;)V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J
    .registers 18

    move-object/from16 v6, p6

    .line 295
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 296
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 297
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-ne p4, v0, :cond_16

    .line 299
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_39

    .line 301
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is requesting authentication of userid: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AuthService"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 306
    :goto_39
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    const-string v3, "authenticate()"

    invoke-static {v0, v1, v6, v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckAppOps(Lcom/android/server/biometrics/AuthService;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v3, -0x1

    if-nez v0, :cond_5a

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Denied by app ops: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V

    return-wide v3

    :cond_5a
    if-eqz p1, :cond_dd

    if-eqz p5, :cond_dd

    if-eqz v6, :cond_dd

    if-nez p7, :cond_64

    goto/16 :goto_dd

    .line 317
    :cond_64
    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->isForeground(II)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caller is not foreground: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V

    return-wide v3

    .line 322
    :cond_7f
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->requiresTestOrInternalPermission()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 323
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_98

    .line 325
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 330
    :cond_98
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->requiresInternalPermission()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 331
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 333
    :cond_a3
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->requiresAdvancedPermission()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 334
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckBiometricAdvancedPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 337
    :cond_ae
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 339
    :try_start_b2
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    const-class v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    # invokes: Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/android/server/biometrics/AuthService;->access$100(Lcom/android/server/biometrics/AuthService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v0, :cond_c5

    .line 342
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onAuthenticationPrompt(I)V

    goto :goto_c5

    :catchall_c2
    move-exception v0

    move-object p0, v0

    goto :goto_d9

    .line 344
    :cond_c5
    :goto_c5
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/hardware/biometrics/IBiometricService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide p0
    :try_end_d5
    .catchall {:try_start_b2 .. :try_end_d5} :catchall_c2

    .line 347
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :goto_d9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    throw p0

    .line 312
    :cond_dd
    :goto_dd
    const-string p1, "Unable to authenticate, one or more null arguments"

    invoke-virtual {p0, p1, p5}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V

    return-wide v3
.end method

.method public final authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .registers 4

    .line 354
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "authenticateFastFail: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuthService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x5

    const/4 v0, 0x0

    .line 356
    :try_start_18
    invoke-interface {p2, v0, p0, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    .line 358
    const-string p2, "authenticateFastFail failed to notify caller"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public canAuthenticate(Ljava/lang/String;II)I
    .registers 9

    .line 385
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_c

    .line 388
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 390
    :cond_c
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 393
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 395
    :try_start_15
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1, p2, v0, p3}, Landroid/hardware/biometrics/IBiometricService;->canAuthenticate(Ljava/lang/String;III)I

    move-result p0

    .line 397
    const-string p1, "AuthService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canAuthenticate, userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", callingUserId: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", authenticators: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", result: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_15 .. :try_end_4d} :catchall_51

    .line 404
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_51
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    throw p0
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 7

    .line 365
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    if-eqz p1, :cond_20

    if-nez p2, :cond_a

    goto :goto_20

    .line 372
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 374
    :try_start_e
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1b

    .line 376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    throw p0

    .line 368
    :cond_20
    :goto_20
    const-string p0, "AuthService"

    const-string p1, "Unable to cancel authentication, one or more null arguments"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 6

    .line 236
    invoke-super {p0}, Landroid/hardware/biometrics/IAuthService$Stub;->createTestSession_enforcePermission()V

    .line 238
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 240
    :try_start_7
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    .line 241
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    .line 243
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    throw p0
.end method

.method public getAuthenticatorIds(I)[J
    .registers 5

    .line 592
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_13

    .line 594
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have android.permission.USE_BIOMETRIC_INTERNAL permission."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 599
    :try_start_17
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->getAuthenticatorIds(I)[J

    move-result-object p0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_25

    .line 601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_25
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 602
    throw p0
.end method

.method public getButtonLabel(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .registers 8

    .line 637
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_c

    .line 640
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 642
    :cond_c
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 645
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 647
    :try_start_15
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    .line 648
    invoke-interface {v3, p2, p1, v0, p3}, Landroid/hardware/biometrics/IBiometricService;->getCurrentModality(Ljava/lang/String;III)I

    move-result p1

    .line 652
    invoke-static {p1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$smgetCredentialBackupModality(I)I

    move-result p1

    if-eqz p1, :cond_69

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5b

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4d

    const/16 p2, 0x8

    if-eq p1, p2, :cond_3f

    .line 666
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x10401b8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6a

    :catchall_3d
    move-exception p0

    goto :goto_6e

    .line 663
    :cond_3f
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x104041d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6a

    .line 660
    :cond_4d
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1040456

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6a

    .line 657
    :cond_5b
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x10409d7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_68
    .catchall {:try_start_15 .. :try_end_68} :catchall_3d

    goto :goto_6a

    :cond_69
    const/4 p0, 0x0

    .line 672
    :goto_6a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_6e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    throw p0
.end method

.method public getEnrollmentStatusList(ILjava/lang/String;)Ljava/util/List;
    .registers 11

    .line 444
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckBiometricAdvancedPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 448
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_10

    .line 451
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 454
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 456
    :try_start_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 458
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_60

    .line 459
    const-string v4, "No fingerprint sensors"

    const-string v5, "AuthService"

    if-eqz v3, :cond_66

    .line 461
    :try_start_29
    invoke-interface {v3, p2}, Landroid/hardware/fingerprint/IFingerprintService;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 462
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_62

    .line 463
    iget-object v4, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 464
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 463
    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 464
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 466
    invoke-interface {v6}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    .line 465
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result v4

    .line 467
    new-instance v6, Landroid/hardware/biometrics/BiometricEnrollmentStatus;

    invoke-direct {v6, v4, v3}, Landroid/hardware/biometrics/BiometricEnrollmentStatus;-><init>(II)V

    .line 469
    new-instance v3, Landroid/hardware/biometrics/BiometricEnrollmentStatusInternal;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v6}, Landroid/hardware/biometrics/BiometricEnrollmentStatusInternal;-><init>(ILandroid/hardware/biometrics/BiometricEnrollmentStatus;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :catchall_60
    move-exception p0

    goto :goto_b2

    .line 473
    :cond_62
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 476
    :cond_66
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_69
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    move-result-object p0
    :try_end_73
    .catchall {:try_start_29 .. :try_end_73} :catchall_60

    .line 480
    const-string v3, "No face sensors"

    if-eqz p0, :cond_ab

    .line 482
    :try_start_77
    invoke-interface {p0, p2}, Landroid/hardware/face/IFaceService;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 483
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a7

    .line 484
    invoke-interface {v4}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 485
    iget v4, v3, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-interface {p0, v4, p1, p2}, Landroid/hardware/face/IFaceService;->getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 486
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 487
    iget p1, v3, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result p1

    .line 489
    new-instance p2, Landroid/hardware/biometrics/BiometricEnrollmentStatus;

    invoke-direct {p2, p1, p0}, Landroid/hardware/biometrics/BiometricEnrollmentStatus;-><init>(II)V

    .line 491
    new-instance p0, Landroid/hardware/biometrics/BiometricEnrollmentStatusInternal;

    const/16 p1, 0x8

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/BiometricEnrollmentStatusInternal;-><init>(ILandroid/hardware/biometrics/BiometricEnrollmentStatus;)V

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    .line 495
    :cond_a7
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 498
    :cond_ab
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_77 .. :try_end_ae} :catchall_60

    .line 503
    :goto_ae
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_b2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 504
    throw p0
.end method

.method public getLastAuthenticationTime(II)J
    .registers 5

    .line 413
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_c

    .line 416
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 418
    :cond_c
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 421
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 423
    :try_start_15
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/IBiometricService;->getLastAuthenticationTime(II)J

    move-result-wide p0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_23
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 426
    throw p0
.end method

.method public getPromptMessage(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .registers 8

    .line 683
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_c

    .line 686
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 688
    :cond_c
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 691
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 693
    :try_start_15
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    .line 694
    invoke-interface {v3, p2, p1, v0, p3}, Landroid/hardware/biometrics/IBiometricService;->getCurrentModality(Ljava/lang/String;III)I

    move-result p1

    .line 697
    invoke-static {p3}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result p2

    .line 700
    invoke-static {p1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$smgetCredentialBackupModality(I)I

    move-result p1

    if-eqz p1, :cond_9d

    const/4 p3, 0x1

    if-eq p1, p3, :cond_8f

    const/4 p3, 0x2

    if-eq p1, p3, :cond_71

    const/16 p3, 0x8

    if-eq p1, p3, :cond_53

    if-eqz p2, :cond_45

    .line 731
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x10401c6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9e

    :catchall_43
    move-exception p0

    goto :goto_a2

    .line 734
    :cond_45
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x10401bb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9e

    :cond_53
    if-eqz p2, :cond_63

    .line 722
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1040433

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9e

    .line 725
    :cond_63
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1040422

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9e

    :cond_71
    if-eqz p2, :cond_81

    .line 712
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1040473

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9e

    .line 715
    :cond_81
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x104045d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9e

    .line 706
    :cond_8f
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x10409d8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_9c
    .catchall {:try_start_15 .. :try_end_9c} :catchall_43

    goto :goto_9e

    :cond_9d
    const/4 p0, 0x0

    .line 742
    :goto_9e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_a2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 743
    throw p0
.end method

.method public getSensorProperties(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .line 267
    invoke-super {p0}, Landroid/hardware/biometrics/IAuthService$Stub;->getSensorProperties_enforcePermission()V

    .line 269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 273
    :try_start_7
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 274
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_30

    .line 276
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_30
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    throw p0
.end method

.method public getSettingName(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .registers 8

    .line 753
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    if-eq p1, p2, :cond_c

    .line 756
    iget-object p1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 758
    :cond_c
    iget-object p1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 761
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 763
    :try_start_15
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 764
    invoke-interface {v0, p3}, Landroid/hardware/biometrics/IBiometricService;->getSupportedModalities(I)I

    move-result p3

    if-eqz p3, :cond_a7

    const/4 v0, 0x1

    if-eq p3, v0, :cond_99

    const/4 v0, 0x2

    if-eq p3, v0, :cond_8b

    const/4 v1, 0x4

    const v2, 0x10401b8

    if-eq p3, v1, :cond_80

    const/16 v1, 0x8

    if-eq p3, v1, :cond_72

    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_42

    .line 789
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a8

    :catchall_40
    move-exception p0

    goto :goto_ac

    :cond_42
    and-int/lit8 p3, p3, -0x2

    if-ne p3, v0, :cond_54

    .line 795
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x1040472

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a8

    :cond_54
    if-ne p3, v1, :cond_64

    .line 799
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x1040432

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a8

    .line 803
    :cond_64
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x10401c5

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a8

    .line 782
    :cond_72
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x104041d

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a8

    .line 776
    :cond_80
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a8

    .line 779
    :cond_8b
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x1040456

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a8

    .line 773
    :cond_99
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x10409d7

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_a6
    .catchall {:try_start_15 .. :try_end_a6} :catchall_40

    goto :goto_a8

    :cond_a7
    const/4 p0, 0x0

    .line 811
    :goto_a8
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_ac
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 812
    throw p0
.end method

.method public getUiPackage()Ljava/lang/String;
    .registers 2

    .line 284
    invoke-super {p0}, Landroid/hardware/biometrics/IAuthService$Stub;->getUiPackage_enforcePermission()V

    .line 286
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040230

    .line 287
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolledBiometrics(ILjava/lang/String;)Z
    .registers 5

    .line 432
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 433
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 435
    :try_start_9
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/IBiometricService;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 437
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    throw p0
.end method

.method public invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 6

    .line 564
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 568
    :try_start_9
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricService;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    throw p0
.end method

.method public registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 523
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 525
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 527
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 529
    invoke-interface {p0, p1}, Landroid/hardware/face/IFaceService;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    :cond_23
    return-void
.end method

.method public registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .registers 4

    .line 510
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 513
    :try_start_9
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 515
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    throw p0
.end method

.method public registerIdentityCheckStateListener(Landroid/hardware/biometrics/IIdentityCheckStateListener;)V
    .registers 3

    .line 550
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 551
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->registerIdentityCheckStateListener(Landroid/hardware/biometrics/IIdentityCheckStateListener;)V

    return-void
.end method

.method public resetLockout(I[B)V
    .registers 5

    .line 621
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 622
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 624
    :try_start_9
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/IBiometricService;->resetLockout(I[B)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 626
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 627
    throw p0
.end method

.method public resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    .registers 15

    .line 608
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 610
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 612
    :try_start_9
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/hardware/biometrics/IBiometricService;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1b

    .line 615
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    throw p0
.end method

.method public setIdentityCheckTestStatus(Landroid/hardware/biometrics/IdentityCheckStatus;)V
    .registers 4

    .line 251
    invoke-super {p0}, Landroid/hardware/biometrics/IAuthService$Stub;->setIdentityCheckTestStatus_enforcePermission()V

    .line 253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 255
    :try_start_7
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    .line 256
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->setIdentityCheckTestStatus(Landroid/hardware/biometrics/IdentityCheckStatus;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 258
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    throw p0
.end method

.method public unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .registers 3

    .line 536
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 537
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 539
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 541
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 543
    invoke-interface {p0, p1}, Landroid/hardware/face/IFaceService;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    :cond_23
    return-void
.end method

.method public unregisterIdentityCheckStateListener(Landroid/hardware/biometrics/IIdentityCheckStateListener;)V
    .registers 3

    .line 557
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 558
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->unregisterIdentityCheckStateListener(Landroid/hardware/biometrics/IIdentityCheckStateListener;)V

    return-void
.end method
