.class public Lcom/android/server/biometrics/AuthService;
.super Lcom/android/server/SystemService;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/AuthService$AuthServiceImpl;,
        Lcom/android/server/biometrics/AuthService$Injector;
    }
.end annotation


# static fields
.field private static final DEFAULT_HIDL_DISABLED:I = 0x0

.field private static final FINGERPRINT_FOD_PROPERTY:Ljava/lang/String; = "ro.hardware.fp.fod"

.field private static final FINGERPRINT_SIDECAP_PROPERTY:Ljava/lang/String; = "ro.hardware.fp.sideCap"

.field private static final FOD_LOCATION_PROPERTY:Ljava/lang/String; = "ro.hardware.fp.fod.location"

.field private static final FOD_LOCATION_WH_PROPERTY:Ljava/lang/String; = "persist.vendor.sys.fp.fod.size.width_height"

.field private static final FOD_LOCATION_XY_PROPERTY:Ljava/lang/String; = "persist.vendor.sys.fp.fod.location.X_Y"

.field private static final SETTING_HIDL_DISABLED:Ljava/lang/String; = "com.android.server.biometrics.AuthService.hidlDisabled"

.field private static final SYSPROP_API_LEVEL:Ljava/lang/String; = "ro.board.api_level"

.field private static final SYSPROP_FIRST_API_LEVEL:Ljava/lang/String; = "ro.board.first_api_level"

.field private static final TAG:Ljava/lang/String; = "AuthService"

.field private static final mFodLocationWh:Ljava/lang/String;

.field private static final mFodLocationXy:Ljava/lang/String;

.field private static final mFodSensorLocation:Ljava/lang/String;

.field private static final mIsFodFps:Z

.field private static final mIsFodSensorLocationLow:Z

.field private static final mIsPowerbuttonFps:Z


# instance fields
.field private mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field final mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

