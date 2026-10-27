.class public Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;
.super Ljava/lang/Object;
.source "SecureLockDeviceSettingsFileStore.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mClientUserId:I

.field public final mFileLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public mIsEnabled:Z

.field public final mSettingsManager:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;

.field public mStateFile:Landroid/util/AtomicFile;


# direct methods
.method public static synthetic $r8$lambda$h6jsH-VAwQUMcG_uc99JjQKAons(Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->lambda$updateStateAndWriteToFile$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$tGviLzNtjnUnsZ8XfqzOgoc2n3c(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;)V
    .registers 9

    .line 223
    const-string v0, "SLDSettingsStorageHandler"

    const-string/jumbo v1, "setting"

    :try_start_5
    invoke-virtual {p2}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->getSettingKey()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-virtual {p2}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->getSettingType()Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 225
    invoke-interface {p0, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    const-string/jumbo v5, "setting-key"

    invoke-interface {p0, v4, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    const-string/jumbo v5, "setting-type"

    invoke-interface {p0, v4, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    invoke-virtual {p2, p0}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->serializeOriginalValue(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 229
    invoke-interface {p0, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    sget-boolean p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->DEBUG:Z

    if-eqz p0, :cond_4a

    .line 231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Saved state: setting with key "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", type "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception p0

    goto :goto_4b

    :cond_4a
    return-void

    .line 235
    :goto_4b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error serializing setting: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 51
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;)V
    .registers 6

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mFileLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mIsEnabled:Z

    const/16 v0, -0x2710

    .line 69
    iput v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mClientUserId:I

    .line 80
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "secure_lock_device_state.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mStateFile:Landroid/util/AtomicFile;

    .line 83
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->DEBUG:Z

    if-eqz v0, :cond_42

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Secure lock device state file initialized at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "SLDSettingsStorageHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_42
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mSettingsManager:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;

    return-void
.end method


# virtual methods
.method public final synthetic lambda$updateStateAndWriteToFile$1()V
    .registers 6

    .line 286
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_3
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mStateFile:Landroid/util/AtomicFile;

    iget-boolean v2, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mIsEnabled:Z

    iget v3, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mClientUserId:I

    iget-object v4, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mSettingsManager:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->saveToFile(Landroid/util/AtomicFile;ZILcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;)V

    .line 288
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public loadOriginalSettingsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;)V
    .registers 9

    .line 158
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 159
    :cond_4
    :goto_4
    invoke-static {p1, p0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 160
    const-string/jumbo v0, "setting"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SLDSettingsStorageHandler"

    if-eqz v0, :cond_8b

    .line 161
    const-string/jumbo v0, "setting-key"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string/jumbo v3, "setting-type"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_6e

    if-nez v2, :cond_2d

    goto :goto_6e

    .line 171
    :cond_2d
    invoke-interface {p2}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;->getManagedSettings()Ljava/util/Map;

    move-result-object v2

    .line 172
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;

    .line 174
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 175
    :goto_3b
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    const-string/jumbo v4, "setting-original-value"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 177
    invoke-virtual {v2, p1, v0}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->deserializeAndRestoreOriginalValueFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    goto :goto_4

    .line 180
    :cond_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected tag not matching <setting-original-value>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3b

    .line 164
    :cond_6e
    :goto_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting tag missing key attribute. Skipping tag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 186
    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected tag not matching <setting>: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_a8
    return-void
.end method

.method public loadStateFromFile()V
    .registers 9

    .line 97
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->resetToDefaults()V

    .line 101
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    .line 102
    const-string v1, "SLDSettingsStorageHandler"

    const-string v2, "Secure lock device state file does not exist."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1e
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 103
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception p0

    goto/16 :goto_dc

    :catch_1e
    move-exception v1

    goto/16 :goto_d0

    .line 106
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_27} :catch_b8
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_27} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_1e
    .catchall {:try_start_21 .. :try_end_27} :catchall_1b

    .line 107
    :try_start_27
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 108
    const-string/jumbo v3, "secure-lock-device-state"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 109
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 111
    :goto_35
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 112
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 113
    invoke-static {v4, v5}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore$$ExternalSyntheticTypeSwitchClass2;->switchDispatch(Ljava/lang/Object;I)I

    move-result v5

    if-eqz v5, :cond_81

    const/4 v6, 0x1

    if-eq v5, v6, :cond_76

    const/4 v6, 0x2

    if-eq v5, v6, :cond_68

    .line 126
    const-string v5, "SLDSettingsStorageHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag in state file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_35

    :catchall_66
    move-exception v2

    goto :goto_ba

    .line 119
    :cond_68
    iget-boolean v4, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mIsEnabled:Z

    if-eqz v4, :cond_72

    .line 120
    iget-object v4, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mSettingsManager:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->loadOriginalSettingsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;)V

    goto :goto_35

    .line 122
    :cond_72
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_35

    .line 117
    :cond_76
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mClientUserId:I

    goto :goto_35

    .line 115
    :cond_81
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mIsEnabled:Z

    goto :goto_35

    .line 131
    :cond_8c
    sget-boolean v2, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->DEBUG:Z

    if-eqz v2, :cond_b2

    .line 132
    const-string v2, "SLDSettingsStorageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded state: isEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mIsEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mClientUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_27 .. :try_end_b2} :catchall_66

    :cond_b2
    if-eqz v1, :cond_da

    .line 135
    :try_start_b4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b4 .. :try_end_b7} :catch_b8
    .catch Ljava/lang/NumberFormatException; {:try_start_b4 .. :try_end_b7} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_1e
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_1b

    goto :goto_da

    :catch_b8
    move-exception v1

    goto :goto_c5

    :goto_ba
    if-eqz v1, :cond_c4

    .line 106
    :try_start_bc
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0

    goto :goto_c4

    :catchall_c0
    move-exception v1

    :try_start_c1
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c4
    :goto_c4
    throw v2
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c5} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c1 .. :try_end_c5} :catch_b8
    .catch Ljava/lang/NumberFormatException; {:try_start_c1 .. :try_end_c5} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c5} :catch_1e
    .catchall {:try_start_c1 .. :try_end_c5} :catchall_1b

    .line 136
    :goto_c5
    :try_start_c5
    const-string v2, "SLDSettingsStorageHandler"

    const-string v3, "Error reading secure lock device state file, resetting to defaults."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->resetToDefaults()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_cf} :catch_1e
    .catchall {:try_start_c5 .. :try_end_cf} :catchall_1b

    goto :goto_da

    .line 141
    :goto_d0
    :try_start_d0
    const-string v2, "SLDSettingsStorageHandler"

    const-string v3, "Exception during loadStateFromFile(): "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->resetToDefaults()V

    .line 144
    :cond_da
    :goto_da
    monitor-exit v0

    return-void

    :goto_dc
    monitor-exit v0
    :try_end_dd
    .catchall {:try_start_d0 .. :try_end_dd} :catchall_1b

    throw p0
