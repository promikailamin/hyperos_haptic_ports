.class public final Landroid/security/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# static fields
.field public static final blacklist BG_COLOR:Ljava/lang/String; = "com.android.settings.bgColor"

.field public static final blacklist DISABLE_ACCESS_CONTROL:I = 0x1

.field public static final blacklist DISABLE_AC_FOR_PRIVACY_MODE:I = 0x3

.field public static final blacklist DISABLE_PRIVACY_MODE:I = 0x4

.field public static final blacklist ENABLE_AC_FOR_PRIVACY_MODE:I = 0x2

.field public static final blacklist EXTRA_CONFIRM_PURPOSE:Ljava/lang/String; = "confirm_purpose"

.field public static final blacklist EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final blacklist FOOTER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer"

.field public static final blacklist FOOTER_TEXT_COLOR:Ljava/lang/String; = "com.android.settings.footerTextColor"

.field public static final blacklist FOOTER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer_wrong"

.field public static final blacklist FORGET_PATTERN_COLOR:Ljava/lang/String; = "com.android.settings.forgetPatternColor"

.field public static final whitelist HEADER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header"

.field public static final blacklist HEADER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header_wrong"

.field public static final blacklist LOCK_BTN_WHITE:Ljava/lang/String; = "com.android.settings.lockBtnWhite"

.field public static final blacklist LOCK_SETTINGS_TYPE_AC:I = 0x0

.field public static final whitelist LOCK_SETTINGS_TYPE_GALLERY:I = 0x2

.field public static final blacklist LOCK_SETTINGS_TYPE_SMS:I = 0x1

.field private static final blacklist NO_REQUEST_FOR_ACTIVITY_RESULT:I = -0x400

.field public static final blacklist SHOW_FORGET_PASSWORD:Ljava/lang/String; = "com.android.settings.forgetPassword"

.field public static final blacklist TITLE_COLOR:Ljava/lang/String; = "com.android.settings.titleColor"

.field public static final blacklist USERID_TO_CONFIRM_PASSWORD:Ljava/lang/String; = "com.android.settings.userIdToConfirm"


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFragment:Landroid/app/Fragment;

.field private blacklist mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;


