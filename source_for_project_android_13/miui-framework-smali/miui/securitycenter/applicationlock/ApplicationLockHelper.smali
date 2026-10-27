.class public Lmiui/securitycenter/applicationlock/ApplicationLockHelper;
.super Ljava/lang/Object;
.source "ApplicationLockHelper.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    .line 16
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v0, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 17
    return-void
.end method


# virtual methods
.method public whitelist checkLockPattern(Ljava/lang/String;)Z
    .registers 3
    .param p1, "patternString"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearAppLock()V
    .registers 1

    .line 41
    return-void
.end method

.method public whitelist getLockoutAttempt()J
    .registers 3

    .line 24
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist isVisiblePatternLock()Z
    .registers 3

    .line 20
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    return v0
.end method

.method public whitelist saveLockPatternExists()Z
    .registers 2

    .line 36
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    return v0
.end method

.method public whitelist setLockoutAttempt()J
    .registers 4

    .line 28
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/security/MiuiLockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    return-wide v0
.end method
