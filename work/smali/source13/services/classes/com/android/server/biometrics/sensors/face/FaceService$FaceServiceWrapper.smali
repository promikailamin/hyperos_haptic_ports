.class final Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;
.super Landroid/hardware/face/IFaceService$Stub;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/FaceService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-direct {p0}, Landroid/hardware/face/IFaceService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService;Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    return-void
.end method

.method private addAidlProviders()V
    .registers 15

    .line 636
    sget-object v0, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "instances":[Ljava/lang/String;
    if-eqz v0, :cond_9d

    array-length v1, v0

    if-nez v1, :cond_d

    goto/16 :goto_9d

    .line 640
    :cond_d
    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_9c

    aget-object v9, v0, v2

    .line 641
    .local v9, "instance":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 642
    .local v10, "fqName":Ljava/lang/String;
    nop

    .line 643
    invoke-static {v10}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v3

    .line 642
    invoke-static {v3}, Landroid/hardware/biometrics/face/IFace$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/IFace;

    move-result-object v11

    .line 644
    .local v11, "face":Landroid/hardware/biometrics/face/IFace;
    const-string v12, "FaceService"

    if-nez v11, :cond_54

    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get declared service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    goto :goto_98

    .line 649
    :cond_54
    :try_start_54
    invoke-interface {v11}, Landroid/hardware/biometrics/face/IFace;->getSensorProps()[Landroid/hardware/biometrics/face/SensorProps;

    move-result-object v5

    .line 650
    .local v5, "props":[Landroid/hardware/biometrics/face/SensorProps;
    new-instance v13, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v7

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 651
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v8

    move-object v3, v13

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;-><init>(Landroid/content/Context;[Landroid/hardware/biometrics/face/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V

    move-object v3, v13

    .line 652
    .local v3, "provider":Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_7f} :catch_81

    .line 655
    nop

    .end local v3    # "provider":Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;
    .end local v5    # "props":[Landroid/hardware/biometrics/face/SensorProps;
    goto :goto_98

    .line 653
    :catch_81
    move-exception v3

    .line 654
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote exception in getSensorProps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "instance":Ljava/lang/String;
    .end local v10    # "fqName":Ljava/lang/String;
    .end local v11    # "face":Landroid/hardware/biometrics/face/IFace;
    :goto_98
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 657
    :cond_9c
    return-void

    .line 638
    :cond_9d
    :goto_9d
    return-void
.end method

.method private addHidlProviders(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 629
    .local p1, "hidlSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 630
    .local v1, "hidlSensor":Landroid/hardware/face/FaceSensorPropertiesInternal;
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 631
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->newInstance(Landroid/content/Context;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    move-result-object v3

    .line 630
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    .end local v1    # "hidlSensor":Landroid/hardware/face/FaceSensorPropertiesInternal;
    goto :goto_4

    .line 633
    :cond_2a
    return-void
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->addCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Z)J
    .registers 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "operationId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "isKeyguardBypassEnabled"    # Z

    .line 260
    move-object/from16 v0, p0

    move-object/from16 v14, p6

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    const/4 v15, 0x0

    .line 266
    .local v15, "restricted":Z
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 267
    const/4 v1, 0x1

    move v11, v1

    goto :goto_21

    .line 268
    :cond_1f
    const/4 v1, 0x0

    move v11, v1

    :goto_21
    nop

    .line 272
    .local v11, "statsClient":I
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    .line 274
    .local v16, "isKeyguard":Z
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v13

    .line 275
    .local v13, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/face/ServiceProvider;>;"
    if-nez v13, :cond_3e

    .line 276
    const-string v1, "FaceService"

    const-string v2, "Null provider for authenticate"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-wide/16 v1, -0x1

    return-wide v1

    .line 280
    :cond_3e
    iget-object v1, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v2, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v7, 0x0

    new-instance v8, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v12, p5

    invoke-direct {v8, v12}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v9, p6

    move/from16 v12, v16

    move-object/from16 v17, v13

    .end local v13    # "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/face/ServiceProvider;>;"
    .local v17, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/face/ServiceProvider;>;"
    move/from16 v13, p7

    invoke-interface/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "requestId"    # J

    .line 350
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v0

    .line 353
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/face/ServiceProvider;>;"
    if-nez v0, :cond_1b

    .line 354
    const-string v1, "FaceService"

    const-string v2, "Null provider for cancelAuthentication"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 358
    :cond_1b
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1, p3, p4}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    .line 359
    return-void
.end method

.method public cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V
    .registers 9
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "requestId"    # J

    .line 383
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    .line 386
    .local v0, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v0, :cond_1b

    .line 387
    const-string v1, "FaceService"

    const-string v2, "Null provider for cancelAuthenticationFromService"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void

    .line 391
    :cond_1b
    invoke-interface {v0, p1, p2, p4, p5}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    .line 392
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;J)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # J

    .line 245
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v0

    .line 248
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/face/ServiceProvider;>;"
    if-nez v0, :cond_1b

    .line 249
    const-string v1, "FaceService"

    const-string v2, "Null provider for cancelEnrollment"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 253
    :cond_1b
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->cancelEnrollment(ILandroid/os/IBinder;J)V

    .line 254
    return-void
.end method

.method public cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "requestId"    # J

    .line 364
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FaceService"

    if-nez v0, :cond_30

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFaceDetect called from non-sysui package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 371
    :cond_30
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v0

    .line 372
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/face/ServiceProvider;>;"
    if-nez v0, :cond_3e

    .line 373
    const-string v2, "Null provider for cancelFaceDetect"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void

    .line 377
    :cond_3e
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1, p3, p4}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->cancelFaceDetect(ILandroid/os/IBinder;J)V

    .line 378
    return-void
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    .line 146
    .local v0, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v0, :cond_2d

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for createTestSession, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, 0x0

    return-object v1

    .line 151
    :cond_2d
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v1

    return-object v1
.end method

.method public detectFace(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)J
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    const-string v3, "FaceService"

    if-nez v0, :cond_32

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detectFace called from non-sysui package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-wide v1

    .line 295
    :cond_32
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-nez v0, :cond_44

    .line 298
    const-string v0, "detectFace invoked when user is not encrypted or lockdown"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-wide v1

    .line 302
    :cond_44
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v0

    .line 303
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/face/ServiceProvider;>;"
    if-nez v0, :cond_52

    .line 304
    const-string v4, "Null provider for detectFace"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-wide v1

    .line 308
    :cond_52
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v6, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v6, p3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    const/4 v8, 0x1

    move-object v4, p1

    move v5, p2

    move-object v7, p4

    invoke-interface/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleFaceDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J

    move-result-wide v1

    return-wide v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 452
    return-void

    .line 455
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 457
    .local v0, "ident":J
    :try_start_13
    array-length v2, p3
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_152

    const-string v3, "--proto"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v5, :cond_67

    :try_start_1a
    aget-object v2, p3, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v2, "--state"

    aget-object v6, p3, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 458
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 459
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 460
    .local v5, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    invoke-interface {v5}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 461
    .local v7, "props":Landroid/hardware/face/FaceSensorPropertiesInternal;
    iget v8, v7, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-interface {v5, v8, v2, v4}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    .line 462
    .end local v7    # "props":Landroid/hardware/face/FaceSensorPropertiesInternal;
    goto :goto_4f

    .line 463
    .end local v5    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    :cond_61
    goto :goto_3b

    .line 464
    :cond_62
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 465
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto/16 :goto_14d

    :cond_67
    array-length v2, p3

    if-lez v2, :cond_a5

    aget-object v2, p3, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 466
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 467
    .local v3, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    invoke-interface {v3}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_90
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 468
    .local v5, "props":Landroid/hardware/face/FaceSensorPropertiesInternal;
    iget v6, v5, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-interface {v3, v6, p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->dumpProtoMetrics(ILjava/io/FileDescriptor;)V

    .line 469
    .end local v5    # "props":Landroid/hardware/face/FaceSensorPropertiesInternal;
    goto :goto_90

    .line 470
    .end local v3    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    :cond_a2
    goto :goto_7c

    :cond_a3
    goto/16 :goto_14d

    .line 471
    :cond_a5
    array-length v2, p3

    if-le v2, v5, :cond_ef

    const-string v2, "--hal"

    aget-object v3, p3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 472
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ee

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 473
    .restart local v3    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    invoke-interface {v3}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ed

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 474
    .local v6, "props":Landroid/hardware/face/FaceSensorPropertiesInternal;
    iget v7, v6, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    array-length v8, p3

    .line 475
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {p3, v5, v8, v9}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 474
    invoke-interface {v3, v7, p1, v8}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->dumpHal(ILjava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 476
    .end local v6    # "props":Landroid/hardware/face/FaceSensorPropertiesInternal;
    goto :goto_d0

    .line 477
    .end local v3    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    :cond_ed
    goto :goto_bc

    :cond_ee
    goto :goto_14d

    .line 479
    :cond_ef
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 480
    .restart local v3    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    invoke-interface {v3}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 481
    .restart local v5    # "props":Landroid/hardware/face/FaceSensorPropertiesInternal;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dumping for sensorId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 482
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 481
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    iget v6, v5, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-interface {v3, v6, p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->dumpInternal(ILjava/io/PrintWriter;)V

    .line 484
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_14b
    .catchall {:try_start_1a .. :try_end_14b} :catchall_152

    .line 485
    .end local v5    # "props":Landroid/hardware/face/FaceSensorPropertiesInternal;
    goto :goto_10d

    .line 486
    .end local v3    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    :cond_14c
    goto :goto_f9

    .line 489
    :cond_14d
    :goto_14d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 490
    nop

    .line 491
    return-void

    .line 489
    :catchall_152
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 490
    throw v2
.end method

.method public dumpSensorServiceStateProto(IZ)[B
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "clearSchedulerBuffer"    # Z

    .line 156
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 159
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v1

    .line 160
    .local v1, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-eqz v1, :cond_1b

    .line 161
    invoke-interface {v1, p1, v0, p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    .line 163
    :cond_1b
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 164
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    return-object v2
.end method

.method public enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J
    .registers 22
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "hardwareAuthToken"    # [B
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "disabledFeatures"    # [I
    .param p7, "previewSurface"    # Landroid/view/Surface;
    .param p8, "debugConsent"    # Z

    .line 222
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v1

    .line 225
    .local v1, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/face/ServiceProvider;>;"
    if-nez v1, :cond_1e

    .line 226
    const-string v2, "FaceService"

    const-string v3, "Null provider for enroll"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-wide/16 v2, -0x1

    return-wide v2

    .line 230
    :cond_1e
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, p2

    move-object/from16 v6, p3

    move v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-interface/range {v3 .. v12}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    move-result-wide v2

    return-wide v2
.end method

.method public enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J
    .registers 9
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "hardwareAuthToken"    # [B
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "disabledFeatures"    # [I

    .line 238
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public enrollment(Landroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)J
    .registers 32
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "flags"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "detectArea"    # Landroid/graphics/RectF;
    .param p7, "enrollArea"    # Landroid/graphics/RectF;
    .param p8, "enrollStep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    if-eqz v10, :cond_1d

    .line 705
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/face/FaceServiceStub;

    move-result-object v0

    iget v1, v10, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v10, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v10, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->setDetectArea(IIII)V

    .line 708
    :cond_1d
    if-eqz v11, :cond_32

    .line 709
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/face/FaceServiceStub;

    move-result-object v0

    iget v1, v11, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v11, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v11, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, v11, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->setEnrollArea(IIII)V

    .line 712
    :cond_32
    if-eqz v12, :cond_3b

    .line 713
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/face/FaceServiceStub;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->setEnrollStep(I)V

    .line 715
    :cond_3b
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    move-object/from16 v19, v1

    .line 716
    .local v19, "a":[I
    if-nez p2, :cond_53

    .line 717
    const-string v1, "FaceService"

    const-string v3, "enrollment: cryptoToken is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-array v0, v0, [B

    aput-byte v2, v0, v2

    move-object/from16 v22, v0

    .end local p2    # "cryptoToken":[B
    .local v0, "cryptoToken":[B
    goto :goto_55

    .line 716
    .end local v0    # "cryptoToken":[B
    .restart local p2    # "cryptoToken":[B
    :cond_53
    move-object/from16 v22, p2

    .line 720
    .end local p2    # "cryptoToken":[B
    .local v22, "cryptoToken":[B
    :goto_55
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cetus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 721
    if-eqz v9, :cond_68

    .line 722
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/face/FaceServiceStub;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->setEnrollSurface(Landroid/view/Surface;)V

    .line 724
    :cond_68
    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string/jumbo v18, "oppackage"

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v22

    move-object/from16 v17, p4

    invoke-virtual/range {v13 .. v21}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    move-result-wide v0

    return-wide v0

    .line 726
    :cond_7d
    const/4 v1, 0x0

    const/4 v8, 0x0

    const-string/jumbo v5, "oppackage"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, p4

    move-object/from16 v6, v19

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public extCmd(Landroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;IILjava/lang/String;)I
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p3, "cmd"    # I
    .param p4, "param"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extCmd, cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v0

    .line 734
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/face/ServiceProvider;>;"
    if-nez v0, :cond_31

    .line 735
    const-string v2, "Null provider for getFeature"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v1, 0x0

    return v1

    .line 738
    :cond_31
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->extCmd(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sensorId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    .line 196
    .local v0, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v0, :cond_2c

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching sensor for generateChallenge, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 201
    :cond_2c
    move-object v1, v0

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public getAuthenticatorId(II)J
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 572
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    .line 575
    .local v0, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v0, :cond_1d

    .line 576
    const-string v1, "FaceService"

    const-string v2, "Null provider for getAuthenticatorId"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-wide/16 v1, 0x0

    return-wide v1

    .line 580
    :cond_1d
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getAuthenticatorId(II)J

    move-result-wide v1

    return-wide v1
.end method

.method public getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_1c

    .line 515
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 518
    :cond_1c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    .line 519
    .local v0, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v0, :cond_41

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for getEnrolledFaces, caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 524
    :cond_41
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "feature"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 616
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v0

    .line 619
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/face/ServiceProvider;>;"
    if-nez v0, :cond_1b

    .line 620
    const-string v1, "FaceService"

    const-string v2, "Null provider for getFeature"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void

    .line 624
    :cond_1b
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v7, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v7, p4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method public getLockoutModeForUser(II)I
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 546
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    .line 549
    .local v0, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v0, :cond_1c

    .line 550
    const-string v1, "FaceService"

    const-string v2, "Null provider for getLockoutModeForUser"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v1, 0x0

    return v1

    .line 554
    :cond_1c
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getLockoutModeForUser(II)I

    move-result v1

    return v1
.end method

.method public getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    .line 181
    .local v0, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v0, :cond_37

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching sensor for getSensorProperties, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, 0x0

    return-object v1

    .line 187
    :cond_37
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties(I)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v1

    return-object v1
.end method

.method public getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSensorProperties(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasEnrolledFaces(IILjava/lang/String;)Z
    .registers 8
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 531
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_1c

    .line 532
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 535
    :cond_1c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    .line 536
    .local v0, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    const/4 v1, 0x0

    if-nez v0, :cond_3e

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null provider for hasEnrolledFaces, caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return v1

    .line 541
    :cond_3e
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_49

    const/4 v1, 0x1

    :cond_49
    return v1
.end method

.method public invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/IInvalidationCallback;

    .line 560
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    .line 563
    .local v0, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v0, :cond_1b

    .line 564
    const-string v1, "FaceService"

    const-string v2, "Null provider for invalidateAuthenticatorId"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void

    .line 567
    :cond_1b
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 568
    return-void
.end method

.method public isHardwareDetected(ILjava/lang/String;)Z
    .registers 9
    .param p1, "sensorId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 499
    .local v0, "token":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v2, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v2

    .line 500
    .local v2, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v2, :cond_34

    .line 501
    const-string v3, "FaceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null provider for isHardwareDetected, caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_3c

    .line 502
    const/4 v3, 0x0

    .line 506
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
    return v3

    .line 504
    :cond_34
    :try_start_34
    invoke-interface {v2, p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->isHardwareDetected(I)Z

    move-result v3
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_3c

    .line 506
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 504
    return v3

    .line 506
    .end local v2    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    :catchall_3c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 507
    throw v2
.end method

.method synthetic lambda$registerAuthenticators$0$com-android-server-biometrics-sensors-face-FaceService$FaceServiceWrapper(Ljava/util/List;)V
    .registers 14
    .param p1, "hidlSensors"    # Ljava/util/List;

    .line 674
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->addHidlProviders(Ljava/util/List;)V

    .line 675
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->addAidlProviders()V

    .line 677
    nop

    .line 678
    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 677
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 681
    .local v0, "biometricService":Landroid/hardware/biometrics/IBiometricService;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 682
    .local v2, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v3

    .line 683
    .local v3, "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 684
    .local v5, "prop":Landroid/hardware/face/FaceSensorPropertiesInternal;
    iget v6, v5, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 685
    .local v6, "sensorId":I
    iget v7, v5, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    .line 686
    invoke-static {v7}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result v7

    .line 687
    .local v7, "strength":I
    new-instance v8, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v9}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceWrapper(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;-><init>(Landroid/hardware/face/IFaceService;I)V

    .line 690
    .local v8, "authenticator":Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;
    const/16 v9, 0x8

    :try_start_50
    invoke-interface {v0, v6, v9, v7, v8}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_53} :catch_54

    .line 694
    goto :goto_6d

    .line 692
    :catch_54
    move-exception v9

    .line 693
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remote exception when registering sensorId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "FaceService"

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    .end local v5    # "prop":Landroid/hardware/face/FaceSensorPropertiesInternal;
    .end local v6    # "sensorId":I
    .end local v7    # "strength":I
    .end local v8    # "authenticator":Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_6d
    goto :goto_2f

    .line 696
    .end local v2    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    .end local v3    # "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    :cond_6e
    goto :goto_1b

    .line 697
    :cond_6f
    return-void
.end method

.method public prepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V
    .registers 33
    .param p1, "sensorId"    # I
    .param p2, "requireConfirmation"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "operationId"    # J
    .param p6, "userId"    # I
    .param p7, "sensorReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "requestId"    # J
    .param p11, "cookie"    # I
    .param p12, "allowBackgroundAuthentication"    # Z

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    move/from16 v15, p1

    invoke-static {v1, v15}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v1

    .line 321
    .local v1, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v1, :cond_1f

    .line 322
    const-string v2, "FaceService"

    const-string v3, "Null provider for prepareForAuthentication"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 326
    :cond_1f
    const/16 v17, 0x0

    .line 327
    .local v17, "isKeyguardBypassEnabled":Z
    const/16 v18, 0x1

    .line 328
    .local v18, "restricted":Z
    new-instance v9, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v14, p7

    invoke-direct {v9, v14}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V

    const/4 v13, 0x1

    const/16 v16, 0x2

    const/16 v19, 0x0

    move-object v2, v1

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p11

    move-object/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v14, v16

    move/from16 v15, p12

    move/from16 v16, v19

    invoke-interface/range {v2 .. v16}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZZ)V

    .line 332
    return-void
.end method

.method public registerAuthenticators(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 662
    .local p1, "hidlSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 668
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "FaceService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 670
    .local v0, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 671
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 673
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 698
    return-void
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "faceId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v0

    .line 400
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/face/ServiceProvider;>;"
    if-nez v0, :cond_1b

    .line 401
    const-string v1, "FaceService"

    const-string v2, "Null provider for remove"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void

    .line 405
    :cond_1b
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleRemove(ILandroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 414
    new-instance v6, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;

    invoke-direct {v6, p0, p3}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 433
    .local v6, "internalReceiver":Landroid/hardware/face/FaceServiceReceiver;
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 434
    .local v1, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v8

    .line 435
    .local v8, "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 436
    .local v10, "prop":Landroid/hardware/face/FaceSensorPropertiesInternal;
    iget v3, v10, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    move-object v2, v1

    move-object v4, p1

    move v5, p2

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleRemoveAll(ILandroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 438
    .end local v10    # "prop":Landroid/hardware/face/FaceSensorPropertiesInternal;
    goto :goto_2e

    .line 439
    .end local v1    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    .end local v8    # "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    :cond_45
    goto :goto_1a

    .line 440
    :cond_46
    return-void
.end method

.method public resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sensorId"    # I
    .param p3, "userId"    # I
    .param p4, "hardwareAuthToken"    # [B
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    .line 589
    .local v0, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v0, :cond_2c

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for resetLockout, caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void

    .line 594
    :cond_2c
    invoke-interface {v0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleResetLockout(II[B)V

    .line 595
    return-void
.end method

.method public revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sensorId"    # I
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "challenge"    # J

    .line 207
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    .line 210
    .local v0, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v0, :cond_2c

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching sensor for revokeChallenge, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 215
    :cond_2c
    move-object v1, v0

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 216
    return-void
.end method

.method public setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 20
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "feature"    # I
    .param p4, "enabled"    # Z
    .param p5, "hardwareAuthToken"    # [B
    .param p6, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;

    .line 601
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 603
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v1

    .line 604
    .local v1, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/face/ServiceProvider;>;"
    if-nez v1, :cond_1c

    .line 605
    const-string v2, "FaceService"

    const-string v3, "Null provider for setFeature"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void

    .line 609
    :cond_1c
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-interface/range {v3 .. v11}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleSetFeature(ILandroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public startPreparedClient(II)V
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "cookie"    # I

    .line 336
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    .line 339
    .local v0, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    if-nez v0, :cond_1b

    .line 340
    const-string v1, "FaceService"

    const-string v2, "Null provider for startPreparedClient"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 344
    :cond_1b
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->startPreparedClient(II)V

    .line 345
    return-void
.end method
