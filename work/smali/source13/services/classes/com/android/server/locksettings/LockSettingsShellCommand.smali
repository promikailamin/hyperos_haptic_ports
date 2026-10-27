.class Lcom/android/server/locksettings/LockSettingsShellCommand;
.super Landroid/os/ShellCommand;
.source "LockSettingsShellCommand.java"


# static fields
.field private static final COMMAND_CLEAR:Ljava/lang/String; = "clear"

.field private static final COMMAND_GET_DISABLED:Ljava/lang/String; = "get-disabled"

.field private static final COMMAND_HELP:Ljava/lang/String; = "help"

.field private static final COMMAND_REMOVE_CACHE:Ljava/lang/String; = "remove-cache"

.field private static final COMMAND_REQUIRE_STRONG_AUTH:Ljava/lang/String; = "require-strong-auth"

.field private static final COMMAND_SET_DISABLED:Ljava/lang/String; = "set-disabled"

.field private static final COMMAND_SET_PASSWORD:Ljava/lang/String; = "set-password"

.field private static final COMMAND_SET_PATTERN:Ljava/lang/String; = "set-pattern"

.field private static final COMMAND_SET_PIN:Ljava/lang/String; = "set-pin"

.field private static final COMMAND_SET_ROR_PROVIDER_PACKAGE:Ljava/lang/String; = "set-resume-on-reboot-provider-package"

.field private static final COMMAND_SP:Ljava/lang/String; = "sp"

.field private static final COMMAND_VERIFY:Ljava/lang/String; = "verify"


# instance fields
.field private final mCallingPid:I

.field private final mCallingUid:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNew:Ljava/lang/String;

.field private mOld:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;II)V
    .registers 6
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 67
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 69
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallingPid:I

    .line 70
    iput p4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallingUid:I

    .line 71
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private checkCredential()Z
    .registers 6

    .line 365
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_75

    .line 366
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 367
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Profile uses unified challenge"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    return v1

    .line 372
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result v0

    .line 374
    .local v0, "result":Z
    if-nez v0, :cond_62

    .line 375
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 376
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 378
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old password \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' didn\'t match"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_69

    .line 381
    :cond_62
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V
    :try_end_69
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_1f .. :try_end_69} :catch_6a

    .line 383
    :goto_69
    return v0

    .line 384
    .end local v0    # "result":Z
    :catch_6a
    move-exception v0

    .line 385
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Request throttled"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    return v1

    .line 389
    .end local v0    # "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    :cond_75
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    .line 390
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Old password provided but user has no password"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    return v1

    .line 393
    :cond_87
    const/4 v0, 0x1

    return v0
.end method

