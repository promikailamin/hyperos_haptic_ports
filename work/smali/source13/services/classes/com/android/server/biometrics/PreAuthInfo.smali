.class Lcom/android/server/biometrics/PreAuthInfo;
.super Ljava/lang/Object;
.source "PreAuthInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/PreAuthInfo$AuthenticatorStatus;
    }
.end annotation


# static fields
.field static final AUTHENTICATOR_OK:I = 0x1

.field static final BIOMETRIC_DISABLED_BY_DEVICE_POLICY:I = 0x3

.field static final BIOMETRIC_HARDWARE_NOT_DETECTED:I = 0x6

.field static final BIOMETRIC_INSUFFICIENT_STRENGTH:I = 0x4

.field static final BIOMETRIC_INSUFFICIENT_STRENGTH_AFTER_DOWNGRADE:I = 0x5

.field static final BIOMETRIC_LOCKOUT_PERMANENT:I = 0xb

.field static final BIOMETRIC_LOCKOUT_TIMED:I = 0xa

.field static final BIOMETRIC_NOT_ENABLED_FOR_APPS:I = 0x8

.field static final BIOMETRIC_NOT_ENROLLED:I = 0x7

.field static final BIOMETRIC_NO_HARDWARE:I = 0x2

.field static final BIOMETRIC_SENSOR_PRIVACY_ENABLED:I = 0xc

.field static final CREDENTIAL_NOT_ENROLLED:I = 0x9

.field private static final TAG:Ljava/lang/String; = "BiometricService/PreAuthInfo"


# instance fields
.field final confirmationRequested:Z

.field final context:Landroid/content/Context;

.field final credentialAvailable:Z

.field final credentialRequested:Z

.field final eligibleSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;"
        }
    .end annotation
.end field

.field final ignoreEnrollmentState:Z

.field final ineligibleSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBiometricRequested:Z

.field private final mBiometricStrengthRequested:I

.field final userId:I


# direct methods
.method private constructor <init>(ZIZLjava/util/List;Ljava/util/List;ZZZILandroid/content/Context;)V
    .registers 11
    .param p1, "biometricRequested"    # Z
    .param p2, "biometricStrengthRequested"    # I
    .param p3, "credentialRequested"    # Z
    .param p6, "credentialAvailable"    # Z
    .param p7, "confirmationRequested"    # Z
    .param p8, "ignoreEnrollmentState"    # Z
    .param p9, "userId"    # I
    .param p10, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Integer;",
            ">;>;ZZZI",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 272
    .local p4, "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    .local p5, "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    .line 274
    iput p2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    .line 275
    iput-boolean p3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    .line 277
    iput-object p4, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 278
    iput-object p5, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    .line 279
    iput-boolean p6, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    .line 280
    iput-boolean p7, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    .line 281
    iput-boolean p8, p0, Lcom/android/server/biometrics/PreAuthInfo;->ignoreEnrollmentState:Z

    .line 282
    iput p9, p0, Lcom/android/server/biometrics/PreAuthInfo;->userId:I

    .line 283
    iput-object p10, p0, Lcom/android/server/biometrics/PreAuthInfo;->context:Landroid/content/Context;

    .line 284
    return-void
.end method

