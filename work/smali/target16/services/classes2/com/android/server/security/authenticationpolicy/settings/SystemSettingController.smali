.class public Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;
.super Ljava/lang/Object;
.source "SystemSettingController.java"

# interfaces
.implements Lcom/android/server/security/authenticationpolicy/settings/SettingController;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mSystemSettingsDefaultValues:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;->initializeDefaultValues()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;->mSystemSettingsDefaultValues:Ljava/util/Map;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public applySecureLockDeviceValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 4

    .line 69
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSecureLockDeviceValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 93
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

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;->deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public initializeDefaultValues()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 51
    const-string v1, "bluetooth_discoverability"

    const-string v2, "lock_to_app_enabled"

    invoke-static {v1, p0, v2, v0}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public restoreFromOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 4

    .line 77
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getOriginalValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 79
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_15
    return-void
.end method

.method public serializeOriginalValue(Ljava/lang/String;Ljava/lang/Integer;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4

    .line 87
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic serializeOriginalValue(Ljava/lang/String;Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4

    .line 35
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;->serializeOriginalValue(Ljava/lang/String;Ljava/lang/Integer;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public storeOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;->mSystemSettingsDefaultValues:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 61
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->setOriginalValue(Ljava/lang/Object;)V

    return-void
.end method
