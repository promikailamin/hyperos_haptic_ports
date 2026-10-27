.class public Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;
.super Ljava/lang/Object;
.source "NfcSettingController.java"

# interfaces
.implements Lcom/android/server/security/authenticationpolicy/settings/SettingController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSkipSecurityFeaturesForTest:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;->mSkipSecurityFeaturesForTest:Z

    .line 41
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public applySecureLockDeviceValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 3

    .line 63
    iget-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;->mSkipSecurityFeaturesForTest:Z

    const-string p2, "NfcSettingController"

    if-eqz p1, :cond_c

    .line 64
    const-string p0, "Skipping NFC disable for test."

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 67
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-nez p0, :cond_18

    .line 69
    const-string p0, "NFC adapter is not available, cannot apply secure lock device value."

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_18
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    return-void
.end method

.method public deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 100
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;->deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getNfcAdapter()Landroid/nfc/NfcAdapter;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    return-object p0
.end method

.method public restoreFromOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 3

    .line 78
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    .line 79
    const-string p2, "NfcSettingController"

    if-nez p0, :cond_e

    .line 80
    const-string p0, "NFC adapter is not available, cannot restore original value."

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_20

    .line 83
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 84
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    return-void

    .line 86
    :cond_20
    const-string p0, "NFC was disabled prior to secure lock device, leave unchanged."

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public serializeOriginalValue(Ljava/lang/String;Ljava/lang/Boolean;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4

    .line 94
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic serializeOriginalValue(Ljava/lang/String;Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4

    .line 34
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;->serializeOriginalValue(Ljava/lang/String;Ljava/lang/Boolean;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public setSkipSecurityFeaturesForTest(Z)V
    .registers 2

    .line 109
    iput-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;->mSkipSecurityFeaturesForTest:Z

    return-void
.end method

.method public storeOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 3

    .line 52
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-nez p0, :cond_e

    .line 54
    const-string p0, "NfcSettingController"

    const-string p1, "NFC adapter is not available, cannot store original value."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 56
    :cond_e
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->setOriginalValue(Ljava/lang/Object;)V

    return-void
.end method
