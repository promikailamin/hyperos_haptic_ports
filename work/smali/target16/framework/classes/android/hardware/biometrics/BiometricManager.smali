.class public Landroid/hardware/biometrics/BiometricManager;
.super Ljava/lang/Object;
.source "BiometricManager.java"


# annotations
.annotation runtime Landroid/annotation/RestrictedForEnvironment;
    environments = {
        "SDK Runtime"
    }
    from = 0x22
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricManager$Authenticators;,
        Landroid/hardware/biometrics/BiometricManager$Strings;,
        Landroid/hardware/biometrics/BiometricManager$IconType;,
        Landroid/hardware/biometrics/BiometricManager$BiometricModality;,
        Landroid/hardware/biometrics/BiometricManager$BiometricError;
    }
.end annotation


# static fields
.field public static final whitelist BIOMETRIC_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final whitelist BIOMETRIC_ERROR_IDENTITY_CHECK_NOT_ACTIVE:I = 0x14

.field public static final blacklist BIOMETRIC_ERROR_LOCKOUT:I = 0x7

.field public static final whitelist BIOMETRIC_ERROR_NONE_ENROLLED:I = 0xb

.field public static final whitelist BIOMETRIC_ERROR_NOT_ENABLED_FOR_APPS:I = 0x15

.field public static final whitelist BIOMETRIC_ERROR_NO_HARDWARE:I = 0xc

.field public static final whitelist BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final whitelist BIOMETRIC_NO_AUTHENTICATION:J = -0x1L

.field public static final whitelist BIOMETRIC_SUCCESS:I = 0x0

.field public static final blacklist EXTRA_ENROLL_REASON:Ljava/lang/String; = "enroll_reason"

.field private static final blacklist GET_LAST_AUTH_TIME_ALLOWED_AUTHENTICATORS:I = 0x800f

.field public static final whitelist ICON_TYPE_ACCOUNT:I = 0x2

.field public static final whitelist ICON_TYPE_GENERIC:I = 0x3

.field public static final whitelist ICON_TYPE_PASSWORD:I = 0x0

.field public static final whitelist ICON_TYPE_QR_CODE:I = 0x1

.field public static final whitelist ICON_TYPE_SETTING:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "BiometricManager"

.field public static final whitelist TYPE_FACE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_FINGERPRINT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/hardware/biometrics/IAuthService;


# direct methods
.method public static synthetic blacklist $r8$lambda$rNhzStGx9AjYXKh7DINpugLYd8g(Landroid/hardware/biometrics/BiometricManager;Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/biometrics/BiometricManager;->lambda$createTestSession$0(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;)V
    .registers 3

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    .line 497
    iput-object p2, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    .line 498
    return-void
.end method

.method public static blacklist authenticatorToStr(I)Ljava/lang/String;
    .registers 3

    .line 354
    sparse-switch p0, :sswitch_data_24

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown authenticator type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 362
    :sswitch_17
    const-string p0, "DEVICE_CREDENTIAL"

    return-object p0

    .line 360
    :sswitch_1a
    const-string p0, "BIOMETRIC_CONVENIENCE"

    return-object p0

    .line 358
    :sswitch_1d
    const-string p0, "BIOMETRIC_WEAK"

    return-object p0

    .line 356
    :sswitch_20
    const-string p0, "BIOMETRIC_STRONG"

    return-object p0

    nop

    :sswitch_data_24
    .sparse-switch
        0xf -> :sswitch_20
        0xff -> :sswitch_1d
        0xfff -> :sswitch_1a
        0x8000 -> :sswitch_17
    .end sparse-switch
.end method

.method private static blacklist convertBiometricEnrollmentStatusInternalToMap(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/BiometricEnrollmentStatusInternal;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/biometrics/BiometricEnrollmentStatus;",
            ">;"
        }
    .end annotation

    .line 967
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 969
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricEnrollmentStatusInternal;

    .line 970
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricEnrollmentStatusInternal;->getModality()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricEnrollmentStatusInternal;->getStatus()Landroid/hardware/biometrics/BiometricEnrollmentStatus;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    goto :goto_9

    .line 972
    :cond_25
    return-object v0
.end method

.method private synthetic blacklist lambda$createTestSession$0(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    .line 532
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p3, p1}, Landroid/hardware/biometrics/IAuthService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p1

    .line 531
    return-object p1
.end method


# virtual methods
.method public whitelist canAuthenticate()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(II)I

    move-result v0

    .line 591
    const/16 v1, 0x162

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZII)V

    .line 593
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    .line 595
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    .line 596
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 593
    const/16 v3, 0x164

    const/4 v4, 0x4

    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 598
    return v0
