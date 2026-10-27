.class public Lcom/android/server/biometrics/AuthService;
.super Lcom/android/server/SystemService;
.source "AuthService.java"


# instance fields
.field public mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field final mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

.field public final mInjector:Lcom/android/server/biometrics/AuthService$Injector;


# direct methods
.method public static synthetic $r8$lambda$8WVvXqW3t71Xu3Pnd87JYdrqrbA([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Landroid/hardware/fingerprint/IFingerprintService;)V
    .registers 6

    .line 1006
    new-instance v0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;

    if-eqz p0, :cond_a

    array-length v1, p0

    if-gtz v1, :cond_8

    goto :goto_a

    :cond_8
    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v1, 0x1

    :goto_b
    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;-><init>(Z)V

    if-eqz p0, :cond_16

    .line 1010
    array-length v1, p0

    if-lez v1, :cond_16

    .line 1011
    invoke-virtual {v0, p0, p1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->addHidlSensors([Ljava/lang/String;Landroid/content/Context;)V

    :cond_16
    if-eqz p2, :cond_1e

    .line 1014
    array-length p0, p2

    if-lez p0, :cond_1e

    .line 1015
    invoke-virtual {v0, p2}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->addAidlSensors([Ljava/lang/String;)V

    .line 1018
    :cond_1e
    const-string p0, "AuthService"

    if-eqz p3, :cond_2d

    .line 1020
    :try_start_22
    invoke-interface {p3, v0}, Landroid/hardware/fingerprint/IFingerprintService;->registerAuthenticators(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    .line 1022
    const-string p2, "RemoteException when registering fingerprint authenticators"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 1024
    :cond_2d
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->hasSensorConfigurations()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 1025
    const-string p1, "Fingerprint configuration exists, but FingerprintService is null."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void
.end method

.method public static synthetic $r8$lambda$QH_Ki2CXRp4czGmln7B_Z5KU08U(Z[Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Landroid/hardware/face/IFaceService;)V
    .registers 6

    .line 969
    new-instance v0, Landroid/hardware/face/FaceSensorConfigurations;

    invoke-direct {v0, p0}, Landroid/hardware/face/FaceSensorConfigurations;-><init>(Z)V

    if-eqz p1, :cond_d

    .line 972
    array-length p0, p1

    if-lez p0, :cond_d

    .line 973
    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceSensorConfigurations;->addHidlConfigs([Ljava/lang/String;Landroid/content/Context;)V

    :cond_d
    if-eqz p3, :cond_15

    .line 976
    array-length p0, p3

    if-lez p0, :cond_15

    .line 977
    invoke-virtual {v0, p3}, Landroid/hardware/face/FaceSensorConfigurations;->addAidlConfigs([Ljava/lang/String;)V

    .line 980
    :cond_15
    const-string p0, "AuthService"

    if-eqz p4, :cond_24

    .line 982
    :try_start_19
    invoke-interface {p4, v0}, Landroid/hardware/face/IFaceService;->registerAuthenticators(Landroid/hardware/face/FaceSensorConfigurations;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    .line 984
    const-string p2, "RemoteException when registering face authenticators"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 986
    :cond_24
    invoke-virtual {v0}, Landroid/hardware/face/FaceSensorConfigurations;->hasSensorConfigurations()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 987
    const-string p1, "Face configuration exists, but FaceService is null."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckAppOps(Lcom/android/server/biometrics/AuthService;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthService;->checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckBiometricAdvancedPermission(Lcom/android/server/biometrics/AuthService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->checkBiometricAdvancedPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->checkInternalPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->checkPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetCredentialBackupModality(I)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->getCredentialBackupModality(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 817
    new-instance v0, Lcom/android/server/biometrics/AuthService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/AuthService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V
    .registers 3

    .line 821
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 823
    iput-object p2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 824
    new-instance p1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;Lcom/android/server/biometrics/AuthService-IA;)V

    iput-object p1, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/biometrics/AuthService;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/server/biometrics/AuthService;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getCredentialBackupModality(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    return p0

    :cond_4
    and-int/lit8 p0, p0, -0x2

    return p0
.end method

.method public static registerFaceSensors([Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Landroid/hardware/face/IFaceService;Lcom/android/server/biometrics/BiometricHandlerProvider;)V
    .registers 16

    .line 942
    const-string v1, "AuthService"

    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_18

    :cond_7
    if-eqz p0, :cond_c

    array-length v0, p0

    if-nez v0, :cond_18

    .line 944
    :cond_c
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/sense/SenseUtils;->canUseProvider()Z

    move-result v0

    if-nez v0, :cond_18

    .line 945
    const-string p0, "No face sensors."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    .line 951
    array-length v2, p1

    if-lez v2, :cond_4d

    .line 952
    array-length v2, p1

    move v3, v0

    move v4, v3

    :goto_21
    if-ge v3, v2, :cond_4b

    aget-object v5, p1, v3

    .line 954
    :try_start_25
    new-instance v0, Lcom/android/server/biometrics/SensorConfig;

    invoke-direct {v0, v5}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    .line 955
    iget v0, v0, Lcom/android/server/biometrics/SensorConfig;->modality:I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_33

    const/16 v5, 0x8

    if-eq v0, v5, :cond_31

    goto :goto_48

    :cond_31
    const/4 v4, 0x1

    goto :goto_48

    :catch_33
    move-exception v0

    .line 961
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing configString: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_4b
    move v6, v4

    goto :goto_4e

    :cond_4d
    move v6, v0

    .line 968
    :goto_4e
    invoke-virtual {p4}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFaceHandler()Landroid/os/Handler;

    move-result-object p4

    new-instance v5, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;

    move-object v9, p0

    move-object v7, p1

    move-object v8, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;-><init>(Z[Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Landroid/hardware/face/IFaceService;)V

    invoke-virtual {p4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static registerFingerprintSensors([Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;Lcom/android/server/biometrics/BiometricHandlerProvider;)V
    .registers 6

    if-eqz p1, :cond_5

    .line 999
    array-length v0, p1

    if-nez v0, :cond_b

    :cond_5
    if-eqz p0, :cond_18

    array-length v0, p0

    if-nez v0, :cond_b

    goto :goto_18

    .line 1005
    :cond_b
    invoke-virtual {p4}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object p4

    new-instance v0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;-><init>([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Landroid/hardware/fingerprint/IFingerprintService;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1001
    :cond_18
    :goto_18
    const-string p0, "AuthService"

    const-string p1, "No fingerprint sensors."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 1074
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/AuthService$Injector;->getAppOps(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v2, 0x4e

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final checkBiometricAdvancedPermission()V
    .registers 3

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.SET_BIOMETRIC_DIALOG_ADVANCED"

    const-string v1, "Must have SET_BIOMETRIC_DIALOG_ADVANCED permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkInternalPermission()V
    .registers 3

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v1, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkPermission()V
    .registers 3

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 1068
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.USE_BIOMETRIC"

    const-string v1, "Must have USE_BIOMETRIC permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public final generateRSdkCompatibleConfiguration()[Ljava/lang/String;
    .registers 9

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1d

    .line 1039
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    :cond_1d
    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/16 p0, 0x8

    .line 1042
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    const/16 p0, 0xfff

    .line 1044
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 1045
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    .line 1046
    :goto_3c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_61

    .line 1047
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1048
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x3

    .line 1049
    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v5, v7, v3

    const/4 v5, 0x1

    aput-object v6, v7, v5

    aput-object p0, v7, v2

    const-string v5, ":"

    invoke-static {v5, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 1051
    :cond_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Generated config_biometric_sensors: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AuthService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getHidlIrisSensorProps(II)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .registers 10

    .line 1146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    new-instance v0, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 1150
    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    move v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(IIILjava/util/List;ZZ)V

    return-object v0
.end method

.method public onStart()V
    .registers 6

    .line 851
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 854
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->isHidlDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 855
    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 856
    const-string/jumbo v2, "ro.board.api_level"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 857
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 858
    array-length v3, v2

    if-nez v3, :cond_3f

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_3f

    .line 862
    const-string v0, "AuthService"

    const-string v2, "Found R vendor partition without config_biometric_sensors"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->generateRSdkCompatibleConfiguration()[Ljava/lang/String;

    move-result-object v2

    .line 865
    :cond_3f
    array-length v0, v2

    new-array v0, v0, [Lcom/android/server/biometrics/SensorConfig;

    .line 866
    :goto_42
    array-length v3, v2

    if-ge v1, v3, :cond_51

    .line 867
    new-instance v3, Lcom/android/server/biometrics/SensorConfig;

    aget-object v4, v2, v1

    invoke-direct {v3, v4}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 873
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->registerAuthenticators()V

    .line 874
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V

    return-void
.end method

.method public final registerAuthenticators()V
    .registers 6

    .line 878
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricHandlerProvider()Lcom/android/server/biometrics/BiometricHandlerProvider;

    move-result-object v0

    .line 880
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintAidlInstances()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 881
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 882
    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v4

    .line 880
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/server/biometrics/AuthService;->registerFingerprintSensors([Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;Lcom/android/server/biometrics/BiometricHandlerProvider;)V

    .line 883
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceAidlInstances()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 884
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 885
    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    move-result-object v4

    .line 883
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/server/biometrics/AuthService;->registerFaceSensors([Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Landroid/hardware/face/IFaceService;Lcom/android/server/biometrics/BiometricHandlerProvider;)V

    .line 886
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->getIrisConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthService;->registerIrisSensors([Ljava/lang/String;)V

    return-void
.end method

.method public final registerIrisSensors([Ljava/lang/String;)V
    .registers 9

    .line 891
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->isHidlDisabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AuthService"

    if-nez v0, :cond_40

    .line 892
    const-string/jumbo v0, "ro.board.first_api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 893
    const-string/jumbo v3, "ro.board.api_level"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 894
    array-length v3, p1

    if-nez v3, :cond_2d

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_2d

    .line 898
    const-string p1, "Found R vendor partition without config_biometric_sensors"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->generateRSdkCompatibleConfiguration()[Ljava/lang/String;

    move-result-object p1

    .line 901
    :cond_2d
    array-length v0, p1

    new-array v0, v0, [Lcom/android/server/biometrics/SensorConfig;

    move v3, v1

    .line 902
    :goto_31
    array-length v4, p1

    if-ge v3, v4, :cond_41

    .line 903
    new-instance v4, Lcom/android/server/biometrics/SensorConfig;

    aget-object v5, p1, v3

    invoke-direct {v4, v5}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_40
    const/4 v0, 0x0

    .line 909
    :cond_41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_77

    .line 912
    array-length v3, v0

    :goto_49
    if-ge v1, v3, :cond_77

    aget-object v4, v0, v1

    .line 913
    iget v5, v4, Lcom/android/server/biometrics/SensorConfig;->modality:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_69

    .line 919
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown modality: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/server/biometrics/SensorConfig;->modality:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 915
    :cond_69
    iget v5, v4, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v4, v4, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-virtual {p0, v5, v4}, Lcom/android/server/biometrics/AuthService;->getHidlIrisSensorProps(II)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 924
    :cond_77
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getIrisService()Landroid/hardware/iris/IIrisService;

    move-result-object p0

    if-eqz p0, :cond_8a

    .line 927
    :try_start_7f
    invoke-interface {p0, p1}, Landroid/hardware/iris/IIrisService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_82} :catch_83

    return-void

    :catch_83
    move-exception p0

    .line 929
    const-string p1, "RemoteException when registering iris authenticators"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 931
    :cond_8a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_95

    .line 932
    const-string p0, "HIDL iris configuration exists, but IrisService is null."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    return-void
.end method
