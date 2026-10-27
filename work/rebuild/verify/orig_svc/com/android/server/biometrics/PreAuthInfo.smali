.class public Lcom/android/server/biometrics/PreAuthInfo;
.super Ljava/lang/Object;
.source "PreAuthInfo.java"


# static fields
.field public static final BIOMETRIC_PROMPT_EXTERNAL_DISPLAY_FLAG:Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;


# instance fields
.field public final callingUserId:I

.field public final confirmationRequested:Z

.field public final context:Landroid/content/Context;

.field public final credentialAvailable:Z

.field public final credentialRequested:Z

.field public final eligibleSensors:Ljava/util/List;

.field public final ignoreEnrollmentState:Z

.field public final ineligibleSensors:Ljava/util/List;

.field public final mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

.field public final mBiometricRequested:Z

.field public final mBiometricStrengthRequested:I

.field public final mIsMandatoryBiometricsAuthentication:Z

.field public final mOnlyMandatoryBiometricsRequested:Z

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 69
    new-instance v0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;

    new-instance v1, Lcom/android/server/biometrics/PreAuthInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/biometrics/PreAuthInfo$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    const-string v3, "com.android.server.biometrics.biometric_prompt_external_display"

    invoke-direct {v0, v1, v2, v3}, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;-><init>(Ljava/util/function/BooleanSupplier;ZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/biometrics/PreAuthInfo;->BIOMETRIC_PROMPT_EXTERNAL_DISPLAY_FLAG:Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;

    return-void
.end method

.method public constructor <init>(ZIZLjava/util/List;Ljava/util/List;ZLandroid/hardware/biometrics/PromptInfo;IILandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;ZZ)V
    .registers 14

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    .line 100
    iput p2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    .line 101
    iput-object p11, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    .line 102
    iput-boolean p3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    .line 104
    iput-object p4, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 105
    iput-object p5, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    .line 106
    iput-boolean p6, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    .line 107
    invoke-virtual {p7}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    .line 108
    invoke-virtual {p7}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->ignoreEnrollmentState:Z

    .line 109
    iput p8, p0, Lcom/android/server/biometrics/PreAuthInfo;->userId:I

    .line 110
    iput p9, p0, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    .line 111
    iput-object p10, p0, Lcom/android/server/biometrics/PreAuthInfo;->context:Landroid/content/Context;

    .line 112
    iput-boolean p12, p0, Lcom/android/server/biometrics/PreAuthInfo;->mOnlyMandatoryBiometricsRequested:Z

    .line 113
    iput-boolean p13, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    return-void
.end method

.method public static create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;Landroid/os/UserManager;)Lcom/android/server/biometrics/PreAuthInfo;
    .registers 31

    move-object/from16 v0, p0

    move/from16 v8, p4

    move-object/from16 v10, p5

    .line 126
    invoke-virtual {v10}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v11, 0x1

    if-ne v1, v2, :cond_11

    move v12, v11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    move v12, v1

    .line 136
    :goto_13
    invoke-static {v10}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialAllowed(Z)V

    move-object/from16 v1, p2

    .line 138
    invoke-static {v10, v8, v0, v1}, Lcom/android/server/biometrics/PreAuthInfo;->updateAuthenticatorsIfIdentityCheckIsActive(Landroid/hardware/biometrics/PromptInfo;ILandroid/app/trust/ITrustManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;)Z

    move-result v13

    .line 146
    invoke-static {v10}, Lcom/android/server/biometrics/Utils;->isBiometricRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v14

    .line 147
    invoke-static {v10}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I

    move-result v6

    .line 148
    invoke-static {v10}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v15

    .line 151
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    .line 150
    invoke-interface {v0, v8, v2}, Landroid/app/trust/ITrustManager;->isDeviceSecure(II)Z

    move-result v16

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v14, :cond_c4

    .line 163
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_44
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 168
    invoke-virtual {v10}, Landroid/hardware/biometrics/PromptInfo;->getAllowedSensorIds()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v10}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v8

    move-object/from16 v0, p1

    move/from16 v3, p4

    move-object/from16 v9, p9

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v4, p6

    move/from16 v5, p7

    .line 165
    invoke-static/range {v0 .. v9}, Lcom/android/server/biometrics/PreAuthInfo;->getStatusForBiometricAuthenticator(Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Lcom/android/server/biometrics/BiometricSensor;ILjava/lang/String;ZILjava/util/List;ZLcom/android/server/biometrics/BiometricCameraManager;)I

    move-result v7

    move v8, v3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Sensor ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " User id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/PreAuthInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v7, v11, :cond_b0

    move-object/from16 v0, v18

    .line 185
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v19

    goto :goto_c0

    :cond_b0
    move-object/from16 v0, v18

    .line 187
    new-instance v1, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v5, v19

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c0
    move-object/from16 v1, p2

    move-object v4, v0

    goto :goto_44

    :cond_c4
    move-object/from16 v18, v4

    .line 192
    new-instance v0, Lcom/android/server/biometrics/PreAuthInfo;

    move/from16 v9, p4

    move-object/from16 v11, p9

    move v2, v6

    move-object v7, v10

    move v1, v14

    move v3, v15

    move/from16 v6, v16

    move-object/from16 v4, v18

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/PreAuthInfo;-><init>(ZIZLjava/util/List;Ljava/util/List;ZLandroid/hardware/biometrics/PromptInfo;IILandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;ZZ)V

    return-object v0
