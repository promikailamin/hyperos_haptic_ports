.class public Lcom/android/server/biometrics/BiometricService$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BiometricService.java"


# instance fields
.field public final BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

.field public final BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

.field public final FACE_APP_ENABLED:Landroid/net/Uri;

.field public final FACE_KEYGUARD_ENABLED:Landroid/net/Uri;

.field public final FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

.field public final FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

.field public final FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

.field public final FINGERPRINT_APP_ENABLED:Landroid/net/Uri;

.field public final FINGERPRINT_KEYGUARD_ENABLED:Landroid/net/Uri;

.field public final MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

.field public final MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

.field public final mBiometricEnabledForApps:Ljava/util/Map;

.field public final mBiometricEnabledOnKeyguard:Ljava/util/Map;

.field public final mCallbacks:Ljava/util/List;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mFaceAlwaysRequireConfirmation:Ljava/util/Map;

.field public final mFaceEnabledForApps:Landroid/util/SparseBooleanArray;

.field public final mFaceEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

.field public final mFaceEnrolledForUser:Ljava/util/Map;

.field public final mFingerprintEnabledForApps:Landroid/util/SparseBooleanArray;

.field public final mFingerprintEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

.field public final mFingerprintEnrolledForUser:Ljava/util/Map;

.field public mIdentityCheckStatus:Landroid/hardware/biometrics/IdentityCheckStatus;

.field public final mMandatoryBiometricsEnabled:Ljava/util/Map;

.field public final mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

.field public final mTrustManager:Landroid/app/trust/ITrustManager;

