.class public Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;
.super Ljava/lang/Object;
.source "UsbSettingController.java"

# interfaces
.implements Lcom/android/server/security/authenticationpolicy/settings/SettingController;


# instance fields
.field public mSkipSecurityFeaturesForTest:Z

.field public mUsbManager:Landroid/hardware/usb/UsbManager;

.field public mUsbManagerInternal:Landroid/hardware/usb/IUsbManagerInternal;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->mSkipSecurityFeaturesForTest:Z

    return-void
.end method


# virtual methods
.method public applySecureLockDeviceValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 3

    .line 65
    iget-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->mSkipSecurityFeaturesForTest:Z

    const-string p2, "UsbSettingController"

    if-eqz p1, :cond_c

    .line 66
    const-string p0, "Skipping USB data signal disable for test."

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_c
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->mUsbManagerInternal:Landroid/hardware/usb/IUsbManagerInternal;

    if-nez p0, :cond_16

    .line 69
    const-string p0, "IUsbManagerInternal is null, cannot apply secure lock device value for USB state."

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const/4 p1, 0x0

    .line 73
    invoke-interface {p0, p1, p1}, Landroid/hardware/usb/IUsbManagerInternal;->enableUsbDataSignal(ZI)Z

    return-void
.end method

.method public bridge synthetic deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/Map;
    .registers 7

    .line 125
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 126
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p2

    .line 127
    :cond_9
    :goto_9
    invoke-static {p1, p2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 128
    const-string/jumbo v0, "port"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 129
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_9

    .line 132
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 135
    :cond_34
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    :cond_38
    return-object p0
.end method

.method public final getUsbPortsEnabledStatus()Ljava/util/Map;
    .registers 4

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez p0, :cond_11

    .line 144
    const-string p0, "UsbSettingController"

    const-string v1, "UsbManager is null, cannot retrieve USB ports enabled status"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 148
    :cond_11
    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object p0

    .line 149
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbPort;

    .line 150
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 152
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    .line 155
    :goto_36
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_42
    return-object v0
.end method

.method public restoreFromOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 6

    .line 79
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v0, "UsbSettingController"

    if-nez p2, :cond_c

    .line 80
    const-string p0, "UsbManager is null, cannot restore USB setting."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getOriginalValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_18

    .line 83
    const-string p0, "Original value for USB setting is null, cannot restore USB state"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 87
    :cond_18
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object p0

    .line 88
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_97

    .line 91
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_97

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbPort;

    .line 92
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_79

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p2, v1}, Landroid/hardware/usb/UsbPort;->enableUsbData(Z)I

    move-result v1

    if-nez v1, :cond_64

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-enabled USB data signal on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 98
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to re-enable USB data signal on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 101
    :cond_79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB data signal on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was already disabled prior to secure lock device, leave unchanged."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_97
    return-void
.end method

.method public bridge synthetic serializeOriginalValue(Ljava/lang/String;Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4

    .line 42
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->serializeOriginalValue(Ljava/lang/String;Ljava/util/Map;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public serializeOriginalValue(Ljava/lang/String;Ljava/util/Map;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7

    .line 112
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 114
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    .line 115
    const-string/jumbo v1, "port"

    invoke-interface {p3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    const-string v2, "id"

    invoke-interface {p3, v0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    const-string p2, "enabled"

    invoke-interface {p3, v0, p2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    invoke-interface {p3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    :cond_39
    return-void
.end method

.method public setSkipSecurityFeaturesForTest(Z)V
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->mSkipSecurityFeaturesForTest:Z

    return-void
.end method

.method public setUsbManager(Landroid/hardware/usb/UsbManager;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-void
.end method

.method public setUsbManagerInternal(Landroid/hardware/usb/IUsbManagerInternal;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->mUsbManagerInternal:Landroid/hardware/usb/IUsbManagerInternal;

    return-void
.end method

.method public storeOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 3

    .line 54
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->mUsbManagerInternal:Landroid/hardware/usb/IUsbManagerInternal;

    if-nez p2, :cond_c

    .line 55
    const-string p0, "UsbSettingController"

    const-string p1, "IUsbManagerInternal is null, cannot retrieve USB port states"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->getUsbPortsEnabledStatus()Ljava/util/Map;

    move-result-object p0

    .line 59
    invoke-virtual {p1, p0}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->setOriginalValue(Ljava/lang/Object;)V

    return-void
.end method