.method private calculateErrorByPriority()Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 293
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1e

    .line 294
    return-object v1

    .line 296
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    :cond_1e
    goto :goto_6

    .line 298
    :cond_1f
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method static create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;)Lcom/android/server/biometrics/PreAuthInfo;
    .registers 29
    .param p0, "trustManager"    # Landroid/app/trust/ITrustManager;
    .param p1, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "settingObserver"    # Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .param p4, "userId"    # I
    .param p5, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "checkDevicePolicyManager"    # Z
    .param p8, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/trust/ITrustManager;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/server/biometrics/BiometricService$SettingObserver;",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;I",
            "Landroid/hardware/biometrics/PromptInfo;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/server/biometrics/PreAuthInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    .local p3, "sensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v11

    .line 103
    .local v11, "confirmationRequested":Z
    invoke-static/range {p5 .. p5}, Lcom/android/server/biometrics/Utils;->isBiometricRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v12

    .line 104
    .local v12, "biometricRequested":Z
    invoke-static/range {p5 .. p5}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I

    move-result v13

    .line 105
    .local v13, "requestedStrength":I
    invoke-static/range {p5 .. p5}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v14

    .line 107
    .local v14, "credentialRequested":Z
    nop

    .line 108
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getAssociatedDisplayId()I

    move-result v0

    .line 107
    move-object/from16 v15, p0

    move/from16 v10, p4

    invoke-interface {v15, v10, v0}, Landroid/app/trust/ITrustManager;->isDeviceSecure(II)Z

    move-result v16

    .line 116
    .local v16, "credentialAvailable":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 117
    .local v9, "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 119
    .local v8, "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    if-eqz v12, :cond_c5

    .line 120
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/biometrics/BiometricSensor;

    .line 122
    .local v7, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    nop

    .line 125
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->getAllowedSensorIds()Ljava/util/List;

    move-result-object v18

    .line 126
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v19

    .line 122
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v7

    move/from16 v3, p4

    move-object/from16 v4, p6

    move/from16 v5, p7

    move v6, v13

    move-object v10, v7

    .end local v7    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .local v10, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    move-object/from16 v7, v18

    move-object v15, v8

    .end local v8    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .local v15, "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    move/from16 v8, v19

    move/from16 v18, v11

    move-object v11, v9

    .end local v9    # "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    .local v11, "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    .local v18, "confirmationRequested":Z
    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/android/server/biometrics/PreAuthInfo;->getStatusForBiometricAuthenticator(Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Lcom/android/server/biometrics/BiometricSensor;ILjava/lang/String;ZILjava/util/List;ZLandroid/content/Context;)I

    move-result v0

    .line 129
    .local v0, "status":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Sensor ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService/PreAuthInfo"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x1

    if-eq v0, v1, :cond_b1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a4

    goto :goto_b1

    .line 144
    :cond_a4
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 142
    :cond_b1
    :goto_b1
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v0    # "status":I
    .end local v10    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :goto_b4
    move/from16 v10, p4

    move-object v9, v11

    move-object v8, v15

    move/from16 v11, v18

    move-object/from16 v15, p0

    goto/16 :goto_2f

    .line 120
    .end local v15    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .end local v18    # "confirmationRequested":Z
    .restart local v8    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .restart local v9    # "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    .local v11, "confirmationRequested":Z
    :cond_be
    move-object v15, v8

    move/from16 v18, v11

    move-object v11, v9

    move-object/from16 v9, p6

    .end local v8    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .end local v9    # "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    .local v11, "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    .restart local v15    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .restart local v18    # "confirmationRequested":Z
    goto :goto_cb

    .line 119
    .end local v15    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .end local v18    # "confirmationRequested":Z
    .restart local v8    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .restart local v9    # "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    .local v11, "confirmationRequested":Z
    :cond_c5
    move-object v15, v8

    move/from16 v18, v11

    move-object v11, v9

    move-object/from16 v9, p6

    .line 149
    .end local v8    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .end local v9    # "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    .local v11, "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    .restart local v15    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .restart local v18    # "confirmationRequested":Z
    :goto_cb
    new-instance v17, Lcom/android/server/biometrics/PreAuthInfo;

    .line 151
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v8

    move-object/from16 v0, v17

    move v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v11

    move-object v5, v15

    move/from16 v6, v16

    move/from16 v7, v18

    move/from16 v9, p4

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/PreAuthInfo;-><init>(ZIZLjava/util/List;Ljava/util/List;ZZZILandroid/content/Context;)V

    .line 149
    return-object v17
.end method

