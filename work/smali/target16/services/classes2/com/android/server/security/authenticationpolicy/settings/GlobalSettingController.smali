.class public Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;
.super Ljava/lang/Object;
.source "GlobalSettingController.java"

# interfaces
.implements Lcom/android/server/security/authenticationpolicy/settings/SettingController;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mSkipSecurityFeaturesForTest:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;->mSkipSecurityFeaturesForTest:Z

    .line 40
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public applySecureLockDeviceValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 3

    .line 57
    iget-boolean p2, p0, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;->mSkipSecurityFeaturesForTest:Z

    if-eqz p2, :cond_c

    .line 58
    const-string p0, "GlobalSettingController"

    const-string p1, "Skipping applying global settings for test."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 61
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSecureLockDeviceValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 62
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 87
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;->deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public restoreFromOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 3

    .line 68
    iget-boolean p2, p0, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;->mSkipSecurityFeaturesForTest:Z

    if-eqz p2, :cond_c

    .line 69
    const-string p0, "GlobalSettingController"

    const-string p1, "Skipping restoring global settings for test."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getOriginalValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_21

    .line 74
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_21
    return-void
.end method

.method public serializeOriginalValue(Ljava/lang/String;Ljava/lang/Integer;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4

    .line 81
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic serializeOriginalValue(Ljava/lang/String;Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4

    .line 33
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;->serializeOriginalValue(Ljava/lang/String;Ljava/lang/Integer;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public setSkipSecurityFeaturesForTest(Z)V
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;->mSkipSecurityFeaturesForTest:Z

    return-void
.end method

.method public storeOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 3

    .line 46
    iget-boolean p2, p0, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;->mSkipSecurityFeaturesForTest:Z

    if-eqz p2, :cond_c

    .line 47
    const-string p0, "GlobalSettingController"

    const-string p1, "Skipping storing global settings for test."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_c
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->setOriginalValue(Ljava/lang/Object;)V

    return-void
.end method
