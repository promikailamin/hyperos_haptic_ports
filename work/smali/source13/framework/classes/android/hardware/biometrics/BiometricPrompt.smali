.class public Landroid/hardware/biometrics/BiometricPrompt;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResultType;,
        Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;,
        Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;,
        Landroid/hardware/biometrics/BiometricPrompt$Builder;,
        Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;,
        Landroid/hardware/biometrics/BiometricPrompt$DismissedReason;
    }
.end annotation


# static fields
.field public static final whitelist AUTHENTICATION_RESULT_TYPE_BIOMETRIC:I = 0x2

.field public static final whitelist AUTHENTICATION_RESULT_TYPE_DEVICE_CREDENTIAL:I = 0x1

.field public static final blacklist DISMISSED_REASON_BIOMETRIC_CONFIRMED:I = 0x1

.field public static final blacklist DISMISSED_REASON_BIOMETRIC_CONFIRM_NOT_REQUIRED:I = 0x4

.field public static final blacklist DISMISSED_REASON_CREDENTIAL_CONFIRMED:I = 0x7

.field public static final blacklist DISMISSED_REASON_ERROR:I = 0x5

.field public static final greylist-max-o DISMISSED_REASON_NEGATIVE:I = 0x2

.field public static final blacklist DISMISSED_REASON_SERVER_REQUESTED:I = 0x6

.field public static final greylist-max-o DISMISSED_REASON_USER_CANCEL:I = 0x3

.field public static final greylist-max-o HIDE_DIALOG_DELAY:I = 0x7d0

.field private static final blacklist TAG:Ljava/lang/String; = "BiometricPrompt"


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private final blacklist mBiometricServiceReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private final blacklist mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private final blacklist mService:Landroid/hardware/biometrics/IAuthService;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCryptoObject(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Landroid/hardware/biometrics/BiometricPrompt;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->cancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisCredentialAllowed(I)Z
    .registers 1

    invoke-static {p0}, Landroid/hardware/biometrics/BiometricPrompt;->isCredentialAllowed(I)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p3, "negativeButtonInfo"    # Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mToken:Landroid/os/IBinder;

    .line 490
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$1;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$1;-><init>(Landroid/hardware/biometrics/BiometricPrompt;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mBiometricServiceReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 584
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    .line 585
    iput-object p2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 586
    iput-object p3, p0, Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 587
    nop

    .line 588
    const-string v0, "auth"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 587
    invoke-static {v0}, Landroid/hardware/biometrics/IAuthService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IAuthService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    .line 589
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/biometrics/BiometricPrompt;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;)V

    return-void
.end method

.method private blacklist authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J
    .registers 22
    .param p1, "operationId"    # J
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .param p6, "userId"    # I

    .line 1100
    move-object v1, p0

    move-object/from16 v10, p5

    iget-object v0, v1, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    const-string v11, "BiometricPrompt"

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-eqz v0, :cond_19

    .line 1101
    const-string v0, "CryptoObject operation ID does not match argument; setting field to null"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 1106
    :cond_19
    const-wide/16 v12, -0x1

    :try_start_1b
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1107
    const-string v0, "Authentication already canceled"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_26} :catch_7b

    .line 1108
    return-wide v12

    .line 1111
    :cond_27
    move-object/from16 v14, p4

    :try_start_29
    iput-object v14, v1, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1112
    iput-object v10, v1, Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 1115
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_52

    .line 1120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1121
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v2, v1, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/hardware/biometrics/PromptInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1122
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1123
    new-instance v2, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v2, v0}, Landroid/hardware/biometrics/PromptInfo;-><init>(Landroid/os/Parcel;)V

    .line 1124
    .local v2, "promptInfo":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v3

    if-nez v3, :cond_50

    .line 1125
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 1127
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_50
    move-object v0, v2

    goto :goto_55

    .line 1128
    .end local v2    # "promptInfo":Landroid/hardware/biometrics/PromptInfo;
    :cond_52
    iget-object v0, v1, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    move-object v2, v0

    .line 1131
    .local v0, "promptInfo":Landroid/hardware/biometrics/PromptInfo;
    :goto_55
    iget-object v2, v1, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    iget-object v3, v1, Landroid/hardware/biometrics/BiometricPrompt;->mToken:Landroid/os/IBinder;

    iget-object v7, v1, Landroid/hardware/biometrics/BiometricPrompt;->mBiometricServiceReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v4, v1, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    .line 1132
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1131
    move-wide/from16 v4, p1

    move/from16 v6, p6

    move-object v9, v0

    invoke-interface/range {v2 .. v9}, Landroid/hardware/biometrics/IAuthService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide v2

    .line 1133
    .local v2, "authId":J
    new-instance v4, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;

    invoke-direct {v4, p0, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;-><init>(Landroid/hardware/biometrics/BiometricPrompt;J)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_6f} :catch_77

    move-object/from16 v5, p3

    :try_start_71
    invoke-virtual {v5, v4}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_74} :catch_75

    .line 1134
    return-wide v2

    .line 1135
    .end local v0    # "promptInfo":Landroid/hardware/biometrics/PromptInfo;
    .end local v2    # "authId":J
    :catch_75
    move-exception v0

    goto :goto_80

    :catch_77
    move-exception v0

    move-object/from16 v5, p3

    goto :goto_80

    :catch_7b
    move-exception v0

    move-object/from16 v5, p3

    move-object/from16 v14, p4

    .line 1136
    .local v0, "e":Landroid/os/RemoteException;
    :goto_80
    const-string v2, "Remote exception while authenticating"

    invoke-static {v11, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    iget-object v2, v1, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v10}, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1140
    return-wide v12
