.class public Lcom/android/server/biometrics/BiometricService$Injector;
.super Ljava/lang/Object;
.source "BiometricService.java"


# direct methods
.method public static synthetic $r8$lambda$hj2FW_KKwVogCJ9AY5YUaMgILng(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/Long;
    .registers 3

    .line 1494
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 1413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityManagerService()Landroid/app/IActivityManager;
    .registers 1

    .line 1416
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getAuthenticationPolicyManager(Landroid/content/Context;)Landroid/security/authenticationpolicy/AuthenticationPolicyManager;
    .registers 2

    .line 1515
    const-class p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    return-object p0
.end method

.method public getBiometricCameraManager(Landroid/content/Context;)Lcom/android/server/biometrics/BiometricCameraManager;
    .registers 4

    .line 1506
    new-instance p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    const-class v1, Landroid/hardware/SensorPrivacyManager;

    .line 1507
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorPrivacyManager;

    invoke-direct {p0, v0, p1}, Lcom/android/server/biometrics/BiometricCameraManagerImpl;-><init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/SensorPrivacyManager;)V

    return-object p0
.end method

.method public getBiometricContext(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;
    .registers 2

    .line 1498
    invoke-static {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p0

    return-object p0
.end method

.method public getBiometricStrengthController(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricStrengthController;
    .registers 2

    .line 1465
    new-instance p0, Lcom/android/server/biometrics/BiometricStrengthController;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricStrengthController;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    return-object p0
.end method

.method public getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .registers 2

    .line 1478
    const-class p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public getFingerprintSensorProperties(Landroid/content/Context;)Ljava/util/List;
    .registers 3

    .line 1483
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 1484
    const-class p0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_1b

    .line 1486
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1489
    :cond_1b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 1

    .line 1424
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p0

    return-object p0
.end method

.method public getKeyStoreAuthorization()Landroid/security/KeyStoreAuthorization;
    .registers 1

    .line 1420
    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationLogger()Lcom/android/server/biometrics/BiometricNotificationLogger;
    .registers 1

    .line 1511
    new-instance p0, Lcom/android/server/biometrics/BiometricNotificationLogger;

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricNotificationLogger;-><init>()V

    return-object p0
.end method

.method public getRequestGenerator()Ljava/util/function/Supplier;
    .registers 3

    .line 1493
    new-instance p0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1494
    new-instance v0, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v0
.end method

.method public getSettingObserver(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .registers 12

    .line 1441
    new-instance v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/UserManager;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1442
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/hardware/fingerprint/FingerprintManager;

    const-class v1, Landroid/hardware/face/FaceManager;

    .line 1443
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$Injector;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/BiometricService$SettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Landroid/os/UserManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/app/trust/ITrustManager;)V

    return-object v0
.end method

.method public getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 1

    .line 1432
    const-string/jumbo p0, "statusbar"

    .line 1433
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1432
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method public getTrustManager()Landroid/app/trust/ITrustManager;
    .registers 1

    .line 1428
    const-string/jumbo p0, "trust"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object p0

    return-object p0
.end method

.method public getUserManager(Landroid/content/Context;)Landroid/os/UserManager;
    .registers 2

    .line 1502
    const-class p0, Landroid/os/UserManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public isDebugEnabled(Landroid/content/Context;I)Z
    .registers 3

    .line 1450
    invoke-static {p1, p2}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public publishBinderService(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricService$Stub;)V
    .registers 3

    .line 1457
    const-string p0, "biometric"

    # invokes: Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    invoke-static {p1, p0, p2}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
