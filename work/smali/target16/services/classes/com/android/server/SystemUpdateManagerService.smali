.class public Lcom/android/server/SystemUpdateManagerService;
.super Landroid/os/ISystemUpdateManager$Stub;
.source "SystemUpdateManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFile:Landroid/util/AtomicFile;

.field public mLastStatus:I

.field public mLastUid:I

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 79
    invoke-direct {p0}, Landroid/os/ISystemUpdateManager$Stub;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 76
    iput v1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    const/4 v1, 0x0

    .line 77
    iput v1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    .line 80
    iput-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    .line 81
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system-update-info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    .line 84
    monitor-enter v0

    .line 85
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->loadSystemUpdateInfoLocked()Landroid/os/Bundle;

    .line 86
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw p0
.end method


# virtual methods
.method public final getBootCount()I
    .registers 3

    .line 254
    iget-object p0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "boot_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final loadSystemUpdateInfoLocked()Landroid/os/Bundle;
    .registers 6

    .line 134
    const-string v0, "SystemUpdateManagerService"

    const/4 v1, 0x0

    .line 135
    :try_start_3
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_9} :catch_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_9} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_17

    .line 136
    :try_start_9
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 137
    invoke-virtual {p0, v3}, Lcom/android/server/SystemUpdateManagerService;->readInfoFileLocked(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1b

    if-eqz v2, :cond_4d

    .line 138
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_16} :catch_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_4d

    :catch_17
    move-exception v2

    goto :goto_27

    :catch_19
    move-exception v2

    goto :goto_2d

    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_26

    .line 135
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v2

    :try_start_23
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw v3
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_27} :catch_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_27} :catch_19
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_17

    .line 143
    :goto_27
    const-string v3, "Failed to read the info file:"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 141
    :goto_2d
    const-string v3, "Failed to parse the info file:"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 139
    :catch_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No existing info file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    if-nez v1, :cond_54

    .line 148
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 151
    :cond_54
    const-string/jumbo v2, "version"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_68

    .line 153
    const-string v1, "Invalid info file (invalid version). Ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 157
    :cond_68
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_7b

    .line 159
    const-string v1, "Invalid info file (invalid UID). Ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 163
    :cond_7b
    const-string v4, "boot-count"

    invoke-virtual {v1, v4, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_ba

    .line 164
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->getBootCount()I

    move-result v3

    if-eq v4, v3, :cond_8a

    goto :goto_ba

    .line 169
    :cond_8a
    const-string v3, "info-bundle"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    if-nez v1, :cond_9c

    .line 171
    const-string v1, "Invalid info file (missing info). Ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 175
    :cond_9c
    const-string/jumbo v3, "status"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_b0

    .line 177
    const-string v1, "Invalid info file (invalid status). Ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 182
    :cond_b0
    iput v3, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    .line 183
    iput v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 184
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object p0

    .line 165
    :cond_ba
    :goto_ba
    const-string v1, "Outdated info file. Ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final readInfoFileLocked(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;
    .registers 3

    .line 208
    :cond_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 209
    const-string p0, "info"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 210
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 242
    const-string v0, "SystemUpdateManagerService"

    const-string v1, "Removing info file"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    :cond_14
    const/4 v0, 0x0

    .line 246
    iput v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    const/4 v1, -0x1

    .line 247
    iput v1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 248
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 249
    const-string/jumbo v1, "status"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public retrieveSystemUpdateInfo()Landroid/os/Bundle;
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYSTEM_UPDATE_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECOVERY"

    .line 120
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 122
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can\'t read system update info. Requiring READ_SYSTEM_UPDATE_INFO or RECOVERY permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->loadSystemUpdateInfoLocked()Landroid/os/Bundle;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_27
    move-exception p0

    .line 128
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final saveSystemUpdateInfoLocked(Landroid/os/PersistableBundle;I)V
    .registers 6

    .line 190
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 191
    const-string v1, "info-bundle"

    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 192
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 194
    const-string v1, "boot-count"

    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->getBootCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/server/SystemUpdateManagerService;->writeInfoFileLocked(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 198
    iput p2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 199
    const-string/jumbo p2, "status"

    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    :cond_31
    return-void
.end method

.method public updateSystemUpdateInfo(Landroid/os/PersistableBundle;)V
    .registers 6

    .line 92
    invoke-virtual {p0}, Landroid/os/ISystemUpdateManager$Stub;->updateSystemUpdateInfo_enforcePermission()V

    .line 94
    const-string/jumbo v0, "status"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_15

    .line 96
    const-string p0, "SystemUpdateManagerService"

    const-string p1, "Invalid status info. Ignored"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 107
    iget v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    if-eq v2, v1, :cond_2c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_24

    goto :goto_2c

    .line 112
    :cond_24
    const-string p0, "SystemUpdateManagerService"

    const-string p1, "Inactive updater reporting IDLE status. Ignored"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_2f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/SystemUpdateManagerService;->saveSystemUpdateInfoLocked(Landroid/os/PersistableBundle;I)V

    .line 110
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final writeInfoFileLocked(Landroid/os/PersistableBundle;)Z
    .registers 7

    .line 217
    const-string v0, "info"

    const/4 v1, 0x0

    .line 219
    :try_start_3
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_9} :catch_28

    .line 221
    :try_start_9
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    .line 222
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 224
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 226
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 229
    iget-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_23} :catch_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_23} :catch_25

    const/4 p0, 0x1

    return p0

    :catch_25
    move-exception p1

    move-object v1, v2

    goto :goto_29

    :catch_28
    move-exception p1

    .line 232
    :goto_29
    const-string v0, "SystemUpdateManagerService"

    const-string v2, "Failed to save the info file:"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_37

    .line 234
    iget-object p0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_37
    const/4 p0, 0x0

    return p0
.end method
