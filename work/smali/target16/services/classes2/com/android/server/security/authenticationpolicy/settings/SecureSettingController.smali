.class public Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;
.super Ljava/lang/Object;
.source "SecureSettingController.java"

# interfaces
.implements Lcom/android/server/security/authenticationpolicy/settings/SettingController;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDoubleTapPowerButtonGestureEnabledDefault:I

.field public final mGlanceableHubEnabledDefault:I

.field public final mLockScreenShowQrCodeScannerDefault:I

.field public final mSecureSettingsDefaultValues:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 52
    iput v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mLockScreenShowQrCodeScannerDefault:I

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mDoubleTapPowerButtonGestureEnabledDefault:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mGlanceableHubEnabledDefault:I

    goto :goto_31

    :cond_2e
    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mGlanceableHubEnabledDefault:I

    .line 63
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->initializeDefaultValues()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mSecureSettingsDefaultValues:Ljava/util/Map;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public applySecureLockDeviceValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 4

    .line 97
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSecureLockDeviceValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 121
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

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public initializeDefaultValues()Ljava/util/Map;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mDoubleTapPowerButtonGestureEnabledDefault:I

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v1, 0x0

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 78
    iget v1, v0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mLockScreenShowQrCodeScannerDefault:I

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v0, v0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mGlanceableHubEnabledDefault:I

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 69
    const-string v2, "lock_screen_show_notifications"

    const-string v4, "double_tap_power_button_gesture_enabled"

    const-string v6, "camera_gesture_disabled"

    const-string v8, "camera_double_tap_power_gesture_disabled"

    const-string v10, "camera_lift_trigger_enabled"

    const-string v12, "lockscreen_weather_enabled"

    const-string v14, "lockscreen_show_controls"

    const-string v16, "lockscreen_show_wallet"

    const-string v18, "lock_screen_show_qr_code_scanner"

    const-string v20, "glanceable_hub_enabled"

    move-object v9, v7

    move-object v11, v3

    move-object v13, v3

    move-object v15, v7

    move-object/from16 v17, v7

    invoke-static/range {v2 .. v21}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public restoreFromOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 4

    .line 105
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getOriginalValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 107
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_15
    return-void
.end method

.method public serializeOriginalValue(Ljava/lang/String;Ljava/lang/Integer;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4

    .line 115
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic serializeOriginalValue(Ljava/lang/String;Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4

    .line 37
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->serializeOriginalValue(Ljava/lang/String;Ljava/lang/Integer;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public storeOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mSecureSettingsDefaultValues:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->setOriginalValue(Ljava/lang/Object;)V

    return-void
.end method