.method private getOldCredential()Lcom/android/internal/widget/LockscreenCredential;
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 240
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 242
    :cond_d
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 243
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 244
    .local v0, "quality":I
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 245
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    .line 247
    :cond_2c
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    .line 250
    .end local v0    # "quality":I
    :cond_33
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 251
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 256
    :cond_4c
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method private isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z
    .registers 9
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 331
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 332
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 333
    .local v0, "requiredMetrics":Landroid/app/admin/PasswordMetrics;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 334
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(I)I

    move-result v1

    .line 336
    .local v1, "requiredComplexity":I
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPassword()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_31

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_31

    .line 340
    :cond_1e
    new-instance v2, Landroid/app/admin/PasswordMetrics;

    .line 341
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v4

    if-eqz v4, :cond_28

    move v4, v3

    goto :goto_29

    :cond_28
    const/4 v4, -0x1

    :goto_29
    invoke-direct {v2, v4}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    .line 342
    .local v2, "metrics":Landroid/app/admin/PasswordMetrics;
    invoke-static {v0, v1, v2}, Landroid/app/admin/PasswordMetrics;->validatePasswordMetrics(Landroid/app/admin/PasswordMetrics;ILandroid/app/admin/PasswordMetrics;)Ljava/util/List;

    move-result-object v4

    .local v4, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/PasswordValidationError;>;"
    goto :goto_3e

    .line 337
    .end local v2    # "metrics":Landroid/app/admin/PasswordMetrics;
    .end local v4    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/PasswordValidationError;>;"
    :cond_31
    :goto_31
    nop

    .line 338
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v4

    .line 337
    invoke-static {v0, v1, v2, v4}, Landroid/app/admin/PasswordMetrics;->validatePassword(Landroid/app/admin/PasswordMetrics;IZ[B)Ljava/util/List;

    move-result-object v4

    .line 345
    .restart local v4    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/PasswordValidationError;>;"
    :goto_3e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    .line 346
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New credential doesn\'t satisfy admin policies: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 347
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    return v5

    .line 350
    :cond_64
    return v3
.end method

.method private parseArgs()V
    .registers 5

    .line 211
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_49

    .line 212
    const-string v0, "--old"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 213
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    goto :goto_0

    .line 214
    :cond_16
    const-string v0, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 215
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    goto :goto_0

    .line 217
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 221
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 222
    return-void
.end method

.method private runChangeSp()V
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 226
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 227
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->enableSyntheticPassword()V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Synthetic password enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_33

    .line 229
    :cond_1b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 230
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->disableSyntheticPassword()V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Synthetic password disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 235
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 234
    const-string v2, "SP Enabled = %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private runClear()Z
    .registers 5

    .line 321
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 322
    .local v0, "none":Lcom/android/internal/widget/LockscreenCredential;
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 323
    const/4 v1, 0x0

    return v1

    .line 325
    :cond_c
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 326
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Lock credential cleared"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    const/4 v1, 0x1

    return v1
.end method

.method private runGetDisabled()V
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    .line 361
    .local v0, "isLockScreenDisabled":Z
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 362
    return-void
.end method

.method private runRemoveCache()V
    .registers 4

    .line 398
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeCachedUnifiedChallenge(I)V

    .line 399
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Password cached removed for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private runRequireStrongAuth()Z
    .registers 6

    .line 303
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 305
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_6a

    :cond_b
    goto :goto_16

    :pswitch_c
    const-string v1, "STRONG_AUTH_REQUIRED_AFTER_USER_LOCKDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_17

    :goto_16
    move v1, v3

    :goto_17
    packed-switch v1, :pswitch_data_70

    .line 311
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    return v2

    .line 307
    :pswitch_35
    const/16 v1, 0x20

    .line 308
    .local v1, "strongAuthReason":I
    iput v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 309
    nop

    .line 314
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 315
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Require strong auth for USER_ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_6a
    .packed-switch 0x6a6dfbed
        :pswitch_c
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_35
    .end packed-switch
.end method

.method private runSetDisabled()V
    .registers 5

    .line 354
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 355
    .local v0, "disabled":Z
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 356
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock screen disabled set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method private runSetPassword()Z
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 273
    .local v0, "password":Lcom/android/internal/widget/LockscreenCredential;
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 274
    const/4 v1, 0x0

    return v1

    .line 276
    :cond_e
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 277
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password set to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    const/4 v1, 0x1

    return v1
.end method

.method private runSetPattern()Z
    .registers 5

    .line 261
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 262
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v0

    .line 261
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 263
    .local v0, "pattern":Lcom/android/internal/widget/LockscreenCredential;
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 264
    const/4 v1, 0x0

    return v1

    .line 266
    :cond_16
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 267
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern set to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x1

    return v1
.end method

.method private runSetPin()Z
    .registers 5

    .line 282
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 283
    .local v0, "pin":Lcom/android/internal/widget/LockscreenCredential;
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 284
    const/4 v1, 0x0

    return v1

    .line 286
    :cond_e
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 287
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pin set to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    const/4 v1, 0x1

    return v1
.end method

.method private runSetResumeOnRebootProviderPackage()Z
    .registers 8

    .line 292
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 293
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "persist.sys.resume_on_reboot_provider_package"

    .line 294
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShellCommand"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallingPid:I

    iget v5, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallingUid:I

    const-string v6, "android.permission.BIND_RESUME_ON_REBOOT_SERVICE"

    invoke-virtual {v2, v6, v4, v5, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 298
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v2, 0x1

    return v2
.end method

.method private runVerify()V
    .registers 3

    .line 154
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Lock credential verified successfully"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 12
    .param p1, "cmd"    # Ljava/lang/String;

    .line 76
    if-nez p1, :cond_7

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 80
    :cond_7
    const/4 v0, -0x1

    :try_start_8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iput v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 82
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->parseArgs()V

    .line 83
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_154

    const-string/jumbo v2, "set-disabled"

    const-string v3, "get-disabled"

    const-string/jumbo v4, "set-resume-on-reboot-provider-package"

    const-string/jumbo v5, "help"

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v1, :cond_66

    .line 84
    :try_start_2e
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_178

    :cond_35
    goto :goto_56

    :sswitch_36
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v7

    goto :goto_57

    :sswitch_3e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v8

    goto :goto_57

    :sswitch_46
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v9

    goto :goto_57

    :sswitch_4e
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v6

    goto :goto_57

    :goto_56
    move v1, v0

    :goto_57
    packed-switch v1, :pswitch_data_18a

    .line 91
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    goto :goto_60

    .line 89
    :pswitch_5f
    goto :goto_66

    .line 91
    :goto_60
    const-string v2, "The device does not support lock screen - ignoring the command."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    return v0

    .line 96
    :cond_66
    :goto_66
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_196

    :cond_6d
    goto :goto_94

    :sswitch_6e
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    move v1, v6

    goto :goto_95

    :sswitch_76
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    move v1, v7

    goto :goto_95

    :sswitch_7e
    const-string/jumbo v1, "require-strong-auth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    move v1, v8

    goto :goto_95

    :sswitch_89
    const-string/jumbo v1, "remove-cache"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    move v1, v9

    goto :goto_95

    :goto_94
    move v1, v0

    :goto_95
    packed-switch v1, :pswitch_data_1a8

    .line 111
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->checkCredential()Z

    move-result v1

    goto :goto_ad

    .line 108
    :pswitch_9d
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->onHelp()V

    .line 109
    return v9

    .line 105
    :pswitch_a1
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runRequireStrongAuth()Z

    .line 106
    return v9

    .line 102
    :pswitch_a5
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetResumeOnRebootProviderPackage()Z

    .line 103
    return v9

    .line 99
    :pswitch_a9
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runRemoveCache()V

    .line 100
    return v9

    .line 111
    :goto_ad
    if-nez v1, :cond_b0

    .line 112
    return v0

    .line 114
    :cond_b0
    const/4 v1, 0x1

    .line 115
    .local v1, "success":Z
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1b4

    :cond_b8
    goto :goto_109

    :sswitch_b9
    const-string/jumbo v2, "set-pin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    move v6, v8

    goto :goto_10a

    :sswitch_c4
    const-string/jumbo v2, "set-password"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    goto :goto_10a

    :sswitch_ce
    const-string v2, "clear"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    move v6, v7

    goto :goto_10a

    :sswitch_d8
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    const/4 v6, 0x5

    goto :goto_10a

    :sswitch_e0
    const-string/jumbo v2, "sp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    const/4 v6, 0x4

    goto :goto_10a

    :sswitch_eb
    const-string/jumbo v2, "verify"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    const/4 v6, 0x6

    goto :goto_10a

    :sswitch_f6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    const/4 v6, 0x7

    goto :goto_10a

    :sswitch_fe
    const-string/jumbo v2, "set-pattern"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    move v6, v9

    goto :goto_10a

    :goto_109
    move v6, v0

    :goto_10a
    packed-switch v6, :pswitch_data_1d6

    .line 141
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    goto :goto_13a

    .line 138
    :pswitch_112
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runGetDisabled()V

    .line 139
    goto :goto_150

    .line 135
    :pswitch_116
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runVerify()V

    .line 136
    goto :goto_150

    .line 132
    :pswitch_11a
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetDisabled()V

    .line 133
    goto :goto_150

    .line 129
    :pswitch_11e
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runChangeSp()V

    .line 130
    goto :goto_150

    .line 126
    :pswitch_122
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runClear()Z

    move-result v2

    move v1, v2

    .line 127
    goto :goto_150

    .line 123
    :pswitch_128
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPin()Z

    move-result v2

    move v1, v2

    .line 124
    goto :goto_150

    .line 120
    :pswitch_12e
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPassword()Z

    move-result v2

    move v1, v2

    .line 121
    goto :goto_150

    .line 117
    :pswitch_134
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPattern()Z

    move-result v2

    move v1, v2

    .line 118
    goto :goto_150

    .line 141
    :goto_13a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_150} :catch_154

    .line 144
    :goto_150
    if-eqz v1, :cond_153

    move v0, v9

    :cond_153
    return v0

    .line 145
    .end local v1    # "success":Z
    :catch_154
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while executing command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 148
    return v0

    nop

    :sswitch_data_178
    .sparse-switch
        -0x57d6f0ed -> :sswitch_4e
        0x30cf41 -> :sswitch_46
        0x47ccf87 -> :sswitch_3e
        0x3f569a99 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
    .end packed-switch

    :sswitch_data_196
    .sparse-switch
        -0x74adb707 -> :sswitch_89
        -0x33c6cd4a -> :sswitch_7e
        0x30cf41 -> :sswitch_76
        0x3f569a99 -> :sswitch_6e
    .end sparse-switch

    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_a5
        :pswitch_a1
        :pswitch_9d
    .end packed-switch

    :sswitch_data_1b4
    .sparse-switch
        -0x79d9f6db -> :sswitch_fe
        -0x57d6f0ed -> :sswitch_f6
        -0x30df7787 -> :sswitch_eb
        0xe5d -> :sswitch_e0
        0x47ccf87 -> :sswitch_d8
        0x5a5b64d -> :sswitch_ce
        0x3ce04fa6 -> :sswitch_c4
        0x763ee1aa -> :sswitch_b9
    .end sparse-switch

    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_134
        :pswitch_12e
        :pswitch_128
        :pswitch_122
        :pswitch_11e
        :pswitch_11a
        :pswitch_116
        :pswitch_112
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 159
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 160
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_6
    const-string/jumbo v2, "lockSettings service commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    const-string v2, "NOTE: when lock screen is set, all commands require the --old <CREDENTIAL> argument."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    const-string v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    const-string v2, "    Prints this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    const-string v2, "  get-disabled [--old <CREDENTIAL>] [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    const-string v2, "    Checks whether lock screen is disabled."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    const-string v2, "  set-disabled [--old <CREDENTIAL>] [--user USER_ID] <true|false>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    const-string v2, "    When true, disables lock screen."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const-string v2, "  set-pattern [--old <CREDENTIAL>] [--user USER_ID] <PATTERN>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    const-string v2, "    Sets the lock screen as pattern, using the given PATTERN to unlock."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    const-string v2, "  set-pin [--old <CREDENTIAL>] [--user USER_ID] <PIN>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    const-string v2, "    Sets the lock screen as PIN, using the given PIN to unlock."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    const-string v2, "  set-password [--old <CREDENTIAL>] [--user USER_ID] <PASSWORD>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string v2, "    Sets the lock screen as password, using the given PASSOWRD to unlock."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    const-string v2, "  sp [--old <CREDENTIAL>] [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    const-string v2, "    Gets whether synthetic password is enabled."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    const-string v2, "  sp [--old <CREDENTIAL>] [--user USER_ID] <1|0>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    const-string v2, "    Enables / disables synthetic password."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    const-string v2, "  clear [--old <CREDENTIAL>] [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    const-string v2, "    Clears the lock credentials."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    const-string v2, "  verify [--old <CREDENTIAL>] [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    const-string v2, "    Verifies the lock credentials."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    const-string v2, "  remove-cache [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    const-string v2, "    Removes cached unified challenge for the managed profile."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    const-string v2, "  set-resume-on-reboot-provider-package <package_name>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    const-string v2, "    Sets the package name for server based resume on reboot service provider."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    const-string v2, "  require-strong-auth [--user USER_ID] <reason>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    const-string v2, "    Requires the strong authentication. The current supported reasons: STRONG_AUTH_REQUIRED_AFTER_USER_LOCKDOWN."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_6 .. :try_end_c0} :catchall_c6

    .line 206
    if-eqz v1, :cond_c5

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 207
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_c5
    return-void

    .line 159
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :catchall_c6
    move-exception v0

    if-eqz v1, :cond_d1

    :try_start_c9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cd

    goto :goto_d1

    :catchall_cd
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d1
    :goto_d1
    throw v0
.end method
