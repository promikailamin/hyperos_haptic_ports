.class public Lcom/android/server/BinaryTransparencyService;
.super Lcom/android/server/SystemService;
.source "BinaryTransparencyService.java"


# static fields
.field static final BINARY_HASH_ERROR:Ljava/lang/String; = "SHA256HashError"

.field static final KEY_ENABLE_BIOMETRIC_PROPERTY_VERIFICATION:Ljava/lang/String; = "enable_biometric_property_verification"

.field static final SYSPROP_NAME_VBETA_DIGEST:Ljava/lang/String; = "ro.boot.vbmeta.digest"

.field static final VBMETA_DIGEST_UNAVAILABLE:Ljava/lang/String; = "vbmeta-digest-unavailable"

.field static final VBMETA_DIGEST_UNINITIALIZED:Ljava/lang/String; = "vbmeta-digest-uninitialized"

.field public static final digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

.field public final mContext:Landroid/content/Context;

.field public mMeasurementsLastRecordedMs:J

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

.field public mVbmetaDigest:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$e2eFFQ4jadgx-pDFIBv7RiSb2IE(Lcom/android/server/BinaryTransparencyService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->lambda$collectBootIntegrityInfo$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$flMmp8UseBbIcDrF5oc9FDN2ITM(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    .line 1793
    iget-boolean p0, p0, Landroid/content/pm/PackageInfo;->isApex:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMeasurementsLastRecordedMs(Lcom/android/server/BinaryTransparencyService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/BinaryTransparencyService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceImpl(Lcom/android/server/BinaryTransparencyService;)Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVbmetaDigest(Lcom/android/server/BinaryTransparencyService;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmMeasurementsLastRecordedMs(Lcom/android/server/BinaryTransparencyService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapexPackageNameToModuleName(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->apexPackageNameToModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentInstalledApexs(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->getCurrentInstalledApexs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetInstallSourceInfo(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNewlyInstalledMbas(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->getNewlyInstalledMbas()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOriginalApexPreinstalledLocation(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->getOriginalApexPreinstalledLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misPackageAnApex(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->isPackageAnApex(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogBiometricProperties(Lcom/android/server/BinaryTransparencyService;Landroid/hardware/biometrics/SensorProperties;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/BinaryTransparencyService;->logBiometricProperties(Landroid/hardware/biometrics/SensorProperties;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtoFaceSensorType(Lcom/android/server/BinaryTransparencyService;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->toFaceSensorType(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mtoFingerprintSensorType(Lcom/android/server/BinaryTransparencyService;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->toFingerprintSensorType(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mtranslateContentDigestAlgorithmIdToString(Lcom/android/server/BinaryTransparencyService;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->translateContentDigestAlgorithmIdToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetdigestAllPackagesLatency()Lcom/android/modules/expresslog/Histogram;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/BinaryTransparencyService;->digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 154
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/4 v2, 0x0

    const/high16 v3, 0x43fa0000    # 500.0f

    const/16 v4, 0x32

    invoke-direct {v1, v4, v2, v3}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string v2, "binary_transparency.value_digest_all_packages_latency_uniform"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/BinaryTransparencyService;->digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1175
    invoke-static {}, Lcom/android/server/BinaryTransparencyService$BiometricLogger;->getInstance()Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/BinaryTransparencyService;-><init>(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService$BiometricLogger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService$BiometricLogger;)V
    .registers 5

    .line 1180
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1181
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 1182
    new-instance p1, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-direct {p1, p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 1183
    const-string/jumbo p1, "vbmeta-digest-uninitialized"

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 1184
    iput-wide v0, p0, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    .line 1185
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1186
    iput-object p2, p0, Lcom/android/server/BinaryTransparencyService;->mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    return-void
.end method


# virtual methods
.method public final apexPackageNameToModuleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1833
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public collectBiometricProperties()V
    .registers 5

    .line 1510
    const-string v0, "enable_biometric_property_verification"

    const/4 v1, 0x1

    const-string v2, "biometrics"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_52

    .line 1519
    :cond_c
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1522
    const-string v2, "android.hardware.fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1523
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_29

    :cond_28
    move-object v2, v1

    :goto_29
    if-eqz v0, :cond_3e

    .line 1525
    const-string v3, "android.hardware.biometrics.face"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1526
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/face/FaceManager;

    :cond_3e
    if-eqz v2, :cond_48

    .line 1532
    new-instance v0, Lcom/android/server/BinaryTransparencyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/BinaryTransparencyService$1;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-virtual {v2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    :cond_48
    if-eqz v1, :cond_52

    .line 1556
    new-instance v0, Lcom/android/server/BinaryTransparencyService$2;

    invoke-direct {v0, p0}, Lcom/android/server/BinaryTransparencyService$2;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-virtual {v1, v0}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public final collectBootIntegrityInfo()V
    .registers 3

    .line 1579
    const-string/jumbo v0, "ro.boot.vbmeta.digest"

    const-string/jumbo v1, "vbmeta-digest-unavailable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    .line 1580
    const-string v1, "VBMeta Digest: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransparencyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1a4

    .line 1581
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 1583
    invoke-static {}, Lcom/android/server/IoThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getCurrentInstalledApexs()Ljava/util/List;
    .registers 5

    .line 1779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1780
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1781
    const-string v1, "TransparencyService"

    if-nez p0, :cond_15

    .line 1782
    const-string p0, "Error obtaining an instance of PackageManager."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_15
    const-wide/32 v2, 0x48000000

    .line 1786
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 1785
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_28

    .line 1789
    const-string p0, "Error obtaining installed packages (including APEX)"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1793
    :cond_28
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .registers 3

    .line 1799
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_11

    .line 1801
    const-string p0, "TransparencyService"

    const-string p1, "Error obtaining an instance of PackageManager."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1805
    :cond_11
    :try_start_11
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 1807
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v0
.end method

.method public final getNewlyInstalledMbas()Ljava/util/List;
    .registers 6

    .line 1851
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1852
    const-string v0, "background_install_control"

    .line 1853
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1852
    invoke-static {v0}, Landroid/content/pm/IBackgroundInstallControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IBackgroundInstallControlService;

    move-result-object v0

    .line 1854
    const-string v1, "TransparencyService"

    if-nez v0, :cond_19

    .line 1855
    const-string v0, "Failed to obtain an IBinder instance of IBackgroundInstallControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_19
    const-wide/32 v2, 0x8020000

    const/4 v4, 0x0

    .line 1861
    :try_start_1d
    invoke-interface {v0, v2, v3, v4}, Landroid/content/pm/IBackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_21} :catch_26

    .line 1868
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_26
    move-exception v0

    .line 1865
    const-string v2, "Failed to get a list of MBAs."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public final getOriginalApexPreinstalledLocation(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1815
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->apexPackageNameToModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1816
    const-string p1, "apexservice"

    .line 1817
    invoke-static {p1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    .line 1816
    invoke-static {p1}, Landroid/apex/IApexService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;

    move-result-object p1

    .line 1818
    invoke-interface {p1}, Landroid/apex/IApexService;->getAllPackages()[Landroid/apex/ApexInfo;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_32

    aget-object v2, p1, v1

    .line 1819
    iget-object v3, v2, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1820
    iget-object p0, v2, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_2a

    return-object p0

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :catch_2a
    move-exception p0

    .line 1824
    const-string p1, "TransparencyService"

    const-string v0, "Unable to get package list from apexservice"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1826
    :cond_32
    const-string p0, "could-not-be-determined"

    return-object p0
.end method

.method public final isPackageAnApex(Ljava/lang/String;)Z
    .registers 4

    .line 1702
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/32 v0, 0x40000000

    .line 1705
    :try_start_9
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    .line 1704
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1706
    iget-boolean p0, p0, Landroid/content/pm/PackageInfo;->isApex:Z
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_13} :catch_14

    return p0

    :catch_14
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$collectBootIntegrityInfo$0()V
    .registers 4

    .line 1584
    const-string v0, "/sys/fs/selinux/policy"

    .line 1585
    invoke-static {}, Landroid/util/PackageUtils;->createLargeFileBuffer()[B

    move-result-object v1

    .line 1584
    invoke-static {v0, v1}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFileAsBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    .line 1588
    invoke-static {v0, v1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    .line 1589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sepolicy hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransparencyService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    const/16 v1, 0x307

    .line 1591
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final logBiometricProperties(Landroid/hardware/biometrics/SensorProperties;II)V
    .registers 14

    .line 1486
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getSensorId()I

    move-result v1

    .line 1487
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/BinaryTransparencyService;->toSensorStrength(I)I

    move-result v4

    .line 1492
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getComponentInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;

    move-object v2, v0

    .line 1493
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    .line 1498
    invoke-virtual {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getComponentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1499
    invoke-virtual {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1500
    invoke-virtual {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1501
    invoke-virtual {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1502
    invoke-virtual {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move v2, p2

    move v3, p3

    .line 1493
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/BinaryTransparencyService$BiometricLogger;->logStats(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_51
    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_23

    .line 1302
    const-string p1, "Boot completed. Getting boot integrity data."

    const-string v0, "TransparencyService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->collectBootIntegrityInfo()V

    .line 1311
    const-string p1, "Boot completed. Collecting biometric system properties."

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->collectBiometricProperties()V

    .line 1317
    const-string p1, "Scheduling measurements to be taken."

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->scheduleBinaryMeasurements(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService;)V

    .line 1321
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->registerAllPackageUpdateObservers()V

    :cond_23
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 1284
    const-string v0, "TransparencyService"

    :try_start_2
    const-string/jumbo v1, "transparency"

    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1285
    const-string p0, "Started BinaryTransparencyService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception p0

    .line 1287
    const-string v1, "Failed to start BinaryTransparencyService."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final registerAllPackageUpdateObservers()V
    .registers 3

    .line 1754
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->registerApkAndNonStagedApexUpdateListener()V

    .line 1755
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->registerStagedApexUpdateObserver()V

    const-wide/32 v0, 0xea4f847

    .line 1757
    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1758
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->registerBicCallback()V

    :cond_12
    return-void
.end method

.method public final registerApkAndNonStagedApexUpdateListener()V
    .registers 5

    .line 1614
    const-string v0, "TransparencyService"

    const-string v1, "Registering APK & Non-Staged APEX updates..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1616
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1617
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;-><init>(Lcom/android/server/BinaryTransparencyService;Lcom/android/server/BinaryTransparencyService-IA;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerBicCallback()V
    .registers 5

    .line 1653
    const-string/jumbo v0, "ro.system_settings.service.backgound_install_control_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "TransparencyService"

    if-nez v0, :cond_12

    .line 1655
    const-string p0, "BICS is disabled for this device, skipping registration."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1658
    :cond_12
    const-string v0, "background_install_control"

    .line 1660
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1659
    invoke-static {v0}, Landroid/content/pm/IBackgroundInstallControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IBackgroundInstallControlService;

    move-result-object v0

    if-nez v0, :cond_24

    .line 1663
    const-string p0, "Failed to register BackgroundInstallControl callback, either background install control service does not exist or disabled on this build."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1669
    :cond_24
    :try_start_24
    new-instance v2, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;

    new-instance v3, Lcom/android/server/BinaryTransparencyService$4;

    invoke-direct {v3, p0}, Lcom/android/server/BinaryTransparencyService$4;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-direct {v2, v3}, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;-><init>(Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;)V

    invoke-interface {v0, v2}, Landroid/content/pm/IBackgroundInstallControlService;->registerBackgroundInstallCallback(Landroid/os/IRemoteCallback;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_31} :catch_32

    return-void

    .line 1686
    :catch_32
    const-string p0, "Failed to register BackgroundInstallControl callback."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerStagedApexUpdateObserver()V
    .registers 4

    .line 1628
    const-string v0, "Registering APEX updates..."

    const-string v1, "TransparencyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const-string/jumbo v0, "package_native"

    .line 1630
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1629
    invoke-static {v0}, Landroid/content/pm/IPackageManagerNative$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManagerNative;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1632
    const-string p0, "IPackageManagerNative is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1637
    :cond_1a
    :try_start_1a
    new-instance v2, Lcom/android/server/BinaryTransparencyService$3;

    invoke-direct {v2, p0}, Lcom/android/server/BinaryTransparencyService$3;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManagerNative;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_22} :catch_23

    return-void

    .line 1648
    :catch_23
    const-string p0, "Failed to register a StagedApexObserver."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final toFaceSensorType(I)I
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_a

    const/4 p0, 0x2

    if-eq p1, p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x7

    return p0

    :cond_a
    const/4 p0, 0x6

    return p0
.end method

.method public final toFingerprintSensorType(I)I
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_10

    const/4 p0, 0x2

    if-eq p1, p0, :cond_10

    const/4 p0, 0x3

    if-eq p1, p0, :cond_10

    const/4 p0, 0x4

    if-eq p1, p0, :cond_10

    const/4 p0, 0x5

    if-eq p1, p0, :cond_10

    const/4 p0, 0x0

    :cond_10
    return p0
.end method

.method public final toSensorStrength(I)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_d

    const/4 v0, 0x2

    if-eq p1, p0, :cond_c

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_c
    return v0

    :cond_d
    return p0
.end method

.method public final translateContentDigestAlgorithmIdToString(I)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_29

    const/4 p0, 0x3

    if-eq p1, p0, :cond_26

    const/4 p0, 0x4

    if-eq p1, p0, :cond_23

    .line 1773
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN_ALGO_ID("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1771
    :cond_23
    const-string p0, "SHA256"

    return-object p0

    .line 1769
    :cond_26
    const-string p0, "VERITY_CHUNKED_SHA256"

    return-object p0

    .line 1767
    :cond_29
    const-string p0, "CHUNKED_SHA512"

    return-object p0

    .line 1765
    :cond_2c
    const-string p0, "CHUNKED_SHA256"

    return-object p0
.end method