.field public final mUseLegacyFaceOnlySettings:Z

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFaceEnrolledForUser(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFingerprintEnrolledForUser(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseLegacyFaceOnlySettings(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Landroid/os/UserManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/app/trust/ITrustManager;)V
    .registers 8

    .line 329
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 264
    const-string p2, "face_unlock_keyguard_enabled"

    .line 265
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 266
    const-string p2, "face_unlock_app_enabled"

    .line 267
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    .line 270
    const-string p2, "face_unlock_always_require_confirmation"

    .line 271
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    .line 274
    const-string p2, "biometric_keyguard_enabled"

    .line 275
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 276
    const-string p2, "biometric_app_enabled"

    .line 277
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    .line 278
    const-string p2, "face_keyguard_enabled"

    .line 279
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 280
    const-string p2, "face_app_enabled"

    .line 281
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_APP_ENABLED:Landroid/net/Uri;

    .line 282
    const-string p2, "fingerprint_keyguard_enabled"

    .line 283
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FINGERPRINT_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 284
    const-string p2, "fingerptint_app_enabled"

    .line 285
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FINGERPRINT_APP_ENABLED:Landroid/net/Uri;

    .line 286
    const-string/jumbo p2, "mandatory_biometrics"

    .line 287
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

    .line 288
    const-string/jumbo p2, "mandatory_biometrics_requirements_satisfied"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

    .line 296
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 297
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 298
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    .line 299
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledForApps:Landroid/util/SparseBooleanArray;

    .line 300
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    .line 301
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledForApps:Landroid/util/SparseBooleanArray;

    .line 302
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    .line 303
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    .line 304
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 306
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    .line 308
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 331
    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mCallbacks:Ljava/util/List;

    .line 332
    iput-object p4, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    .line 333
    iput-object p7, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.hardware.fingerprint"

    .line 336
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p3, "android.hardware.biometrics.face"

    .line 338
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    .line 341
    sget p3, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 p4, 0x1d

    if-gt p3, p4, :cond_d6

    if-eqz p1, :cond_d6

    if-nez p2, :cond_d6

    const/4 p1, 0x1

    goto :goto_d7

    :cond_d6
    const/4 p1, 0x0

    :goto_d7
    iput-boolean p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    .line 345
    invoke-virtual {p0, p5, p6}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->addBiometricListenersForMandatoryBiometrics(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateContentObserver()V

    return-void
.end method


# virtual methods
.method public final addBiometricListenersForMandatoryBiometrics(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V
    .registers 4

    if-eqz p1, :cond_a

    .line 715
    new-instance v0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;-><init>(Lcom/android/server/biometrics/BiometricService$SettingObserver;Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    :cond_a
    if-eqz p2, :cond_14

    .line 748
    new-instance p1, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;

    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;-><init>(Lcom/android/server/biometrics/BiometricService$SettingObserver;Landroid/hardware/face/FaceManager;)V

    invoke-virtual {p2, p1}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    :cond_14
    return-void
.end method

.method public final getBiometricStatusForIdentityCheck(I)Z
    .registers 6

    .line 607
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    const/4 v0, 0x2

    .line 608
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    .line 611
    :cond_1d
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x8

    .line 612
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(II)Z

    move-result p0

    if-eqz p0, :cond_38

    return v1

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public getConfirmationAlwaysRequired(II)Z
    .registers 4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 578
    :cond_6
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    .line 579
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 583
    :cond_18
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnabledForApps(II)Z
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p2, v0, :cond_19

    .line 549
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledForApps:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_12

    .line 550
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 552
    :cond_12
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledForApps:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0

    :cond_19
    const/4 v0, 0x2

    if-ne p2, v0, :cond_30

    .line 554
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledForApps:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_29

    .line 555
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FINGERPRINT_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 557
    :cond_29
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledForApps:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0

    .line 559
    :cond_30
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledForApps:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p2

    if-nez p2, :cond_43

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledForApps:Landroid/util/SparseBooleanArray;

    .line 560
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_43

    :cond_41
    const/4 p0, 0x0

    return p0

    :cond_43
    :goto_43
    return v1
.end method

.method public getEnabledOnKeyguard(II)Z
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p2, v0, :cond_19

    .line 521
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_12

    .line 522
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 524
    :cond_12
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0

    :cond_19
    const/4 v0, 0x2

    if-ne p2, v0, :cond_30

    .line 526
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_29

    .line 527
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FINGERPRINT_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 529
    :cond_29
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0

    .line 531
    :cond_30
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p2

    if-nez p2, :cond_43

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    .line 532
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_43

    :cond_41
    const/4 p0, 0x0

    return p0

    :cond_43
    :goto_43
    return v1
.end method

.method public getMandatoryBiometricsEnabledAndRequirementsSatisfiedForUser(I)Z
    .registers 5

    .line 591
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsForAllProfiles(I)V

    .line 594
    :cond_f
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 595
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsRequirementsForAllProfiles(I)V

    .line 598
    :cond_1e
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 599
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 598
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 600
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 601
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 600
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 602
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getBiometricStatusForIdentityCheck(I)Z

    move-result p0

    if-eqz p0, :cond_4e

    const/4 p0, 0x1

    return p0

    :cond_4e
    const/4 p0, 0x0

    return p0
.end method

.method public isIdentityCheckActive(I)Z
    .registers 3

    .line 632
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mIdentityCheckStatus:Landroid/hardware/biometrics/IdentityCheckStatus;

    if-eqz v0, :cond_11

    .line 633
    invoke-virtual {v0}, Landroid/hardware/biometrics/IdentityCheckStatus;->isIdentityCheckValueForTestAvailable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 634
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mIdentityCheckStatus:Landroid/hardware/biometrics/IdentityCheckStatus;

    invoke-virtual {p0}, Landroid/hardware/biometrics/IdentityCheckStatus;->isIdentityCheckActive()Z

    move-result p0

    return p0

    .line 637
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getMandatoryBiometricsEnabledAndRequirementsSatisfiedForUser(I)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 638
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mTrustManager:Landroid/app/trust/ITrustManager;

    const/4 p1, 0x1

    if-eqz p0, :cond_29

    .line 640
    :try_start_1c
    invoke-interface {p0}, Landroid/app/trust/ITrustManager;->isInSignificantPlace()Z

    move-result p0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_22

    xor-int/2addr p0, p1

    return p0

    .line 642
    :catch_22
    const-string p0, "BiometricService"

    const-string v0, "Remote exception while trying to check if user is in a trusted location."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return p1

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public notifyEnabledOnKeyguardCallbacks(II)V
    .registers 6

    .line 652
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mCallbacks:Ljava/util/List;

    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledOnKeyguard(II)Z

    move-result p0

    const/4 v1, 0x0

    .line 654
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 655
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->notify(ZII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 10

    .line 404
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_30

    .line 405
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "face_unlock_keyguard_enabled"

    invoke-static {v4, v5, v3, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1d

    move v2, v3

    :cond_1d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-ne p3, p2, :cond_18c

    if-nez p1, :cond_18c

    .line 412
    invoke-virtual {p0, p3, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(II)V

    return-void

    .line 414
    :cond_30
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 415
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "face_unlock_app_enabled"

    invoke-static {p0, v0, v3, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_49

    move v2, v3

    :cond_49
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 420
    :cond_51
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 421
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "face_unlock_always_require_confirmation"

    invoke-static {p0, v0, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_6a

    move v2, v3

    :cond_6a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 426
    :cond_72
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "biometric_keyguard_enabled"

    if-eqz v0, :cond_a0

    .line 427
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v4, v3, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_8b

    move v2, v3

    :cond_8b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-ne p3, p2, :cond_18c

    if-nez p1, :cond_18c

    const/16 p1, 0xe

    .line 434
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(II)V

    return-void

    .line 436
    :cond_a0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, -0x1

    if-eqz v0, :cond_d3

    .line 437
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2, v4, v5, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v5, :cond_b3

    :goto_b1
    move p2, v3

    goto :goto_b7

    :cond_b3
    if-ne p2, v3, :cond_b6

    goto :goto_b1

    :cond_b6
    move p2, v2

    .line 446
    :goto_b7
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "face_keyguard_enabled"

    invoke-static {v4, v5, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_c4

    move v2, v3

    :cond_c4
    invoke-virtual {v0, p3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 452
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-ne p3, p2, :cond_18c

    if-nez p1, :cond_18c

    .line 453
    invoke-virtual {p0, p3, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(II)V

    return-void

    .line 455
    :cond_d3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FINGERPRINT_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 456
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2, v4, v5, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v5, :cond_e5

    :goto_e3
    move p2, v3

    goto :goto_e9

    :cond_e5
    if-ne p2, v3, :cond_e8

    goto :goto_e3

    :cond_e8
    move p2, v2

    .line 466
    :goto_e9
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "fingerprint_keyguard_enabled"

    invoke-static {v1, v4, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_f6

    move v2, v3

    :cond_f6
    invoke-virtual {v0, p3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 472
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-ne p3, p2, :cond_18c

    if-nez p1, :cond_18c

    const/4 p1, 0x2

    .line 473
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(II)V

    return-void

    .line 475
    :cond_106
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "biometric_app_enabled"

    if-eqz p1, :cond_127

    .line 476
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v0, v3, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_11f

    move v2, v3

    :cond_11f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 481
    :cond_127
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14e

    .line 482
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v0, v5, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v5, :cond_139

    :goto_137
    move p1, v3

    goto :goto_13d

    :cond_139
    if-ne p1, v3, :cond_13c

    goto :goto_137

    :cond_13c
    move p1, v2

    .line 491
    :goto_13d
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledForApps:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "face_app_enabled"

    invoke-static {p0, v0, p1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_14a

    move v2, v3

    :cond_14a
    invoke-virtual {p2, p3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    .line 496
    :cond_14e
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FINGERPRINT_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_175

    .line 497
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v0, v5, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v5, :cond_160

    :goto_15e
    move p1, v3

    goto :goto_164

    :cond_160
    if-ne p1, v3, :cond_163

    goto :goto_15e

    :cond_163
    move p1, v2

    .line 506
    :goto_164
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledForApps:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "fingerptint_app_enabled"

    invoke-static {p0, v0, p1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_171

    move v2, v3

    :cond_171
    invoke-virtual {p2, p3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    .line 511
    :cond_175
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_181

    .line 512
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsForAllProfiles(I)V

    return-void

    .line 513
    :cond_181
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18c

    .line 514
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsRequirementsForAllProfiles(I)V

    :cond_18c
    return-void
.end method

.method public setIdentityCheckValuesForTest(Landroid/hardware/biometrics/IdentityCheckStatus;)V
    .registers 2

    .line 625
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mIdentityCheckStatus:Landroid/hardware/biometrics/IdentityCheckStatus;

    return-void
.end method

.method public updateContentObserver()V
    .registers 5

    .line 350
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 352
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 353
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 357
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_36

    .line 362
    :cond_1a
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FINGERPRINT_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 366
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 370
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FINGERPRINT_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 374
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 388
    :goto_36
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 392
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 396
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final updateMandatoryBiometricsForAllProfiles(I)V
    .registers 11

    .line 661
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 664
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_c

    :cond_b
    move v0, p1

    .line 667
    :goto_c
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v1

    .line 668
    const-string/jumbo v2, "mandatory_biometrics"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3b

    .line 669
    array-length p1, v1

    move v5, v4

    :goto_1b
    if-ge v5, p1, :cond_3a

    aget v6, v1, v5

    .line 670
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 671
    invoke-static {v8, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_2f

    move v8, v3

    goto :goto_30

    :cond_2f
    move v8, v4

    :goto_30
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 670
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_3a
    return-void

    .line 677
    :cond_3b
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 678
    invoke-static {p0, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_4a

    goto :goto_4b

    :cond_4a
    move v3, v4

    :goto_4b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 677
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateMandatoryBiometricsRequirementsForAllProfiles(I)V
    .registers 11

    .line 687
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 690
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_c

    :cond_b
    move v0, p1

    .line 693
    :goto_c
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v1

    .line 694
    const-string/jumbo v2, "mandatory_biometrics_requirements_satisfied"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3b

    .line 695
    array-length p1, v1

    move v5, v3

    :goto_1b
    if-ge v5, p1, :cond_3a

    aget v6, v1, v5

    .line 696
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 697
    invoke-static {v8, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_2f

    move v8, v4

    goto :goto_30

    :cond_2f
    move v8, v3

    :goto_30
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 696
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_3a
    return-void

    .line 704
    :cond_3b
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 705
    invoke-static {p0, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_4a

    move v3, v4

    :cond_4a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 704
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
