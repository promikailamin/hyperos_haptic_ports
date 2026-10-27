.class public final Lcom/android/server/biometrics/AuthSession;
.super Ljava/lang/Object;
.source "AuthSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;,
        Lcom/android/server/biometrics/AuthSession$SessionState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BiometricService/AuthSession"


# instance fields
.field private mAuthenticatedSensorId:I

.field private mAuthenticatedTimeMs:J

.field private mCancelled:Z

.field private final mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

.field private final mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDebugEnabled:Z

.field private mErrorEscrow:I

.field private final mFingerprintSensorProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMultiSensorMode:I

.field private final mOpPackageName:Ljava/lang/String;

.field private final mOperationId:J

.field final mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

.field final mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private final mRandom:Ljava/util/Random;

.field private final mRequestId:J

.field final mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

.field private mSensors:[I

.field private mStartTimeMs:J

.field private mState:I

.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

.field final mToken:Landroid/os/IBinder;

.field private mTokenEscrow:[B

.field private final mUserId:I

.field private mVendorCodeEscrow:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStore;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;)V
    .registers 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p3, "sysuiReceiver"    # Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .param p4, "keystore"    # Landroid/security/KeyStore;
    .param p5, "random"    # Ljava/util/Random;
    .param p6, "clientDeathReceiver"    # Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;
    .param p7, "preAuthInfo"    # Lcom/android/server/biometrics/PreAuthInfo;
    .param p8, "token"    # Landroid/os/IBinder;
    .param p9, "requestId"    # J
    .param p11, "operationId"    # J
    .param p13, "userId"    # I
    .param p14, "sensorReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p15, "clientReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p16, "opPackageName"    # Ljava/lang/String;
    .param p17, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p18, "debugEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Landroid/hardware/biometrics/IBiometricSysuiReceiver;",
            "Landroid/security/KeyStore;",
            "Ljava/util/Random;",
            "Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;",
            "Lcom/android/server/biometrics/PreAuthInfo;",
            "Landroid/os/IBinder;",
            "JJI",
            "Landroid/hardware/biometrics/IBiometricSensorReceiver;",
            "Landroid/hardware/biometrics/IBiometricServiceReceiver;",
            "Ljava/lang/String;",
            "Landroid/hardware/biometrics/PromptInfo;",
            "Z",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p19, "fingerprintSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 137
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating AuthSession with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/AuthSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object/from16 v3, p1

    iput-object v3, v1, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 169
    move-object/from16 v5, p2

    iput-object v5, v1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 170
    move-object/from16 v6, p3

    iput-object v6, v1, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 171
    move-object/from16 v7, p4

    iput-object v7, v1, Lcom/android/server/biometrics/AuthSession;->mKeyStore:Landroid/security/KeyStore;

    .line 172
    move-object/from16 v8, p5

    iput-object v8, v1, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    .line 173
    move-object/from16 v9, p6

    iput-object v9, v1, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    .line 174
    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 175
    move-object/from16 v10, p8

    iput-object v10, v1, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    .line 176
    move-wide/from16 v11, p9

    iput-wide v11, v1, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 177
    move-wide/from16 v13, p11

    iput-wide v13, v1, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    .line 178
    move/from16 v15, p13

    iput v15, v1, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 179
    move-object/from16 v2, p14

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    .line 180
    move-object/from16 v2, p15

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 181
    move-object/from16 v2, p16

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    .line 182
    move-object/from16 v2, p17

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 183
    move/from16 v2, p18

    iput-boolean v2, v1, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    .line 184
    move-object/from16 v2, p19

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mFingerprintSensorProperties:Ljava/util/List;

    .line 185
    iput-boolean v0, v1, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    .line 188
    :try_start_69
    invoke-interface/range {p15 .. p15}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_71} :catch_72

    .line 191
    goto :goto_78

    .line 189
    :catch_72
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to link to death"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_78
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateUnknown()V

    .line 194
    return-void
.end method

