.class public Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;
.super Ljava/lang/Object;
.source "ManagedSetting.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mController:Lcom/android/server/security/authenticationpolicy/settings/SettingController;

.field public final mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    const-string v0, "ManagedSetting"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/security/authenticationpolicy/settings/SettingState;Lcom/android/server/security/authenticationpolicy/settings/SettingController;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    .line 47
    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mController:Lcom/android/server/security/authenticationpolicy/settings/SettingController;

    return-void
.end method


# virtual methods
.method public applySecureLockDeviceValue(I)V
    .registers 7

    .line 74
    const-string v0, " for user "

    const-string v1, "ManagedSetting"

    :try_start_4
    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mController:Lcom/android/server/security/authenticationpolicy/settings/SettingController;

    iget-object v3, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-interface {v2, v3, p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingController;->applySecureLockDeviceValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V

    .line 75
    sget-boolean v2, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->DEBUG:Z

    if-eqz v2, :cond_2e

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applied secure lock device value to SettingState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception v2

    goto :goto_2f

    :cond_2e
    return-void

    .line 80
    :goto_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to apply secure lock device value to SettingState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public deserializeAndRestoreOriginalValueFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V
    .registers 5

    .line 137
    const-string v0, "ManagedSetting"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mController:Lcom/android/server/security/authenticationpolicy/settings/SettingController;

    invoke-interface {v1, p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/SettingController;->deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 138
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {p2, p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->setOriginalValue(Ljava/lang/Object;)V

    .line 139
    sget-boolean p1, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->DEBUG:Z

    if-eqz p1, :cond_28

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Deserialized original value for setting "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    goto :goto_29

    :cond_28
    return-void

    .line 143
    :goto_29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error deserializing original value for setting "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getSettingKey()Ljava/lang/String;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingType()Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    move-result-object p0

    return-object p0
.end method

.method public restoreFromOriginalValue(I)V
    .registers 5

    .line 94
    const-string v0, "ManagedSetting"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mController:Lcom/android/server/security/authenticationpolicy/settings/SettingController;

    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-interface {v1, v2, p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingController;->restoreFromOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V

    .line 95
    sget-boolean v1, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->DEBUG:Z

    if-eqz v1, :cond_2e

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " restored to original value before secure lock device was enabled by user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p1

    goto :goto_2f

    :cond_2e
    return-void

    .line 100
    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restore original value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {v2}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getOriginalValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on setting with key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    .line 101
    invoke-virtual {v2}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " using controller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mController:Lcom/android/server/security/authenticationpolicy/settings/SettingController;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public serializeOriginalValue(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 8

    .line 112
    const-string/jumbo v0, "setting-original-value"

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {v1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {v2}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getOriginalValue()Ljava/lang/Object;

    move-result-object v2

    .line 114
    const-string v3, "ManagedSetting"

    if-nez v2, :cond_28

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Original value is null for setting with key "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 118
    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Serializing original value for setting with key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 120
    :try_start_3d
    invoke-interface {p1, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mController:Lcom/android/server/security/authenticationpolicy/settings/SettingController;

    invoke-interface {p0, v1, v2, p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingController;->serializeOriginalValue(Ljava/lang/String;Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 122
    invoke-interface {p1, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception p0

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error serializing original value for setting with key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public storeOriginalValue(I)V
    .registers 7

    .line 56
    const-string v0, " for user "

    const-string v1, "ManagedSetting"

    :try_start_4
    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mController:Lcom/android/server/security/authenticationpolicy/settings/SettingController;

    iget-object v3, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-interface {v2, v3, p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingController;->storeOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V

    .line 57
    sget-boolean v2, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->DEBUG:Z

    if-eqz v2, :cond_2e

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored original value to SettingState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception v2

    goto :goto_2f

    :cond_2e
    return-void

    .line 62
    :goto_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to store original value to SettingState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {v1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    invoke-virtual {v1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSettingType()Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Original value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    .line 162
    invoke-virtual {v1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Secure lock device value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->mState:Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    .line 163
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSecureLockDeviceValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
