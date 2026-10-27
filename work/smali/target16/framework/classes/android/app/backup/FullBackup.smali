.class public Landroid/app/backup/FullBackup;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/FullBackup$BackupSchemeId;,
        Landroid/app/backup/FullBackup$BackupScheme;,
        Landroid/app/backup/FullBackup$ConfigSection;
    }
.end annotation


# static fields
.field public static final greylist-max-o APK_TREE_TOKEN:Ljava/lang/String; = "a"

.field public static final greylist-max-o APPS_PREFIX:Ljava/lang/String; = "apps/"

.field public static final greylist-max-o CACHE_TREE_TOKEN:Ljava/lang/String; = "c"

.field public static final greylist-max-o CONF_TOKEN_INTENT_EXTRA:Ljava/lang/String; = "conftoken"

.field public static final greylist-max-o DATABASE_TREE_TOKEN:Ljava/lang/String; = "db"

.field public static final greylist-max-o DEVICE_CACHE_TREE_TOKEN:Ljava/lang/String; = "d_c"

.field public static final greylist-max-o DEVICE_DATABASE_TREE_TOKEN:Ljava/lang/String; = "d_db"

.field public static final greylist-max-o DEVICE_FILES_TREE_TOKEN:Ljava/lang/String; = "d_f"

.field public static final greylist-max-o DEVICE_NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "d_nb"

.field public static final greylist-max-o DEVICE_ROOT_TREE_TOKEN:Ljava/lang/String; = "d_r"

.field public static final greylist-max-o DEVICE_SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "d_sp"

.field public static final greylist-max-o FILES_TREE_TOKEN:Ljava/lang/String; = "f"

.field private static final blacklist FLAG_DISABLE_IF_NO_ENCRYPTION_CAPABILITIES:Ljava/lang/String; = "disableIfNoEncryptionCapabilities"

.field private static final blacklist FLAG_PLATFORM_SPECIFIC_PARAMS_BUNDLE_ID:Ljava/lang/String; = "bundleId"

.field private static final blacklist FLAG_PLATFORM_SPECIFIC_PARAMS_CONTENT_VERSION:Ljava/lang/String; = "contentVersion"

.field private static final blacklist FLAG_PLATFORM_SPECIFIC_PARAMS_TEAM_ID:Ljava/lang/String; = "teamId"

.field public static final greylist-max-o FLAG_REQUIRED_CLIENT_SIDE_ENCRYPTION:Ljava/lang/String; = "clientSideEncryption"

.field public static final greylist-max-o FLAG_REQUIRED_DEVICE_TO_DEVICE_TRANSFER:Ljava/lang/String; = "deviceToDeviceTransfer"

.field public static final greylist-max-o FLAG_REQUIRED_FAKE_CLIENT_SIDE_ENCRYPTION:Ljava/lang/String; = "fakeClientSideEncryption"

.field public static final blacklist FLAG_REQUIRED_PLATFORM:Ljava/lang/String; = "platform"

.field public static final greylist-max-o FULL_BACKUP_INTENT_ACTION:Ljava/lang/String; = "fullback"

.field public static final greylist-max-o FULL_RESTORE_INTENT_ACTION:Ljava/lang/String; = "fullrest"

.field private static final blacklist IGNORE_FULL_BACKUP_CONTENT_IN_D2D:J = 0xac2922cL

.field public static final greylist-max-o KEY_VALUE_DATA_TOKEN:Ljava/lang/String; = "k"

.field public static final greylist-max-o MANAGED_EXTERNAL_TREE_TOKEN:Ljava/lang/String; = "ef"

.field public static final greylist-max-o NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "nb"

.field public static final greylist-max-o OBB_TREE_TOKEN:Ljava/lang/String; = "obb"

.field public static final greylist-max-o ROOT_TREE_TOKEN:Ljava/lang/String; = "r"

.field public static final greylist-max-o SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "sp"

.field public static final greylist-max-o SHARED_PREFIX:Ljava/lang/String; = "shared/"

.field public static final greylist-max-o SHARED_STORAGE_TOKEN:Ljava/lang/String; = "shared"

.field static final greylist-max-o TAG:Ljava/lang/String; = "FullBackup"

.field static final greylist-max-o TAG_XML_PARSER:Ljava/lang/String; = "BackupXmlParserLogging"

