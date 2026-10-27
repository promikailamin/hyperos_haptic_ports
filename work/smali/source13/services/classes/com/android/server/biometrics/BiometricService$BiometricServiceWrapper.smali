.class final Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;
.super Landroid/hardware/biometrics/IBiometricService$Stub;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BiometricServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .registers 2

    .line 493
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J
    .registers 24
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "operationId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 536
    move-object/from16 v11, p0

    move-object/from16 v12, p7

    iget-object v0, v11, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 538
    if-eqz p1, :cond_73

    if-eqz p5, :cond_73

    if-eqz p6, :cond_73

    if-nez v12, :cond_12

    goto :goto_73

    .line 543
    :cond_12
    invoke-static/range {p7 .. p7}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 547
    invoke-static/range {p7 .. p7}, Lcom/android/server/biometrics/Utils;->combineAuthenticatorBundles(Landroid/hardware/biometrics/PromptInfo;)V

    .line 550
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 551
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 552
    iget-object v0, v11, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10401cd

    .line 553
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 557
    :cond_3b
    iget-object v0, v11, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmRequestCounter(Lcom/android/server/biometrics/BiometricService;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 558
    .local v13, "requestId":J
    iget-object v0, v11, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v15

    new-instance v10, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v3, v13

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object v11, v10

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V

    invoke-virtual {v15, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    return-wide v13

    .line 544
    .end local v13    # "requestId":J
    :cond_6b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid authenticator configuration"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_73
    :goto_73
    const-string v0, "BiometricService"

    const-string v1, "Unable to authenticate, one or more null arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public canAuthenticate(Ljava/lang/String;III)I
    .registers 8
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUserId"    # I
    .param p4, "authenticators"    # I

    .line 579
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canAuthenticate: User="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Authenticators="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {p4}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 590
    :try_start_37
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 591
    invoke-static {v0, p1, p2, p4}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcreatePreAuthInfo(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object v0

    .line 592
    .local v0, "preAuthInfo":Lcom/android/server/biometrics/PreAuthInfo;
    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->getCanAuthenticateResult()I

    move-result v1
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_41} :catch_42

    return v1

    .line 593
    .end local v0    # "preAuthInfo":Lcom/android/server/biometrics/PreAuthInfo;
    :catch_42
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    const/4 v1, 0x1

    return v1

    .line 586
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid authenticator configuration"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "requestId"    # J

    .line 566
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 568
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 569
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 570
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 571
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 573
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p3, p4}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 574
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

    .line 497
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 499
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 500
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v2, p1, :cond_24

    .line 501
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v0, p2, p3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    return-object v0

    .line 503
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_24
    goto :goto_d

    .line 505
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sensor for createTestSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 828
    return-void

    .line 831
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 833
    .local v2, "ident":J
    :try_start_13
    array-length v0, p3

    if-lez v0, :cond_8a

    const-string v0, "--proto"

    const/4 v4, 0x0

    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 834
    array-length v0, p3

    const/4 v5, 0x1

    if-le v0, v5, :cond_30

    const-string v0, "--clear-scheduler-buffer"

    aget-object v6, p3, v5

    .line 835
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_31

    :cond_30
    move v5, v4

    :goto_31
    move v0, v5

    .line 836
    .local v0, "clearSchedulerBuffer":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClearSchedulerBuffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 838
    .local v5, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v6, 0x10e00000002L

    .line 839
    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v8, v8, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz v8, :cond_60

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthSession;->getState()I

    move-result v4

    .line 838
    :cond_60
    invoke-virtual {v5, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 840
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricSensor;

    .line 841
    .local v6, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget-object v7, v6, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 842
    invoke-interface {v7, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator;->dumpSensorServiceStateProto(Z)[B

    move-result-object v7

    .line 843
    .local v7, "serviceState":[B
    const-wide v8, 0x20b00000001L

    invoke-virtual {v5, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 844
    .end local v6    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v7    # "serviceState":[B
    goto :goto_6b

    .line 845
    :cond_86
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 846
    .end local v0    # "clearSchedulerBuffer":Z
    .end local v5    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_8f

    .line 847
    :cond_8a
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mdumpInternal(Lcom/android/server/biometrics/BiometricService;Ljava/io/PrintWriter;)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_8f} :catch_96
    .catchall {:try_start_13 .. :try_end_8f} :catchall_94

    .line 852
    :goto_8f
    nop

    :goto_90
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 853
    goto :goto_9e

    .line 852
    :catchall_94
    move-exception v0

    goto :goto_9f

    .line 849
    :catch_96
    move-exception v0

    .line 850
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_97
    const-string v4, "Remote exception"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_94

    .line 852
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_90

    .line 854
    :goto_9e
    return-void

    .line 852
    :goto_9f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 853
    throw v0
.end method

.method public getAuthenticatorIds(I)[J
    .registers 11
    .param p1, "callingUserId"    # I

    .line 687
    const-string v0, "BiometricService"

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 689
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v1, "authenticatorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    .line 692
    .local v3, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :try_start_20
    iget-object v4, v3, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 693
    invoke-virtual {v5}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 692
    invoke-interface {v4, p1, v5}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v4

    .line 694
    .local v4, "hasEnrollments":Z
    iget-object v5, v3, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v5, p1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getAuthenticatorId(I)J

    move-result-wide v5

    .line 695
    .local v5, "authenticatorId":J
    if-eqz v4, :cond_4c

    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v7

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 697
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 699
    :cond_4c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sensor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sensorId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hasEnrollments: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot participate in Keystore operations"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_7e} :catch_7f

    .line 705
    .end local v4    # "hasEnrollments":Z
    .end local v5    # "authenticatorId":J
    :goto_7e
    goto :goto_85

    .line 703
    :catch_7f
    move-exception v4

    .line 704
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "RemoteException"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 706
    .end local v3    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_85
    goto :goto_14

    .line 708
    :cond_86
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 709
    .local v0, "result":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a2

    .line 710
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 709
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 712
    .end local v2    # "i":I
    :cond_a2
    return-object v0
.end method

.method public getCurrentModality(Ljava/lang/String;III)I
    .registers 8
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUserId"    # I
    .param p4, "authenticators"    # I

    .line 774
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentModality: User="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Authenticators="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-static {p4}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 785
    :try_start_37
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 786
    invoke-static {v0, p1, p2, p4}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcreatePreAuthInfo(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object v0

    .line 787
    .local v0, "preAuthInfo":Lcom/android/server/biometrics/PreAuthInfo;
    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->getPreAuthenticateStatus()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_49} :catch_4a

    return v1

    .line 788
    .end local v0    # "preAuthInfo":Lcom/android/server/biometrics/PreAuthInfo;
    :catch_4a
    move-exception v0

    .line 789
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    const/4 v1, 0x0

    return v1

    .line 781
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_52
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid authenticator configuration"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentStrength(I)I
    .registers 5
    .param p1, "sensorId"    # I

    .line 756
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 758
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 759
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v2, p1, :cond_22

    .line 760
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v0

    return v0

    .line 762
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_22
    goto :goto_d

    .line 763
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v0, 0x0

    return v0
.end method

.method public getSensorProperties(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 512
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 518
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget-object v3, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 519
    invoke-interface {v3, p1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/SensorPropertiesInternal;->from(Landroid/hardware/biometrics/SensorPropertiesInternal;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v3

    .line 520
    .local v3, "prop":Landroid/hardware/biometrics/SensorPropertiesInternal;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v3    # "prop":Landroid/hardware/biometrics/SensorPropertiesInternal;
    goto :goto_12

    .line 523
    :cond_2c
    return-object v0
.end method

.method public getSupportedModalities(I)I
    .registers 8
    .param p1, "authenticators"    # I

    .line 796
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSupportedModalities: Authenticators="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 805
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 806
    const/4 v0, 0x1

    goto :goto_2d

    .line 807
    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    nop

    .line 809
    .local v0, "modality":I
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isBiometricRequested(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 810
    nop

    .line 811
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result v1

    .line 814
    .local v1, "requestedStrength":I
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    .line 815
    .local v3, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v4

    .line 816
    .local v4, "sensorStrength":I
    invoke-static {v4, v1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 817
    iget v5, v3, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v5

    .line 819
    .end local v3    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v4    # "sensorStrength":I
    :cond_5a
    goto :goto_41

    .line 822
    .end local v1    # "requestedStrength":I
    :cond_5b
    return v0

    .line 801
    .end local v0    # "modality":I
    :cond_5c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid authenticator configuration"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasEnrolledBiometrics(ILjava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 604
    :try_start_5
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 605
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget-object v2, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v2, p1, p2}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1f} :catch_25

    if-eqz v2, :cond_23

    .line 606
    const/4 v0, 0x1

    return v0

    .line 608
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_23
    goto :goto_d

    .line 611
    :cond_24
    goto :goto_2d

    .line 609
    :catch_25
    move-exception v0

    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "fromSensorId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/IInvalidationCallback;

    .line 680
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 682
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->start(Landroid/content/Context;Ljava/util/ArrayList;IILandroid/hardware/biometrics/IInvalidationCallback;)Lcom/android/server/biometrics/BiometricService$InvalidationTracker;

    .line 683
    return-void
.end method

.method synthetic lambda$authenticate$1$com-android-server-biometrics-BiometricService$BiometricServiceWrapper(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .registers 21
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # J
    .param p4, "operationId"    # J
    .param p6, "userId"    # I
    .param p7, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 558
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleAuthenticate(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V

    return-void
.end method

.method synthetic lambda$cancelAuthentication$2$com-android-server-biometrics-BiometricService$BiometricServiceWrapper(J)V
    .registers 4
    .param p1, "requestId"    # J

    .line 573
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleCancelAuthentication(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method synthetic lambda$onReadyForAuthentication$0$com-android-server-biometrics-BiometricService$BiometricServiceWrapper(JI)V
    .registers 5
    .param p1, "requestId"    # J
    .param p3, "cookie"    # I

    .line 530
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnReadyForAuthentication(Lcom/android/server/biometrics/BiometricService;JI)V

    return-void
.end method

.method public onReadyForAuthentication(JI)V
    .registers 6
    .param p1, "requestId"    # J
    .param p3, "cookie"    # I

    .line 528
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 530
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 531
    return-void
.end method

.method public declared-synchronized registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .registers 14
    .param p1, "id"    # I
    .param p2, "modality"    # I
    .param p3, "strength"    # I
    .param p4, "authenticator"    # Landroid/hardware/biometrics/IBiometricAuthenticator;

    monitor-enter p0

    .line 620
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 622
    const-string v0, "BiometricService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    if-eqz p4, :cond_8b

    .line 636
    const/16 v0, 0xf

    if-eq p3, v0, :cond_49

    const/16 v0, 0xff

    if-eq p3, v0, :cond_49

    const/16 v0, 0xfff

    if-ne p3, v0, :cond_41

    goto :goto_49

    .line 639
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported strength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    .end local p0    # "this":Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;
    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 643
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-eq v2, p1, :cond_62

    .line 646
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_51

    .line 644
    .restart local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register duplicate authenticator"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_6a
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, v8

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;Landroid/content/Context;IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricStrengthController;->updateStrengths()V
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_93

    .line 661
    monitor-exit p0

    return-void

    .line 627
    :cond_8b
    :try_start_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authenticator must not be null. Did you forget to modify the core/res/res/values/xml overlay for config_biometric_sensors?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_93

    .line 619
    .end local p1    # "id":I
    .end local p2    # "modality":I
    .end local p3    # "strength":I
    .end local p4    # "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator;
    :catchall_93
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;I)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    .param p2, "callingUserId"    # I

    .line 666
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 668
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmEnabledOnKeyguardCallbacks(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    :try_start_15
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledOnKeyguard(I)Z

    move-result v0

    invoke-interface {p1, v0, p2}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->onChanged(ZI)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_21

    .line 674
    goto :goto_29

    .line 672
    :catch_21
    move-exception v0

    .line 673
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method public resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "fromSensorId"    # I
    .param p4, "userId"    # I
    .param p5, "hardwareAuthToken"    # [B

    .line 718
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 721
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0, p3}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mgetSensorForId(Lcom/android/server/biometrics/BiometricService;I)Lcom/android/server/biometrics/BiometricSensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v0

    const-string v1, "BiometricService"

    if-nez v0, :cond_36

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sensor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is does not meet the required strength to request resetLockout"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-void

    .line 729
    :cond_36
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 730
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v3, p3, :cond_4f

    .line 731
    goto :goto_3e

    .line 734
    :cond_4f
    :try_start_4f
    iget-object v3, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 735
    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v3

    .line 736
    .local v3, "props":Landroid/hardware/biometrics/SensorPropertiesInternal;
    iget-boolean v4, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_6a

    iget-boolean v4, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    if-nez v4, :cond_6a

    move v4, v5

    goto :goto_6b

    :cond_6a
    const/4 v4, 0x0

    .line 739
    .local v4, "supportsChallengelessHat":Z
    :goto_6b
    iget-boolean v6, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    xor-int/2addr v5, v6

    .line 741
    .local v5, "doesNotRequireHat":Z
    if-nez v4, :cond_72

    if-eqz v5, :cond_a4

    .line 742
    :cond_72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetLockout from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v6, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v6, p1, p2, p4, p5}, Landroid/hardware/biometrics/IBiometricAuthenticator;->resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_a4} :catch_a5

    .line 750
    .end local v3    # "props":Landroid/hardware/biometrics/SensorPropertiesInternal;
    .end local v4    # "supportsChallengelessHat":Z
    .end local v5    # "doesNotRequireHat":Z
    :cond_a4
    goto :goto_ab

    .line 748
    :catch_a5
    move-exception v3

    .line 749
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Remote exception"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_ab
    goto :goto_3e

    .line 752
    :cond_ac
    return-void
.end method
