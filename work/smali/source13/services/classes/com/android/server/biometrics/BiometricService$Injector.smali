.class public Lcom/android/server/biometrics/BiometricService$Injector;
.super Ljava/lang/Object;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getRequestGenerator$0(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/Long;
    .registers 3
    .param p0, "generator"    # Ljava/util/concurrent/atomic/AtomicLong;

    .line 966
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityManagerService()Landroid/app/IActivityManager;
    .registers 2

    .line 884
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public getBiometricStrengthController(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricStrengthController;
    .registers 3
    .param p1, "service"    # Lcom/android/server/biometrics/BiometricService;

    .line 927
    new-instance v0, Lcom/android/server/biometrics/BiometricStrengthController;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/BiometricStrengthController;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    return-object v0
.end method

.method public getConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 936
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 940
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getFingerprintSensorProperties(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 945
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 946
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 947
    .local v0, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_1b

    .line 948
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 951
    .end local v0    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getKeyStore()Landroid/security/KeyStore;
    .registers 2

    .line 905
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public getRequestGenerator()Ljava/util/function/Supplier;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 965
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 966
    .local v0, "generator":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v1
.end method

.method public getSettingObserver(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;",
            ">;)",
            "Lcom/android/server/biometrics/BiometricService$SettingObserver;"
        }
    .end annotation

    .line 901
    .local p3, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;>;"
    new-instance v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)V

    return-object v0
.end method

.method public getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2

    .line 892
    nop

    .line 893
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 892
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method public getTrustManager()Landroid/app/trust/ITrustManager;
    .registers 2

    .line 888
    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    return-object v0
.end method

.method public isAdvancedCoexLogicEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 955
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.server.biometrics.sensors.CoexCoordinator.enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public isCoexFaceNonBypassHapticsDisabled(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 960
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.server.biometrics.sensors.CoexCoordinator.disable_face_haptics"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public isDebugEnabled(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 912
    invoke-static {p1, p2}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public publishBinderService(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricService$Stub;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/biometrics/BiometricService;
    .param p2, "impl"    # Landroid/hardware/biometrics/IBiometricService$Stub;

    .line 919
    const-string v0, "biometric"

    # invokes: Lcom/android/server/biometrics/BiometricService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    invoke-static {p1, v0, p2}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 920
    return-void
.end method