.field private static final greylist-max-o kPackageBackupSchemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/backup/FullBackup$BackupSchemeId;",
            "Landroid/app/backup/FullBackup$BackupScheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native greylist backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
.end method

.method static declared-synchronized blacklist getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;
    .registers 5

    const-class v0, Landroid/app/backup/FullBackup;

    monitor-enter v0

    .line 179
    :try_start_3
    new-instance v1, Landroid/app/backup/FullBackup$BackupSchemeId;

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/app/backup/FullBackup$BackupSchemeId;-><init>(Ljava/lang/String;I)V

    .line 181
    sget-object v2, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/FullBackup$BackupScheme;

    .line 182
    if-nez v2, :cond_20

    .line 183
    new-instance v2, Landroid/app/backup/FullBackup$BackupScheme;

    invoke-direct {v2, p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;I)V

    .line 184
    sget-object p0, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    .line 186
    :cond_20
    monitor-exit v0

    return-object v2

    .line 178
    :catchall_22
    move-exception p0

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public static greylist-max-o getBackupSchemeForTest(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .registers 2

    .line 190
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/app/backup/FullBackup;->getBackupSchemeForTest(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getBackupSchemeForTest(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;
    .registers 3

    .line 196
    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme;

    invoke-direct {v0, p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;I)V

    .line 197
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    iput-object p0, v0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    .line 198
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    iput-object p0, v0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    .line 199
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    iput-object p0, v0, Landroid/app/backup/FullBackup$BackupScheme;->mPlatformSpecificParams:Ljava/util/Map;

    .line 200
    return-object v0
.end method

.method public static greylist-max-o restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    move-object/from16 v1, p8

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    move/from16 v4, p3

    if-ne v4, v0, :cond_10

    .line 238
    if-eqz v1, :cond_bf

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_bf

    .line 240
    :cond_10
    nop

    .line 244
    const/4 v4, 0x0

    const-string v5, "FullBackup"

    if-eqz v1, :cond_46

    .line 245
    :try_start_16
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_23

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 253
    :cond_23
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_28} :catch_29

    goto :goto_47

    .line 255
    :catch_29
    move-exception v0

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create/open file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    goto :goto_48

    .line 244
    :cond_46
    move-object v0, v4

    .line 257
    :goto_47
    nop

    .line 259
    :goto_48
    const/high16 v6, 0x10000

    new-array v7, v6, [B

    .line 260
    nop

    .line 261
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-wide v9, p1

    move-object p0, v0

    .line 262
    :goto_58
    cmp-long v0, v9, v2

    if-lez v0, :cond_ba

    .line 263
    int-to-long v11, v6

    cmp-long v0, v9, v11

    if-lez v0, :cond_63

    move v0, v6

    goto :goto_64

    :cond_63
    long-to-int v0, v9

    .line 264
    :goto_64
    const/4 v11, 0x0

    invoke-virtual {v8, v7, v11, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v12

    .line 265
    if-gtz v12, :cond_8e

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incomplete read: expected "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " but got "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v6, p1, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    goto :goto_ba

    .line 271
    :cond_8e
    if-eqz p0, :cond_b7

    .line 273
    :try_start_90
    invoke-virtual {p0, v7, v11, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 281
    goto :goto_b7

    .line 274
    :catch_94
    move-exception v0

    .line 277
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to write to file "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 279
    nop

    .line 280
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object p0, v4

    .line 283
    :cond_b7
    :goto_b7
    int-to-long v11, v12

    sub-long/2addr v9, v11

    .line 284
    goto :goto_58

    .line 285
    :cond_ba
    :goto_ba
    if-eqz p0, :cond_bf

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 289
    :cond_bf
    :goto_bf
    cmp-long p0, p4, v2

    if-ltz p0, :cond_dc

    if-eqz v1, :cond_dc

    .line 292
    const-wide/16 v2, 0x1c0

    and-long v2, p4, v2

    .line 293
    :try_start_c9
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    long-to-int v0, v2

    invoke-static {p0, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_d1
    .catch Landroid/system/ErrnoException; {:try_start_c9 .. :try_end_d1} :catch_d2

    .line 296
    goto :goto_d7

    .line 294
    :catch_d2
    move-exception v0

    move-object p0, v0

    .line 295
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 297
    :goto_d7
    move-wide/from16 v2, p6

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 299
    :cond_dc
    return-void
.end method
