.class Lcom/android/server/rollback/RollbackStore;
.super Ljava/lang/Object;
.source "RollbackStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field private final mRollbackDataDir:Ljava/io/File;

.field private final mRollbackHistoryDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .param p1, "rollbackDataDir"    # Ljava/io/File;
    .param p2, "rollbackHistoryDir"    # Ljava/io/File;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    .line 78
    iput-object p2, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackHistoryDir:Ljava/io/File;

    .line 79
    return-void
.end method

.method static backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "rollback"    # Lcom/android/server/rollback/Rollback;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "codePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "sourceFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    .local v1, "targetDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 250
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    .local v2, "targetFile":Ljava/io/File;
    invoke-static {v0, v2}, Lcom/android/server/rollback/RollbackStore;->isLinkPossible(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 253
    .local v3, "fallbackToCopy":Z
    const/4 v4, 0x0

    if-nez v3, :cond_42

    .line 262
    :try_start_23
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/system/ErrnoException; {:try_start_23 .. :try_end_2e} :catch_2f

    .line 271
    goto :goto_42

    .line 263
    :catch_2f
    move-exception v5

    .line 264
    .local v5, "e":Landroid/system/ErrnoException;
    nop

    .line 265
    const-string/jumbo v6, "persist.rollback.is_test"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 266
    .local v6, "isRollbackTest":Z
    if-nez v6, :cond_3c

    .line 269
    const/4 v3, 0x1

    goto :goto_42

    .line 267
    :cond_3c
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 274
    .end local v5    # "e":Landroid/system/ErrnoException;
    .end local v6    # "isRollbackTest":Z
    :cond_42
    :goto_42
    if-eqz v3, :cond_51

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    new-array v4, v4, [Ljava/nio/file/CopyOption;

    invoke-static {v5, v6, v4}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 278
    :cond_51
    return-void
.end method

.method private static convertToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 135
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 136
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 137
    .local v2, "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .local v3, "jo":Lorg/json/JSONObject;
    iget v4, v2, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->userId:I

    const-string/jumbo v5, "userId"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    iget v4, v2, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->appId:I

    const-string v5, "appId"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    iget-object v4, v2, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v5, "seInfo"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 142
    .end local v2    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .end local v3    # "jo":Lorg/json/JSONObject;
    goto :goto_9

    .line 144
    :cond_35
    return-object v0
.end method

.method private static convertToRestoreInfoArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "restoreInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 152
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 153
    .local v2, "jo":Lorg/json/JSONObject;
    new-instance v3, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 154
    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 155
    const-string v5, "appId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 156
    const-string/jumbo v6, "seInfo"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;-><init>(IILjava/lang/String;)V

    .line 153
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v2    # "jo":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 159
    .end local v1    # "i":I
    :cond_2f
    return-object v0
.end method

.method static deletePackageCodePaths(Lcom/android/server/rollback/Rollback;)V
    .registers 6
    .param p0, "rollback"    # Lcom/android/server/rollback/Rollback;

    .line 298
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 299
    .local v1, "info":Landroid/content/rollback/PackageRollbackInfo;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    .local v2, "targetDir":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 301
    .end local v1    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local v2    # "targetDir":Ljava/io/File;
    goto :goto_a

    .line 302
    :cond_27
    return-void
.end method

.method static deleteRollback(Lcom/android/server/rollback/Rollback;)V
    .registers 2
    .param p0, "rollback"    # Lcom/android/server/rollback/Rollback;

    .line 356
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 357
    return-void
.end method

.method private static extensionVersionsFromJson(Lorg/json/JSONArray;)Landroid/util/SparseIntArray;
    .registers 6
    .param p0, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 176
    if-nez p0, :cond_9

    .line 177
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    return-object v0

    .line 179
    :cond_9
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 180
    .local v0, "extensionVersions":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 181
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 182
    .local v2, "entry":Lorg/json/JSONObject;
    nop

    .line 183
    const-string/jumbo v3, "sdkVersion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "extensionVersion"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 182
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 180
    .end local v2    # "entry":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 185
    .end local v1    # "i":I
    :cond_31
    return-object v0
.end method

.method private static extensionVersionsToJson(Landroid/util/SparseIntArray;)Lorg/json/JSONArray;
    .registers 6
    .param p0, "extensionVersions"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 164
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 165
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 166
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .local v2, "entryJson":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    const-string/jumbo v4, "sdkVersion"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const-string v4, "extensionVersion"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 165
    .end local v2    # "entryJson":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 171
    .end local v1    # "i":I
    :cond_2a
    return-object v0
.end method

.method private static fromIntList(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 125
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 126
    .local v0, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 127
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 130
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method static getPackageCodePaths(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)[Ljava/io/File;
    .registers 5
    .param p0, "rollback"    # Lcom/android/server/rollback/Rollback;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 285
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    .local v0, "targetDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 287
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_14

    array-length v2, v1

    if-nez v2, :cond_13

    goto :goto_14

    .line 290
    :cond_13
    return-object v1

    .line 288
    :cond_14
    :goto_14
    const/4 v2, 0x0

    return-object v2
.end method

.method private static isLinkPossible(Ljava/io/File;Ljava/io/File;)Z
    .registers 7
    .param p0, "oldFile"    # Ljava/io/File;
    .param p1, "newFile"    # Ljava/io/File;

    .line 233
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v1, v1, Landroid/system/StructStat;->st_dev:J

    .line 234
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    iget-wide v3, v3, Landroid/system/StructStat;->st_dev:J
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_15} :catch_1b

    cmp-long v1, v1, v3

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    .line 233
    :cond_1a
    return v0

    .line 235
    :catch_1b
    move-exception v1

    .line 236
    .local v1, "ignore":Landroid/system/ErrnoException;
    return v0
.end method

.method private static loadRollback(Ljava/io/File;)Lcom/android/server/rollback/Rollback;
    .registers 4
    .param p0, "backupDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "rollback.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 366
    .local v0, "rollbackJsonFile":Ljava/io/File;
    new-instance v1, Lorg/json/JSONObject;

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, "dataJson":Lorg/json/JSONObject;
    invoke-static {v1, p0}, Lcom/android/server/rollback/RollbackStore;->rollbackFromJson(Lorg/json/JSONObject;Ljava/io/File;)Lcom/android/server/rollback/Rollback;

    move-result-object v2
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v2

    .line 370
    .end local v0    # "rollbackJsonFile":Ljava/io/File;
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    :catch_1a
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static loadRollbacks(Ljava/io/File;)Ljava/util/List;
    .registers 9
    .param p0, "rollbackDataDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/Rollback;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "rollbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/Rollback;>;"
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_3f

    aget-object v4, v1, v3

    .line 88
    .local v4, "rollbackDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 90
    :try_start_18
    invoke-static {v4}, Lcom/android/server/rollback/RollbackStore;->loadRollback(Ljava/io/File;)Lcom/android/server/rollback/Rollback;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1f} :catch_20

    .line 94
    goto :goto_3c

    .line 91
    :catch_20
    move-exception v5

    .line 92
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read rollback at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RollbackManager"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-static {v4}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 87
    .end local v4    # "rollbackDir":Ljava/io/File;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 97
    :cond_3f
    return-object v0
.end method

.method private static packageRollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/PackageRollbackInfo;
    .registers 20
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 430
    move-object/from16 v0, p0

    .line 431
    const-string/jumbo v1, "versionRolledBackFrom"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 430
    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;

    move-result-object v1

    .line 432
    .local v1, "versionRolledBackFrom":Landroid/content/pm/VersionedPackage;
    nop

    .line 433
    const-string/jumbo v2, "versionRolledBackTo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 432
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;

    move-result-object v11

    .line 435
    .local v11, "versionRolledBackTo":Landroid/content/pm/VersionedPackage;
    nop

    .line 436
    const-string/jumbo v2, "pendingBackups"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 435
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->toIntList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v12

    .line 437
    .local v12, "pendingBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .line 438
    const-string/jumbo v2, "pendingRestores"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 437
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->convertToRestoreInfoArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v13

    .line 440
    .local v13, "pendingRestores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;>;"
    const-string v2, "isApex"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 441
    .local v14, "isApex":Z
    const-string v2, "isApkInApex"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 444
    .local v15, "isApkInApex":Z
    const-string v2, "installedUsers"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->toIntList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v16

    .line 447
    .local v16, "snapshottedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v2, "rollbackDataPolicy"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 450
    .local v17, "rollbackDataPolicy":I
    new-instance v18, Landroid/content/rollback/PackageRollbackInfo;

    move-object/from16 v2, v18

    move-object v3, v1

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move v7, v14

    move v8, v15

    move-object/from16 v9, v16

    move/from16 v10, v17

    invoke-direct/range {v2 .. v10}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    return-object v18
.end method

.method private static packageRollbackInfosFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .param p0, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 485
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->packageRollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/PackageRollbackInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 487
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.method private static removeFile(Ljava/io/File;)V
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .line 496
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 497
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 498
    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 497
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 501
    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 502
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 504
    :cond_1f
    return-void
.end method

.method static rollbackFromJson(Lorg/json/JSONObject;Ljava/io/File;)Lcom/android/server/rollback/Rollback;
    .registers 14
    .param p0, "dataJson"    # Lorg/json/JSONObject;
    .param p1, "backupDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 378
    new-instance v11, Lcom/android/server/rollback/Rollback;

    .line 379
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->rollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/RollbackInfo;

    move-result-object v1

    .line 381
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v3

    .line 384
    const-string/jumbo v0, "stagedSessionId"

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "originalSessionId"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 385
    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/Rollback;->rollbackStateFromString(Ljava/lang/String;)I

    move-result v5

    .line 386
    const-string/jumbo v0, "stateDescription"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 387
    const-string/jumbo v0, "restoreUserDataInProgress"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 388
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string/jumbo v2, "userId"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 389
    const-string v0, "installerPackageName"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 390
    const-string v0, "extensionVersions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->extensionVersionsFromJson(Lorg/json/JSONArray;)Landroid/util/SparseIntArray;

    move-result-object v10

    move-object v0, v11

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/server/rollback/Rollback;-><init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IILjava/lang/String;ZILjava/lang/String;Landroid/util/SparseIntArray;)V

    .line 378
    return-object v11
.end method

.method private static rollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/RollbackInfo;
    .registers 8
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 199
    new-instance v6, Landroid/content/rollback/RollbackInfo;

    .line 200
    const-string/jumbo v0, "rollbackId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 201
    const-string/jumbo v0, "packages"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->packageRollbackInfosFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 202
    const-string v0, "isStaged"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 203
    const-string v0, "causePackages"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->versionedPackagesFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 204
    const-string v0, "committedSessionId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    .line 199
    return-object v6
.end method

.method private static rollbackInfoToJson(Landroid/content/rollback/RollbackInfo;)Lorg/json/JSONObject;
    .registers 4
    .param p0, "rollback"    # Landroid/content/rollback/RollbackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 189
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 190
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    const-string/jumbo v2, "rollbackId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v2, "packages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v1

    const-string v2, "isStaged"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 193
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->versionedPackagesToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "causePackages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v1

    const-string v2, "committedSessionId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    return-object v0
.end method

.method static saveRollback(Lcom/android/server/rollback/Rollback;)V
    .registers 2
    .param p0, "rollback"    # Lcom/android/server/rollback/Rollback;

    .line 337
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    .line 338
    return-void
.end method

.method private static saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V
    .registers 7
    .param p0, "rollback"    # Lcom/android/server/rollback/Rollback;
    .param p1, "backDir"    # Ljava/io/File;

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "rollback.json"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 311
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_e
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 312
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 313
    .local v2, "dataJson":Lorg/json/JSONObject;
    const-string v3, "info"

    iget-object v4, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-static {v4}, Lcom/android/server/rollback/RollbackStore;->rollbackInfoToJson(Landroid/content/rollback/RollbackInfo;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string/jumbo v3, "timestamp"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string/jumbo v3, "originalSessionId"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 316
    const-string/jumbo v3, "state"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string/jumbo v3, "stateDescription"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string/jumbo v3, "restoreUserDataInProgress"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 319
    const-string/jumbo v3, "userId"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    const-string v3, "installerPackageName"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v3, "extensionVersions"

    .line 322
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/rollback/RollbackStore;->extensionVersionsToJson(Landroid/util/SparseIntArray;)Lorg/json/JSONArray;

    move-result-object v4

    .line 321
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v0, v3

    .line 325
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 326
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 327
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_8d} :catch_8e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_8d} :catch_8e

    .line 333
    .end local v2    # "dataJson":Lorg/json/JSONObject;
    goto :goto_b2

    .line 328
    :catch_8e
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save rollback for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RollbackManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    if-eqz v0, :cond_b2

    .line 331
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 334
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b2
    :goto_b2
    return-void
