.class public final Lcom/android/server/accounts/AccountManagerBackupHelper;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"


# instance fields
.field public final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field public final mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

.field public final mLock:Ljava/lang/Object;

.field public mRestoreCancelCommand:Ljava/lang/Runnable;

.field public mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

.field public mRestorePendingAppPermissions:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAccountManagerInternal(Lcom/android/server/accounts/AccountManagerBackupHelper;)Landroid/accounts/AccountManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccountManagerService(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestoreCancelCommand(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestorePackageMonitor(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestorePendingAppPermissions(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRestoreCancelCommand(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestorePackageMonitor(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestorePendingAppPermissions(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/util/List;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    .line 80
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-void
.end method


# virtual methods
.method public backupAccountAccessPermissions(I)[B
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 151
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    .line 152
    invoke-virtual {v2, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 153
    iget-object v3, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 154
    :try_start_d
    iget-object v4, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_db

    .line 155
    :try_start_10
    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 156
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->findAllAccountGrants()Landroid/util/Pair;

    move-result-object v2

    .line 157
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v5, :cond_e7

    check-cast v5, [Ljava/lang/String;

    array-length v5, v5
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_9b

    if-nez v5, :cond_22

    goto/16 :goto_e7

    .line 161
    :cond_22
    :try_start_22
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v7

    .line 163
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 164
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 165
    const-string/jumbo v8, "permissions"

    invoke-interface {v7, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 169
    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    .line 170
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v10, 0x0

    .line 171
    :goto_50
    array-length v11, v8

    if-ge v10, v11, :cond_c8

    .line 172
    aget-object v11, v8, v10

    .line 173
    aget v12, v2, v10

    .line 175
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_60

    :cond_5d
    move-object/from16 v16, v0

    goto :goto_c1

    .line 180
    :cond_60
    array-length v13, v12

    const/4 v14, 0x0

    :goto_62
    if-ge v14, v13, :cond_5d

    aget-object v15, v12, v14
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_66} :catch_9d
    .catchall {:try_start_22 .. :try_end_66} :catchall_9b

    const/16 v9, 0x40

    .line 183
    :try_start_68
    invoke-virtual {v0, v15, v9, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_68 .. :try_end_6c} :catch_a2
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6c} :catch_9d
    .catchall {:try_start_68 .. :try_end_6c} :catchall_9b

    .line 190
    :try_start_6c
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v9}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9f

    move-object/from16 v16, v0

    .line 193
    const-string/jumbo v0, "permission"

    invoke-interface {v7, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    const-string v0, "account-sha-256"

    .line 195
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-interface {v7, v6, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const-string/jumbo v0, "package"

    invoke-interface {v7, v6, v0, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    const-string v0, "digest"

    invoke-interface {v7, v6, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    const-string/jumbo v0, "permission"

    invoke-interface {v7, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_ba

    :catchall_9b
    move-exception v0

    goto :goto_ea

    :catch_9d
    move-exception v0

    goto :goto_dd

    :cond_9f
    move-object/from16 v16, v0

    goto :goto_ba

    :catch_a2
    move-object/from16 v16, v0

    .line 186
    const-string v0, "AccountManagerBackupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping backup of account access grant for non-existing package: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ba
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    move-object/from16 v0, v16

    goto :goto_62

    :goto_c1
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move-object/from16 v0, v16

    goto :goto_50

    .line 202
    :cond_c8
    const-string/jumbo v0, "permissions"

    invoke-interface {v7, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 204
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 205
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_d8} :catch_9d
    .catchall {:try_start_6c .. :try_end_d8} :catchall_9b

    :try_start_d8
    monitor-exit v4
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_9b

    :try_start_d9
    monitor-exit v3
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_db

    return-object v0

    :catchall_db
    move-exception v0

    goto :goto_ec

    .line 207
    :goto_dd
    :try_start_dd
    const-string v1, "AccountManagerBackupHelper"

    const-string v2, "Error backing up account access grants"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    monitor-exit v4
    :try_end_e5
    .catchall {:try_start_dd .. :try_end_e5} :catchall_9b

    :try_start_e5
    monitor-exit v3
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_db

    return-object v6

    .line 158
    :cond_e7
    :goto_e7
    :try_start_e7
    monitor-exit v4
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_9b

    :try_start_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_db

    return-object v6

    .line 210
    :goto_ea
    :try_start_ea
    monitor-exit v4
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_9b

    :try_start_eb
    throw v0

    .line 211
    :goto_ec
    monitor-exit v3
    :try_end_ed
    .catchall {:try_start_eb .. :try_end_ed} :catchall_db

    throw v0
.end method

.method public restoreAccountAccessPermissions([BI)V
    .registers 14

    .line 216
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 217
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p1

    .line 218
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 221
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 222
    :cond_1e
    :goto_1e
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_be

    .line 223
    const-string/jumbo v2, "permissions"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_1e

    .line 226
    :cond_33
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 227
    :goto_37
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 228
    const-string/jumbo v4, "permission"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    goto :goto_37

    .line 231
    :cond_4b
    const-string v4, "account-sha-256"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 233
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 235
    :cond_5a
    const-string/jumbo v4, "package"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 236
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 237
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 239
    :cond_6a
    const-string v4, "digest"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 240
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 241
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 244
    :cond_79
    new-instance v5, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    move-object v6, p0

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    invoke-virtual {v5, v0}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->apply(Landroid/content/pm/PackageManager;)Z

    move-result p0

    if-nez p0, :cond_ba

    .line 248
    iget-object p0, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_89} :catch_d1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_89} :catch_d1

    .line 250
    :try_start_89
    iget-object p2, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    if-nez p2, :cond_a6

    .line 251
    new-instance p2, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    invoke-direct {p2, v6, v3}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper-IA;)V

    iput-object p2, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    .line 252
    iget-object v4, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v7, v4, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v4, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 253
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v8, 0x1

    .line 252
    invoke-virtual {p2, v7, v4, v8}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    goto :goto_a6

    :catchall_a3
    move-exception v0

    move-object p1, v0

    goto :goto_b8

    .line 255
    :cond_a6
    :goto_a6
    iget-object p2, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    if-nez p2, :cond_b1

    .line 256
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    .line 258
    :cond_b1
    iget-object p2, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    monitor-exit p0

    goto :goto_ba

    :goto_b8
    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_89 .. :try_end_b9} :catchall_a3

    :try_start_b9
    throw p1

    :cond_ba
    :goto_ba
    move-object p0, v6

    move p2, v10

    goto/16 :goto_37

    :cond_be
    move-object v6, p0

    .line 265
    new-instance p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;

    invoke-direct {p0, v6, v3}, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper-IA;)V

    iput-object p0, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    .line 266
    iget-object p1, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_d0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b9 .. :try_end_d0} :catch_d1
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_d0} :catch_d1

    return-void

    :catch_d1
    move-exception v0

    move-object p0, v0

    .line 269
    const-string p1, "AccountManagerBackupHelper"

    const-string p2, "Error restoring app permissions"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