.method private cancelAllSensors()V
    .registers 2

    .line 372
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    .line 373
    return-void
.end method

.method private cancelAllSensors(Ljava/util/function/Function;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 380
    .local p1, "filter":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Boolean;>;"
    const-string v0, "BiometricService/AuthSession"

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 382
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :try_start_16
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling sensorId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCancelling(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_43} :catch_44

    .line 388
    :cond_43
    goto :goto_4a

    .line 386
    :catch_44
    move-exception v3

    .line 387
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Unable to cancel authentication"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4a
    goto :goto_a

    .line 390
    :cond_4b
    return-void
.end method

.method private containsCookie(I)Z
    .registers 5
    .param p1, "cookie"    # I

    .line 848
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 849
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v2

    if-ne v2, p1, :cond_1c

    .line 850
    const/4 v0, 0x1

    return v0

    .line 852
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_1c
    goto :goto_8

    .line 853
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private getAcquiredMessageForSensor(III)Ljava/lang/String;
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "acquiredInfo"    # I
    .param p3, "vendorCode"    # I

    .line 904
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v0

    .line 905
    .local v0, "modality":I
    sparse-switch v0, :sswitch_data_18

    .line 911
    const/4 v1, 0x0

    return-object v1

    .line 909
    :sswitch_9
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p3}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 907
    :sswitch_10
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_18
    .sparse-switch
        0x2 -> :sswitch_10
        0x8 -> :sswitch_9
    .end sparse-switch
.end method

.method private getEligibleModalities()I
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result v0

    return v0
.end method

.method private static getMultiSensorModeForNewSession(Ljava/util/Collection;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;)I"
        }
    .end annotation

    .line 917
    .local p0, "sensors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/biometrics/BiometricSensor;>;"
    const/4 v0, 0x0

    .line 918
    .local v0, "hasFace":Z
    const/4 v1, 0x0

    .line 920
    .local v1, "hasFingerprint":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    .line 921
    .local v3, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v4, v3, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1a

    .line 922
    const/4 v0, 0x1

    goto :goto_20

    .line 923
    :cond_1a
    iget v4, v3, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_20

    .line 924
    const/4 v1, 0x1

    .line 926
    .end local v3    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_20
    :goto_20
    goto :goto_6

    .line 928
    :cond_21
    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    .line 929
    const/4 v2, 0x1

    return v2

    .line 931
    :cond_27
    const/4 v2, 0x0

    return v2
.end method

.method private hasAuthenticated()Z
    .registers 3

    .line 677
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isAllowDeviceCredential()Z
    .registers 2

    .line 857
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    return v0
.end method

