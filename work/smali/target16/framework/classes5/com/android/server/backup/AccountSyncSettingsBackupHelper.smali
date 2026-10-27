.class public Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
.super Landroid/app/backup/BackupHelperWithLogger;
.source "AccountSyncSettingsBackupHelper.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist JSON_FORMAT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final blacklist JSON_FORMAT_HEADER_KEY:Ljava/lang/String; = "account_data"

.field private static final blacklist JSON_FORMAT_VERSION:I = 0x1

.field private static final blacklist KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final blacklist KEY_ACCOUNT_AUTHORITIES:Ljava/lang/String; = "authorities"

.field private static final blacklist KEY_ACCOUNT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist KEY_ACCOUNT_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist KEY_AUTHORITY_NAME:Ljava/lang/String; = "name"

.field private static final blacklist KEY_AUTHORITY_SYNC_ENABLED:Ljava/lang/String; = "syncEnabled"

.field private static final blacklist KEY_AUTHORITY_SYNC_STATE:Ljava/lang/String; = "syncState"

.field private static final blacklist KEY_MASTER_SYNC_ENABLED:Ljava/lang/String; = "masterSyncEnabled"

.field private static final blacklist KEY_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist MD5_BYTE_SIZE:I = 0x10

.field private static final blacklist STASH_FILE:Ljava/lang/String; = "/backup/unadded_account_syncsettings.json"

.field private static final blacklist STATE_VERSION:I = 0x1

.field private static final blacklist SYNC_REQUEST_LATCH_TIMEOUT_SECONDS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AccountSyncSettingsBackupHelper"


# instance fields
.field private blacklist mAccountManager:Landroid/accounts/AccountManager;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3

    .line 88
    invoke-direct {p0}, Landroid/app/backup/BackupHelperWithLogger;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    .line 90
    iget-object p1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 92
    iput p2, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    .line 93
    return-void
.end method

.method public static blacklist accountAdded(Landroid/content/Context;I)V
    .registers 3

    .line 356
    new-instance v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;I)V

    .line 358
    invoke-direct {v0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAddedInternal(I)V

    .line 359
    return-void
.end method

.method private blacklist accountAddedInternal(I)V
    .registers 4

    .line 331
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getStashFile(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_9} :catch_35
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_33

    .line 332
    :try_start_9
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 333
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_29

    .line 334
    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_15} :catch_35
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_33

    .line 341
    nop

    .line 344
    :try_start_16
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;I)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 349
    goto :goto_28

    .line 346
    :catch_1f
    move-exception p1

    .line 348
    const-string v0, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v1, "there was an error with the stashed sync settings"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    :goto_28
    return-void

    .line 331
    :catchall_29
    move-exception p1

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p1
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_33} :catch_35
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_33

    .line 338
    :catch_33
    move-exception p1

    .line 340
    return-void

    .line 334
    :catch_35
    move-exception p1

    .line 337
    return-void
.end method