# direct methods
.method public constructor whitelist <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 121
    invoke-direct {p0, p1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 122
    iput-object p1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 123
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Activity;I)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # I

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 143
    iput-object p1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 145
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 137
    invoke-direct {p0, p1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 138
    iput-object p2, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 139
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 131
    return-void
.end method

.method private blacklist confirmPassword(I)Z
    .registers 5
    .param p1, "request"    # I

    .line 245
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 246
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const/16 v1, -0x400

    if-ne p1, v1, :cond_29

    .line 252
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_36

    .line 254
    :cond_29
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_31

    .line 255
    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_36

    .line 257
    :cond_31
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 259
    :goto_36
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .line 220
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 226
    const-string v1, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 227
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const/16 v1, -0x400

    if-ne p1, v1, :cond_33

    .line 229
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_40

    .line 231
    :cond_33
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_3b

    .line 232
    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_40

    .line 234
    :cond_3b
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    :goto_40
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public blacklist isACLockEnabled()Z
    .registers 4

    .line 286
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_lock_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1a

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 288
    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v2, v1

    goto :goto_1b

    :cond_1a
    nop

    .line 286
    :goto_1b
    return v2
.end method

.method public blacklist isPasswordForPrivacyModeEnabled()Z
    .registers 4

    .line 355
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "password_for_privacymode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_11

    move v2, v1

    :cond_11
    return v2
.end method

.method public blacklist isPrivacyModeEnabled()Z
    .registers 4

    .line 268
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "privacy_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_11

    move v2, v1

    :cond_11
    return v2
.end method

.method public whitelist isPrivacyPasswordEnabled()Z
    .registers 4

    .line 384
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "privacy_password_is_open"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_11

    move v2, v1

    :cond_11
    return v2
.end method

.method public whitelist isPrivateGalleryEnabled()Z
    .registers 4

    .line 301
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "private_gallery_lock_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1a

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 303
    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v2, v1

    goto :goto_1b

    :cond_1a
    nop

    .line 301
    :goto_1b
    return v2
.end method

.method public blacklist isPrivateSmsEnabled()Z
    .registers 4

    .line 295
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "private_sms_lock_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1a

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 297
    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v2, v1

    goto :goto_1b

    :cond_1a
    nop

    .line 295
    :goto_1b
    return v2
.end method

.method public blacklist launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .line 165
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 166
    :cond_6
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    if-nez v0, :cond_b

    return v1

    .line 168
    :cond_b
    const/4 v1, 0x0

    .line 169
    .local v1, "launched":Z
    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_24

    goto :goto_22

    .line 178
    :sswitch_18
    invoke-direct {p0, p1}, Landroid/security/ChooseLockSettingsHelper;->confirmPassword(I)Z

    move-result v1

    goto :goto_22

    .line 171
    :sswitch_1d
    invoke-direct {p0, p1, p2, p3}, Landroid/security/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 172
    nop

    .line 181
    :goto_22
    return v1

    nop

    :sswitch_data_24
    .sparse-switch
        0x10000 -> :sswitch_1d
        0x20000 -> :sswitch_18
        0x40000 -> :sswitch_18
        0x50000 -> :sswitch_18
        0x60000 -> :sswitch_18
    .end sparse-switch
.end method

.method public blacklist launchConfirmationActivity(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "details"    # Ljava/lang/CharSequence;

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "launched":Z
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    return v1

    .line 197
    :cond_7
    invoke-virtual {v1}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/16 v2, -0x400

    sparse-switch v1, :sswitch_data_20

    goto :goto_1f

    .line 206
    :sswitch_15
    invoke-direct {p0, v2}, Landroid/security/ChooseLockSettingsHelper;->confirmPassword(I)Z

    move-result v0

    goto :goto_1f

    .line 199
    :sswitch_1a
    invoke-direct {p0, v2, p1, p2}, Landroid/security/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 200
    nop

    .line 209
    :goto_1f
    return v0

    :sswitch_data_20
    .sparse-switch
        0x10000 -> :sswitch_1a
        0x20000 -> :sswitch_15
        0x40000 -> :sswitch_15
        0x50000 -> :sswitch_15
        0x60000 -> :sswitch_15
    .end sparse-switch
.end method

.method public blacklist setACLockEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 310
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 311
    nop

    .line 310
    const-string v1, "access_control_lock_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    if-nez p1, :cond_14

    .line 315
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    .line 317
    :cond_14
    return-void
.end method

.method public blacklist setPasswordForPrivacyModeEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 364
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    nop

    .line 364
    const-string v1, "password_for_privacymode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    return-void
.end method

.method public blacklist setPrivacyModeEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 278
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    nop

    .line 278
    const-string v1, "privacy_mode_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    return-void
.end method

.method public blacklist setPrivacyPasswordEnable(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 372
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyPasswordEnabledAsUser(ZI)V

    .line 373
    return-void
.end method

.method public blacklist setPrivacyPasswordEnabledAsUser(ZI)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 379
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 380
    nop

    .line 379
    const-string v1, "privacy_password_is_open"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 381
    return-void
.end method

.method public blacklist setPrivateGalleryEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 338
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/security/ChooseLockSettingsHelper;->setPrivateGalleryEnabledAsUser(ZI)V

    .line 339
    return-void
.end method

.method public blacklist setPrivateGalleryEnabledAsUser(ZI)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 345
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 346
    nop

    .line 345
    const-string v1, "private_gallery_lock_enabled"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 347
    return-void
.end method

.method public blacklist setPrivateSmsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 323
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/security/ChooseLockSettingsHelper;->setPrivateSmsEnabledAsUser(ZI)V

    .line 324
    return-void
.end method

.method public blacklist setPrivateSmsEnabledAsUser(ZI)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 330
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    nop

    .line 330
    const-string v1, "private_sms_lock_enabled"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 332
    return-void
.end method

.method public blacklist utils()Landroid/security/MiuiLockPatternUtils;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    return-object v0
.end method