.end method

.method private static toIntList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 115
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 118
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.method private static toJson(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 474
    .local p0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 475
    .local v0, "json":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 476
    .local v2, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/rollback/PackageRollbackInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 477
    .end local v2    # "info":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_9

    .line 478
    :cond_1d
    return-object v0
.end method

.method private static toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;
    .registers 5
    .param p0, "pkg"    # Landroid/content/pm/VersionedPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 394
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 395
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v1

    const-string v3, "longVersionCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 397
    return-object v0
.end method

.method private static toJson(Landroid/content/rollback/PackageRollbackInfo;)Lorg/json/JSONObject;
    .registers 7
    .param p0, "info"    # Landroid/content/rollback/PackageRollbackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 407
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 408
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "versionRolledBackFrom"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "versionRolledBackTo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Ljava/util/List;

    move-result-object v1

    .line 412
    .local v1, "pendingBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getPendingRestores()Ljava/util/ArrayList;

    move-result-object v2

    .line 413
    .local v2, "pendingRestores":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;>;"
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object v3

    .line 414
    .local v3, "snapshottedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->fromIntList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    const-string/jumbo v5, "pendingBackups"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->convertToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    const-string/jumbo v5, "pendingRestores"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v4

    const-string v5, "isApex"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 418
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v4

    const-string v5, "isApkInApex"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 421
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->fromIntList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "installedUsers"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v4

    const-string/jumbo v5, "rollbackDataPolicy"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 425
    return-object v0
.end method

.method private static versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;
    .registers 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 401
    const-string/jumbo v0, "packageName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "longVersionCode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 403
    .local v1, "longVersionCode":J
    new-instance v3, Landroid/content/pm/VersionedPackage;

    invoke-direct {v3, v0, v1, v2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    return-object v3
.end method

.method private static versionedPackagesFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .param p0, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 468
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 470
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.method private static versionedPackagesToJson(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 457
    .local p0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 458
    .local v0, "json":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/VersionedPackage;

    .line 459
    .local v2, "pkg":Landroid/content/pm/VersionedPackage;
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 460
    .end local v2    # "pkg":Landroid/content/pm/VersionedPackage;
    goto :goto_9

    .line 461
    :cond_1d
    return-object v0
.end method


# virtual methods
.method createNonStagedRollback(IIILjava/lang/String;[ILandroid/util/SparseIntArray;)Lcom/android/server/rollback/Rollback;
    .registers 18
    .param p1, "rollbackId"    # I
    .param p2, "originalSessionId"    # I
    .param p3, "userId"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "packageSessionIds"    # [I
    .param p6, "extensionVersions"    # Landroid/util/SparseIntArray;

    .line 214
    new-instance v2, Ljava/io/File;

    move-object v9, p0

    iget-object v0, v9, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    .local v2, "backupDir":Ljava/io/File;
    new-instance v10, Lcom/android/server/rollback/Rollback;

    const/4 v4, 0x0

    move-object v0, v10

    move v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IZILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    return-object v10
.end method

.method createStagedRollback(IIILjava/lang/String;[ILandroid/util/SparseIntArray;)Lcom/android/server/rollback/Rollback;
    .registers 18
    .param p1, "rollbackId"    # I
    .param p2, "originalSessionId"    # I
    .param p3, "userId"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "packageSessionIds"    # [I
    .param p6, "extensionVersions"    # Landroid/util/SparseIntArray;

    .line 226
    new-instance v2, Ljava/io/File;

    move-object v9, p0

    iget-object v0, v9, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .local v2, "backupDir":Ljava/io/File;
    new-instance v10, Lcom/android/server/rollback/Rollback;

    const/4 v4, 0x1

    move-object v0, v10

    move v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IZILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    return-object v10
.end method

.method loadHistorialRollbacks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/Rollback;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackHistoryDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method loadRollbacks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/Rollback;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method saveRollbackToHistory(Lcom/android/server/rollback/Rollback;)V
    .registers 8
    .param p1, "rollback"    # Lcom/android/server/rollback/Rollback;

    .line 346
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "suffix":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "dirName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackHistoryDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 349
    .local v2, "backupDir":Ljava/io/File;
    invoke-static {p1, v2}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    .line 350
    return-void
.end method
