.class public final Lcom/android/server/biometrics/AuthSession;
.super Ljava/lang/Object;
.source "AuthSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mAuthenticatedSensorId:I

.field public mAuthenticatedTimeMs:J

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field final mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public mCancelled:Z

.field public final mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

.field public final mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mDebugEnabled:Z

.field public mErrorEscrow:I

.field public final mFingerprintSensorProperties:Ljava/util/List;

.field public final mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mOpPackageName:Ljava/lang/String;

.field public final mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

.field public final mOperationId:J

.field public final mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

.field final mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public final mRandom:Ljava/util/Random;

.field public final mRequestId:J

.field final mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

.field public mSensors:[I

.field public final mSfpsSensorIds:Ljava/util/List;

.field public mStartTimeMs:J

.field public mState:I

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

.field final mToken:Landroid/os/IBinder;

.field public mTokenEscrow:[B

.field public final mUserId:I

.field public mVendorCodeEscrow:I

.field public final mWatchRangingHelper:Lcom/android/server/biometrics/WatchRangingHelper;


# direct methods
.method public static synthetic $r8$lambda$2M4LopX4Ez2rKcMHs76UjWeEzSc(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 2

    .line 418
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ChHPsLtcbiJMupuEDhJZUfAZROQ(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 2

    .line 745
    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-eq p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ID5A6A-jPDHI5JoGe-udE9UUIvk(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 2

    .line 422
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M7eQp7jg92vLYvWd3vPSSiGJwBo(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 2

    .line 786
    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bXUoZ1akYP8TSERLcQsRxOhHGpg(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 1

    .line 441
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$g8qp1XVNJHFOHIT4_u_o6wyL8I0(Lcom/android/server/biometrics/AuthSession;ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/AuthSession;->lambda$onAuthenticationSucceeded$5(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kXVbxXAD3wv3_6Jp9ulzyk5Wb2k(Lcom/android/server/biometrics/AuthSession;ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/AuthSession;->lambda$onErrorReceived$4(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pscd1KBAusTe8AFE4gvOAKtBqfE(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Ljava/lang/Integer;
    .registers 1

    .line 240
    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStoreAuthorization;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;Lcom/android/server/biometrics/WatchRangingHelper;)V
    .registers 45

    .line 188
    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v22, p21

    .line 185
    invoke-direct/range {v0 .. v22}, Lcom/android/server/biometrics/AuthSession;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStoreAuthorization;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/WatchRangingHelper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStoreAuthorization;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/WatchRangingHelper;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Landroid/hardware/biometrics/IBiometricSysuiReceiver;",
            "Landroid/security/KeyStoreAuthorization;",
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
            ">;",
            "Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;",
            "Lcom/android/server/biometrics/WatchRangingHelper;",
            ")V"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v1, -0x1

    .line 147
    iput v1, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating AuthSession with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 215
    iput-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 216
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 217
    iput-object p4, p0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 218
    iput-object p5, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 219
    iput-object p6, p0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    .line 220
    iput-object p7, p0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    .line 221
    iput-object p8, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 222
    iput-object p9, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    .line 223
    iput-wide p10, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    move-wide p2, p12

    .line 224
    iput-wide p2, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    move/from16 p2, p14

    .line 225
    iput p2, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    move-object/from16 p2, p15

    .line 226
    iput-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-object/from16 p2, p16

    .line 227
    iput-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-object/from16 p3, p17

    .line 228
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    move-object/from16 p3, p18

    .line 229
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    move/from16 p3, p19

    .line 230
    iput-boolean p3, p0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    move-object/from16 p3, p20

    .line 231
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mFingerprintSensorProperties:Ljava/util/List;

    .line 232
    iput-boolean v0, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    move-object/from16 p4, p21

    .line 233
    iput-object p4, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 234
    new-instance p4, Lcom/android/server/biometrics/log/OperationContextExt;

    const/4 p5, 0x1

    .line 235
    invoke-virtual {p8}, Lcom/android/server/biometrics/PreAuthInfo;->getIsMandatoryBiometricsAuthentication()Z

    move-result p6

    invoke-direct {p4, p5, p6}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(ZZ)V

    iput-object p4, p0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 236
    const-class p4, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 238
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>()V

    .line 239
    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 240
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mSfpsSensorIds:Ljava/util/List;

    move-object/from16 p1, p22

    .line 241
    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mWatchRangingHelper:Lcom/android/server/biometrics/WatchRangingHelper;

    .line 244
    :try_start_8e
    invoke-interface {p2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_95} :catch_96

    goto :goto_9b

    .line 246
    :catch_96
    const-string p1, "Unable to link to death"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_9b
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateUnknown()V

    return-void
.end method


# virtual methods
.method public allCookiesReceived()Z
    .registers 3

    .line 1059
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->numSensorsWaitingForCookie()I

    move-result p0

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remaining cookies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public binderDied()V
    .registers 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died, session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    invoke-interface {p0}, Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;->onClientDied()V

    return-void
.end method

.method public final cancelAllSensors()V
    .registers 2

    .line 441
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method public final cancelAllSensors(Ljava/util/function/Function;)V
    .registers 9

    .line 449
    const-string v0, "BiometricService/AuthSession"

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 451
    :try_start_16
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling sensorId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCancelling(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_41} :catch_42

    goto :goto_a

    .line 456
    :catch_42
    const-string v2, "Unable to cancel authentication"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_48
    return-void
.end method

.method public final containsCookie(I)Z
    .registers 3

    .line 1045
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1046
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final getAcquiredMessageForSensor(III)Ljava/lang/String;
    .registers 5

    .line 1122
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/16 v0, 0x8

    if-eq p1, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 1127
    :cond_d
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1125
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEligibleModalities()I
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result p0

    return p0
.end method

.method public getRequestId()J
    .registers 3

    .line 1069
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    return-wide v0
.end method

.method public getState()I
    .registers 1

    .line 1065
    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return p0
.end method

.method public final getStatsClient()I
    .registers 1

    .line 1134
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x3

    return p0

    :cond_a
    const/4 p0, 0x2

    return p0
.end method

.method public goToInitialState()V
    .registers 16

    .line 317
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v1, v0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x9

    .line 321
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 322
    new-array v6, v2, [I

    iput-object v6, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 324
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget v9, v0, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    iget-wide v10, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v12, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v13, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    return-void

    .line 334
    :cond_2d
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 336
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Z)V

    const/4 v0, 0x1

    .line 337
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return-void

    .line 341
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No authenticators requested"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasAuthenticated()Z
    .registers 2

    .line 826
    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final hasAuthenticatedAndConfirmed()Z
    .registers 3

    .line 830
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isAllowDeviceCredential()Z
    .registers 1

    .line 1054
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result p0

    return p0
.end method

.method public final isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z
    .registers 3

    .line 403
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricSensor;->confirmationSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 404
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/BiometricSensor;->confirmationAlwaysRequired(I)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final isConfirmationRequiredByAnyEligibleSensor()Z
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 410
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isCrypto()Z
    .registers 5

    .line 1041
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$onAuthenticationSucceeded$5(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 3

    .line 743
    iget p2, p2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-eq p2, p1, :cond_12

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mSfpsSensorIds:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onErrorReceived$4(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 3

    .line 496
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToStrength(I)I

    move-result p0

    .line 497
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result p1

    .line 496
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final logOnDialogDismissed(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    .line 838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    sub-long v11, v1, v3

    .line 851
    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 853
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v7

    .line 855
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->getStatsClient()I

    move-result v9

    iget-boolean v10, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v14, v1, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    iget v15, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    const/high16 v16, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v13, 0x3

    .line 851
    invoke-virtual/range {v5 .. v16}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZIF)V

    return-void

    .line 863
    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    sub-long v12, v2, v4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_46

    const/4 v2, 0x3

    if-eq v1, v2, :cond_43

    const/16 v2, 0x8

    if-eq v1, v2, :cond_40

    const/4 v1, 0x0

    :goto_3e
    move v14, v1

    goto :goto_49

    :cond_40
    const/16 v1, 0x16

    goto :goto_3e

    :cond_43
    const/16 v1, 0xa

    goto :goto_3e

    :cond_46
    const/16 v1, 0xd

    goto :goto_3e

    :goto_49
    if-eqz v14, :cond_62

    .line 892
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget-object v7, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 894
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v8

    .line 896
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->getStatsClient()I

    move-result v10

    iget-boolean v11, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    const/4 v15, 0x0

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    const/4 v9, 0x2

    move/from16 v16, v0

    .line 892
    invoke-virtual/range {v6 .. v16}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIII)V

    :cond_62
    return-void
.end method

.method public onAcquired(III)V
    .registers 8

    .line 584
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 585
    const-string/jumbo p0, "onAcquired after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 589
    :cond_f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthSession;->getAcquiredMessageForSensor(III)Ljava/lang/String;

    move-result-object v0

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sensorId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " acquiredInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3b

    return-void

    .line 597
    :cond_3b
    :try_start_3b
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result p1

    invoke-interface {v2, p1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricHelp(ILjava/lang/String;)V

    const/4 p1, 0x6

    if-ne p2, p1, :cond_49

    add-int/lit16 p2, p3, 0x3e8

    .line 600
    :cond_49
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p0, p2, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAcquired(ILjava/lang/String;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception p0

    .line 602
    const-string p1, "Remote exception"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onAuthenticationRejected(I)V
    .registers 7

    .line 750
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 751
    const-string/jumbo p0, "onAuthenticationRejected after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 756
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 758
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->pauseSensorIfSupported(I)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x4

    .line 759
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_27

    :catch_25
    move-exception p0

    goto :goto_2d

    .line 761
    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2c} :catch_25

    return-void

    .line 763
    :goto_2d
    const-string p1, "RemoteException"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onAuthenticationSucceeded(IZ[B)V
    .registers 8

    .line 709
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 710
    const-string/jumbo p0, "onAuthenticationSucceeded after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 714
    :cond_f
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    if-eqz p2, :cond_16

    .line 716
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    goto :goto_2c

    :cond_16
    if-eqz p3, :cond_2c

    .line 719
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dropping authToken for non-strong biometric, id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    const/4 p2, 0x6

    .line 726
    :try_start_2d
    iget-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v0

    invoke-interface {p3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated(I)V

    .line 728
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequiredByAnyEligibleSensor()Z

    move-result p3

    if-nez p3, :cond_42

    const/4 p3, 0x7

    .line 731
    iput p3, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_50

    :catch_40
    move-exception p3

    goto :goto_4b

    .line 733
    :cond_42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    .line 734
    iput p2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4a} :catch_40

    goto :goto_50

    .line 737
    :goto_4b
    const-string v0, "RemoteException"

    invoke-static {v1, v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    :goto_50
    iget p3, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    if-ne p3, p2, :cond_5d

    .line 742
    new-instance p2, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/AuthSession;I)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    goto :goto_65

    .line 745
    :cond_5d
    new-instance p2, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    :goto_65
    return-void
.end method

.method public onAuthenticationTimedOut(IIII)V
    .registers 7

    .line 768
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result p2

    const-string v0, "BiometricService/AuthSession"

    if-eqz p2, :cond_f

    .line 769
    const-string/jumbo p0, "onAuthenticationTimedOut after successful auth"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 774
    :cond_f
    :try_start_f
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v1

    invoke-interface {p2, v1, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->pauseSensorIfSupported(I)Z

    const/4 p1, 0x4

    .line 776
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 778
    const-string p1, "RemoteException"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onCancelAuthSession(Z)Z
    .registers 8

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 1002
    const-string/jumbo p0, "onCancelAuthSession after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1010
    :cond_10
    iput-boolean v2, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    .line 1012
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

    .line 1016
    :goto_21
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    if-eqz v0, :cond_29

    if-nez p1, :cond_29

    return v3

    .line 1026
    :cond_29
    :try_start_29
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result v0

    const/4 v4, 0x5

    .line 1026
    invoke-interface {p1, v0, v4, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 1031
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v4, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {p1, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3a} :catch_3b

    return v2

    :catch_3b
    move-exception p0

    .line 1034
    const-string p1, "Remote exception"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public onClientDied()Z
    .registers 5

    const/4 v0, 0x1

    .line 809
    :try_start_1
    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    .line 816
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V

    return v0

    :catch_11
    move-exception p0

    goto :goto_1c

    :cond_13
    const/16 v1, 0xa

    .line 812
    iput v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 813
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_11

    const/4 p0, 0x0

    return p0

    .line 820
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onCookieReceived(I)V
    .registers 16

    .line 346
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_1b

    .line 347
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received cookie but already cancelled (ignoring): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 350
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 351
    const-string/jumbo p0, "onCookieReceived after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 355
    :cond_28
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 356
    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCookieReturnedIfCookieMatches(I)V

    goto :goto_30

    .line 359
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->allCookiesReceived()Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    .line 364
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensorsExceptFingerprint()V

    .line 367
    iget p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_aa

    .line 370
    :try_start_54
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequiredByAnyEligibleSensor()Z

    move-result v7

    .line 372
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p1, p1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    const/4 p1, 0x0

    .line 373
    :goto_65
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_85

    .line 374
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v2, v2, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    aput v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_65

    :catch_82
    move-exception v0

    move-object p0, v0

    goto :goto_a4

    .line 377
    :cond_85
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 380
    invoke-virtual {p1}, Lcom/android/server/biometrics/PreAuthInfo;->shouldShowCredential()Z

    move-result v6

    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget v8, p1, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    iget-wide v9, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v11, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v12, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 377
    invoke-interface/range {v2 .. v13}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    const/4 p1, 0x2

    .line 386
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_a3} :catch_82

    return-void

    .line 388
    :goto_a4
    const-string p1, "Remote exception"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 393
    :cond_aa
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedFingerprintSensors()V

    const/4 p1, 0x3

    .line 395
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return-void

    .line 398
    :cond_b1
    const-string/jumbo p0, "onCookieReceived: still waiting"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceCredentialPressed()V
    .registers 2

    .line 793
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 794
    const-string p0, "BiometricService/AuthSession"

    const-string/jumbo v0, "onDeviceCredentialPressed after successful auth"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 800
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    const/16 v0, 0x9

    .line 801
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return-void
.end method

.method public onDialogAnimatedIn(Z)V
    .registers 6

    .line 623
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v1, 0x2

    const-string v2, "BiometricService/AuthSession"

    const/4 v3, 0x6

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2c

    if-eq v0, v3, :cond_2c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2c

    .line 626
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onDialogAnimatedIn, unexpected state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    if-eq v0, v3, :cond_31

    const/4 v0, 0x3

    .line 631
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    :cond_31
    if-eqz p1, :cond_37

    .line 635
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedFingerprintSensors()V

    goto :goto_3c

    .line 637
    :cond_37
    const-string p1, "delaying fingerprint sensor start"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_3c
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/server/biometrics/log/BiometricContext;->updateContext(Lcom/android/server/biometrics/log/OperationContextExt;Z)Lcom/android/server/biometrics/log/OperationContextExt;

    return-void
.end method

.method public onDialogDismissed(I[B)V
    .registers 12

    .line 909
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->logOnDialogDismissed(I)V

    .line 911
    const-string v1, "BiometricService/AuthSession"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_126

    const/16 p2, 0x14

    if-lt p1, p2, :cond_20

    const/16 p2, 0x18

    if-ge p1, p2, :cond_20

    .line 965
    :try_start_11
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    goto/16 :goto_9c

    :catchall_18
    move-exception v0

    move-object p1, v0

    goto/16 :goto_f9

    :catch_1c
    move-exception v0

    move-object p1, v0

    goto/16 :goto_c8

    .line 967
    :cond_20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 954
    :pswitch_35
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 955
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result p2

    const/4 v0, 0x1

    .line 954
    invoke-interface {p1, p2, v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_9c

    :pswitch_40
    if-eqz p2, :cond_48

    .line 914
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    invoke-virtual {v0, p2}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I

    goto :goto_6e

    .line 916
    :cond_48
    const-string p2, "credentialAttestation is null"

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 946
    :pswitch_4e
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 947
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result p2

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    iget v3, p0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 946
    invoke-interface {p1, p2, v0, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_9c

    .line 937
    :pswitch_5c
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 938
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result p2

    const/16 v0, 0xa

    .line 937
    invoke-interface {p1, p2, v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_9c

    .line 933
    :pswitch_68
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    goto :goto_9c

    .line 920
    :goto_6e
    :pswitch_6e
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz p2, :cond_8d

    .line 921
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    invoke-virtual {v0, p2}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I

    move-result p2

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAuthToken: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 924
    :cond_8d
    const-string/jumbo p2, "mTokenEscrow is null"

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :goto_93
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 928
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    move-result p1

    .line 927
    invoke-interface {p2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded(I)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_9c} :catch_1c
    .catchall {:try_start_11 .. :try_end_9c} :catchall_18

    .line 974
    :goto_9c
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz p1, :cond_c4

    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-eqz p2, :cond_c4

    .line 975
    array-length p1, p1

    new-array v8, p1, [B

    .line 976
    :goto_a7
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    array-length p2, p1

    if-ge v2, p2, :cond_b3

    .line 977
    aget-byte p1, p1, v2

    aput-byte p1, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 979
    :cond_b3
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 980
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    iget v7, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 979
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 988
    :cond_c4
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    return-void

    .line 972
    :goto_c8
    :try_start_c8
    const-string p2, "Remote exception"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_18

    .line 974
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz p1, :cond_f5

    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-eqz p2, :cond_f5

    .line 975
    array-length p1, p1

    new-array v8, p1, [B

    .line 976
    :goto_d8
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    array-length p2, p1

    if-ge v2, p2, :cond_e4

    .line 977
    aget-byte p1, p1, v2

    aput-byte p1, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    .line 979
    :cond_e4
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 980
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    iget v7, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 979
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 988
    :cond_f5
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    return-void

    .line 974
    :goto_f9
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz p2, :cond_121

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-eqz v0, :cond_121

    .line 975
    array-length p2, p2

    new-array v8, p2, [B

    .line 976
    :goto_104
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    array-length v0, p2

    if-ge v2, v0, :cond_110

    .line 977
    aget-byte p2, p2, v2

    aput-byte p2, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_104

    .line 979
    :cond_110
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 980
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    iget v7, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 979
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 988
    :cond_121
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 989
    throw p1

    nop

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_68
        :pswitch_5c
        :pswitch_6e
        :pswitch_4e
        :pswitch_4e
        :pswitch_40
        :pswitch_68
        :pswitch_35
    .end packed-switch
.end method

.method public onErrorReceived(IIII)Z
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onErrorReceived sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BiometricService/AuthSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/AuthSession;->containsCookie(I)Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_4f

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown/expired cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 476
    :cond_4f
    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v5, v5, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_57
    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricSensor;

    .line 477
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v10

    if-ne v10, v9, :cond_57

    .line 478
    invoke-virtual {v8, v2, v3}, Lcom/android/server/biometrics/BiometricSensor;->goToStoppedStateIfCookieMatches(II)V

    goto :goto_57

    .line 483
    :cond_6e
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 484
    const-string/jumbo v0, "onErrorReceived after successful auth (ignoring)"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 488
    :cond_7b
    iget v2, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v5, 0x5

    const/4 v8, 0x4

    if-ne v2, v8, :cond_84

    if-ne v3, v5, :cond_84

    return v7

    :cond_84
    const/4 v2, 0x7

    const/16 v10, 0x9

    const/4 v11, 0x1

    if-eq v3, v2, :cond_8f

    if-ne v3, v10, :cond_8d

    goto :goto_8f

    :cond_8d
    move v2, v7

    goto :goto_90

    :cond_8f
    :goto_8f
    move v2, v11

    :goto_90
    if-eqz v2, :cond_9a

    .line 496
    new-instance v12, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;

    invoke-direct {v12, v0, v1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/AuthSession;I)V

    invoke-virtual {v0, v12}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    .line 500
    :cond_9a
    iput v3, v0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    .line 501
    iput v4, v0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 503
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v1

    .line 505
    iget v12, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    if-eq v12, v11, :cond_120

    const/4 v13, 0x2

    if-eq v12, v13, :cond_fa

    if-eq v12, v9, :cond_fa

    if-eq v12, v8, :cond_ed

    const/4 v8, 0x6

    if-eq v12, v8, :cond_fa

    if-eq v12, v10, :cond_d6

    const/16 v1, 0xa

    if-eq v12, v1, :cond_ce

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled error state, mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_159

    .line 572
    :cond_ce
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v2, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V

    return v11

    .line 568
    :cond_d6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Biometric canceled, ignoring from state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_159

    .line 562
    :cond_ed
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2, v1, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 563
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v2, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V

    return v11

    :cond_fa
    if-eqz v2, :cond_104

    .line 541
    iput v10, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 542
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    goto :goto_159

    :cond_104
    if-ne v3, v5, :cond_116

    .line 544
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 545
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v5, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v2, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V

    .line 549
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v1, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    return v11

    :cond_116
    const/16 v2, 0x8

    .line 552
    iput v2, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 553
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    goto :goto_159

    .line 509
    :cond_120
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->isAllowDeviceCredential()Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 510
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 511
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    .line 513
    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->removeBiometricBits(I)I

    move-result v1

    .line 514
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 516
    iput v10, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 517
    new-array v14, v7, [I

    iput-object v14, v0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 519
    iget-object v11, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v12, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v13, v0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    iget-wide v2, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v5, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v17, v1

    move-wide/from16 v18, v2

    move-object/from16 v20, v4

    move-wide/from16 v21, v5

    invoke-interface/range {v11 .. v22}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    :goto_159
    return v7

    .line 530
    :cond_15a
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v1, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    return v11
.end method

.method public onPauseAuthentication()V
    .registers 4

    .line 675
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 676
    const-string/jumbo p0, "onPauseAuthentication after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 680
    :cond_f
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2f

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPauseAuthentication, state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    const/4 v0, 0x4

    .line 685
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 686
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    return-void
.end method

.method public onResumeAuthentication()V
    .registers 4

    .line 690
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 691
    const-string/jumbo p0, "onResumeAuthentication after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 695
    :cond_f
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_33

    const/16 v2, 0x9

    if-eq v0, v2, :cond_33

    const/4 v2, 0x3

    if-eq v0, v2, :cond_33

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResumeAuthentication, state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    const/4 v0, 0x1

    .line 702
    :try_start_34
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Z)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p0

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartFingerprint()V
    .registers 3

    .line 646
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2b

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartFingerprint, started from unexpected state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedFingerprintSensors()V

    return-void
.end method

.method public onSystemEvent(I)V
    .registers 4

    .line 607
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 608
    const-string/jumbo p0, "onSystemEvent after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 611
    :cond_f
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isReceiveSystemEvents()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 616
    :cond_18
    :try_start_18
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSystemEvent(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p0

    .line 618
    const-string p1, "RemoteException"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onTryAgainPressed()V
    .registers 4

    .line 658
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    .line 659
    const-string/jumbo p0, "onTryAgainPressed after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 663
    :cond_f
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2b

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTryAgainPressed, state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v0, 0x1

    .line 668
    :try_start_2c
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception p0

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final pauseSensorIfSupported(I)Z
    .registers 7

    .line 783
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToState(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    move v0, v3

    goto :goto_c

    :cond_b
    move v0, v2

    .line 785
    :goto_c
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1f

    if-nez v0, :cond_1f

    .line 786
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    return v3

    :cond_1f
    return v2
.end method

.method public final sensorIdToModality(I)I
    .registers 4

    .line 1091
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1092
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, v1, :cond_8

    .line 1093
    iget p0, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    return p0

    .line 1096
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sensor: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService/AuthSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final sensorIdToState(I)I
    .registers 4

    .line 1101
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1102
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, v1, :cond_8

    .line 1103
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result p0

    return p0

    .line 1106
    :cond_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sensor: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService/AuthSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final sensorIdToStrength(I)I
    .registers 4

    .line 1112
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1113
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, v1, :cond_8

    .line 1114
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result p0

    return p0

    .line 1117
    :cond_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sensor: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService/AuthSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xfff

    return p0
.end method

.method public final setSensorsToStateUnknown()V
    .registers 2

    .line 278
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 282
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->goToStateUnknown()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final setSensorsToStateWaitingForCookie(Z)V
    .registers 19

    move-object/from16 v0, p0

    .line 287
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    .line 288
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v2

    const/4 v4, 0x5

    if-eqz p1, :cond_44

    if-eq v2, v4, :cond_44

    const/4 v5, 0x4

    if-eq v2, v5, :cond_44

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip retry because sensor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricService/AuthSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_44
    if-eqz p1, :cond_48

    .line 295
    iput v4, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 298
    :cond_48
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    const v4, 0x7ffffffe

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v13, v2, 0x1

    .line 299
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v4

    .line 304
    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-wide v6, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v9, v0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    iget-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v11, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 306
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v14

    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 307
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    move-result v15

    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 308
    invoke-virtual {v2}, Lcom/android/server/biometrics/log/OperationContextExt;->getIsMandatoryBiometrics()Z

    move-result v16

    .line 304
    invoke-virtual/range {v3 .. v16}, Lcom/android/server/biometrics/BiometricSensor;->goToStateWaitingForCookie(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V

    goto :goto_a

    :cond_79
    return-void
.end method

.method public final startAllPreparedFingerprintSensors()V
    .registers 2

    .line 422
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method public final startAllPreparedSensors(Ljava/util/function/Function;)V
    .registers 6

    .line 426
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 427
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 432
    :try_start_20
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->startSensor()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_8

    :catch_24
    move-exception v1

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start prepared client, sensor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_3c
    return-void
.end method

.method public final startAllPreparedSensorsExceptFingerprint()V
    .registers 2

    .line 418
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method public final statsModality()I
    .registers 4

    .line 1075
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 1076
    iget v1, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1d

    or-int/lit8 v0, v0, 0x1

    :cond_1d
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_23

    or-int/lit8 v0, v0, 0x2

    :cond_23
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    or-int/lit8 v0, v0, 0x4

    goto :goto_9

    :cond_2a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCrypto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PreAuthInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
