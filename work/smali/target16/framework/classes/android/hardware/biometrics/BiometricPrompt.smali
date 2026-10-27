.class public Landroid/hardware/biometrics/BiometricPrompt;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;,
        Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;,
        Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResultType;,
        Landroid/hardware/biometrics/BiometricPrompt$Builder;,
        Landroid/hardware/biometrics/BiometricPrompt$DismissedReason;
    }
.end annotation


# static fields
.field public static final whitelist AUTHENTICATION_RESULT_TYPE_BIOMETRIC:I = 0x2

.field public static final whitelist AUTHENTICATION_RESULT_TYPE_DEVICE_CREDENTIAL:I = 0x1

.field public static final blacklist DISMISSED_REASON_BIOMETRIC_CONFIRMED:I = 0x1

.field public static final blacklist DISMISSED_REASON_BIOMETRIC_CONFIRM_NOT_REQUIRED:I = 0x4

.field public static final blacklist DISMISSED_REASON_CONTENT_VIEW_MORE_OPTIONS:I = 0x8

.field public static final blacklist DISMISSED_REASON_CREDENTIAL_CONFIRMED:I = 0x7

.field public static final blacklist DISMISSED_REASON_ERROR:I = 0x5

.field public static final blacklist DISMISSED_REASON_ERROR_NO_WM:I = 0x9

.field public static final blacklist DISMISSED_REASON_FALLBACK_OPTION_BASE:I = 0x14

.field public static final blacklist DISMISSED_REASON_FALLBACK_OPTION_MAX:I = 0x18

.field public static final greylist-max-o DISMISSED_REASON_NEGATIVE:I = 0x2

.field public static final blacklist DISMISSED_REASON_SERVER_REQUESTED:I = 0x6

.field public static final greylist-max-o DISMISSED_REASON_USER_CANCEL:I = 0x3

.field public static final greylist-max-o HIDE_DIALOG_DELAY:I = 0x7d0

.field static final blacklist MAX_FALLBACK_OPTIONS:I = 0x4

.field static final blacklist MAX_LOGO_DESCRIPTION_CHARACTER_NUMBER:I = 0x1e