.end method

.method public whitelist canAuthenticate(I)I
    .registers 5

    .line 629
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(II)I

    move-result v0

    .line 631
    const/16 v1, 0x162

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZII)V

    .line 634
    return v0
.end method

.method public blacklist canAuthenticate(II)I
    .registers 5

    .line 643
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_17

    .line 645
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v1, v0, p1, p2}, Landroid/hardware/biometrics/IAuthService;->canAuthenticate(Ljava/lang/String;II)I

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return p1

    .line 647
    :catch_11
    move-exception p1

    .line 648
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 651
    :cond_17
    const-string p1, "BiometricManager"

    const-string p2, "canAuthenticate(): Service not connected"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist createTestSession(I)Landroid/hardware/biometrics/BiometricTestSession;
    .registers 6

    .line 530
    :try_start_0
    new-instance v0, Landroid/hardware/biometrics/BiometricTestSession;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricManager;->getSensorProperties()Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/hardware/biometrics/BiometricManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/hardware/biometrics/BiometricManager$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/BiometricManager;)V

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/hardware/biometrics/BiometricTestSession;-><init>(Landroid/content/Context;Ljava/util/List;ILandroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 533
    :catch_11
    move-exception p1

    .line 534
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getAuthenticatorIds()[J
    .registers 2

    .line 838
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds(I)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAuthenticatorIds(I)[J
    .registers 3

    .line 851
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_11

    .line 853
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->getAuthenticatorIds(I)[J

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object p1

    .line 854
    :catch_b
    move-exception p1

    .line 855
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 858
    :cond_11
    const-string p1, "BiometricManager"

    const-string v0, "getAuthenticatorIds(): Service not connected"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 p1, 0x0

    new-array p1, p1, [J

    return-object p1
.end method

.method public whitelist getEnrollmentStatus()Ljava/util/Map;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/biometrics/BiometricEnrollmentStatus;",
            ">;"
        }
    .end annotation

    .line 690
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    .line 691
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    .line 692
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 691
    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/IAuthService;->getEnrollmentStatusList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 693
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricManager;->convertBiometricEnrollmentStatusInternalToMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    .line 694
    :catch_17
    move-exception v0

    .line 695
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getLastAuthenticationTime(I)J
    .registers 4

    .line 947
    if-eqz p1, :cond_20

    const v0, 0x800f

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_20

    .line 953
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_1d

    .line 955
    :try_start_c
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/hardware/biometrics/IAuthService;->getLastAuthenticationTime(II)J

    move-result-wide v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    return-wide v0

    .line 956
    :catch_17
    move-exception p1

    .line 957
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 960
    :cond_1d
    const-wide/16 v0, -0x1

    return-wide v0

    .line 949
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only BIOMETRIC_STRONG and DEVICE_CREDENTIAL authenticators may be used."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getSensorProperties()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties;",
            ">;"
        }
    .end annotation

    .line 509
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    .line 510
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IAuthService;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 513
    invoke-static {v2}, Landroid/hardware/biometrics/SensorProperties;->from(Landroid/hardware/biometrics/SensorPropertiesInternal;)Landroid/hardware/biometrics/SensorProperties;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_2a

    .line 514
    goto :goto_15

    .line 515
    :cond_29
    return-object v1

    .line 516
    :catch_2a
    move-exception v0

    .line 517
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getStrings(I)Landroid/hardware/biometrics/BiometricManager$Strings;
    .registers 6

    .line 667
    new-instance v0, Landroid/hardware/biometrics/BiometricManager$Strings;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/hardware/biometrics/BiometricManager$Strings;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;ILandroid/hardware/biometrics/BiometricManager-IA;)V

    return-object v0
.end method

.method public blacklist getUiPackage()Ljava/lang/String;
    .registers 2

    .line 565
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0}, Landroid/hardware/biometrics/IAuthService;->getUiPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 566
    :catch_7
    move-exception v0

    .line 567
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist hasEnrolledBiometrics(I)Z
    .registers 5

    .line 706
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 708
    :try_start_5
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/hardware/biometrics/IAuthService;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return p1

    .line 709
    :catch_12
    move-exception p1

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception in hasEnrolledBiometrics(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return v1

    .line 714
    :cond_2c
    return v1
.end method

.method public blacklist invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 5

    .line 822
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_10

    .line 824
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/IAuthService;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 827
    goto :goto_10

    .line 825
    :catch_a
    move-exception p1

    .line 826
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 829
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .registers 3

    .line 744
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_10

    .line 746
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 749
    goto :goto_18

    .line 747
    :catch_a
    move-exception p1

    .line 748
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 751
    :cond_10
    const-string p1, "BiometricManager"

    const-string/jumbo v0, "registerAuthenticationStateListener(): Service not connected"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :goto_18
    return-void
.end method

.method public blacklist registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .registers 3

    .line 725
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_10

    .line 727
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 730
    goto :goto_18

    .line 728
    :catch_a
    move-exception p1

    .line 729
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 732
    :cond_10
    const-string p1, "BiometricManager"

    const-string/jumbo v0, "registerEnabledOnKeyguardCallback(): Service not connected"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_18
    return-void
.end method

.method public blacklist registerIdentityCheckStateListener(Landroid/hardware/biometrics/IIdentityCheckStateListener;)V
    .registers 3

    .line 780
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_10

    .line 782
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->registerIdentityCheckStateListener(Landroid/hardware/biometrics/IIdentityCheckStateListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 785
    goto :goto_18

    .line 783
    :catch_a
    move-exception p1

    .line 784
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 787
    :cond_10
    const-string p1, "BiometricManager"

    const-string/jumbo v0, "registerIdentityCheckStateListener(): Service not connected"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :goto_18
    return-void
.end method

.method public blacklist resetLockout(I[B)V
    .registers 4

    .line 902
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_10

    .line 904
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IAuthService;->resetLockout(I[B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 907
    goto :goto_10

    .line 905
    :catch_a
    move-exception p1

    .line 906
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 910
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    .registers 7

    .line 883
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_12

    .line 885
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/hardware/biometrics/IAuthService;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 889
    goto :goto_12

    .line 887
    :catch_b
    move-exception v0

    move-object p1, v0

    .line 888
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 891
    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist setIdentityCheckTestStatus(Landroid/hardware/biometrics/IdentityCheckStatus;)V
    .registers 5

    .line 547
    :try_start_0
    const-string v0, "BiometricManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identity Check status being set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    invoke-virtual {p1}, Landroid/hardware/biometrics/IdentityCheckStatus;->isIdentityCheckActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". For test: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 549
    invoke-virtual {p1}, Landroid/hardware/biometrics/IdentityCheckStatus;->isIdentityCheckValueForTestAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->setIdentityCheckTestStatus(Landroid/hardware/biometrics/IdentityCheckStatus;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_31

    .line 553
    nop

    .line 554
    return-void

    .line 551
    :catch_31
    move-exception p1

    .line 552
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .registers 3

    .line 762
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_10

    .line 764
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 767
    goto :goto_18

    .line 765
    :catch_a
    move-exception p1

    .line 766
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 769
    :cond_10
    const-string p1, "BiometricManager"

    const-string/jumbo v0, "unregisterAuthenticationStateListener(): Service not connected"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :goto_18
    return-void
.end method

.method public blacklist unregisterIdentityCheckStateListener(Landroid/hardware/biometrics/IIdentityCheckStateListener;)V
    .registers 3

    .line 798
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_10

    .line 800
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->unregisterIdentityCheckStateListener(Landroid/hardware/biometrics/IIdentityCheckStateListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 803
    goto :goto_18

    .line 801
    :catch_a
    move-exception p1

    .line 802
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 805
    :cond_10
    const-string p1, "BiometricManager"

    const-string/jumbo v0, "unregisterIdentityCheckStateListener(): Service not connected"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :goto_18
    return-void
.end method