.method private blacklist generateMd5Checksum([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 239
    if-nez p1, :cond_4

    .line 240
    const/4 p1, 0x0

    return-object p1

    .line 243
    :cond_4
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 244
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    return-object p1
.end method

.method private blacklist getAccounts(I)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1

    .line 368
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 369
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 370
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 372
    :cond_17
    return-object v0
.end method

.method private static blacklist getStashFile(I)Ljava/io/File;
    .registers 3

    .line 438
    if-nez p0, :cond_7

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    goto :goto_b

    .line 439
    :cond_7
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    .line 440
    :goto_b
    new-instance v0, Ljava/io/File;

    const-string v1, "/backup/unadded_account_syncsettings.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    .line 199
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 201
    const/16 p1, 0x10

    new-array v1, p1, [B

    .line 203
    :try_start_12
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 204
    const/4 v3, 0x1

    if-gt v2, v3, :cond_25

    .line 208
    const/4 v2, 0x0

    :goto_1a
    if-ge v2, p1, :cond_4d

    .line 209
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v1, v2

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 212
    :cond_25
    const-string p1, "AccountSyncSettingsBackupHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup state version is: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (support only up to version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_4d} :catch_4e

    .line 217
    :cond_4d
    goto :goto_4f

    .line 215
    :catch_4e
    move-exception p1

    .line 219
    :goto_4f
    return-object v1
.end method

.method private blacklist restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 407
    const-string v0, "authorities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 408
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 411
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v2, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const/4 p1, 0x0

    move v2, p1

    :goto_1a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_49

    .line 413
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 414
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 415
    const-string/jumbo v6, "syncEnabled"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 416
    const-string/jumbo v7, "syncState"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 418
    invoke-static {v3, v5, v6, p2}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 421
    if-nez v6, :cond_46

    .line 422
    nop

    .line 425
    if-nez v4, :cond_42

    .line 426
    move v4, p1

    goto :goto_43

    :cond_42
    const/4 v4, 0x2

    .line 422
    :goto_43
    invoke-static {v3, v5, v4, p2}, Landroid/content/ContentResolver;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 412
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 430
    :cond_49
    return-void
.end method

.method private blacklist restoreFromJsonArray(Lorg/json/JSONArray;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 284
    invoke-direct {p0, p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getAccounts(I)Ljava/util/Set;

    move-result-object v0

    .line 285
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 286
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 287
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 288
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 289
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 291
    nop

    .line 293
    :try_start_24
    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_29} :catch_38

    .line 296
    nop

    .line 300
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 302
    invoke-direct {p0, v3, p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;I)V

    goto :goto_3a

    .line 304
    :cond_34
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3a

    .line 294
    :catch_38
    move-exception v3

    .line 295
    nop

    .line 286
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 308
    :cond_3d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_70

    .line 309
    :try_start_43
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-static {p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getStashFile(I)Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4c} :catch_66

    .line 310
    :try_start_4c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 311
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 312
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_5c

    .line 313
    :try_start_58
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_66

    goto :goto_6f

    .line 309
    :catchall_5c
    move-exception p2

    :try_start_5d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception p1

    :try_start_62
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_65
    throw p2
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_66

    .line 313
    :catch_66
    move-exception p1

    .line 315
    const-string p2, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v0, "unable to write the sync settings to the stash file"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    :goto_6f
    goto :goto_7d

    .line 318
    :cond_70
    invoke-static {p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getStashFile(I)Ljava/io/File;

    move-result-object p1

    .line 319
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 320
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 323
    :cond_7d
    :goto_7d
    return-void
.end method

.method private blacklist serializeAccountSyncSettingsToJSON(I)Lorg/json/JSONObject;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 132
    move/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v1

    .line 133
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 137
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 139
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_16
    if-ge v6, v4, :cond_43

    aget-object v7, v2, v6

    .line 141
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v8

    if-nez v8, :cond_21

    .line 142
    goto :goto_40

    .line 144
    :cond_21
    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    .line 145
    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_33
    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    iget-object v7, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :goto_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 151
    :cond_43
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 152
    const-string/jumbo v4, "version"

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    const-string v4, "masterSyncEnabled"

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 156
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 157
    array-length v6, v1

    :goto_5e
    if-ge v5, v6, :cond_c7

    aget-object v7, v1, v5

    .line 158
    iget-object v8, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 162
    if-eqz v8, :cond_c4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_73

    .line 163
    goto :goto_c4

    .line 166
    :cond_73
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 167
    iget-object v10, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v11, "name"

    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string/jumbo v10, "type"

    iget-object v12, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 172
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_90
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_bc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 173
    invoke-static {v7, v12, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v13

    .line 174
    invoke-static {v7, v12, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v14

    .line 177
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 178
    invoke-virtual {v15, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string/jumbo v12, "syncState"

    invoke-virtual {v15, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-string/jumbo v12, "syncEnabled"

    invoke-virtual {v15, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 182
    goto :goto_90

    .line 183
    :cond_bc
    const-string v7, "authorities"

    invoke-virtual {v9, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 157
    :cond_c4
    :goto_c4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    .line 187
    :cond_c7
    const-string v0, "accounts"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    return-object v2
.end method

.method private blacklist writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    .line 228
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 230
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 231
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 236
    return-void
.end method


# virtual methods
.method public whitelist performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 8

    .line 102
    const-string v0, "AccountSyncSettingsBackupHelper"

    :try_start_2
    iget v1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->serializeAccountSyncSettingsToJSON(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object p1

    .line 111
    invoke-direct {p0, v1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->generateMd5Checksum([B)[B

    move-result-object v2

    .line 112
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 113
    array-length p1, v1

    .line 114
    const-string v3, "account_data"

    invoke-virtual {p2, v3, p1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 115
    invoke-virtual {p2, v1, p1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 117
    const-string p1, "Backup successful."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    goto :goto_34

    .line 119
    :cond_2f
    const-string p1, "Old and new MD5 checksums match. Skipping backup."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_34
    invoke-direct {p0, p3, v2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_37} :catch_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_37} :catch_38

    .line 125
    goto :goto_4f

    .line 123
    :catch_38
    move-exception p1

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t backup account sync settings\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_4f
    return-void
.end method

.method public whitelist restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 6

    .line 252
    const-string v0, "AccountSyncSettingsBackupHelper"

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 255
    :try_start_8
    invoke-virtual {p1, v1}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    .line 256
    new-instance p1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p1, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 259
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    const-string p1, "masterSyncEnabled"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 261
    const-string v2, "accounts"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 263
    iget v2, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    .line 265
    if-eqz v2, :cond_31

    .line 267
    iget v2, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_31} :catch_49
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_31} :catch_49

    .line 271
    :cond_31
    :try_start_31
    iget v2, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;I)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_42

    .line 274
    :try_start_36
    iget v1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-static {p1, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 275
    nop

    .line 276
    const-string p1, "Restore successful."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    goto :goto_60

    .line 274
    :catchall_42
    move-exception v1

    iget v2, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-static {p1, v2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 275
    throw v1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_49} :catch_49
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_49} :catch_49

    .line 277
    :catch_49
    move-exception p1

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t restore account sync settings\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_60
    return-void
.end method

.method public whitelist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    .line 435
    return-void
.end method