.field private static final blacklist TAG:Ljava/lang/String; = "BiometricPrompt"


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private final blacklist mBiometricServiceReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field private final blacklist mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mFallbackOptions:[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private blacklist mIsPromptShowing:Z

.field private final greylist-max-o mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private final blacklist mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private final blacklist mService:Landroid/hardware/biometrics/IAuthService;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$AmOKJWAP3rm6xIAx9UacYo4XJXo(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt;->lambda$authenticateInternal$1(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Hibrh_rd9OmPbAUQ4I1QdZsKDCA(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt;->lambda$authenticateInternal$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentViewMoreOptionsButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

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

.method static bridge synthetic blacklist -$$Nest$fgetmFallbackOptions(Landroid/hardware/biometrics/BiometricPrompt;)[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFallbackOptions:[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Landroid/hardware/biometrics/BiometricPrompt;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->cancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 1

    invoke-static {p0}, Landroid/hardware/biometrics/BiometricPrompt;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/IAuthService;)V
    .registers 8

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mToken:Landroid/os/IBinder;

    .line 816
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$1;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$1;-><init>(Landroid/hardware/biometrics/BiometricPrompt;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mBiometricServiceReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 943
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    .line 944
    iput-object p2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 945
    iput-object p3, p0, Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 946
    iput-object p5, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFallbackOptions:[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 947
    iput-object p4, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 948
    iput-object p6, p0, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    .line 949
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z

    .line 950
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/IAuthService;Landroid/hardware/biometrics/BiometricPrompt-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/hardware/biometrics/BiometricPrompt;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/IAuthService;)V

    return-void
.end method

.method private blacklist authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J
    .registers 21

    .line 1603
    move-object/from16 v1, p5

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    const-string v2, "BiometricPrompt"

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v3

    cmp-long v0, v3, p1

    if-eqz v0, :cond_1a

    .line 1604
    const-string v0, "CryptoObject operation ID does not match argument; setting field to null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 1609
    :cond_1a
    const-wide/16 v3, -0x1

    :try_start_1c
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1610
    const-string v0, "Authentication already canceled"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return-wide v3

    .line 1614
    :cond_28
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1615
    iput-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 1616
    iget-boolean v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z

    if-eqz v0, :cond_46

    .line 1617
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    const v5, 0x10401be

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1618
    iget-object v5, p0, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0}, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1622
    return-wide v3

    .line 1626
    :cond_46
    const-wide/16 v5, 0x0

    cmp-long v0, p1, v5

    if-eqz v0, :cond_6b

    .line 1631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1632
    iget-object v5, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/hardware/biometrics/PromptInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1633
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1634
    new-instance v5, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v5, v0}, Landroid/hardware/biometrics/PromptInfo;-><init>(Landroid/os/Parcel;)V

    .line 1635
    invoke-virtual {v5}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    if-nez v0, :cond_69

    .line 1636
    const/16 v0, 0xf

    invoke-virtual {v5, v0}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 1638
    :cond_69
    move-object v13, v5

    goto :goto_6e

    .line 1639
    :cond_6b
    iget-object v5, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    move-object v13, v5

    .line 1642
    :goto_6e
    iget-object v6, p0, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    iget-object v7, p0, Landroid/hardware/biometrics/BiometricPrompt;->mToken:Landroid/os/IBinder;

    iget-object v11, p0, Landroid/hardware/biometrics/BiometricPrompt;->mBiometricServiceReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    .line 1643
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1642
    move-wide v8, p1

    move/from16 v10, p6

    invoke-interface/range {v6 .. v13}, Landroid/hardware/biometrics/IAuthService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide v5

    .line 1644
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;

    invoke-direct {v0, p0, v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;-><init>(Landroid/hardware/biometrics/BiometricPrompt;J)V

    move-object/from16 v7, p3

    invoke-virtual {v7, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1645
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_8e} :catch_8f

    .line 1647
    return-wide v5

    .line 1648
    :catch_8f
    move-exception v0

    .line 1649
    const-string v5, "Remote exception while authenticating"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1650
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1653
    return-wide v3
.end method

.method private blacklist authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V
    .registers 15

    .line 1591
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 1592
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    move-wide v3, v0

    .line 1593
    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J

    .line 1594
    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .registers 6

    .line 1575
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_1a

    .line 1577
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/biometrics/IAuthService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 1580
    goto :goto_1a

    .line 1578
    :catch_12
    move-exception p1

    .line 1579
    const-string p2, "BiometricPrompt"

    const-string v0, "Unable to cancel authentication"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1582
    :cond_1a
    :goto_1a
    return-void
.end method

.method private static blacklist convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 1671
    if-nez p0, :cond_4

    .line 1672
    const/4 p0, 0x0

    return-object p0

    .line 1675
    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_f

    .line 1676
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1680
    :cond_f
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2b

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_1c

    goto :goto_2b

    .line 1684
    :cond_1c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1685
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1684
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_32

    .line 1681
    :cond_2b
    :goto_2b
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1688
    :goto_32
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1689
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1690
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1691
    return-object v0
.end method

.method public static whitelist getMaxFallbackOptions()I
    .registers 1

    .line 1662
    const/4 v0, 0x4

    return v0
.end method

.method private static blacklist isCredentialAllowed(I)Z
    .registers 2

    .line 1666
    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private synthetic blacklist lambda$authenticateInternal$0(Ljava/lang/String;)V
    .registers 4

    .line 1619
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 1621
    return-void
.end method

.method private synthetic blacklist lambda$authenticateInternal$1(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .registers 4

    .line 1650
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    .line 1652
    const v1, 0x10401c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1650
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public whitelist authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .registers 12

    .line 1489
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1491
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1492
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1493
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

    .line 1494
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    .line 1489
    const/16 v1, 0x161

    const/4 v2, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZZZI)V

    .line 1496
    if-eqz p1, :cond_6b

    .line 1499
    if-eqz p2, :cond_63

    .line 1502
    if-eqz p3, :cond_5b

    .line 1505
    if-eqz p4, :cond_53

    .line 1510
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    .line 1511
    if-nez v0, :cond_36

    .line 1512
    const/16 v0, 0xf

    .line 1514
    :cond_36
    and-int/lit16 v0, v0, 0xff

    .line 1515
    and-int/lit8 v0, v0, -0x10

    if-nez v0, :cond_4b

    .line 1519
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    .line 1520
    return-void

    .line 1516
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only Strong biometrics supported with crypto"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1506
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1503
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an executor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1500
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a cancellation signal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1497
    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a crypto object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .registers 11

    .line 1555
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1557
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1558
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1559
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

    .line 1560
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    .line 1555
    const/16 v1, 0x161

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZZZI)V

    .line 1562
    if-eqz p1, :cond_49

    .line 1565
    if-eqz p2, :cond_41

    .line 1568
    if-eqz p3, :cond_39

    .line 1571
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    .line 1572
    return-void

    .line 1569
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1566
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an executor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1563
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a cancellation signal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist authenticateForOperation(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;J)J
    .registers 14

    .line 1431
    if-eqz p1, :cond_26

    .line 1434
    if-eqz p2, :cond_1e

    .line 1437
    if-eqz p3, :cond_16

    .line 1441
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v2, p4

    invoke-direct/range {v1 .. v7}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J

    move-result-wide p1

    return-wide p1

    .line 1438
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1435
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an executor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1432
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a cancellation signal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V
    .registers 12

    .line 1400
    if-eqz p1, :cond_21

    .line 1403
    if-eqz p2, :cond_19

    .line 1406
    if-eqz p3, :cond_11

    .line 1410
    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J

    .line 1411
    return-void

    .line 1407
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1404
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an executor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1401
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a cancellation signal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAllowedAuthenticators()I
    .registers 2

    .line 1088
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

    .line 1098
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAllowedSensorIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContentView()Landroid/hardware/biometrics/PromptContentView;
    .registers 2

    .line 1045
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1034
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFallbackOptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/FallbackOption;",
            ">;"
        }
    .end annotation

    .line 1066
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getFallbackOptions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLogoBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 973
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLogoDescription()Ljava/lang/String;
    .registers 2

    .line 987
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLogoRes()I
    .registers 2

    .line 961
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoRes()I

    move-result v0

    return v0
.end method

.method public whitelist getNegativeButtonText()Ljava/lang/CharSequence;
    .registers 2

    .line 1055
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1015
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 996
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isAllowBackgroundAuthentication()Z
    .registers 2

    .line 1107
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v0

    return v0
.end method

.method public whitelist isConfirmationRequired()Z
    .registers 2

    .line 1076
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v0

    return v0
.end method

.method public blacklist shouldUseDefaultSubtitle()Z
    .registers 2

    .line 1025
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultSubtitle()Z

    move-result v0

    return v0
.end method

.method public blacklist shouldUseDefaultTitle()Z
    .registers 2

    .line 1006
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v0

    return v0
.end method
