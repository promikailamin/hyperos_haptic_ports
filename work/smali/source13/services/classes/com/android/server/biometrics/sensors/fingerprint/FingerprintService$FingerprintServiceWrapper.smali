.class final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;
.super Landroid/hardware/fingerprint/IFingerprintService$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    return-void
.end method

.method private addAidlProviders()V
    .registers 19

    .line 915
    move-object/from16 v1, p0

    sget-object v0, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, "instances":[Ljava/lang/String;
    if-eqz v2, :cond_bb

    array-length v0, v2

    if-nez v0, :cond_11

    move-object/from16 v17, v2

    goto/16 :goto_bd

    .line 919
    :cond_11
    array-length v3, v2

    const/4 v0, 0x0

    move v4, v0

    :goto_14
    if-ge v4, v3, :cond_ba

    aget-object v13, v2, v4

    .line 920
    .local v13, "instance":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 921
    .local v14, "fqName":Ljava/lang/String;
    nop

    .line 922
    invoke-static {v14}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 921
    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object v15

    .line 923
    .local v15, "fp":Landroid/hardware/biometrics/fingerprint/IFingerprint;
    const-string v12, "FingerprintService"

    if-nez v15, :cond_5b

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get declared service: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    move-object/from16 v17, v2

    goto :goto_b4

    .line 928
    :cond_5b
    :try_start_5b
    invoke-interface {v15}, Landroid/hardware/biometrics/fingerprint/IFingerprint;->getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;

    move-result-object v8

    .line 929
    .local v8, "props":[Landroid/hardware/biometrics/fingerprint/SensorProps;
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 930
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v7

    iget-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v10

    iget-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v11

    iget-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 933
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v16
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_83} :catch_9a

    move-object v5, v0

    move-object v9, v13

    move-object/from16 v17, v2

    move-object v2, v12

    .end local v2    # "instances":[Ljava/lang/String;
    .local v17, "instances":[Ljava/lang/String;
    move-object/from16 v12, v16

    :try_start_8a
    invoke-direct/range {v5 .. v12}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;[Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 934
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
    iget-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_96} :catch_98

    .line 937
    nop

    .end local v0    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
    .end local v8    # "props":[Landroid/hardware/biometrics/fingerprint/SensorProps;
    goto :goto_b4

    .line 935
    :catch_98
    move-exception v0

    goto :goto_9e

    .end local v17    # "instances":[Ljava/lang/String;
    .restart local v2    # "instances":[Ljava/lang/String;
    :catch_9a
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v12

    .line 936
    .end local v2    # "instances":[Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "instances":[Ljava/lang/String;
    :goto_9e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote exception in getSensorProps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v13    # "instance":Ljava/lang/String;
    .end local v14    # "fqName":Ljava/lang/String;
    .end local v15    # "fp":Landroid/hardware/biometrics/fingerprint/IFingerprint;
    :goto_b4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v17

    goto/16 :goto_14

    .line 939
    .end local v17    # "instances":[Ljava/lang/String;
    .restart local v2    # "instances":[Ljava/lang/String;
    :cond_ba
    return-void

    .line 916
    :cond_bb
    move-object/from16 v17, v2

    .line 917
    .end local v2    # "instances":[Ljava/lang/String;
    .restart local v17    # "instances":[Ljava/lang/String;
    :goto_bd
    return-void
.end method

.method private addHidlProviders(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 894
    .local p1, "hidlSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 896
    .local v1, "hidlSensor":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v2, :cond_18

    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_67

    :cond_18
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 897
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 898
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    const-string v5, "com.android.server.biometrics.sensors.fingerprint.test_udfps.enable"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_67

    .line 901
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 904
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v7

    .line 901
    move-object v4, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    move-result-object v2

    .local v2, "fingerprint21":Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
    goto :goto_8a

    .line 906
    .end local v2    # "fingerprint21":Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
    :cond_67
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v7

    move-object v4, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    move-result-object v2

    .line 910
    .restart local v2    # "fingerprint21":Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
    :goto_8a
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    .end local v1    # "hidlSensor":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .end local v2    # "fingerprint21":Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
    goto/16 :goto_4

    .line 912
    :cond_95
    return-void
.end method

.method private authenticateWithPrompt(JLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;Z)J
    .registers 25
    .param p1, "operationId"    # J
    .param p3, "props"    # Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .param p4, "uId"    # I
    .param p5, "userId"    # I
    .param p6, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "ignoreEnrollmentState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUiContext()Landroid/content/Context;

    move-result-object v3

    .line 418
    .local v3, "context":Landroid/content/Context;
    nop

    .line 419
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 418
    const/4 v5, 0x0

    move-object/from16 v6, p7

    invoke-virtual {v3, v6, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    .line 420
    .local v4, "promptContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 422
    .local v5, "executor":Ljava/util/concurrent/Executor;
    new-instance v7, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v7, v4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 423
    const v8, 0x10401cd

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v7

    .line 424
    const v8, 0x1040409

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v7

    .line 426
    const/high16 v8, 0x1040000

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 425
    invoke-virtual {v7, v8, v5, v9}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v7

    iget v8, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 436
    invoke-virtual {v7, v8}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setIsForLegacyFingerprintManager(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v7

    .line 437
    move/from16 v13, p8

    invoke-virtual {v7, v13}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setIgnoreEnrollmentState(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v7

    .line 438
    invoke-virtual {v7}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v14

    .line 440
    .local v14, "biometricPrompt":Landroid/hardware/biometrics/BiometricPrompt;
    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;

    move/from16 v15, p5

    invoke-direct {v10, v0, v2, v1, v15}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;I)V

    .line 490
    .local v10, "promptCallback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    new-instance v8, Landroid/os/CancellationSignal;

    invoke-direct {v8}, Landroid/os/CancellationSignal;-><init>()V

    move-object v7, v14

    move-object v9, v5

    move-wide/from16 v11, p1

    invoke-virtual/range {v7 .. v12}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateForOperation(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;J)J

    move-result-wide v7

    return-wide v7
.end method

.method static synthetic lambda$authenticateWithPrompt$0(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/content/DialogInterface;I)V
    .registers 6
    .param p0, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 430
    const/16 v0, 0xa

    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p0, v0, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    .line 434
    goto :goto_f

    .line 432
    :catch_7
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Remote exception in negative button onClick()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method


# virtual methods
.method public addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    .line 1017
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1018
    if-nez p1, :cond_15

    .line 1019
    const-string v0, "FingerprintService"

    const-string v1, "addAuthenticatorsRegisteredCallback, callback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return-void

    .line 1025
    :cond_15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLock(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1026
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmAuthenticatorsRegisteredCallbacks(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    .line 1027
    .local v1, "registered":Z
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmSensorProps(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    const/4 v2, 0x1

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    .line 1028
    .local v2, "hasSensorProps":Z
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_4a

    .line 1029
    if-eqz v1, :cond_40

    if-eqz v2, :cond_40

    .line 1030
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mbroadcastAllAuthenticatorsRegistered(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    goto :goto_49

    .line 1031
    :cond_40
    if-nez v1, :cond_49

    .line 1032
    const-string v0, "FingerprintService"

    const-string v3, "addAuthenticatorsRegisteredCallback failed to register callback"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_49
    :goto_49
    return-void

    .line 1028
    .end local v1    # "registered":Z
    .end local v2    # "hasSensorProps":Z
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 883
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->registerCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 885
    return-void
.end method

.method public addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->addCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;Ljava/lang/String;Z)J
    .registers 34
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "operationId"    # J
    .param p4, "sensorId"    # I
    .param p5, "userId"    # I
    .param p6, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "attributionTag"    # Ljava/lang/String;
    .param p9, "ignoreEnrollmentState"    # Z

    .line 330
    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v15, p5

    move-object/from16 v14, p7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 331
    .local v16, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 332
    .local v17, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 334
    .local v18, "callingUserId":I
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 v6, 0x1

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v3 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result v0

    const-wide/16 v3, -0x1

    const-string v5, "FingerprintService"

    if-nez v0, :cond_42

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Authenticate rejecting package: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-wide v3

    .line 347
    :cond_42
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v0

    move-wide/from16 v10, p2

    invoke-interface {v0, v10, v11, v14}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->saveAuthenticateConfig(JLjava/lang/String;)V

    .line 352
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    .line 355
    .local v19, "isKeyguard":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 357
    .local v20, "identity1":J
    if-eqz v19, :cond_88

    :try_start_5b
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 360
    const v0, 0x534e4554

    const-string v6, "79776455"

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 361
    const-string v0, "Authenticate invoked when user is encrypted or lockdown"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v0

    invoke-interface {v0, v15}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->isFingerDataSharer(I)Z

    move-result v0
    :try_end_7c
    .catchall {:try_start_5b .. :try_end_7c} :catchall_83

    if-nez v0, :cond_88

    .line 364
    nop

    .line 369
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    return-wide v3

    .line 369
    :catchall_83
    move-exception v0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    throw v0

    .line 369
    :cond_88
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    nop

    .line 372
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_9d

    move v12, v6

    goto :goto_9f

    :cond_9d
    const/4 v0, 0x0

    move v12, v0

    .line 374
    .local v12, "restricted":Z
    :goto_9f
    if-eqz v19, :cond_a3

    move v13, v6

    goto :goto_a5

    .line 375
    :cond_a3
    const/4 v0, 0x3

    move v13, v0

    :goto_a5
    nop

    .line 378
    .local v13, "statsClient":I
    const/4 v0, -0x1

    if-ne v2, v0, :cond_b0

    .line 379
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    goto :goto_ca

    .line 381
    .end local v0    # "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    :cond_b0
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v6}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    new-instance v0, Landroid/util/Pair;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v7, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    .restart local v0    # "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    :goto_ca
    if-nez v0, :cond_d2

    .line 385
    const-string v6, "Null provider for authenticate"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-wide v3

    .line 389
    :cond_d2
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 390
    invoke-interface {v3, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v22

    .line 403
    .local v22, "sensorProps":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, 0x0

    new-instance v8, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v6, p6

    invoke-direct {v8, v6}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v23, v8

    move/from16 v8, p5

    move-object/from16 v10, v23

    move-object/from16 v11, p7

    move/from16 v14, v19

    invoke-interface/range {v3 .. v14}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZ)J

    move-result-wide v3

    return-wide v3
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "requestId"    # J

    .line 559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 560
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 561
    .local v8, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 563
    .local v9, "callingUserId":I
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 v3, 0x1

    move-object v1, p2

    move-object v2, p3

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result v0

    const-string v1, "FingerprintService"

    if-nez v0, :cond_33

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthentication rejecting package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 574
    :cond_33
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    .line 575
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    if-nez v0, :cond_41

    .line 576
    const-string v2, "Null provider for cancelAuthentication"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void

    .line 580
    :cond_41
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    .line 581
    return-void
.end method

.method public cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V
    .registers 9
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "requestId"    # J

    .line 608
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAuthenticationFromService, sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 613
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_31

    .line 614
    const-string v2, "Null provider for cancelAuthenticationFromService"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void

    .line 618
    :cond_31
    invoke-interface {v0, p1, p2, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    .line 619
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;J)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # J

    .line 308
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    .line 311
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    if-nez v0, :cond_1b

    .line 312
    const-string v1, "FingerprintService"

    const-string v2, "Null provider for cancelEnrollment"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 316
    :cond_1b
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelEnrollment(ILandroid/os/IBinder;J)V

    .line 317
    return-void
.end method

.method public cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "requestId"    # J

    .line 586
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FingerprintService"

    if-nez v0, :cond_30

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFingerprintDetect called from non-sysui package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void

    .line 595
    :cond_30
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    .line 596
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    if-nez v0, :cond_3e

    .line 597
    const-string v2, "Null provider for cancelFingerprintDetect"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void

    .line 601
    :cond_3e
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    .line 602
    return-void
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 215
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_2d

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for createTestSession, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x0

    return-object v1

    .line 220
    :cond_2d
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v1

    return-object v1
.end method

.method public detectFingerprint(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)J
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 497
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    const-string v3, "FingerprintService"

    if-nez v0, :cond_32

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detectFingerprint called from non-sysui package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-wide v1

    .line 503
    :cond_32
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-nez v0, :cond_44

    .line 506
    const-string v0, "detectFingerprint invoked when user is not encrypted or lockdown"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-wide v1

    .line 510
    :cond_44
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    .line 511
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    if-nez v0, :cond_52

    .line 512
    const-string v4, "Null provider for detectFingerprint"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-wide v1

    .line 516
    :cond_52
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v6, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v6, p3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    const/4 v8, 0x1

    move-object v4, p1

    move v5, p2

    move-object v7, p4

    invoke-interface/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleFingerDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J

    move-result-wide v1

    return-wide v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 678
    return-void

    .line 681
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 683
    .local v0, "ident":J
    :try_start_13
    array-length v2, p3
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_128

    const-string v3, "--proto"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v4, :cond_67

    :try_start_1a
    aget-object v2, p3, v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v2, "--state"

    aget-object v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 684
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 685
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 687
    .local v4, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 688
    .local v7, "props":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    iget v8, v7, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {v4, v8, v2, v5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    .line 689
    .end local v7    # "props":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    goto :goto_4f

    .line 690
    .end local v4    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    :cond_61
    goto :goto_3b

    .line 691
    :cond_62
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 692
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto/16 :goto_123

    :cond_67
    array-length v2, p3

    if-lez v2, :cond_a5

    aget-object v2, p3, v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 693
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 695
    .local v3, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    invoke-interface {v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_90
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 696
    .local v5, "props":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    iget v6, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {v3, v6, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->dumpProtoMetrics(ILjava/io/FileDescriptor;)V

    .line 697
    .end local v5    # "props":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    goto :goto_90

    .line 698
    .end local v3    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    :cond_a2
    goto :goto_7c

    :cond_a3
    goto/16 :goto_123

    .line 700
    :cond_a5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_123

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 702
    .restart local v3    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    invoke-interface {v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_122

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 703
    .restart local v5    # "props":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dumping for sensorId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 704
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 703
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fps state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v7}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v7

    .line 706
    invoke-virtual {v7}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->getBiometricState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 705
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    iget v6, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {v3, v6, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->dumpInternal(ILjava/io/PrintWriter;)V

    .line 708
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_121
    .catchall {:try_start_1a .. :try_end_121} :catchall_128

    .line 709
    .end local v5    # "props":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    goto :goto_c3

    .line 710
    .end local v3    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    :cond_122
    goto :goto_af

    .line 713
    :cond_123
    :goto_123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    nop

    .line 715
    return-void

    .line 713
    :catchall_128
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    throw v2
.end method

.method public dumpSensorServiceStateProto(IZ)[B
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "clearSchedulerBuffer"    # Z

    .line 225
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 228
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v1

    .line 229
    .local v1, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-eqz v1, :cond_1b

    .line 230
    invoke-interface {v1, p1, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    .line 232
    :cond_1b
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 233
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    return-object v2
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J
    .registers 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "hardwareAuthToken"    # [B
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "enrollReason"    # I

    .line 294
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v1

    .line 297
    .local v1, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    if-nez v1, :cond_1e

    .line 298
    const-string v2, "FingerprintService"

    const-string v3, "Null provider for enroll"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-wide/16 v2, -0x1

    return-wide v2

    .line 302
    :cond_1e
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J

    move-result-wide v2

    return-wide v2
.end method

.method public extCmd(Landroid/os/IBinder;IIILjava/lang/String;)I
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "groupId"    # I
    .param p3, "cmd"    # I
    .param p4, "param"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extCmd() cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v0, 0x0

    .line 1105
    .local v0, "effectiveGroupId":I
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->startExtCmd(Landroid/os/IBinder;III)I

    move-result v1

    return v1
.end method

.method public generateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sensorId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 267
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_2c

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching sensor for generateChallenge, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 272
    :cond_2c
    move-object v1, v0

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public getAuthenticatorId(II)J
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 851
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 854
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_1d

    .line 855
    const-string v1, "FingerprintService"

    const-string v2, "Null provider for getAuthenticatorId"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-wide/16 v1, 0x0

    return-wide v1

    .line 858
    :cond_1d
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getAuthenticatorId(II)J

    move-result-wide v1

    return-wide v1
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 779
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 780
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 781
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 775
    const/4 v3, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 782
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 785
    :cond_1c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 786
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 789
    :cond_2d
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLockoutModeForUser(II)I
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 826
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 829
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_1c

    .line 830
    const-string v1, "FingerprintService"

    const-string v2, "Null provider for getLockoutModeForUser"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v1, 0x0

    return v1

    .line 833
    :cond_1c
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getLockoutModeForUser(II)I

    move-result v1

    return v1
.end method

.method public getSensorLocation()[I
    .registers 2

    .line 1124
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSensorLocation()[I

    move-result-object v0

    return-object v0
.end method

.method public getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 253
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_37

    .line 254
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

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v1, 0x0

    return-object v1

    .line 258
    :cond_37
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

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
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 241
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    :cond_19
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasEnrolledFingerprints(IILjava/lang/String;)Z
    .registers 8
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 813
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 816
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null provider for hasEnrolledFingerprints, caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return v1

    .line 821
    :cond_2d
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_38

    const/4 v1, 0x1

    :cond_38
    return v1
.end method

.method public hasEnrolledFingerprintsDeprecated(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 795
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 799
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 800
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 801
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 795
    const/4 v3, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_19

    .line 802
    const/4 v0, 0x0

    return v0

    .line 805
    :cond_19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_2a

    .line 806
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 808
    :cond_2a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 809
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 808
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/IInvalidationCallback;

    .line 839
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 842
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_1b

    .line 843
    const-string v1, "FingerprintService"

    const-string v2, "Null provider for invalidateAuthenticatorId"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return-void

    .line 846
    :cond_1b
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 847
    return-void
.end method

.method public isClientActive()Z
    .registers 3

    .line 877
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->isAnySensorActive()Z

    move-result v0

    return v0
.end method

.method public isHardwareDetected(ILjava/lang/String;)Z
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 745
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 748
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_2d

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for isHardwareDetected, caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v1, 0x0

    return v1

    .line 753
    :cond_2d
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->isHardwareDetected(I)Z

    move-result v1

    return v1
.end method

.method public isHardwareDetectedDeprecated(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;

    .line 719
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 723
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 724
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 725
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 719
    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 726
    return v1

    .line 729
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 731
    .local v2, "token":J
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    .line 732
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    if-nez v0, :cond_42

    .line 733
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Null provider for isHardwareDetectedDeprecated, caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_56

    .line 735
    nop

    .line 739
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 735
    return v1

    .line 737
    :cond_42
    :try_start_42
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->isHardwareDetected(I)Z

    move-result v1
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_56

    .line 739
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 737
    return v1

    .line 739
    .end local v0    # "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    :catchall_56
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 740
    throw v0
.end method

.method synthetic lambda$registerAuthenticators$1$com-android-server-biometrics-sensors-fingerprint-FingerprintService$FingerprintServiceWrapper(Ljava/util/List;)V
    .registers 26
    .param p1, "hidlSensors"    # Ljava/util/List;

    .line 956
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->addHidlProviders(Ljava/util/List;)V

    .line 957
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->addAidlProviders()V

    .line 959
    const-string v0, "biometric"

    .line 960
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 959
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    .line 963
    .local v2, "biometricService":Landroid/hardware/biometrics/IBiometricService;
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 964
    .local v4, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    nop

    .line 965
    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v5

    .line 966
    .local v5, "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 967
    .local v7, "prop":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    iget v8, v7, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 968
    .local v8, "sensorId":I
    iget v0, v7, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    .line 969
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result v9

    .line 970
    .local v9, "strength":I
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;

    iget-object v10, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v10}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceWrapper(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    move-result-object v10

    invoke-direct {v0, v10, v8}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;-><init>(Landroid/hardware/fingerprint/IFingerprintService;I)V

    move-object v10, v0

    .line 973
    .local v10, "authenticator":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;
    const/4 v0, 0x2

    :try_start_54
    invoke-interface {v2, v8, v0, v9, v10}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_58

    .line 977
    goto :goto_73

    .line 975
    :catch_58
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 976
    .local v0, "e":Landroid/os/RemoteException;
    const-string v11, "FingerprintService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Remote exception when registering sensorId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "prop":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .end local v8    # "sensorId":I
    .end local v9    # "strength":I
    .end local v10    # "authenticator":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;
    :goto_73
    goto :goto_32

    .line 979
    .end local v4    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    .end local v5    # "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    :cond_74
    goto :goto_1c

    .line 981
    :cond_75
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLock(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 982
    :try_start_7c
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_8a
    .catchall {:try_start_7c .. :try_end_8a} :catchall_1c9

    if-eqz v4, :cond_a6

    :try_start_8c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 983
    .restart local v4    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    iget-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmSensorProps(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_9f
    .catchall {:try_start_8c .. :try_end_9f} :catchall_a1

    .line 984
    nop

    .end local v4    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    goto :goto_86

    .line 1007
    :catchall_a1
    move-exception v0

    move-object/from16 v21, v2

    goto/16 :goto_1cc

    .line 987
    :cond_a6
    :try_start_a6
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmSensorProps(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1ba

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 988
    .local v4, "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    iget v5, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1ae

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$sfgetmIsFodSensorLocationLow()Z

    move-result v5

    if-nez v5, :cond_1ae

    .line 989
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$sfgetmFodLocationXyFhd()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a7

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$sfgetmFodLocationXyFhd()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a7

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$sfgetmFodLocationWhFhd()Ljava/lang/String;

    move-result-object v5

    .line 990
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a0

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$sfgetmFodLocationWhFhd()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a0

    .line 991
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$sfgetmFodLocationXyFhd()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 992
    .local v5, "FhdX":I
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$sfgetmFodLocationXyFhd()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 993
    .local v7, "FhdY":I
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$sfgetmFodLocationWhFhd()Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v6, v9, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 994
    .local v6, "FhdWidth":I
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$sfgetmFodLocationWhFhd()Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v8, v9, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_135
    .catchall {:try_start_a6 .. :try_end_135} :catchall_1c9

    .line 995
    .local v8, "FhdHeight":I
    const/4 v9, 0x0

    .line 996
    .local v9, "FhdRadius":I
    if-ne v6, v8, :cond_13b

    .line 997
    :try_start_138
    div-int/lit8 v10, v6, 0x2
    :try_end_13a
    .catchall {:try_start_138 .. :try_end_13a} :catchall_a1

    move v9, v10

    .line 999
    :cond_13b
    :try_start_13b
    const-string v10, "FingerprintService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "registerAuthenticators mSensorPropsFhd add:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v10, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v10}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmSensorPropsFhd(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v10

    new-instance v15, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v12, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v13, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    iget v14, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    iget-object v11, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->componentInfo:Ljava/util/List;

    move-object/from16 v20, v0

    iget v0, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I
    :try_end_17c
    .catchall {:try_start_13b .. :try_end_17c} :catchall_1c9

    const/16 v17, 0x1

    move-object/from16 v21, v2

    .end local v2    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .local v21, "biometricService":Landroid/hardware/biometrics/IBiometricService;
    :try_start_180
    iget-boolean v2, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    move-object/from16 v22, v4

    .end local v4    # "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .local v22, "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    new-instance v4, Landroid/hardware/biometrics/SensorLocationInternal;

    move/from16 v23, v6

    .end local v6    # "FhdWidth":I
    .local v23, "FhdWidth":I
    const-string v6, ""

    invoke-direct {v4, v6, v5, v7, v9}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V

    .line 1002
    invoke-static {v4}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    move-object v4, v11

    move-object v11, v15

    move-object v6, v15

    move-object v15, v4

    move/from16 v16, v0

    move/from16 v18, v2

    invoke-direct/range {v11 .. v19}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZLjava/util/List;)V

    .line 1000
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b4

    .line 990
    .end local v5    # "FhdX":I
    .end local v7    # "FhdY":I
    .end local v8    # "FhdHeight":I
    .end local v9    # "FhdRadius":I
    .end local v21    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .end local v22    # "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .end local v23    # "FhdWidth":I
    .restart local v2    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .restart local v4    # "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    :cond_1a0
    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v22, v4

    .end local v2    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .end local v4    # "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .restart local v21    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .restart local v22    # "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    goto :goto_1b4

    .line 989
    .end local v21    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .end local v22    # "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .restart local v2    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .restart local v4    # "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    :cond_1a7
    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v22, v4

    .end local v2    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .end local v4    # "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .restart local v21    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .restart local v22    # "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    goto :goto_1b4

    .line 988
    .end local v21    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .end local v22    # "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .restart local v2    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .restart local v4    # "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    :cond_1ae
    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v22, v4

    .line 1005
    .end local v2    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .end local v4    # "properties":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .restart local v21    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    :goto_1b4
    move-object/from16 v0, v20

    move-object/from16 v2, v21

    goto/16 :goto_b0

    .line 1007
    .end local v21    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .restart local v2    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    :cond_1ba
    move-object/from16 v21, v2

    .end local v2    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .restart local v21    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    monitor-exit v3
    :try_end_1bd
    .catchall {:try_start_180 .. :try_end_1bd} :catchall_1ce

    .line 1009
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mbroadcastCurrentEnrollmentState(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 1010
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mbroadcastAllAuthenticatorsRegistered(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    .line 1011
    return-void

    .line 1007
    .end local v21    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .restart local v2    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    :catchall_1c9
    move-exception v0

    move-object/from16 v21, v2

    .end local v2    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    .restart local v21    # "biometricService":Landroid/hardware/biometrics/IBiometricService;
    :goto_1cc
    :try_start_1cc
    monitor-exit v3
    :try_end_1cd
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_1ce

    throw v0

    :catchall_1ce
    move-exception v0

    goto :goto_1cc
.end method

.method public onPointerDown(JIIIFF)V
    .registers 19
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "minor"    # F
    .param p7, "major"    # F

    .line 1039
    move-object v0, p0

    move v9, p3

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1041
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v10

    .line 1042
    .local v10, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v10, :cond_2e

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching provider for onFingerDown, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return-void

    .line 1046
    :cond_2e
    move-object v1, v10

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPointerDown(JIIIFF)V

    .line 1047
    return-void
.end method

.method public onPointerUp(JI)V
    .registers 7
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I

    .line 1051
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 1054
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_2c

    .line 1055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching provider for onFingerUp, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return-void

    .line 1058
    :cond_2c
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPointerUp(JI)V

    .line 1059
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1110
    const v0, 0xfffffe

    if-eq p1, v0, :cond_15

    const v0, 0xffffff

    if-eq p1, v0, :cond_15

    const v0, 0xfffffd

    if-ne p1, v0, :cond_10

    goto :goto_15

    .line 1118
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1115
    :cond_15
    :goto_15
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/MiuiFingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/MiuiFingerprintServiceStub;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/MiuiFingerprintServiceStub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public onUiReady(JI)V
    .registers 7
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I

    .line 1063
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 1066
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_2c

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching provider for onUiReady, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    return-void

    .line 1070
    :cond_2c
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onUiReady(JI)V

    .line 1071
    return-void
.end method

.method public prepareForAuthentication(ILandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V
    .registers 30
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "operationId"    # J
    .param p5, "userId"    # I
    .param p6, "sensorReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "requestId"    # J
    .param p10, "cookie"    # I
    .param p11, "allowBackgroundAuthentication"    # Z

    .line 525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 527
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    move/from16 v15, p1

    invoke-static {v1, v15}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v1

    .line 528
    .local v1, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v1, :cond_1f

    .line 529
    const-string v2, "FingerprintService"

    const-string v3, "Null provider for prepareForAuthentication"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .line 533
    :cond_1f
    const/16 v16, 0x1

    .line 534
    .local v16, "restricted":Z
    new-instance v9, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v14, p6

    invoke-direct {v9, v14}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V

    const/4 v13, 0x1

    const/16 v17, 0x2

    move-object v2, v1

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p10

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v14, v17

    move/from16 v15, p11

    invoke-interface/range {v2 .. v15}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZ)V

    .line 538
    return-void
.end method

.method public registerAuthenticators(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 944
    .local p1, "hidlSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 950
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "FingerprintService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 952
    .local v0, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 953
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 955
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1012
    return-void
.end method

.method public registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/biometrics/IBiometricStateListener;

    .line 1095
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 1096
    return-void
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    .line 627
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    if-nez v0, :cond_1b

    .line 628
    const-string v1, "FingerprintService"

    const-string v2, "Null provider for remove"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void

    .line 631
    :cond_1b
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p1

    move-object v5, p4

    move v6, p2

    move v7, p3

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRemove(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IILjava/lang/String;)V

    .line 633
    return-void
.end method

.method public removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 638
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 640
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;

    invoke-direct {v5, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 659
    .local v5, "internalReceiver":Landroid/hardware/fingerprint/FingerprintServiceReceiver;
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 660
    .local v1, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v8

    .line 661
    .local v8, "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 662
    .local v10, "prop":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    iget v3, v10, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object v2, v1

    move-object v4, p1

    move v6, p2

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRemoveAll(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    .line 664
    .end local v10    # "prop":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    goto :goto_2e

    .line 665
    .end local v1    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    .end local v8    # "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    :cond_45
    goto :goto_1a

    .line 666
    :cond_46
    return-void
.end method

.method public removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 889
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->removeCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 891
    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .registers 7
    .param p1, "fingerId"    # I
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 758
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 760
    return-void

    .line 763
    :cond_18
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    .line 764
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    if-nez v0, :cond_28

    .line 765
    const-string v1, "FingerprintService"

    const-string v2, "Null provider for rename"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    return-void

    .line 769
    :cond_28
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->rename(IIILjava/lang/String;)V

    .line 770
    return-void
.end method

.method public resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sensorId"    # I
    .param p3, "userId"    # I
    .param p4, "hardwareAuthToken"    # [B
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 864
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 867
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_2c

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for resetLockout, caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void

    .line 872
    :cond_2c
    invoke-interface {v0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleResetLockout(II[B)V

    .line 873
    return-void
.end method

.method public revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sensorId"    # I
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "challenge"    # J

    .line 278
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 281
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_2c

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching sensor for revokeChallenge, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 286
    :cond_2c
    move-object v1, v0

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 288
    return-void
.end method

.method public setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V
    .registers 4
    .param p1, "controller"    # Landroid/hardware/fingerprint/ISidefpsController;

    .line 1085
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1091
    return-void
.end method

.method public setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 4
    .param p1, "controller"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 1075
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1081
    return-void
.end method

.method public startPreparedClient(II)V
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "cookie"    # I

    .line 542
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    .line 545
    .local v0, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    if-nez v0, :cond_1b

    .line 546
    const-string v1, "FingerprintService"

    const-string v2, "Null provider for startPreparedClient"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-void

    .line 550
    :cond_1b
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->startPreparedClient(II)V

    .line 551
    return-void
.end method
