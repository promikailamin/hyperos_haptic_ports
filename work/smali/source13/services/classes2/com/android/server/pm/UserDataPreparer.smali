.class Lcom/android/server/pm/UserDataPreparer;
.super Ljava/lang/Object;
.source "UserDataPreparer.java"


# static fields
.field private static final STATUS_CHECKING:I = 0x0

.field private static final STATUS_DONE:I = 0x2

.field private static final STATUS_LOCK_CONTENTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UserDataPreparer"

.field private static final XATTR_SERIAL:Ljava/lang/String; = "user.serial"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mOnlyCore:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Z)V
    .registers 5
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "onlyCore"    # Z

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    .line 67
    iput-object p3, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    .line 68
    iput-boolean p4, p0, Lcom/android/server/pm/UserDataPreparer;->mOnlyCore:Z

    .line 69
    iput-object p1, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 70
    return-void
.end method

.method static getSerialNumber(Ljava/io/File;)I
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user.serial"

    invoke-static {v0, v1}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 360
    .local v0, "buf":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_10} :catch_2f

    .line 362
    .local v1, "serial":Ljava/lang/String;
    :try_start_10
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15
    .catch Landroid/system/ErrnoException; {:try_start_10 .. :try_end_14} :catch_2f

    return v2

    .line 363
    :catch_15
    move-exception v2

    .line 364
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_16
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad serial number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "file":Ljava/io/File;
    throw v3
    :try_end_2f
    .catch Landroid/system/ErrnoException; {:try_start_16 .. :try_end_2f} :catch_2f

    .line 366
    .end local v0    # "buf":[B
    .end local v1    # "serial":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local p0    # "file":Ljava/io/File;
    :catch_2f
    move-exception v0

    .line 367
    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENODATA:I

    if-ne v1, v2, :cond_38

    .line 368
    const/4 v1, -0x1

    return v1

    .line 370
    :cond_38
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private prepareUserDataLI(Ljava/lang/String;IIIZ)V
    .registers 20
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "userSerial"    # I
    .param p4, "flags"    # I
    .param p5, "allowRecover"    # Z

    .line 101
    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const-string v1, "UserDataPreparer"

    iget-object v0, v7, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/storage/StorageManager;

    .line 103
    .local v12, "storage":Landroid/os/storage/StorageManager;
    :try_start_15
    invoke-virtual {v12, p1, v9, v10, v11}, Landroid/os/storage/StorageManager;->prepareUserStorage(Ljava/lang/String;III)V

    .line 105
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_36

    iget-boolean v0, v7, Lcom/android/server/pm/UserDataPreparer;->mOnlyCore:Z

    if-nez v0, :cond_36

    .line 106
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/UserDataPreparer;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 107
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 108
    invoke-virtual {p0, v9}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 111
    :cond_36
    and-int/lit8 v0, v11, 0x2

    if-eqz v0, :cond_54

    iget-boolean v0, v7, Lcom/android/server/pm/UserDataPreparer;->mOnlyCore:Z

    if-nez v0, :cond_54

    .line 112
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/UserDataPreparer;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 113
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 114
    invoke-virtual {p0, v9}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 118
    :cond_54
    iget-object v0, v7, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, v9, v10, v11}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;III)V

    .line 121
    and-int/lit8 v0, v11, 0x2

    if-eqz v0, :cond_9b

    if-nez v9, :cond_9b

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.user."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".ce_available"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "propertyName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string/jumbo v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_9b} :catch_9c

    .line 147
    .end local v0    # "propertyName":Ljava/lang/String;
    :cond_9b
    goto :goto_fd

    .line 127
    :catch_9c
    move-exception v0

    move-object v13, v0

    .line 128
    .local v13, "e":Ljava/lang/Exception;
    const/4 v0, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because we failed to prepare: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1, v9, v11}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(Ljava/lang/String;II)V

    .line 132
    if-eqz p5, :cond_db

    .line 134
    or-int/lit8 v5, v11, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/UserDataPreparer;->prepareUserDataLI(Ljava/lang/String;IIIZ)V

    goto :goto_fd

    .line 138
    :cond_db
    :try_start_db
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareUserData failed for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v13}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    if-nez v9, :cond_fc

    .line 140
    iget-object v0, v7, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "prepareUserData failed for system user"

    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_fc} :catch_fe

    .line 145
    :cond_fc
    nop

    .line 148
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_fd
    return-void

    .line 143
    .restart local v13    # "e":Ljava/lang/Exception;
    :catch_fe
    move-exception v0

    .line 144
    .local v0, "e2":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error rebooting into recovery"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static setSerialNumber(Ljava/io/File;I)V
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 345
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user.serial"

    sget v3, Landroid/system/OsConstants;->XATTR_CREATE:I

    invoke-static {v1, v2, v0, v3}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_16} :catch_18

    .line 348
    .end local v0    # "buf":[B
    nop

    .line 349
    return-void

    .line 346
    :catch_18
    move-exception v0

    .line 347
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method destroyUserData(II)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 154
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 160
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 161
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "volumeUuid":Ljava/lang/String;
    if-eqz v4, :cond_2a

    .line 163
    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(Ljava/lang/String;II)V

    .line 165
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "volumeUuid":Ljava/lang/String;
    :cond_2a
    goto :goto_15

    .line 166
    :cond_2b
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(Ljava/lang/String;II)V

    .line 167
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method destroyUserDataLI(Ljava/lang/String;II)V
    .registers 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 174
    .local v0, "storage":Landroid/os/storage/StorageManager;
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/Installer;->destroyUserData(Ljava/lang/String;II)V

    .line 177
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 178
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_29

    .line 179
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 180
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 182
    :cond_29
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_34

    .line 183
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 188
    :cond_34
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/StorageManager;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_37} :catch_38

    .line 193
    goto :goto_64

    .line 190
    :catch_38
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to destroy user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_64
    return-void
