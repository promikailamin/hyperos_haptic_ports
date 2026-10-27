.class public Lmiui/provider/SettingsStringUtil$SettingStringHelper;
.super Ljava/lang/Object;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/SettingsStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingStringHelper"
.end annotation


# instance fields
.field private final blacklist mContentResolver:Landroid/content/ContentResolver;

.field private final blacklist mSettingName:Ljava/lang/String;

.field private blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 4
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 167
    iput p3, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    .line 168
    iput-object p2, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public blacklist read()Ljava/lang/String;
    .registers 4

    .line 172
    iget-object v0, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    iget v2, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 182
    iput p1, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    .line 183
    return-void
.end method

.method public blacklist write(Ljava/lang/String;)Z
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    iget v2, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
