.class public Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;
.super Ljava/lang/Object;
.source "ChooserLockSettingsHelperWrapper.java"


# instance fields
.field private blacklist mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

.field private blacklist mMiuiLockPatternUtilsWrapper:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    invoke-direct {v0, p1}, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mMiuiLockPatternUtilsWrapper:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    .line 14
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 15
    return-void
.end method


# virtual methods
.method public whitelist isACLockEnabled()Z
    .registers 2

    .line 22
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mMiuiLockPatternUtilsWrapper:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    invoke-virtual {v0}, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->savedMiuiLockPatternExists()Z

    move-result v0

    return v0
.end method

.method public whitelist setACLockEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 26
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, p1}, Landroid/security/ChooseLockSettingsHelper;->setACLockEnabled(Z)V

    .line 27
    return-void
.end method

.method public whitelist setPasswordForPrivacyModeEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 30
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, p1}, Landroid/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    .line 31
    return-void
.end method

.method public whitelist setPrivacyModeEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 34
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, p1}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    .line 35
    return-void
.end method

.method public whitelist utils()Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;
    .registers 2

    .line 18
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mMiuiLockPatternUtilsWrapper:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    return-object v0
.end method
