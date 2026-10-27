.class Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3;
.super Ljava/lang/Object;
.source "Fingerprint21.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    .line 478
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onChange$0$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21$3()V
    .registers 6

    .line 486
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getIdentifier()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 487
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getToken()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 489
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 490
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_40

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticated for non-authentication consumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 492
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    const-string v2, "Fingerprint21"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void

    .line 496
    :cond_40
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 498
    .local v1, "authenticationConsumer":Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getIdentifier()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    .line 499
    .local v2, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    if-eqz v3, :cond_53

    const/4 v3, 0x1

    goto :goto_54

    :cond_53
    const/4 v3, 0x0

    .line 501
    .local v3, "authenticated":Z
    :goto_54
    nop

    .line 502
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getToken()Ljava/util/ArrayList;

    move-result-object v4

    .line 501
    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 504
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->clearSavedAuthenResult()V

    .line 506
    .end local v0    # "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .end local v1    # "authenticationConsumer":Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
    .end local v2    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "authenticated":Z
    :cond_67
    return-void
.end method

.method public onChange(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 481
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getDealOnChange()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 482
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getFingerprintUnlockType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5a

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange enter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getIsPowerKeyDown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint21"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getIsPowerKeyDown()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 485
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 508
    :cond_52
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->setDealOnChange(Z)V

    .line 510
    :cond_5a
    return-void
.end method