.method private getInternalStatus()Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, "modality":I
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->context:Landroid/content/Context;

    const-class v2, Landroid/hardware/SensorPrivacyManager;

    .line 313
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorPrivacyManager;

    .line 315
    .local v1, "sensorPrivacyManager":Landroid/hardware/SensorPrivacyManager;
    const/4 v2, 0x0

    .line 316
    .local v2, "cameraPrivacyEnabled":Z
    if-eqz v1, :cond_15

    .line 317
    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/biometrics/PreAuthInfo;->userId:I

    .line 318
    invoke-virtual {v1, v3, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v2

    .line 321
    :cond_15
    iget-boolean v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    const/16 v4, 0x8

    const-string v5, "BiometricService/PreAuthInfo"

    if-eqz v3, :cond_79

    iget-boolean v6, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v6, :cond_79

    .line 322
    iget-boolean v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-nez v3, :cond_51

    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_51

    .line 342
    :cond_2e
    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 343
    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object v3

    .line 344
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    iget v4, v4, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v4

    .line 345
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 346
    .local v3, "status":I
    goto/16 :goto_d7

    .line 347
    .end local v3    # "status":I
    :cond_4b
    or-int/lit8 v0, v0, 0x1

    .line 348
    const/16 v3, 0x9

    .restart local v3    # "status":I
    goto/16 :goto_d7

    .line 323
    .end local v3    # "status":I
    :cond_51
    :goto_51
    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricSensor;

    .line 324
    .local v6, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v7, v6, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v7

    .line 325
    .end local v6    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_57

    .line 327
    :cond_67
    iget-boolean v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v3, :cond_70

    .line 328
    or-int/lit8 v0, v0, 0x1

    .line 329
    const/4 v3, 0x1

    .restart local v3    # "status":I
    goto/16 :goto_d7

    .line 330
    .end local v3    # "status":I
    :cond_70
    if-ne v0, v4, :cond_77

    if-eqz v2, :cond_77

    .line 336
    const/16 v3, 0xc

    .restart local v3    # "status":I
    goto :goto_d7

    .line 338
    .end local v3    # "status":I
    :cond_77
    const/4 v3, 0x1

    .restart local v3    # "status":I
    goto :goto_d7

    .line 351
    .end local v3    # "status":I
    :cond_79
    if-eqz v3, :cond_c2

    .line 352
    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 353
    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricSensor;

    .line 354
    .restart local v6    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v7, v6, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v7

    .line 355
    .end local v6    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_89

    .line 356
    :cond_99
    if-ne v0, v4, :cond_a0

    if-eqz v2, :cond_a0

    .line 361
    const/16 v3, 0xc

    .restart local v3    # "status":I
    goto :goto_d7

    .line 363
    .end local v3    # "status":I
    :cond_a0
    const/4 v3, 0x1

    .restart local v3    # "status":I
    goto :goto_d7

    .line 367
    .end local v3    # "status":I
    :cond_a2
    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_be

    .line 368
    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object v3

    .line 369
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    iget v4, v4, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v4

    .line 370
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 371
    .local v3, "status":I
    goto :goto_d7

    .line 372
    .end local v3    # "status":I
    :cond_be
    or-int/lit8 v0, v0, 0x0

    .line 373
    const/4 v3, 0x2

    .restart local v3    # "status":I
    goto :goto_d7

    .line 376
    .end local v3    # "status":I
    :cond_c2
    iget-boolean v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v3, :cond_d1

    .line 377
    or-int/lit8 v0, v0, 0x1

    .line 378
    iget-boolean v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v3, :cond_ce

    const/4 v3, 0x1

    goto :goto_d0

    :cond_ce
    const/16 v3, 0x9

    .restart local v3    # "status":I
    :goto_d0
    goto :goto_d7

    .line 382
    .end local v3    # "status":I
    :cond_d1
    const-string v3, "No authenticators requested"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v3, 0x2

    .line 385
    .restart local v3    # "status":I
    :goto_d7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCanAuthenticateInternal Modality: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AuthenticatorStatus: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v4, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private static getStatusForBiometricAuthenticator(Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Lcom/android/server/biometrics/BiometricSensor;ILjava/lang/String;ZILjava/util/List;ZLandroid/content/Context;)I
    .registers 23
    .param p0, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "settingObserver"    # Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .param p2, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "checkDevicePolicyManager"    # Z
    .param p6, "requestedStrength"    # I
    .param p8, "ignoreEnrollmentState"    # Z
    .param p9, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/server/biometrics/BiometricService$SettingObserver;",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "I",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .line 169
    .local p7, "requestedSensorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v5, 0x2

    if-nez v0, :cond_1d

    iget v0, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v6, p7

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 170
    return v5

    .line 169
    :cond_1d
    move-object/from16 v6, p7

    .line 173
    :cond_1f
    iget v0, v1, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 174
    invoke-static {v0, v4}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v7

    .line 175
    .local v7, "wasStrongEnough":Z
    nop

    .line 176
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v0

    invoke-static {v0, v4}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v8

    .line 178
    .local v8, "isStrongEnough":Z
    if-eqz v7, :cond_34

    if-nez v8, :cond_34

    .line 179
    const/4 v0, 0x5

    return v0

    .line 180
    :cond_34
    if-nez v7, :cond_38

    .line 181
    const/4 v0, 0x4

    return v0

    .line 185
    :cond_38
    const/4 v9, 0x6

    :try_start_39
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v0, v3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 186
    return v9

    .line 189
    :cond_42
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v0, v2, v3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    if-nez p8, :cond_4e

    .line 191
    const/4 v0, 0x7

    return v0

    .line 193
    :cond_4e
    const-class v0, Landroid/hardware/SensorPrivacyManager;
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_50} :catch_99

    .line 194
    move-object/from16 v10, p9

    :try_start_52
    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    .line 196
    .local v0, "sensorPrivacyManager":Landroid/hardware/SensorPrivacyManager;
    const/16 v11, 0x8

    if-eqz v0, :cond_6a

    iget v12, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    if-ne v12, v11, :cond_6a

    .line 197
    nop

    .line 198
    invoke-virtual {v0, v5, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v12

    if-eqz v12, :cond_6a

    .line 199
    const/16 v5, 0xc

    return v5

    .line 204
    :cond_6a
    iget-object v12, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 205
    invoke-interface {v12, v2}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getLockoutModeForUser(I)I

    move-result v9
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_70} :catch_95

    .line 206
    .local v9, "lockoutMode":I
    const/4 v12, 0x1

    if-ne v9, v12, :cond_76

    .line 207
    const/16 v5, 0xa

    return v5

    .line 208
    :cond_76
    if-ne v9, v5, :cond_7b

    .line 209
    const/16 v5, 0xb

    return v5

    .line 213
    .end local v0    # "sensorPrivacyManager":Landroid/hardware/SensorPrivacyManager;
    .end local v9    # "lockoutMode":I
    :cond_7b
    nop

    .line 215
    iget v0, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    move-object v5, p1

    invoke-static {p1, v0, v2}, Lcom/android/server/biometrics/PreAuthInfo;->isEnabledForApp(Lcom/android/server/biometrics/BiometricService$SettingObserver;II)Z

    move-result v0

    if-nez v0, :cond_86

    .line 216
    return v11

    .line 219
    :cond_86
    if-eqz p5, :cond_93

    .line 220
    iget v0, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    move-object v11, p0

    invoke-static {p0, v0, v2}, Lcom/android/server/biometrics/PreAuthInfo;->isBiometricDisabledByDevicePolicy(Landroid/app/admin/DevicePolicyManager;II)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 221
    const/4 v0, 0x3

    return v0

    .line 219
    :cond_93
    move-object v11, p0

    .line 225
    :cond_94
    return v12

    .line 211
    :catch_95
    move-exception v0

    move-object v11, p0

    move-object v5, p1

    goto :goto_9e

    :catch_99
    move-exception v0

    move-object v11, p0

    move-object v5, p1

    move-object/from16 v10, p9

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    :goto_9e
    return v9