.end method

.method private blacklist authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V
    .registers 15
    .param p1, "crypto"    # Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .param p5, "userId"    # I

    .line 1087
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 1088
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    move-wide v3, v0

    .line 1089
    .local v3, "operationId":J
    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J

    .line 1090
    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .registers 6
    .param p1, "requestId"    # J

    .line 1071
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_18

    .line 1073
    :try_start_4
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/biometrics/IAuthService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 1076
    goto :goto_18

    .line 1074
    :catch_10
    move-exception v0

    .line 1075
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricPrompt"

    const-string v2, "Unable to cancel authentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method private static blacklist isCredentialAllowed(I)Z
    .registers 2
    .param p0, "allowedAuthenticators"    # I

    .line 1145
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public whitelist authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .registers 14
    .param p1, "crypto"    # Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 986
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 988
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 989
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 990
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    move v5, v0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 991
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    .line 986
    const/16 v1, 0x161

    const/4 v2, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZZZI)V

    .line 993
    if-eqz p1, :cond_6b

    .line 996
    if-eqz p2, :cond_63

    .line 999
    if-eqz p3, :cond_5b

    .line 1002
    if-eqz p4, :cond_53

    .line 1007
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    .line 1008
    .local v0, "authenticators":I
    if-nez v0, :cond_36

    .line 1009
    const/16 v0, 0xf

    .line 1011
    :cond_36
    and-int/lit16 v1, v0, 0xff

    .line 1012
    .local v1, "biometricStrength":I
    and-int/lit8 v2, v1, -0x10

    if-nez v2, :cond_4b

    .line 1016
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    .line 1017
    return-void

    .line 1013
    :cond_4b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only Strong biometrics supported with crypto"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1003
    .end local v0    # "authenticators":I
    .end local v1    # "biometricStrength":I
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a cancellation signal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a crypto object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .registers 17
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 1051
    move-object v6, p0

    iget-object v0, v6, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1053
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v9

    iget-object v0, v6, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1054
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v10

    iget-object v0, v6, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1055
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move v11, v0

    iget-object v0, v6, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1056
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v12

    .line 1051
    const/16 v7, 0x161

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZZZI)V

    .line 1058
    if-eqz p1, :cond_4b

    .line 1061
    if-eqz p2, :cond_43

    .line 1064
    if-eqz p3, :cond_3b

    .line 1067
    const/4 v1, 0x0

    iget-object v0, v6, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    .line 1068
    return-void

    .line 1065
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1062
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a cancellation signal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist authenticateForOperation(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;J)J
    .registers 14
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .param p4, "operationId"    # J

    .line 929
    if-eqz p1, :cond_26

    .line 932
    if-eqz p2, :cond_1e

    .line 935
    if-eqz p3, :cond_16

    .line 939
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, p0

    move-wide v2, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J

    move-result-wide v0

    return-wide v0

    .line 936
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a cancellation signal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V
    .registers 12
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .param p4, "userId"    # I

    .line 898
    if-eqz p1, :cond_21

    .line 901
    if-eqz p2, :cond_19

    .line 904
    if-eqz p3, :cond_11

    .line 908
    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J

    .line 909
    return-void

    .line 905
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a cancellation signal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAllowedAuthenticators()I
    .registers 2

    .line 657
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    return v0
.end method

.method public blacklist getAllowedSensorIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAllowedSensorIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 625
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNegativeButtonText()Ljava/lang/CharSequence;
    .registers 2

    .line 635
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 616
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 597
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isAllowBackgroundAuthentication()Z
    .registers 2

    .line 676
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v0

    return v0
.end method

.method public whitelist isConfirmationRequired()Z
    .registers 2

    .line 645
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$authenticateInternal$0$android-hardware-biometrics-BiometricPrompt(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 1137
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    .line 1139
    const v1, 0x10401d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1137
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public blacklist shouldUseDefaultTitle()Z
    .registers 2

    .line 607
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v0

    return v0
.end method