.end method

.method enforceSerialNumber(Ljava/io/File;I)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Lcom/android/server/pm/UserDataPreparer;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    const-string v1, "UserDataPreparer"

    if-eqz v0, :cond_e

    .line 316
    const-string v0, "Device is emulating FBE; assuming current serial number is valid"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void

    .line 320
    :cond_e
    invoke-static {p1}, Lcom/android/server/pm/UserDataPreparer;->getSerialNumber(Ljava/io/File;)I

    move-result v0

    .line 321
    .local v0, "foundSerial":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with serial number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v2, -0x1

    if-ne v0, v2, :cond_6d

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serial number missing on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; assuming current is valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :try_start_51
    invoke-static {p1, p2}, Lcom/android/server/pm/UserDataPreparer;->setSerialNumber(Ljava/io/File;I)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 329
    :goto_54
    goto :goto_6f

    .line 327
    :catch_55
    move-exception v2

    .line 328
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set serial number on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_54

    .line 331
    :cond_6d
    if-ne v0, p2, :cond_70

    .line 335
    :goto_6f
    return-void

    .line 332
    :cond_70
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found serial number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t match expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getDataMiscCeDirectory(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 265
    invoke-static {p1}, Landroid/os/Environment;->getDataMiscCeDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getDataMiscDeDirectory(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 275
    invoke-static {p1}, Landroid/os/Environment;->getDataMiscDeDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSystemCeDirectory(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 270
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSystemDeDirectory(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 290
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 285
    invoke-static {p1, p2}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 295
    invoke-static {p1, p2}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getUserSystemDirectory(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 280
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected isFileEncryptedEmulatedOnly()Z
    .registers 2

    .line 300
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$prepareUserDataWithContentionCheck$0$com-android-server-pm-UserDataPreparer([III)V
    .registers 8
    .param p1, "lockContention"    # [I
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 393
    monitor-enter p1

    .line 394
    const/4 v0, 0x0

    :try_start_2
    aget v1, p1, v0

    if-nez v1, :cond_36

    .line 395
    const/4 v1, 0x1

    aput v1, p1, v0

    .line 396
    const-string v0, "UserDataPreparer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock contention detected while prepare user data: userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", disable dexopt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->controlDexOptBlocking(Z)V

    .line 400
    :cond_36
    monitor-exit p1

    .line 401
    return-void

    .line 400
    :catchall_38
    move-exception v0

    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method prepareUserData(III)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .param p3, "flags"    # I

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserDataWithContentionCheck(III)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 78
    return-void

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 87
    .local v1, "storage":Landroid/os/storage/StorageManager;
    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/UserDataPreparer;->prepareUserDataLI(Ljava/lang/String;IIIZ)V

    .line 88
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 89
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "volumeUuid":Ljava/lang/String;
    if-eqz v4, :cond_40

    .line 91
    const/4 v10, 0x1

    move-object v5, p0

    move-object v6, v4

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/UserDataPreparer;->prepareUserDataLI(Ljava/lang/String;IIIZ)V

    .line 93
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "volumeUuid":Ljava/lang/String;
    :cond_40
    goto :goto_25

    .line 94
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_41
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_a .. :try_end_45} :catchall_43

    throw v1
.end method

.method prepareUserDataWithContentionCheck(III)Z
    .registers 13
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .param p3, "flags"    # I

    .line 383
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 384
    return v1

    .line 386
    :cond_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_22

    .line 387
    const-string v0, "UserDataPreparer"

    const-string/jumbo v2, "prepareUserData isn\'t supposed to run on the main thread"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    return v1

    .line 391
    :cond_22
    const/4 v0, 0x1

    new-array v2, v0, [I

    aput v1, v2, v1

    .line 392
    .local v2, "lockContention":[I
    new-instance v3, Lcom/android/server/pm/UserDataPreparer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p1, p3}, Lcom/android/server/pm/UserDataPreparer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserDataPreparer;[III)V

    .line 403
    .local v3, "contentionCheckTask":Ljava/lang/Runnable;
    const/4 v4, 0x2

    :try_start_2d
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 405
    .local v5, "handler":Landroid/os/Handler;
    if-nez p1, :cond_3b

    const/16 v6, 0x1f4

    goto :goto_3d

    :cond_3b
    const/16 v6, 0x2710

    .line 406
    .local v6, "timeoutMillis":I
    :goto_3d
    int-to-long v7, v6

    invoke-virtual {v5, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 410
    iget-object v7, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_44
    .catchall {:try_start_2d .. :try_end_44} :catchall_82

    .line 411
    :try_start_44
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 413
    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_7f

    .line 415
    .end local v5    # "handler":Landroid/os/Handler;
    .end local v6    # "timeoutMillis":I
    monitor-enter v2

    .line 416
    :try_start_4c
    aget v5, v2, v1

    if-ne v5, v0, :cond_77

    .line 417
    const-string v5, "UserDataPreparer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable dexopt, userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v5, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v1}, Lcom/android/server/pm/Installer;->controlDexOptBlocking(Z)V

    .line 420
    :cond_77
    aput v4, v2, v1

    .line 421
    monitor-exit v2

    .line 422
    nop

    .line 423
    return v0

    .line 421
    :catchall_7c
    move-exception v0

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_4c .. :try_end_7e} :catchall_7c

    throw v0

    .line 413
    .restart local v5    # "handler":Landroid/os/Handler;
    .restart local v6    # "timeoutMillis":I
    :catchall_7f
    move-exception v8

    :try_start_80
    monitor-exit v7
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    .end local v2    # "lockContention":[I
    .end local v3    # "contentionCheckTask":Ljava/lang/Runnable;
    .end local p0    # "this":Lcom/android/server/pm/UserDataPreparer;
    .end local p1    # "userId":I
    .end local p2    # "userSerial":I
    .end local p3    # "flags":I
    :try_start_81
    throw v8
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    .line 415
    .end local v5    # "handler":Landroid/os/Handler;
    .end local v6    # "timeoutMillis":I
    .restart local v2    # "lockContention":[I
    .restart local v3    # "contentionCheckTask":Ljava/lang/Runnable;
    .restart local p0    # "this":Lcom/android/server/pm/UserDataPreparer;
    .restart local p1    # "userId":I
    .restart local p2    # "userSerial":I
    .restart local p3    # "flags":I
    :catchall_82
    move-exception v5

    monitor-enter v2

    .line 416
    :try_start_84
    aget v6, v2, v1

    if-ne v6, v0, :cond_af

    .line 417
    const-string v0, "UserDataPreparer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable dexopt, userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->controlDexOptBlocking(Z)V

    .line 420
    :cond_af
    aput v4, v2, v1

    .line 421
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_84 .. :try_end_b2} :catchall_b3

    .line 422
    throw v5

    .line 421
    :catchall_b3
    move-exception v0

    :try_start_b4
    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v0
.end method

.method reconcileUsers(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p2, "validUsersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    nop

    .line 204
    invoke-static {p1}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 205
    nop

    .line 206
    invoke-static {p1}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 205
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 207
    nop

    .line 208
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 209
    nop

    .line 210
    invoke-static {}, Landroid/os/Environment;->getDataSystemCeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 209
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 211
    nop

    .line 212
    invoke-static {}, Landroid/os/Environment;->getDataMiscCeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 211
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 214
    return-void
.end method

.method reconcileUsers(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 218
    .local p2, "validUsersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local p3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 219
    .local v0, "userCount":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 220
    .local v1, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1a

    .line 221
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 222
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 224
    .end local v2    # "i":I
    :cond_1a
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 225
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_31

    .line 226
    goto :goto_1e

    .line 232
    :cond_31
    :try_start_31
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 233
    .local v4, "userId":I
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_3f} :catch_9d

    .line 237
    .local v5, "info":Landroid/content/pm/UserInfo;
    nop

    .line 239
    const/4 v6, 0x0

    .line 240
    .local v6, "destroyUser":Z
    const/4 v7, 0x5

    if-nez v5, :cond_62

    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Destroying user directory "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " because no matching user was found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 243
    const/4 v6, 0x1

    goto :goto_8e

    .line 244
    :cond_62
    iget-boolean v8, p0, Lcom/android/server/pm/UserDataPreparer;->mOnlyCore:Z

    if-nez v8, :cond_8e

    .line 246
    :try_start_66
    iget v8, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p0, v3, v8}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6b} :catch_6c

    .line 251
    goto :goto_8e

    .line 247
    :catch_6c
    move-exception v8

    .line 248
    .local v8, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Destroying user directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " because we failed to enforce serial number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 250
    const/4 v6, 0x1

    .line 254
    .end local v8    # "e":Ljava/io/IOException;
    :cond_8e
    :goto_8e
    if-eqz v6, :cond_9c

    .line 255
    iget-object v7, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 256
    const/4 v8, 0x3

    :try_start_94
    invoke-virtual {p0, p1, v4, v8}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(Ljava/lang/String;II)V

    .line 258
    monitor-exit v7

    goto :goto_9c

    :catchall_99
    move-exception v2

    monitor-exit v7
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_99

    throw v2

    .line 260
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "userId":I
    .end local v5    # "info":Landroid/content/pm/UserInfo;
    .end local v6    # "destroyUser":Z
    :cond_9c
    :goto_9c
    goto :goto_1e

    .line 234
    .restart local v3    # "file":Ljava/io/File;
    :catch_9d
    move-exception v4

    .line 235
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "UserDataPreparer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid user directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    goto/16 :goto_1e

    .line 261
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_b8
    return-void
.end method
