.class public Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "MiuiLockPatternUtilsWrapper.java"


# instance fields
.field private blacklist mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field private blacklist mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v0, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 15
    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 17
    return-void
.end method


# virtual methods
.method public whitelist checkMiuiLockPattern(Ljava/lang/String;)Z
    .registers 3
    .param p1, "patternString"    # Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearLockoutAttemptDeadline()V
    .registers 2

    .line 24
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->clearLockoutAttemptDeadline()V

    .line 25
    return-void
.end method

.method public whitelist saveMiuiLockPattern(Ljava/lang/String;)V
    .registers 2
    .param p1, "patternString"    # Ljava/lang/String;

    .line 32
    return-void
.end method

.method public whitelist savedMiuiLockPatternExists()Z
    .registers 2

    .line 20
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0}, Lmiui/security/SecurityManager;->haveAccessControlPassword()Z

    move-result v0

    return v0
.end method