.end method

.method public static getStatusForBiometricAuthenticator(Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Lcom/android/server/biometrics/BiometricSensor;ILjava/lang/String;ZILjava/util/List;ZLcom/android/server/biometrics/BiometricCameraManager;)I
    .registers 11

    .line 247
    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_14

    const/4 p0, 0x2

    return p0

    .line 251
    :cond_14
    iget p7, p2, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 252
    invoke-static {p7, p6}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p7

    .line 254
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v0

    invoke-static {v0, p6}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p6

    if-eqz p7, :cond_28

    if-nez p6, :cond_28

    const/4 p0, 0x5

    return p0

    :cond_28
    if-nez p7, :cond_2c

    const/4 p0, 0x4

    return p0

    .line 262
    :cond_2c
    iget p6, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 p7, 0x6

    const/16 v0, 0x8

    if-ne p6, v0, :cond_3a

    invoke-interface {p9}, Lcom/android/server/biometrics/BiometricCameraManager;->isAnyCameraUnavailable()Z

    move-result p6

    if-eqz p6, :cond_3a

    return p7

    .line 267
    :cond_3a
    :try_start_3a
    iget-object p6, p2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {p6, p4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->isHardwareDetected(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_43

    return p7

    .line 271
    :cond_43
    iget-object p6, p2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {p6, p3, p4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4f

    if-nez p8, :cond_4f

    const/4 p0, 0x7

    return p0

    :cond_4f
    if-eqz p9, :cond_5e

    .line 276
    iget p4, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    if-ne p4, v0, :cond_5e

    .line 277
    invoke-interface {p9}, Lcom/android/server/biometrics/BiometricCameraManager;->isCameraPrivacyEnabled()Z

    move-result p4

    if-eqz p4, :cond_5e

    const/16 p0, 0xc

    return p0

    .line 283
    :cond_5e
    iget-object p4, p2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 284
    invoke-interface {p4, p3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getLockoutModeForUser(I)I

    move-result p4
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_64} :catch_80

    const/4 p6, 0x1

    if-ne p4, p6, :cond_6a

    const/16 p0, 0xa

    return p0

    .line 295
    :cond_6a
    iget p4, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-static {p1, p4, p3}, Lcom/android/server/biometrics/PreAuthInfo;->isEnabledForApp(Lcom/android/server/biometrics/BiometricService$SettingObserver;II)Z

    move-result p1

    if-nez p1, :cond_73

    return v0

    :cond_73
    if-eqz p5, :cond_7f

    .line 300
    iget p1, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-static {p0, p1, p3}, Lcom/android/server/biometrics/PreAuthInfo;->isBiometricDisabledByDevicePolicy(Landroid/app/admin/DevicePolicyManager;II)Z

    move-result p0

    if-eqz p0, :cond_7f

    const/4 p0, 0x3

    return p0

    :cond_7f
    return p6

    :catch_80
    return p7
.end method

.method public static isBiometricDisabledByDevicePolicy(Landroid/app/admin/DevicePolicyManager;II)Z
    .registers 5

    .line 316
    invoke-static {p1}, Lcom/android/server/biometrics/PreAuthInfo;->mapModalityToDevicePolicyType(I)I

    move-result v0

    if-eqz v0, :cond_38

    const/4 v1, 0x0

    .line 321
    invoke-virtual {p0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    .line 324
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBiometricDisabledByDevicePolicy("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BiometricService/PreAuthInfo"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 318
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Modality unknown to devicePolicyManager: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isEnabledForApp(Lcom/android/server/biometrics/BiometricService$SettingObserver;II)Z
    .registers 3

    .line 310
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(II)Z

    move-result p0

    return p0
.end method

.method public static mapModalityToDevicePolicyType(I)I
    .registers 3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_28

    const/4 v0, 0x4

    if-eq p0, v0, :cond_25

    const/16 v0, 0x8

    if-eq p0, v0, :cond_22

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error modality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricService/PreAuthInfo"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_22
    const/16 p0, 0x80

    return p0

    :cond_25
    const/16 p0, 0x100

    return p0

    :cond_28
    const/16 p0, 0x20

    return p0
.end method

.method public static updateAuthenticatorsIfIdentityCheckIsActive(Landroid/hardware/biometrics/PromptInfo;ILandroid/app/trust/ITrustManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;)Z
    .registers 4

    .line 207
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->shouldApplyIdentityCheck(I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 208
    invoke-virtual {p3, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->isIdentityCheckActive(I)Z

    move-result p1

    if-eqz p1, :cond_19

    const/16 p1, 0xf

    .line 209
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    const/4 p1, 0x1

    .line 210
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/PromptInfo;->setIdentityCheckActive(Z)V

    .line 213
    :cond_19
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isIdentityCheckActive()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final calculateErrorByPriority()Landroid/util/Pair;
    .registers 9

    .line 353
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 354
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_26

    const/16 v7, 0xb

    if-ne v6, v7, :cond_27

    :cond_26
    move-object v1, v5

    :cond_27
    const/4 v7, 0x7

    if-ne v6, v7, :cond_2b

    move-object v4, v5

    :cond_2b
    const/4 v7, 0x6

    if-ne v6, v7, :cond_2f

    move-object v2, v5

    :cond_2f
    const/16 v7, 0x8

    if-ne v6, v7, :cond_a

    move-object v3, v5

    goto :goto_a

    :cond_35
    if-eqz v1, :cond_38

    return-object v1

    :cond_38
    if-eqz v2, :cond_3b

    return-object v2

    :cond_3b
    if-eqz v3, :cond_3e

    return-object v3

    :cond_3e
    if-eqz v4, :cond_41

    return-object v4

    .line 389
    :cond_41
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public getCanAuthenticateResult()I
    .registers 1

    .line 492
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 491
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result p0

    .line 490
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->biometricConstantsToBiometricManager(I)I

    move-result p0

    return p0
.end method

.method public getEligibleModalities()I
    .registers 4

    .line 559
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 560
    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v1, v2

    goto :goto_7

    .line 563
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v0, :cond_22

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz p0, :cond_22

    or-int/lit8 p0, v1, 0x1

    return p0

    :cond_22
    return v1
.end method

.method public final getInternalStatus()Landroid/util/Pair;
    .registers 10

    .line 405
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 406
    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricCameraManager;->isCameraPrivacyEnabled()Z

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 409
    :goto_b
    sget-object v2, Lcom/android/server/biometrics/PreAuthInfo;->BIOMETRIC_PROMPT_EXTERNAL_DISPLAY_FLAG:Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;

    invoke-virtual {v2}, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->isTrue()Z

    move-result v2

    const-string v3, "BiometricService/PreAuthInfo"

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->isExternalDisplay()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 p0, 0x6

    const/16 v1, 0xf

    goto/16 :goto_df

    .line 412
    :cond_20
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    const/16 v4, 0xc

    const/16 v5, 0x8

    const/16 v6, 0x9

    const/4 v7, 0x1

    if-eqz v2, :cond_81

    iget-boolean v8, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v8, :cond_81

    .line 413
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-nez v2, :cond_5c

    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_5c

    .line 433
    :cond_3c
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 434
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object p0

    .line 435
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 436
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto/16 :goto_df

    :cond_58
    move p0, v6

    :goto_59
    move v1, v7

    goto/16 :goto_df

    .line 414
    :cond_5c
    :goto_5c
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricSensor;

    .line 415
    iget v6, v6, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v1, v6

    goto :goto_62

    .line 418
    :cond_72
    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz p0, :cond_7b

    or-int/lit8 v1, v1, 0x1

    :cond_78
    move p0, v7

    goto/16 :goto_df

    :cond_7b
    if-ne v1, v5, :cond_78

    if-eqz v0, :cond_78

    :goto_7f
    move p0, v4

    goto :goto_df

    :cond_81
    const/4 v8, 0x2

    if-eqz v2, :cond_c4

    .line 443
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a7

    .line 444
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_92
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 445
    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v1, v2

    goto :goto_92

    :cond_a2
    if-ne v1, v5, :cond_78

    if-eqz v0, :cond_78

    goto :goto_7f

    .line 458
    :cond_a7
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 459
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object p0

    .line 460
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 461
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_df

    :cond_c2
    :goto_c2
    move p0, v8

    goto :goto_df

    .line 467
    :cond_c4
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v0, :cond_ce

    .line 469
    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz p0, :cond_58

    move p0, v7

    goto :goto_59

    .line 470
    :cond_ce
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->mOnlyMandatoryBiometricsRequested:Z

    if-eqz v0, :cond_d9

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    if-nez p0, :cond_d9

    const/16 p0, 0xd

    goto :goto_df

    .line 475
    :cond_d9
    const-string p0, "No authenticators requested"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 478
    :goto_df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCanAuthenticateInternal Modality: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AuthenticatorStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIsMandatoryBiometricsAuthentication()Z
    .registers 1

    .line 506
    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    return p0
.end method

.method public getPreAuthenticateStatus()Landroid/util/Pair;
    .registers 3

    .line 518
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object p0

    .line 520
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result v0

    .line 521
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 522
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_32

    :pswitch_23
    const/4 v1, 0x0

    .line 542
    :pswitch_24
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method public final isExternalDisplay()Z
    .registers 4

    const/4 v0, 0x0

    .line 497
    :try_start_1
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0
    :try_end_b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_b} :catch_11

    const/4 v1, 0x2

    if-ne p0, v1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v0

    :catch_11
    move-exception p0

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown when checking display type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BiometricService/PreAuthInfo"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public numSensorsWaitingForCookie()I
    .registers 5

    .line 571
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 572
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Waiting for cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    const-string v2, "BiometricService/PreAuthInfo"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_41
    return v0
.end method

.method public shouldShowCredential()Z
    .registers 2

    .line 549
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiometricRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", StrengthRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CredentialRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    const-string v1, ", Eligible:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 589
    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 591
    :cond_4e
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v2, ", Ineligible:{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 595
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 597
    :cond_7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    const-string v1, ", CredentialAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 600
    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