.field private final mInjector:Lcom/android/server/biometrics/AuthService$Injector;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckAppOps(Lcom/android/server/biometrics/AuthService;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthService;->checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthService;->checkInternalPermission()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthService;->checkPermission()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetCredentialBackupModality(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->getCredentialBackupModality(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 100
    const-string/jumbo v0, "ro.hardware.fp.sideCap"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/AuthService;->mIsPowerbuttonFps:Z

    .line 103
    const-string/jumbo v0, "ro.hardware.fp.fod"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/AuthService;->mIsFodFps:Z

    .line 106
    const-string/jumbo v0, "ro.hardware.fp.fod.location"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/AuthService;->mFodSensorLocation:Ljava/lang/String;

    .line 107
    const-string/jumbo v2, "low"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/AuthService;->mIsFodSensorLocationLow:Z

    .line 110
    const-string/jumbo v0, "persist.vendor.sys.fp.fod.location.X_Y"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/AuthService;->mFodLocationXy:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "persist.vendor.sys.fp.fod.size.width_height"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/AuthService;->mFodLocationWh:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 613
    new-instance v0, Lcom/android/server/biometrics/AuthService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/AuthService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V

    .line 614
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/biometrics/AuthService$Injector;

    .line 617
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 619
    iput-object p2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 620
    new-instance v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;Lcom/android/server/biometrics/AuthService$AuthServiceImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    .line 621
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/AuthService;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/AuthService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "uid"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 786
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->getAppOps(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x4e

    const/4 v6, 0x0

    move v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private checkInternalPermission()V
    .registers 4

    .line 773
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method private checkPermission()V
    .registers 4

    .line 778
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 780
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    const-string v2, "Must have USE_BIOMETRIC permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_17
    return-void
.end method

.method private generateRSdkCompatibleConfiguration()[Ljava/lang/String;
    .registers 11

    .line 681
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 682
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v1, "modalities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "android.hardware.fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1d

    .line 684
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_1d
    const-string v2, "android.hardware.biometrics.face"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 687
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_2e
    const/16 v2, 0xfff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, "strength":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 691
    .local v4, "configStrings":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_61

    .line 692
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 693
    .local v6, "id":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 694
    .local v7, "modality":Ljava/lang/String;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v7, v8, v9

    aput-object v2, v8, v3

    const-string v9, ":"

    invoke-static {v9, v8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 691
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "modality":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 696
    .end local v5    # "i":I
    :cond_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generated config_biometric_sensors: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AuthService"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-object v4
.end method

.method private static getCredentialBackupModality(I)I
    .registers 2
    .param p0, "modality"    # I

    .line 792
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 793
    move v0, p0

    goto :goto_7

    :cond_5
    and-int/lit8 v0, p0, -0x2

    .line 792
    :goto_7
    return v0
.end method

.method private getHidlFaceSensorProps(II)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 17
    .param p1, "sensorId"    # I
    .param p2, "strength"    # I

    .line 873
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 875
    .local v0, "supportsSelfIllumination":Z
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 877
    .local v1, "maxTemplatesAllowed":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v6, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    const/4 v11, 0x0

    .line 879
    .local v11, "supportsFaceDetect":Z
    const/4 v12, 0x1

    .line 880
    .local v12, "resetLockoutRequiresChallenge":Z
    new-instance v13, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 881
    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v2, v13

    move v3, p1

    move v5, v1

    move v9, v0

    invoke-direct/range {v2 .. v10}, Landroid/hardware/face/FaceSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZZ)V

    .line 880
    return-object v13
.end method

.method private getHidlFingerprintSensorProps(II)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 24
    .param p1, "sensorId"    # I
    .param p2, "strength"    # I

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "udfpsProps":[I
    const/4 v1, 0x0

    .line 820
    .local v1, "isUdfps":Z
    sget-boolean v2, Lcom/android/server/biometrics/AuthService;->mIsFodFps:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5d

    .line 821
    new-array v0, v3, [I

    .line 822
    sget-object v2, Lcom/android/server/biometrics/AuthService;->mFodLocationXy:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5c

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 823
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v6

    .line 824
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v5

    .line 826
    sget-object v2, Lcom/android/server/biometrics/AuthService;->mFodLocationWh:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5c

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 827
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 828
    .local v8, "width":I
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 830
    .local v2, "height":I
    if-ne v8, v2, :cond_5c

    .line 831
    div-int/lit8 v7, v8, 0x2

    aput v7, v0, v4

    .line 835
    .end local v2    # "height":I
    .end local v8    # "width":I
    :cond_5c
    const/4 v1, 0x1

    .line 840
    :cond_5d
    if-eqz v1, :cond_61

    .line 841
    const/4 v2, 0x3

    .local v2, "sensorType":I
    goto :goto_68

    .line 843
    .end local v2    # "sensorType":I
    :cond_61
    sget-boolean v2, Lcom/android/server/biometrics/AuthService;->mIsPowerbuttonFps:Z

    if-eqz v2, :cond_67

    .line 844
    const/4 v2, 0x4

    .restart local v2    # "sensorType":I
    goto :goto_68

    .line 846
    .end local v2    # "sensorType":I
    :cond_67
    const/4 v2, 0x1

    .line 851
    .restart local v2    # "sensorType":I
    :goto_68
    const/16 v19, 0x0

    .line 852
    .local v19, "resetLockoutRequiresHardwareAuthToken":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0078

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    .line 855
    .local v20, "maxEnrollmentsPerUser":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 857
    .local v11, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    sget-boolean v7, Lcom/android/server/biometrics/AuthService;->mIsFodSensorLocationLow:Z

    if-nez v7, :cond_aa

    if-eqz v1, :cond_aa

    array-length v7, v0

    if-ne v7, v3, :cond_aa

    .line 858
    new-instance v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 859
    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v9

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v7, Landroid/hardware/biometrics/SensorLocationInternal;

    aget v6, v0, v6

    aget v5, v0, v5

    aget v4, v0, v4

    const-string v8, ""

    invoke-direct {v7, v8, v6, v5, v4}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V

    .line 862
    invoke-static {v7}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object v7, v3

    move/from16 v8, p1

    move/from16 v10, v20

    move v12, v2

    invoke-direct/range {v7 .. v15}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZLjava/util/List;)V

    .line 858
    return-object v3

    .line 865
    :cond_aa
    new-instance v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 866
    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v14

    const/16 v18, 0x0

    move-object v12, v3

    move/from16 v13, p1

    move/from16 v15, v20

    move-object/from16 v16, v11

    move/from16 v17, v2

    invoke-direct/range {v12 .. v18}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZ)V

    .line 865
    return-object v3
.end method

.method private getHidlIrisSensorProps(II)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .registers 14
    .param p1, "sensorId"    # I
    .param p2, "strength"    # I

    .line 888
    const/4 v0, 0x1

    .line 889
    .local v0, "maxEnrollmentsPerUser":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v5, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    const/4 v8, 0x0

    .line 891
    .local v8, "resetLockoutRequiresHardwareAuthToken":Z
    const/4 v9, 0x0

    .line 892
    .local v9, "resetLockoutRequiresChallenge":Z
    new-instance v10, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 893
    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    move v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(IIILjava/util/List;ZZ)V

    .line 892
    return-object v10
.end method

.method private registerAuthenticators([Lcom/android/server/biometrics/SensorConfig;)V
    .registers 11
    .param p1, "hidlSensors"    # [Lcom/android/server/biometrics/SensorConfig;

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v0, "hidlFingerprintSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v1, "hidlFaceSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v2, "hidlIrisSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    const-string v3, "AuthService"

    if-eqz p1, :cond_8e

    .line 715
    array-length v4, p1

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_8e

    aget-object v6, p1, v5

    .line 716
    .local v6, "sensor":Lcom/android/server/biometrics/SensorConfig;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registering HIDL ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Modality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->modality:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Strength: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->modality:I

    sparse-switch v7, :sswitch_data_ea

    .line 733
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown modality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->modality:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 725
    :sswitch_67
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/biometrics/AuthService;->getHidlFaceSensorProps(II)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    goto :goto_8b

    .line 729
    :sswitch_73
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/biometrics/AuthService;->getHidlIrisSensorProps(II)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    goto :goto_8b

    .line 720
    :sswitch_7f
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    .line 721
    invoke-direct {p0, v7, v8}, Lcom/android/server/biometrics/AuthService;->getHidlFingerprintSensorProps(II)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v7

    .line 720
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    nop

    .line 715
    .end local v6    # "sensor":Lcom/android/server/biometrics/SensorConfig;
    :goto_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 738
    :cond_8e
    iget-object v4, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v4

    .line 739
    .local v4, "fingerprintService":Landroid/hardware/fingerprint/IFingerprintService;
    if-eqz v4, :cond_a1

    .line 741
    :try_start_96
    invoke-interface {v4, v0}, Landroid/hardware/fingerprint/IFingerprintService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 744
    :goto_99
    goto :goto_ac

    .line 742
    :catch_9a
    move-exception v5

    .line 743
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "RemoteException when registering fingerprint authenticators"

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Landroid/os/RemoteException;
    goto :goto_99

    .line 745
    :cond_a1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_ac

    .line 746
    const-string v5, "HIDL fingerprint configuration exists, but FingerprintService is null."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_ac
    :goto_ac
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    move-result-object v5

    .line 750
    .local v5, "faceService":Landroid/hardware/face/IFaceService;
    if-eqz v5, :cond_bf

    .line 752
    :try_start_b4
    invoke-interface {v5, v1}, Landroid/hardware/face/IFaceService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_b7} :catch_b8

    .line 755
    :goto_b7
    goto :goto_ca

    .line 753
    :catch_b8
    move-exception v6

    .line 754
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "RemoteException when registering face authenticators"

    invoke-static {v3, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "e":Landroid/os/RemoteException;
    goto :goto_b7

    .line 756
    :cond_bf
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_ca

    .line 757
    const-string v6, "HIDL face configuration exists, but FaceService is null."

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_ca
    :goto_ca
    iget-object v6, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v6}, Lcom/android/server/biometrics/AuthService$Injector;->getIrisService()Landroid/hardware/iris/IIrisService;

    move-result-object v6

    .line 761
    .local v6, "irisService":Landroid/hardware/iris/IIrisService;
    if-eqz v6, :cond_dd

    .line 763
    :try_start_d2
    invoke-interface {v6, v2}, Landroid/hardware/iris/IIrisService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_d5
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_d5} :catch_d6

    .line 766
    :goto_d5
    goto :goto_e8

    .line 764
    :catch_d6
    move-exception v7

    .line 765
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "RemoteException when registering iris authenticators"

    invoke-static {v3, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "e":Landroid/os/RemoteException;
    goto :goto_d5

    .line 767
    :cond_dd
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e8

    .line 768
    const-string v7, "HIDL iris configuration exists, but IrisService is null."

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_e8
    :goto_e8
    return-void

    nop

    :sswitch_data_ea
    .sparse-switch
        0x2 -> :sswitch_7f
        0x4 -> :sswitch_73
        0x8 -> :sswitch_67
    .end sparse-switch
.end method


# virtual methods
.method public onStart()V
    .registers 8

    .line 647
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 650
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->isHidlDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 651
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.board.first_api_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 652
    .local v0, "firstApiLevel":I
    const-string/jumbo v1, "ro.board.api_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 653
    .local v1, "apiLevel":I
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, "configStrings":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_3f

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_3f

    .line 658
    const-string v3, "AuthService"

    const-string v4, "Found R vendor partition without config_biometric_sensors"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthService;->generateRSdkCompatibleConfiguration()[Ljava/lang/String;

    move-result-object v2

    .line 661
    :cond_3f
    array-length v3, v2

    new-array v3, v3, [Lcom/android/server/biometrics/SensorConfig;

    .line 662
    .local v3, "hidlConfigs":[Lcom/android/server/biometrics/SensorConfig;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_43
    array-length v5, v2

    if-ge v4, v5, :cond_52

    .line 663
    new-instance v5, Lcom/android/server/biometrics/SensorConfig;

    aget-object v6, v2, v4

    invoke-direct {v5, v6}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 662
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 665
    .end local v0    # "firstApiLevel":I
    .end local v1    # "apiLevel":I
    .end local v2    # "configStrings":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_52
    goto :goto_54

    .line 666
    .end local v3    # "hidlConfigs":[Lcom/android/server/biometrics/SensorConfig;
    :cond_53
    const/4 v3, 0x0

    .line 670
    .restart local v3    # "hidlConfigs":[Lcom/android/server/biometrics/SensorConfig;
    :goto_54
    invoke-direct {p0, v3}, Lcom/android/server/biometrics/AuthService;->registerAuthenticators([Lcom/android/server/biometrics/SensorConfig;)V

    .line 672
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V

    .line 673
    return-void
.end method
