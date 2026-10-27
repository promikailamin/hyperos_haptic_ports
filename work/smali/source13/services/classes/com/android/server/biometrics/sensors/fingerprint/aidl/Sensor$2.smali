.class Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;
.super Ljava/lang/Object;
.source "Sensor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

.field final synthetic val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field final synthetic val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field final synthetic val$provider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 456
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->val$provider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;
    .registers 25
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/biometrics/sensors/StartUserClient<",
            "**>;"
        }
    .end annotation

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v1

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 471
    .local v1, "sensorId":I
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/os/Handler;

    move-result-object v4

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    move-result-object v6

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmLockoutCache(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;)V

    move-object v2, v12

    move v7, v1

    move/from16 v8, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;)V

    .line 478
    .local v2, "resultController":Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->val$provider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;ILcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    move-object/from16 v22, v4

    .line 497
    .local v22, "userStartedCallback":Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;, "Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback<Landroid/hardware/biometrics/fingerprint/ISession;>;"
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;

    move-result-object v14

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->val$provider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$$ExternalSyntheticLambda3;

    invoke-direct {v15, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmToken(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/os/IBinder;

    move-result-object v16

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v4

    iget v4, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;

    move-result-object v5

    .line 499
    invoke-static {v5}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v19

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v13, v3

    move/from16 v17, p1

    move/from16 v18, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v2

    invoke-direct/range {v13 .. v22}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/biometrics/fingerprint/ISessionCallback;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V

    .line 497
    return-object v3
.end method

.method public getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/biometrics/sensors/StopUserClient<",
            "*>;"
        }
    .end annotation

    .line 460
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStopUserClient;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmLazySession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/util/function/Supplier;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmToken(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    iget v5, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;

    move-result-object v0

    .line 462
    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;)V

    move-object v0, v9

    move v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStopUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V

    .line 460
    return-object v9
.end method

.method synthetic lambda$getStartUserClient$1$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$2()V
    .registers 3

    .line 474
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got ERROR_HW_UNAVAILABLE"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fputmCurrentSession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    .line 476
    return-void
.end method

.method synthetic lambda$getStartUserClient$2$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$2(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;ILcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/hardware/biometrics/fingerprint/ISession;I)V
    .registers 10
    .param p1, "resultController"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;
    .param p2, "sensorId"    # I
    .param p3, "provider"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
    .param p4, "userIdStarted"    # I
    .param p5, "newSession"    # Landroid/hardware/biometrics/fingerprint/ISession;
    .param p6, "halInterfaceVersion"    # I

    .line 480
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New session created for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with hal version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-direct {v1, p6, p5, p4, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;-><init>(ILandroid/hardware/biometrics/fingerprint/ISession;ILcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fputmCurrentSession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    .line 485
    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;

    move-result-object v1

    .line 486
    invoke-virtual {v0, v1, p4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->isInvalidationInProgress(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 487
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling unfinished invalidation request for sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {p3, p2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInvalidationRequest(II)V

    .line 495
    :cond_69
    return-void
.end method

.method synthetic lambda$getStopUserClient$0$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$2()V
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fputmCurrentSession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    return-void
.end method
