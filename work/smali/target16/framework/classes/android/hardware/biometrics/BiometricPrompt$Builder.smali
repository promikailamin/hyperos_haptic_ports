.class public Landroid/hardware/biometrics/BiometricPrompt$Builder;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mFallbackOptionCount:I

.field private final blacklist mFallbackOptions:[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private greylist-max-o mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private final blacklist mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private blacklist mService:Landroid/hardware/biometrics/IAuthService;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mFallbackOptions:[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mFallbackOptionCount:I

    .line 212
    new-instance v0, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 213
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    .line 214
    return-void
.end method

.method private static blacklist isValidIconType(I)Z
    .registers 3

    .line 517
    const/4 v0, 0x1

    if-eqz p0, :cond_10

    if-eq p0, v0, :cond_10

    const/4 v1, 0x2

    if-eq p0, v1, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_10

    const/4 v1, 0x4

    if-ne p0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0
.end method


# virtual methods
.method public whitelist addFallbackOption(Ljava/lang/CharSequence;ILjava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 7

    .line 493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 496
    if-eqz p3, :cond_4c

    .line 499
    if-eqz p4, :cond_44

    .line 502
    invoke-static {p2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->isValidIconType(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 505
    iget v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mFallbackOptionCount:I

    invoke-static {}, Landroid/hardware/biometrics/BiometricPrompt;->getMaxFallbackOptions()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 509
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    new-instance v1, Landroid/hardware/biometrics/FallbackOption;

    invoke-direct {v1, p1, p2}, Landroid/hardware/biometrics/FallbackOption;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->addFallbackOption(Landroid/hardware/biometrics/FallbackOption;)V

    .line 510
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mFallbackOptions:[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iget p2, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mFallbackOptionCount:I

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    invoke-direct {v0, p3, p4}, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    aput-object v0, p1, p2

    .line 511
    iget p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mFallbackOptionCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mFallbackOptionCount:I

    .line 512
    return-object p0

    .line 506
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum fallback option count of 4 exceeded"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 503
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid icon type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 500
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Listener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 497
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 494
    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Text must be set and non-empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist build()Landroid/hardware/biometrics/BiometricPrompt;
    .registers 10

    .line 773
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 774
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v1

    .line 776
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_15

    goto :goto_1d

    .line 777
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Title must be set and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    if-nez v0, :cond_2c

    .line 780
    const-string v0, "auth"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 779
    invoke-static {v0}, Landroid/hardware/biometrics/IAuthService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IAuthService;

    move-result-object v0

    goto :goto_2e

    .line 780
    :cond_2c
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    :goto_2e
    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    .line 781
    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v4, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iget-object v5, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iget-object v6, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mFallbackOptions:[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iget-object v7, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/hardware/biometrics/BiometricPrompt;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/IAuthService;Landroid/hardware/biometrics/BiometricPrompt-IA;)V

    return-object v1
.end method

.method public blacklist setAllowBackgroundAuthentication(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 649
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAllowBackgroundAuthentication(Z)V

    .line 650
    return-object p0
.end method

.method public blacklist setAllowBackgroundAuthentication(ZZ)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4

    .line 670
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAllowBackgroundAuthentication(Z)V

    .line 671
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p1, p2}, Landroid/hardware/biometrics/PromptInfo;->setUseParentProfileForDeviceCredential(Z)V

    .line 672
    return-object p0
.end method

.method public whitelist setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 609
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 610
    return-object p0
.end method

.method public blacklist setAllowedSensorIds(Ljava/util/List;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/hardware/biometrics/BiometricPrompt$Builder;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAllowedSensorIds(Ljava/util/List;)V

    .line 636
    return-object p0
.end method

.method public whitelist setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 546
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setConfirmationRequested(Z)V

    .line 547
    return-object p0
.end method

.method public whitelist setContentView(Landroid/hardware/biometrics/PromptContentView;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 368
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setContentView(Landroid/hardware/biometrics/PromptContentView;)V

    .line 370
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 371
    check-cast p1, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    .line 372
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->getButtonInfo()Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 375
    :cond_15
    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 351
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDescription(Ljava/lang/CharSequence;)V

    .line 352
    return-object p0
.end method

.method public whitelist setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 571
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialAllowed(Z)V

    .line 572
    return-object p0
.end method

.method public blacklist setDisallowBiometricsIfPolicyExists(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 685
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDisallowBiometricsIfPolicyExists(Z)V

    .line 686
    return-object p0
.end method

.method public blacklist setIgnoreEnrollmentState(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 712
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setIgnoreEnrollmentState(Z)V

    .line 713
    return-object p0
.end method

.method public blacklist setIsForLegacyFingerprintManager(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 725
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setIsForLegacyFingerprintManager(I)V

    .line 726
    return-object p0
.end method

.method public whitelist setLogoBitmap(Landroid/graphics/Bitmap;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4

    .line 255
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoRes()I

    move-result v0

    if-nez v0, :cond_f

    .line 259
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/hardware/biometrics/PromptInfo;->setLogo(ILandroid/graphics/Bitmap;)V

    .line 260
    return-object p0

    .line 256
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Exclusively one of logo resource or logo bitmap can be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setLogoDescription(Ljava/lang/String;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4

    .line 278
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_17

    .line 282
    const-string v0, "BiometricPrompt"

    const-string v1, "Logo description passed in exceeds30 character number and may be truncated."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_17
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setLogoDescription(Ljava/lang/String;)V

    .line 287
    return-object p0

    .line 279
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Logo description passed in can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setLogoRes(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4

    .line 230
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 234
    if-eqz p1, :cond_19

    .line 235
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$smconvertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 235
    invoke-virtual {v0, p1, v1}, Landroid/hardware/biometrics/PromptInfo;->setLogo(ILandroid/graphics/Bitmap;)V

    .line 238
    :cond_19
    return-object p0

    .line 231
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Exclusively one of logo resource or logo bitmap can be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 5

    .line 443
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 446
    if-eqz p2, :cond_1f

    .line 449
    if-eqz p3, :cond_17

    .line 452
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 453
    new-instance p1, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    invoke-direct {p1, p2, p3}, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 454
    return-object p0

    .line 450
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Listener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 444
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Text must be set and non-empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setRealCallerForConfirmDeviceCredentialActivity(Landroid/content/ComponentName;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 755
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setRealCallerForConfirmDeviceCredentialActivity(Landroid/content/ComponentName;)V

    .line 756
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    .line 757
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/PromptInfo;->setClassNameIfItIsConfirmDeviceCredentialActivity(Ljava/lang/String;)V

    .line 758
    return-object p0
.end method

.method public blacklist setReceiveSystemEvents(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 698
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setReceiveSystemEvents(Z)V

    .line 699
    return-object p0
.end method

.method public blacklist setService(Landroid/hardware/biometrics/IAuthService;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 2

    .line 386
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    .line 387
    return-object p0
.end method

.method public blacklist setShowEmergencyCallButton(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 739
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setShowEmergencyCallButton(Z)V

    .line 740
    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 321
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 322
    return-object p0
.end method

.method public blacklist setTextForDeviceCredential(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 5

    .line 402
    if-eqz p1, :cond_7

    .line 403
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialTitle(Ljava/lang/CharSequence;)V

    .line 405
    :cond_7
    if-eqz p2, :cond_e

    .line 406
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p1, p2}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialSubtitle(Ljava/lang/CharSequence;)V

    .line 408
    :cond_e
    if-eqz p3, :cond_15

    .line 409
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p1, p3}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialDescription(Ljava/lang/CharSequence;)V

    .line 411
    :cond_15
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 297
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    return-object p0
.end method

.method public blacklist setUseDefaultSubtitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 334
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->setUseDefaultSubtitle(Z)V

    .line 335
    return-object p0
.end method

.method public blacklist setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 310
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->setUseDefaultTitle(Z)V

    .line 311
    return-object p0
.end method