.method private isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z
    .registers 3
    .param p1, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;

    .line 334
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricSensor;->confirmationSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 335
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/BiometricSensor;->confirmationAlwaysRequired(I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 334
    :goto_17
    return v0
.end method

.method private isConfirmationRequiredByAnyEligibleSensor()Z
    .registers 4

    .line 340
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 341
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 342
    const/4 v0, 0x1

    return v0

    .line 344
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_1c
    goto :goto_8

    .line 345
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$cancelAllSensors$2(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;

    .line 372
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onAuthenticationSucceeded$3(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "sensorId"    # I
    .param p1, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;

    .line 599
    iget v0, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-eq v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$pauseSensorIfSupported$4(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "sensorId"    # I
    .param p1, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;

    .line 637
    iget v0, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startAllPreparedFingerprintSensors$1(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;

    .line 353
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startAllPreparedSensorsExceptFingerprint$0(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;

    .line 349
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private logOnDialogDismissed(I)V
    .registers 20
    .param p1, "reason"    # I

    .line 681
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    sub-long/2addr v2, v4

    .line 697
    .local v2, "latency":J
    new-instance v4, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v4}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    .line 698
    .local v4, "operationContext":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v5

    iput-boolean v5, v4, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 699
    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v6

    .line 701
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    iget-boolean v11, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    const/4 v14, 0x3

    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v15, v5, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    iget v5, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    const/high16 v17, -0x40800000    # -1.0f

    .line 699
    move-object v7, v4

    move-wide v12, v2

    move/from16 v16, v5

    invoke-virtual/range {v6 .. v17}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Landroid/hardware/biometrics/common/OperationContext;IIIZJIZIF)V

    .line 710
    .end local v2    # "latency":J
    .end local v4    # "operationContext":Landroid/hardware/biometrics/common/OperationContext;
    goto :goto_6f

    .line 711
    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    sub-long/2addr v2, v4

    .line 713
    .restart local v2    # "latency":J
    const/4 v4, 0x2

    if-ne v1, v4, :cond_44

    .line 714
    const/16 v4, 0xd

    move v14, v4

    goto :goto_4d

    .line 715
    :cond_44
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4b

    .line 716
    const/16 v4, 0xa

    move v14, v4

    goto :goto_4d

    .line 717
    :cond_4b
    const/4 v4, 0x0

    move v14, v4

    :goto_4d
    nop

    .line 729
    .local v14, "error":I
    new-instance v4, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v4}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    .line 730
    .restart local v4    # "operationContext":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v5

    iput-boolean v5, v4, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 731
    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v6

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x2

    iget-boolean v11, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    const/4 v15, 0x0

    iget v5, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 731
    move-object v7, v4

    move-wide v12, v2

    move/from16 v16, v5

    invoke-virtual/range {v6 .. v16}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Landroid/hardware/biometrics/common/OperationContext;IIIZJIII)V

    .line 742
    .end local v2    # "latency":J
    .end local v4    # "operationContext":Landroid/hardware/biometrics/common/OperationContext;
    .end local v14    # "error":I
    :goto_6f
    return-void
.end method

.method private pauseSensorIfSupported(I)Z
    .registers 4
    .param p1, "sensorId"    # I

    .line 636
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 637
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    .line 638
    const/4 v0, 0x1

    return v0

    .line 640
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private sensorIdToModality(I)I
    .registers 5
    .param p1, "sensorId"    # I

    .line 894
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 895
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, v2, :cond_1b

    .line 896
    iget v0, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    return v0

    .line 898
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_1b
    goto :goto_8

    .line 899
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v0, 0x0

    return v0
.end method

.method private setSensorsToStateUnknown()V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 219
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->goToStateUnknown()V

    .line 220
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_8

    .line 221
    :cond_18
    return-void
.end method

.method private setSensorsToStateWaitingForCookie(Z)V
    .registers 20
    .param p1, "isTryAgain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 225
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v15

    .line 226
    .local v15, "state":I
    if-eqz p1, :cond_47

    const/4 v3, 0x5

    if-eq v15, v3, :cond_47

    const/4 v3, 0x4

    if-eq v15, v3, :cond_47

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip retry because sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/AuthSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    goto :goto_a

    .line 233
    :cond_47
    iget-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    const v4, 0x7ffffffe

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v16, v3, 0x1

    .line 234
    .local v16, "cookie":I
    invoke-direct {v0, v2}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v17

    .line 239
    .local v17, "requireConfirmation":Z
    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-wide v6, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v9, v0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    iget-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v11, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 241
    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v14

    .line 239
    move-object v3, v2

    move/from16 v4, v17

    move/from16 v13, v16

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/biometrics/BiometricSensor;->goToStateWaitingForCookie(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    .line 242
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v15    # "state":I
    .end local v16    # "cookie":I
    .end local v17    # "requireConfirmation":Z
    goto :goto_a

    .line 243
    :cond_71
    return-void
.end method

.method private startAllPreparedFingerprintSensors()V
    .registers 2

    .line 353
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    .line 354
    return-void
.end method

.method private startAllPreparedSensors(Ljava/util/function/Function;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 357
    .local p1, "filter":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 358
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 363
    :try_start_20
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->startSensor()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 366
    goto :goto_3d

    .line 364
    :catch_24
    move-exception v2

    .line 365
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start prepared client, sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/AuthSession"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    goto :goto_8

    .line 369
    :cond_3e
    return-void
.end method

.method private startAllPreparedSensorsExceptFingerprint()V
    .registers 2

    .line 349
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    .line 350
    return-void
.end method

.method private statsModality()I
    .registers 5

    .line 876
    const/4 v0, 0x0

    .line 878
    .local v0, "modality":I
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 879
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1d

    .line 880
    or-int/lit8 v0, v0, 0x1

    .line 882
    :cond_1d
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_25

    .line 883
    or-int/lit8 v0, v0, 0x2

    .line 885
    :cond_25
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2d

    .line 886
    or-int/lit8 v0, v0, 0x4

    .line 888
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_2d
    goto :goto_9

    .line 890
    :cond_2e
    return v0
.end method


# virtual methods
.method allCookiesReceived()Z
    .registers 4

    .line 862
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->numSensorsWaitingForCookie()I

    move-result v0

    .line 863
    .local v0, "remainingCookies":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining cookies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    if-nez v0, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method public binderDied()V
    .registers 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died, session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    invoke-interface {v0}, Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;->onClientDied()V

    .line 200
    return-void
.end method

.method getRequestId()J
    .registers 3

    .line 872
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    return-wide v0
.end method

.method getState()I
    .registers 2

    .line 868
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return v0
.end method

.method goToInitialState()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 250
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 251
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 252
    const/4 v14, 0x0

    iput v14, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    .line 254
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-wide v9, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v11, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v12, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface/range {v2 .. v14}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V

    goto :goto_40

    .line 265
    :cond_30
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 267
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Z)V

    .line 268
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 274
    :goto_40
    return-void

    .line 272
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No authenticators requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isCrypto()Z
    .registers 5

    .line 844
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method onAcquired(III)V
    .registers 8
    .param p1, "sensorId"    # I
    .param p2, "acquiredInfo"    # I
    .param p3, "vendorCode"    # I

    .line 504
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 505
    const-string/jumbo v0, "onAcquired after successful auth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void

    .line 509
    :cond_f
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthSession;->getAcquiredMessageForSensor(III)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sensorId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " acquiredInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-nez v0, :cond_41

    .line 513
    return-void

    .line 517
    :cond_41
    :try_start_41
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricHelp(ILjava/lang/String;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4a} :catch_4b

    .line 520
    goto :goto_51

    .line 518
    :catch_4b
    move-exception v2

    .line 519
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_51
    return-void
.end method

.method onAuthenticationRejected(I)V
    .registers 7
    .param p1, "sensorId"    # I

    .line 603
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 604
    const-string/jumbo v0, "onAuthenticationRejected after successful auth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void

    .line 609
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 611
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->pauseSensorIfSupported(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 612
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 614
    :cond_24
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_29} :catch_2a

    .line 617
    goto :goto_30

    .line 615
    :catch_2a
    move-exception v0

    .line 616
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method onAuthenticationSucceeded(IZ[B)V
    .registers 8
    .param p1, "sensorId"    # I
    .param p2, "strong"    # Z
    .param p3, "token"    # [B

    .line 568
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 569
    const-string/jumbo v0, "onAuthenticationSucceeded after successful auth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void

    .line 573
    :cond_f
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 574
    if-eqz p2, :cond_16

    .line 575
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    goto :goto_2e

    .line 577
    :cond_16
    if-eqz p3, :cond_2e

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping authToken for non-strong biometric, id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_2e
    :goto_2e
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated(I)V

    .line 587
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequiredByAnyEligibleSensor()Z

    move-result v0

    .line 589
    .local v0, "requireConfirmation":Z
    if-nez v0, :cond_41

    .line 590
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_4a

    .line 592
    :cond_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    .line 593
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4a} :catch_4b

    .line 597
    .end local v0    # "requireConfirmation":Z
    :goto_4a
    goto :goto_51

    .line 595
    :catch_4b
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_51
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    .line 600
    return-void
.end method

.method onAuthenticationTimedOut(IIII)V
    .registers 8
    .param p1, "sensorId"    # I
    .param p2, "cookie"    # I
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 621
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 622
    const-string/jumbo v0, "onAuthenticationTimedOut after successful auth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void

    .line 627
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v2

    invoke-interface {v0, v2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 628
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->pauseSensorIfSupported(I)Z

    .line 629
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1e} :catch_1f

    .line 632
    goto :goto_25

    .line 630
    :catch_1f
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method onCancelAuthSession(Z)Z
    .registers 9
    .param p1, "force"    # Z

    .line 808
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 809
    const-string/jumbo v0, "onCancelAuthSession after successful auth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return v2

    .line 813
    :cond_10
    iput-boolean v2, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    .line 815
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_20

    const/4 v4, 0x2

    if-eq v0, v4, :cond_20

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1e

    goto :goto_20

    :cond_1e
    move v0, v3

    goto :goto_21

    :cond_20
    :goto_20
    move v0, v2

    .line 819
    .local v0, "authStarted":Z
    :goto_21
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 820
    if-eqz v0, :cond_29

    if-nez p1, :cond_29

    .line 822
    return v3

    .line 829
    :cond_29
    :try_start_29
    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 830
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result v5

    const/4 v6, 0x5

    .line 829
    invoke-interface {v4, v5, v6, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 834
    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v5, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3a} :catch_3b

    .line 835
    return v2

    .line 836
    :catch_3b
    move-exception v2

    .line 837
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "Remote exception"

    invoke-static {v1, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    .end local v2    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method onClientDied()Z
    .registers 5

    .line 660
    const/4 v0, 0x1

    :try_start_1
    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    packed-switch v1, :pswitch_data_32

    .line 667
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_12

    .line 663
    :pswitch_9
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 664
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 665
    const/4 v0, 0x0

    return v0

    .line 667
    :goto_12
    iget-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_18

    .line 668
    return v0

    .line 670
    :catch_18
    move-exception v1

    .line 671
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricService/AuthSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return v0

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method onCookieReceived(I)V
    .registers 20
    .param p1, "cookie"    # I

    .line 277
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-boolean v0, v1, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    const-string v3, "BiometricService/AuthSession"

    if-eqz v0, :cond_21

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received cookie but already cancelled (ignoring): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 281
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 282
    const-string/jumbo v0, "onCookieReceived after successful auth"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 286
    :cond_2e
    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    .line 287
    .local v4, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v4, v2}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCookieReturnedIfCookieMatches(I)V

    .line 288
    .end local v4    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_36

    .line 290
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->allCookiesReceived()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensorsExceptFingerprint()V

    .line 298
    iget v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_bf

    .line 301
    :try_start_5a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequiredByAnyEligibleSensor()Z

    move-result v10

    .line 303
    .local v10, "requireConfirmation":Z
    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6b
    iget-object v4, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v4, v4, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_88

    .line 305
    iget-object v4, v1, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v5, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v5, v5, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/BiometricSensor;

    iget v5, v5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    aput v5, v4, v0

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 307
    .end local v0    # "i":I
    :cond_88
    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthSession;->getMultiSensorModeForNewSession(Ljava/util/Collection;)I

    move-result v0

    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    .line 310
    iget-object v5, v1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v6, v1, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v7, v1, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v8, v1, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 313
    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->shouldShowCredential()Z

    move-result v9

    iget v11, v1, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-wide v12, v1, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v14, v1, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_a6} :catch_b7

    move-object v4, v3

    :try_start_a7
    iget-wide v2, v1, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget v0, v1, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    .line 310
    move-wide v15, v2

    move/from16 v17, v0

    invoke-interface/range {v5 .. v17}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V

    .line 320
    const/4 v0, 0x2

    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_b4} :catch_b5

    .end local v10    # "requireConfirmation":Z
    goto :goto_be

    .line 321
    :catch_b5
    move-exception v0

    goto :goto_b9

    :catch_b7
    move-exception v0

    move-object v4, v3

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    :goto_b9
    const-string v2, "Remote exception"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_be
    goto :goto_ca

    .line 326
    :cond_bf
    const/4 v0, 0x3

    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_ca

    .line 329
    :cond_c3
    move-object v4, v3

    const-string/jumbo v0, "onCookieReceived: still waiting"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_ca
    return-void
.end method

.method onDeviceCredentialPressed()V
    .registers 3

    .line 644
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 645
    const-string v0, "BiometricService/AuthSession"

    const-string/jumbo v1, "onDeviceCredentialPressed after successful auth"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void

    .line 651
    :cond_f
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 652
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 653
    return-void
.end method

.method onDialogAnimatedIn()V
    .registers 3

    .line 540
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDialogAnimatedIn, unexpected state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void

    .line 545
    :cond_21
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 546
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedFingerprintSensors()V

    .line 547
    return-void
.end method

.method onDialogDismissed(I[B)V
    .registers 8
    .param p1, "reason"    # I
    .param p2, "credentialAttestation"    # [B

    .line 746
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->logOnDialogDismissed(I)V

    .line 748
    const-string v0, "BiometricService/AuthSession"

    packed-switch p1, :pswitch_data_96

    .line 789
    goto :goto_6e

    .line 750
    :pswitch_9
    if-eqz p2, :cond_11

    .line 751
    :try_start_b
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->addAuthToken([B)I

    goto :goto_38

    .line 753
    :cond_11
    const-string v1, "credentialAttestation is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 781
    :pswitch_17
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 782
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result v2

    iget v3, p0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    iget v4, p0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 781
    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 786
    goto :goto_84

    .line 772
    :pswitch_25
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 773
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 772
    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 777
    goto :goto_84

    .line 768
    :pswitch_32
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v1, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    .line 769
    goto :goto_84

    .line 757
    :goto_38
    :pswitch_38
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz v1, :cond_5a

    .line 758
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->addAuthToken([B)I

    move-result v1

    .line 759
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    nop

    .end local v1    # "result":I
    goto :goto_60

    .line 761
    :cond_5a
    const-string/jumbo v1, "mTokenEscrow is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :goto_60
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 764
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    move-result v2

    .line 763
    invoke-interface {v1, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded(I)V

    .line 765
    goto :goto_84

    .line 796
    :catchall_6a
    move-exception v0

    goto :goto_91

    .line 792
    :catch_6c
    move-exception v1

    goto :goto_89

    .line 789
    :goto_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_84} :catch_6c
    .catchall {:try_start_b .. :try_end_84} :catchall_6a

    .line 796
    :goto_84
    nop

    :goto_85
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 797
    goto :goto_90

    .line 793
    .local v1, "e":Landroid/os/RemoteException;
    :goto_89
    :try_start_89
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_6a

    .line 796
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_85

    .line 798
    :goto_90
    return-void

    .line 796
    :goto_91
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 797
    throw v0

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_38
        :pswitch_32
        :pswitch_25
        :pswitch_38
        :pswitch_17
        :pswitch_17
        :pswitch_9
    .end packed-switch
.end method

.method onErrorReceived(IIII)Z
    .registers 28
    .param p1, "sensorId"    # I
    .param p2, "cookie"    # I
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onErrorReceived sensor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "BiometricService/AuthSession"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/AuthSession;->containsCookie(I)Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_4b

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown/expired cookie: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v7

    .line 406
    :cond_4b
    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v4, v4, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricSensor;

    .line 407
    .local v8, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_69

    .line 408
    invoke-virtual {v8, v1, v2}, Lcom/android/server/biometrics/BiometricSensor;->goToStoppedStateIfCookieMatches(II)V

    .line 410
    .end local v8    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_69
    goto :goto_53

    .line 413
    :cond_6a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 414
    const-string/jumbo v4, "onErrorReceived after successful auth (ignoring)"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v7

    .line 418
    :cond_77
    iput v2, v0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    .line 419
    iput v3, v0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 421
    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v4

    .line 423
    .local v4, "modality":I
    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/16 v9, 0x9

    const/4 v10, 0x1

    packed-switch v8, :pswitch_data_14a

    .line 496
    :pswitch_87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled error state, mState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_148

    .line 492
    :pswitch_a1
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v7, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v6, v7, v8}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V

    .line 493
    return v10

    .line 488
    :pswitch_a9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Biometric canceled, ignoring from state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    goto/16 :goto_148

    .line 482
    :pswitch_c3
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v6, v4, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 483
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v7, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v6, v7, v8}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V

    .line 484
    return v10

    .line 458
    :pswitch_d0
    const/4 v6, 0x7

    if-eq v2, v6, :cond_d8

    if-ne v2, v9, :cond_d6

    goto :goto_d8

    :cond_d6
    move v6, v7

    goto :goto_d9

    :cond_d8
    :goto_d8
    move v6, v10

    .line 460
    .local v6, "errorLockout":Z
    :goto_d9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isAllowDeviceCredential()Z

    move-result v8

    if-eqz v8, :cond_e9

    if-eqz v6, :cond_e9

    .line 462
    iput v9, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 463
    iget-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v8, v4, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    goto :goto_148

    .line 464
    :cond_e9
    const/4 v8, 0x5

    if-ne v2, v8, :cond_f9

    .line 465
    iget-object v7, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v8, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v7, v8, v9}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V

    .line 469
    iget-object v7, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v7, v4, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 470
    return v10

    .line 472
    :cond_f9
    const/16 v8, 0x8

    iput v8, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 473
    iget-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v8, v4, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 475
    goto :goto_148

    .line 427
    .end local v6    # "errorLockout":Z
    :pswitch_103
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isAllowDeviceCredential()Z

    move-result v6

    if-eqz v6, :cond_142

    .line 428
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 429
    invoke-virtual {v6}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    .line 431
    .local v6, "authenticators":I
    invoke-static {v6}, Lcom/android/server/biometrics/Utils;->removeBiometricBits(I)I

    move-result v6

    .line 432
    iget-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v8, v6}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 434
    iput v9, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 435
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    .line 436
    new-array v13, v7, [I

    iput-object v13, v0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 438
    iget-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v11, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v12, v0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget v9, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-wide v7, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v15, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-wide v14, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    move-wide/from16 v20, v14

    const/4 v14, 0x1

    move-object/from16 v19, v18

    const/4 v15, 0x0

    move/from16 v16, v9

    move-wide/from16 v17, v7

    const/4 v7, 0x0

    move/from16 v22, v7

    invoke-interface/range {v10 .. v22}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V

    .line 449
    .end local v6    # "authenticators":I
    goto :goto_148

    .line 450
    :cond_142
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v6, v4, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 451
    return v10

    .line 500
    :goto_148
    const/4 v6, 0x0

    return v6

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_103
        :pswitch_d0
        :pswitch_d0
        :pswitch_c3
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_a9
        :pswitch_a1
    .end packed-switch
.end method

.method onSystemEvent(I)V
    .registers 5
    .param p1, "event"    # I

    .line 524
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 525
    const-string/jumbo v0, "onSystemEvent after successful auth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void

    .line 528
    :cond_f
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isReceiveSystemEvents()Z

    move-result v0

    if-nez v0, :cond_18

    .line 529
    return-void

    .line 533
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSystemEvent(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 536
    goto :goto_24

    .line 534
    :catch_1e
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method onTryAgainPressed()V
    .registers 5

    .line 550
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 551
    const-string/jumbo v0, "onTryAgainPressed after successful auth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void

    .line 555
    :cond_f
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2d

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTryAgainPressed, state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_2d
    const/4 v0, 0x1

    :try_start_2e
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Z)V

    .line 561
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_34} :catch_35

    .line 564
    goto :goto_4c

    .line 562
    :catch_35
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCrypto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 938
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PreAuthInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 936
    return-object v0
.end method