.end method

.method public final resetToDefaults()V
    .registers 2

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mIsEnabled:Z

    const/16 v0, -0x2710

    .line 344
    iput v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mClientUserId:I

    return-void
.end method

.method public retrieveSecureLockDeviceClientId()I
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_3
    iget p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mClientUserId:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 309
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public retrieveSecureLockDeviceEnabled()Z
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mIsEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 299
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public saveToFile(Landroid/util/AtomicFile;ZILcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;)V
    .registers 14

    .line 197
    const-string p0, "Failure during write to secure lock device state file, closing file output stream."

    const-string/jumbo v0, "original-settings"

    const-string v1, "client-id"

    const-string v2, "enabled"

    const-string/jumbo v3, "secure-lock-device-state"

    const-string v4, "SLDSettingsStorageHandler"

    const/4 v5, 0x0

    .line 199
    :try_start_f
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_93
    .catchall {:try_start_f .. :try_end_13} :catchall_91

    .line 200
    :try_start_13
    invoke-static {v6}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v7

    .line 201
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 203
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v5, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    invoke-interface {v7, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    invoke-interface {v7, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    invoke-interface {v7, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    invoke-interface {v7, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    invoke-interface {v7, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p2, :cond_62

    .line 215
    const-string v1, "Saving state of settings because Secure Lock Device is enabled."

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-interface {v7, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    invoke-interface {p4}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;->getManagedSettings()Ljava/util/Map;

    move-result-object p4

    .line 221
    new-instance v1, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, v7}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p4, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 238
    invoke-interface {v7, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_67

    :catchall_5c
    move-exception p2

    move-object v5, v6

    goto :goto_a7

    :catch_5f
    move-exception p2

    move-object v5, v6

    goto :goto_94

    .line 240
    :cond_62
    const-string p4, "Not saving state of settings because secure lock device is disabled."

    invoke-static {v4, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_67
    invoke-interface {v7, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 246
    invoke-virtual {p1, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_70} :catch_5f
    .catchall {:try_start_13 .. :try_end_70} :catchall_5c

    .line 249
    :try_start_70
    sget-boolean p4, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->DEBUG:Z

    if-eqz p4, :cond_a6

    .line 250
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Saved state: isEnabled="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", clientId="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_90} :catch_93
    .catchall {:try_start_70 .. :try_end_90} :catchall_91

    return-void

    :catchall_91
    move-exception p2

    goto :goto_a7

    :catch_93
    move-exception p2

    .line 254
    :goto_94
    :try_start_94
    const-string p3, "Error writing secure lock device state file: "

    invoke-static {v4, p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v5, :cond_9e

    .line 256
    invoke-virtual {p1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_91

    :cond_9e
    if-eqz v5, :cond_a6

    .line 260
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_a6
    return-void

    :goto_a7
    if-eqz v5, :cond_af

    .line 260
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 264
    :cond_af
    throw p2
.end method

.method public updateStateAndWriteToFile(ZI)V
    .registers 5

    .line 276
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mIsEnabled:Z

    if-ne v1, p1, :cond_10

    iget v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mClientUserId:I

    if-eq v1, p2, :cond_c

    goto :goto_10

    .line 280
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_20

    .line 282
    :cond_10
    :goto_10
    iput-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mIsEnabled:Z

    .line 283
    iput p2, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mClientUserId:I

    .line 284
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_e

    .line 285
    iget-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 284
    :goto_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_e

    throw p0
.end method
