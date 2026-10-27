.class abstract Lcom/android/server/pm/ShortcutPackageItem;
.super Ljava/lang/Object;
.source "ShortcutPackageItem.java"


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field protected final mLock:Ljava/lang/Object;

.field private final mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageUserId:I

.field private final mSaveShortcutPackageRunner:Ljava/lang/Runnable;

.field protected mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

.field protected mShortcutUser:Lcom/android/server/pm/ShortcutUser;


# direct methods
.method protected constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .registers 7
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "packageInfo"    # Lcom/android/server/pm/ShortcutPackageInfo;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    .line 211
    new-instance v0, Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutPackageItem;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mSaveShortcutPackageRunner:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 64
    iput p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 65
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 66
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackageInfo;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 67
    new-instance v0, Lcom/android/server/pm/ShortcutBitmapSaver;

    iget-object v1, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutBitmapSaver;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    .line 68
    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave()V
    .registers 7

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-nez v0, :cond_9

    .line 115
    return-void

    .line 117
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 118
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 123
    return-void

    .line 126
    :cond_18
    const-wide/16 v1, -0x1

    .line 128
    .local v1, "currentVersionCode":J
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackageInfo;->hasSignatures()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to restore package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but signatures not found in the restore data."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 131
    const/16 v3, 0x66

    .local v3, "restoreBlockReason":I
    goto :goto_66

    .line 133
    .end local v3    # "restoreBlockReason":I
    :cond_4f
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 134
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    .line 135
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->canRestoreAnyVersion()Z

    move-result v5

    invoke-virtual {v4, v0, v3, v5}, Lcom/android/server/pm/ShortcutPackageInfo;->canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;Z)I

    move-result v4

    move v3, v4

    .line 145
    .local v3, "restoreBlockReason":I
    :goto_66
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutPackageItem;->onRestored(I)V

    .line 148
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutPackageInfo;->setShadow(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    .line 151
    return-void
.end method

.method protected abstract canRestoreAnyVersion()Z
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 5
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 195
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 196
    .local v0, "result":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    return-object v0
.end method

.method public getBitmapPathMayWait(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 250
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public abstract getOwnerUserId()I
.end method

.method public getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageUserId()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    return v0
.end method

.method protected abstract getShortcutPackageItemFile()Ljava/io/File;
.end method

.method public getUser()Lcom/android/server/pm/ShortcutUser;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    return-object v0
.end method

.method protected abstract onRestored(I)V
.end method

.method public refreshPackageSignatureAndSave()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 106
    return-void

    .line 108
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 109
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/ShortcutPackageInfo;->refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    .line 111
    return-void
.end method

.method public removeIcon(Landroid/content/pm/ShortcutInfo;)V
    .registers 4
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 254
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 256
    monitor-exit v0

    .line 257
    return-void

    .line 256
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method removeShortcutPackageItem()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getShortcutPackageItemFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 262
    monitor-exit v0

    .line 263
    return-void

    .line 262
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public replaceUser(Lcom/android/server/pm/ShortcutUser;)V
    .registers 2
    .param p1, "user"    # Lcom/android/server/pm/ShortcutUser;

    .line 74
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 75
    return-void
.end method

.method public saveBitmap(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .registers 7
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "maxDimension"    # I
    .param p3, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "quality"    # I

    .line 238
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutBitmapSaver;->saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method saveShortcutPackageItem()V
    .registers 4

    .line 215
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->waitForBitmapSaves()Z

    .line 217
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getShortcutPackageItemFile()Ljava/io/File;

    move-result-object v0

    .line 221
    .local v0, "path":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_a
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 225
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ShortcutPackageItem;->saveToFileLocked(Ljava/io/File;Z)V

    .line 226
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSaveToAppSearchLocked()V

    .line 227
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public saveToFileLocked(Ljava/io/File;Z)V
    .registers 8
    .param p1, "path"    # Ljava/io/File;
    .param p2, "forBackup"    # Z

    .line 162
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 163
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 165
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 169
    if-eqz p2, :cond_1b

    .line 170
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 171
    .local v2, "itemOut":Landroid/util/TypedXmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1f

    .line 173
    .end local v2    # "itemOut":Landroid/util/TypedXmlSerializer;
    :cond_1b
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 175
    .restart local v2    # "itemOut":Landroid/util/TypedXmlSerializer;
    :goto_1f
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 177
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Landroid/util/TypedXmlSerializer;Z)V

    .line 179
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 181
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 182
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_34} :catch_35

    .line 186
    .end local v2    # "itemOut":Landroid/util/TypedXmlSerializer;
    goto :goto_55

    .line 183
    :catch_35
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShortcutService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 187
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_55
    return-void
.end method

.method public abstract saveToXml(Landroid/util/TypedXmlSerializer;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public scheduleSave()V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mSaveShortcutPackageRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method scheduleSaveToAppSearchLocked()V
    .registers 1

    .line 192
    return-void
.end method

.method public verifyStates()V
    .registers 1

    .line 204
    return-void
.end method

.method public waitForBitmapSaves()Z
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 233
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