.end method

.method private static isBiometricDisabledByDevicePolicy(Landroid/app/admin/DevicePolicyManager;II)Z
    .registers 8
    .param p0, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "modality"    # I
    .param p2, "effectiveUserId"    # I

    .line 236
    invoke-static {p1}, Lcom/android/server/biometrics/PreAuthInfo;->mapModalityToDevicePolicyType(I)I

    move-result v0

    .line 237
    .local v0, "biometricToCheck":I
    if-eqz v0, :cond_40

    .line 240
    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 242
    .local v1, "devicePolicyDisabledFeatures":I
    and-int v2, v0, v1

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 244
    .local v2, "isBiometricDisabled":Z
    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isBiometricDisabledByDevicePolicy("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/PreAuthInfo"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return v2

    .line 238
    .end local v1    # "devicePolicyDisabledFeatures":I
    .end local v2    # "isBiometricDisabled":Z
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modality unknown to devicePolicyManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isEnabledForApp(Lcom/android/server/biometrics/BiometricService$SettingObserver;II)Z
    .registers 4
    .param p0, "settingObserver"    # Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .param p1, "modality"    # I
    .param p2, "userId"    # I

    .line 230
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(I)Z

    move-result v0

    return v0
.end method

.method private static mapModalityToDevicePolicyType(I)I
    .registers 3
    .param p0, "modality"    # I

    .line 255
    sparse-switch p0, :sswitch_data_26

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error modality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/PreAuthInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    return v0

    .line 261
    :sswitch_1d
    const/16 v0, 0x80

    return v0

    .line 259
    :sswitch_20
    const/16 v0, 0x100

    return v0

    .line 257
    :sswitch_23
    const/16 v0, 0x20

    return v0

    :sswitch_data_26
    .sparse-switch
        0x2 -> :sswitch_23
        0x4 -> :sswitch_20
        0x8 -> :sswitch_1d
    .end sparse-switch
.end method


# virtual methods
.method getCanAuthenticateResult()I
    .registers 2

    .line 396
    nop

    .line 398
    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 397
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result v0

    .line 396
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->biometricConstantsToBiometricManager(I)I

    move-result v0

    return v0
.end method

.method getEligibleModalities()I
    .registers 5

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "modalities":I
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 449
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v3

    .line 450
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_7

    .line 452
    :cond_17
    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v1, :cond_21

    .line 453
    or-int/lit8 v0, v0, 0x1

    .line 455
    :cond_21
    return v0
.end method

.method getPreAuthenticateStatus()Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object v0

    .line 410
    .local v0, "internalStatus":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result v1

    .line 411
    .local v1, "publicError":I
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 412
    .local v2, "modality":I
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_34

    .line 428
    :pswitch_23
    const/4 v2, 0x0

    goto :goto_26

    .line 422
    :pswitch_25
    nop

    .line 432
    :goto_26
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_25
        :pswitch_25
        :pswitch_23
        :pswitch_23
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_23
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method numSensorsWaitingForCookie()I
    .registers 6

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "numWaiting":I
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 461
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_44

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensor ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Waiting for cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 463
    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 462
    const-string v4, "BiometricService/PreAuthInfo"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    add-int/lit8 v0, v0, 0x1

    .line 466
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_44
    goto :goto_7

    .line 467
    :cond_45
    return v0
.end method

.method shouldShowCredential()Z
    .registers 2

    .line 439
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiometricRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", StrengthRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CredentialRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, "string":Ljava/lang/StringBuilder;
    const-string v1, ", Eligible:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 478
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_3d

    .line 480
    :cond_55
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v2, ", Ineligible:{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 484
    .local v4, "ineligible":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .end local v4    # "ineligible":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    goto :goto_66

    .line 486
    :cond_88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string v1, ", CredentialAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
