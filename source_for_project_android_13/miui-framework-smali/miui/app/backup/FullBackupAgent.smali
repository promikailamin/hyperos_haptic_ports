.class public Lmiui/app/backup/FullBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "FullBackupAgent.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Backup:FullBackupAgent"

.field private static final blacklist TMP_BAK_NAME:Ljava/lang/String; = "_tmp_bak"


# instance fields
.field private blacklist mAttachedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBackupManager:Lmiui/app/backup/BackupManager;

.field private blacklist mBackupMeta:Lmiui/app/backup/BackupMeta;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method

.method private blacklist getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 206
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, "separatorIndex":I
    if-gez v0, :cond_a

    move-object v1, p1

    goto :goto_14

    :cond_a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_14
    return-object v1
.end method


# virtual methods
.method public whitelist addAttachedFile(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    .line 227
    :cond_b
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public whitelist addAttachedFile(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    .line 220
    :cond_b
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method protected whitelist checkVersion(I)Z
    .registers 4
    .param p1, "feature"    # I

    .line 250
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iget v0, v0, Lmiui/app/backup/BackupMeta;->version:I

    invoke-virtual {p0, p1}, Lmiui/app/backup/FullBackupAgent;->getVersion(I)I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method protected whitelist getVersion(I)I
    .registers 3
    .param p1, "feature"    # I

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .registers 5
    .param p1, "meta"    # Lmiui/app/backup/BackupMeta;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method protected whitelist onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .registers 4
    .param p1, "meta"    # Lmiui/app/backup/BackupMeta;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onFullBackup(Landroid/os/ParcelFileDescriptor;I)I
    .registers 4
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .registers 22
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, "Backup:FullBackupAgent"

    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    if-nez v0, :cond_10

    .line 42
    invoke-static/range {p0 .. p0}, Lmiui/app/backup/BackupManager;->getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;

    move-result-object v0

    iput-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    .line 45
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 46
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 47
    .local v2, "appVerCode":I
    const-string v3, ""

    .line 48
    .local v3, "appVerName":Ljava/lang/String;
    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 49
    .local v4, "deviceName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 51
    .local v5, "miuiVersion":Ljava/lang/String;
    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v0}, Lmiui/app/backup/BackupManager;->getCurrentWorkingFeature()I

    move-result v12

    .line 52
    .local v12, "feature":I
    invoke-virtual {v1, v12}, Lmiui/app/backup/FullBackupAgent;->getVersion(I)I

    move-result v13

    .line 54
    .local v13, "version":I
    :try_start_29
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v10, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 55
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget v6, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move v2, v6

    .line 56
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_37} :catch_3a

    move-object v3, v6

    .line 59
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    move v14, v2

    goto :goto_41

    .line 57
    :catch_3a
    move-exception v0

    .line 58
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "NameNotFoundException"

    invoke-static {v9, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v14, v2

    .line 60
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "appVerCode":I
    .local v14, "appVerCode":I
    :goto_41
    const-string v0, "\r"

    const-string v2, ""

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    const-string v6, "\n"

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 62
    .end local v3    # "appVerName":Ljava/lang/String;
    .local v15, "appVerName":Ljava/lang/String;
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .end local v4    # "deviceName":Ljava/lang/String;
    .local v3, "deviceName":Ljava/lang/String;
    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    .end local v3    # "deviceName":Ljava/lang/String;
    .local v7, "deviceName":Ljava/lang/String;
    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .end local v5    # "miuiVersion":Ljava/lang/String;
    .local v0, "miuiVersion":Ljava/lang/String;
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    .end local v0    # "miuiVersion":Ljava/lang/String;
    .local v6, "miuiVersion":Ljava/lang/String;
    new-instance v0, Lmiui/app/backup/BackupMeta;

    invoke-direct {v0}, Lmiui/app/backup/BackupMeta;-><init>()V

    iput-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    .line 67
    iput v14, v0, Lmiui/app/backup/BackupMeta;->appVersionCode:I

    .line 68
    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput-object v15, v0, Lmiui/app/backup/BackupMeta;->appVersionName:Ljava/lang/String;

    .line 69
    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput-object v7, v0, Lmiui/app/backup/BackupMeta;->deviceName:Ljava/lang/String;

    .line 70
    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/app/backup/BackupMeta;->packageName:Ljava/lang/String;

    .line 71
    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput-object v6, v0, Lmiui/app/backup/BackupMeta;->miuiVersion:Ljava/lang/String;

    .line 72
    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput v12, v0, Lmiui/app/backup/BackupMeta;->feature:I

    .line 73
    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lmiui/app/backup/BackupMeta;->createTime:J

    .line 74
    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput v13, v0, Lmiui/app/backup/BackupMeta;->version:I

    .line 75
    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-virtual {v0, v1, v8}, Lmiui/app/backup/BackupMeta;->writeToTar(Landroid/content/Context;Landroid/app/backup/FullBackupDataOutput;)V

    .line 77
    if-nez v13, :cond_9c

    .line 78
    invoke-super/range {p0 .. p1}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto/16 :goto_115

    .line 80
    :cond_9c
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "_tmp_bak"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    .line 81
    .local v5, "tmpBak":Ljava/io/File;
    const/4 v2, 0x0

    .line 83
    .local v2, "outData":Landroid/os/ParcelFileDescriptor;
    :try_start_a9
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 84
    const/high16 v0, 0x20000000

    invoke-static {v5, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_b2
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_126

    move-object v4, v0

    .line 85
    .end local v2    # "outData":Landroid/os/ParcelFileDescriptor;
    .local v4, "outData":Landroid/os/ParcelFileDescriptor;
    :try_start_b3
    invoke-virtual {v1, v4, v12}, Lmiui/app/backup/FullBackupAgent;->onFullBackup(Landroid/os/ParcelFileDescriptor;I)I

    .line 86
    sget-object v3, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v16

    .line 87
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17
    :try_end_c1
    .catchall {:try_start_b3 .. :try_end_c1} :catchall_11a

    .line 86
    move-object v2, v11

    move-object/from16 v18, v4

    .end local v4    # "outData":Landroid/os/ParcelFileDescriptor;
    .local v18, "outData":Landroid/os/ParcelFileDescriptor;
    move-object v4, v0

    move-object/from16 v19, v5

    .end local v5    # "tmpBak":Ljava/io/File;
    .local v19, "tmpBak":Ljava/io/File;
    move-object/from16 v5, v16

    move-object/from16 v16, v6

    .end local v6    # "miuiVersion":Ljava/lang/String;
    .local v16, "miuiVersion":Ljava/lang/String;
    move-object/from16 v6, v17

    move-object/from16 v17, v7

    .end local v7    # "deviceName":Ljava/lang/String;
    .local v17, "deviceName":Ljava/lang/String;
    move-object/from16 v7, p1

    :try_start_d1
    invoke-static/range {v2 .. v7}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    move-result v0

    .line 88
    .local v0, "err":I
    if-eqz v0, :cond_fb

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err when data backup err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, v1, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v2, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V
    :try_end_f2
    .catchall {:try_start_d1 .. :try_end_f2} :catchall_116

    .line 94
    if-eqz v18, :cond_f7

    .line 95
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 97
    :cond_f7
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 91
    return-void

    .line 94
    .end local v0    # "err":I
    :cond_fb
    if-eqz v18, :cond_100

    .line 95
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 97
    :cond_100
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 98
    nop

    .line 100
    invoke-virtual {v1, v11, v8, v12}, Lmiui/app/backup/FullBackupAgent;->tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I

    move-result v0

    .line 101
    .restart local v0    # "err":I
    if-eqz v0, :cond_115

    .line 102
    const-string v2, "err when tar attaches"

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, v1, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v2, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V

    .line 104
    return-void

    .line 107
    .end local v0    # "err":I
    .end local v18    # "outData":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "tmpBak":Ljava/io/File;
    :cond_115
    :goto_115
    return-void

    .line 94
    .restart local v18    # "outData":Landroid/os/ParcelFileDescriptor;
    .restart local v19    # "tmpBak":Ljava/io/File;
    :catchall_116
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_12d

    .end local v16    # "miuiVersion":Ljava/lang/String;
    .end local v17    # "deviceName":Ljava/lang/String;
    .end local v18    # "outData":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "tmpBak":Ljava/io/File;
    .restart local v4    # "outData":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "tmpBak":Ljava/io/File;
    .restart local v6    # "miuiVersion":Ljava/lang/String;
    .restart local v7    # "deviceName":Ljava/lang/String;
    :catchall_11a
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v2, v18

    .end local v4    # "outData":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "tmpBak":Ljava/io/File;
    .end local v6    # "miuiVersion":Ljava/lang/String;
    .end local v7    # "deviceName":Ljava/lang/String;
    .restart local v16    # "miuiVersion":Ljava/lang/String;
    .restart local v17    # "deviceName":Ljava/lang/String;
    .restart local v18    # "outData":Landroid/os/ParcelFileDescriptor;
    .restart local v19    # "tmpBak":Ljava/io/File;
    goto :goto_12d

    .end local v16    # "miuiVersion":Ljava/lang/String;
    .end local v17    # "deviceName":Ljava/lang/String;
    .end local v18    # "outData":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "tmpBak":Ljava/io/File;
    .restart local v2    # "outData":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "tmpBak":Ljava/io/File;
    .restart local v6    # "miuiVersion":Ljava/lang/String;
    .restart local v7    # "deviceName":Ljava/lang/String;
    :catchall_126
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .end local v5    # "tmpBak":Ljava/io/File;
    .end local v6    # "miuiVersion":Ljava/lang/String;
    .end local v7    # "deviceName":Ljava/lang/String;
    .restart local v16    # "miuiVersion":Ljava/lang/String;
    .restart local v17    # "deviceName":Ljava/lang/String;
    .restart local v19    # "tmpBak":Ljava/io/File;
    :goto_12d
    if-eqz v2, :cond_132

    .line 95
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 97
    :cond_132
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 98
    throw v0
.end method

.method protected whitelist onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 23
    .param p1, "meta"    # Lmiui/app/backup/BackupMeta;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "size"    # J
    .param p5, "type"    # I
    .param p6, "domain"    # Ljava/lang/String;
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "mode"    # J
    .param p10, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    invoke-super/range {v0 .. v10}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V

    .line 233
    return-void
.end method

.method public whitelist onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method protected whitelist onRestoreEnd(Lmiui/app/backup/BackupMeta;)I
    .registers 3
    .param p1, "meta"    # Lmiui/app/backup/BackupMeta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method protected final whitelist onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 31
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    move-object/from16 v13, p0

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    const-string v11, "Backup:FullBackupAgent"

    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    if-nez v0, :cond_12

    .line 147
    invoke-static/range {p0 .. p0}, Lmiui/app/backup/BackupManager;->getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;

    move-result-object v0

    iput-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    .line 151
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreFile type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_META:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 153
    new-instance v1, Lmiui/app/backup/BackupMeta;

    invoke-direct {v1}, Lmiui/app/backup/BackupMeta;-><init>()V

    iput-object v1, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    .line 154
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v1 .. v10}, Lmiui/app/backup/BackupMeta;->buildFrom(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;JIJJ)V

    goto/16 :goto_1a8

    .line 155
    :cond_5e
    sget-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v10, 0x10000000

    const/16 v16, 0x5

    if-eqz v0, :cond_db

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "_tmp_bak"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_75} :catch_1ac

    move-object v9, v0

    .line 157
    .local v9, "tmpBak":Ljava/io/File;
    const/16 v17, 0x0

    .line 159
    .local v17, "bakData":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move-object/from16 v18, v9

    .end local v9    # "tmpBak":Ljava/io/File;
    .local v18, "tmpBak":Ljava/io/File;
    :try_start_84
    invoke-static/range {v1 .. v9}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_ce

    .line 160
    move-object/from16 v1, v18

    .end local v18    # "tmpBak":Ljava/io/File;
    .local v1, "tmpBak":Ljava/io/File;
    :try_start_89
    invoke-static {v1, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_cc

    move-object v2, v0

    .line 161
    .end local v17    # "bakData":Landroid/os/ParcelFileDescriptor;
    .local v2, "bakData":Landroid/os/ParcelFileDescriptor;
    :try_start_8e
    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iget v0, v0, Lmiui/app/backup/BackupMeta;->feature:I

    invoke-virtual {v13, v0}, Lmiui/app/backup/FullBackupAgent;->checkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-virtual {v13, v0, v2}, Lmiui/app/backup/FullBackupAgent;->onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I

    move-result v16

    :cond_9e
    move/from16 v0, v16

    .line 162
    .local v0, "err":I
    if-eqz v0, :cond_bd

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err when data restoring err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, v13, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v3, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V
    :try_end_bd
    .catchall {:try_start_8e .. :try_end_bd} :catchall_c8

    .line 167
    .end local v0    # "err":I
    :cond_bd
    if-eqz v2, :cond_c2

    .line 168
    :try_start_bf
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 170
    :cond_c2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 171
    nop

    .line 172
    .end local v1    # "tmpBak":Ljava/io/File;
    .end local v2    # "bakData":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_1a8

    .line 167
    .restart local v1    # "tmpBak":Ljava/io/File;
    .restart local v2    # "bakData":Landroid/os/ParcelFileDescriptor;
    :catchall_c8
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_d1

    .end local v2    # "bakData":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "bakData":Landroid/os/ParcelFileDescriptor;
    :catchall_cc
    move-exception v0

    goto :goto_d1

    .end local v1    # "tmpBak":Ljava/io/File;
    .restart local v18    # "tmpBak":Ljava/io/File;
    :catchall_ce
    move-exception v0

    move-object/from16 v1, v18

    .end local v18    # "tmpBak":Ljava/io/File;
    .restart local v1    # "tmpBak":Ljava/io/File;
    :goto_d1
    if-eqz v17, :cond_d6

    .line 168
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 170
    :cond_d6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 171
    nop

    .end local p0    # "this":Lmiui/app/backup/FullBackupAgent;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "size":J
    .end local p4    # "type":I
    .end local p5    # "domain":Ljava/lang/String;
    .end local p6    # "path":Ljava/lang/String;
    .end local p7    # "mode":J
    .end local p9    # "mtime":J
    throw v0

    .line 172
    .end local v1    # "tmpBak":Ljava/io/File;
    .end local v17    # "bakData":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lmiui/app/backup/FullBackupAgent;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "size":J
    .restart local p4    # "type":I
    .restart local p5    # "domain":Ljava/lang/String;
    .restart local p6    # "path":Ljava/lang/String;
    .restart local p7    # "mode":J
    .restart local p9    # "mtime":J
    :cond_db
    sget-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 173
    invoke-direct {v13, v15}, Lmiui/app/backup/FullBackupAgent;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 174
    .local v9, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_f1} :catch_1ac

    move-object v7, v0

    .line 175
    .local v7, "tmpFile":Ljava/io/File;
    const/16 v17, 0x0

    .line 177
    .local v17, "attachFile":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-wide/from16 v5, p7

    move-object/from16 v18, v7

    .end local v7    # "tmpFile":Ljava/io/File;
    .local v18, "tmpFile":Ljava/io/File;
    move-wide/from16 v7, p9

    move-object/from16 v19, v9

    .end local v9    # "fileName":Ljava/lang/String;
    .local v19, "fileName":Ljava/lang/String;
    move-object/from16 v9, v18

    :try_start_104
    invoke-static/range {v1 .. v9}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_14d

    .line 178
    move-object/from16 v1, v18

    .end local v18    # "tmpFile":Ljava/io/File;
    .local v1, "tmpFile":Ljava/io/File;
    :try_start_109
    invoke-static {v1, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_10d
    .catchall {:try_start_109 .. :try_end_10d} :catchall_14b

    move-object v2, v0

    .line 179
    .end local v17    # "attachFile":Landroid/os/ParcelFileDescriptor;
    .local v2, "attachFile":Landroid/os/ParcelFileDescriptor;
    :try_start_10e
    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iget v0, v0, Lmiui/app/backup/BackupMeta;->feature:I

    invoke-virtual {v13, v0}, Lmiui/app/backup/FullBackupAgent;->checkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_11e

    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-virtual {v13, v0, v2, v15}, Lmiui/app/backup/FullBackupAgent;->onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v16

    :cond_11e
    move/from16 v0, v16

    .line 180
    .restart local v0    # "err":I
    if-eqz v0, :cond_13d

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err when attach restoring err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, v13, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v3, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V
    :try_end_13d
    .catchall {:try_start_10e .. :try_end_13d} :catchall_147

    .line 185
    .end local v0    # "err":I
    :cond_13d
    if-eqz v2, :cond_142

    .line 186
    :try_start_13f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 188
    :cond_142
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 189
    nop

    .line 190
    .end local v1    # "tmpFile":Ljava/io/File;
    .end local v2    # "attachFile":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "fileName":Ljava/lang/String;
    goto :goto_1a8

    .line 185
    .restart local v1    # "tmpFile":Ljava/io/File;
    .restart local v2    # "attachFile":Landroid/os/ParcelFileDescriptor;
    .restart local v19    # "fileName":Ljava/lang/String;
    :catchall_147
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_150

    .end local v2    # "attachFile":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "attachFile":Landroid/os/ParcelFileDescriptor;
    :catchall_14b
    move-exception v0

    goto :goto_150

    .end local v1    # "tmpFile":Ljava/io/File;
    .restart local v18    # "tmpFile":Ljava/io/File;
    :catchall_14d
    move-exception v0

    move-object/from16 v1, v18

    .end local v18    # "tmpFile":Ljava/io/File;
    .restart local v1    # "tmpFile":Ljava/io/File;
    :goto_150
    if-eqz v17, :cond_155

    .line 186
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 188
    :cond_155
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 189
    nop

    .end local p0    # "this":Lmiui/app/backup/FullBackupAgent;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "size":J
    .end local p4    # "type":I
    .end local p5    # "domain":Ljava/lang/String;
    .end local p6    # "path":Ljava/lang/String;
    .end local p7    # "mode":J
    .end local p9    # "mtime":J
    throw v0

    .line 190
    .end local v1    # "tmpFile":Ljava/io/File;
    .end local v17    # "attachFile":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "fileName":Ljava/lang/String;
    .restart local p0    # "this":Lmiui/app/backup/FullBackupAgent;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "size":J
    .restart local p4    # "type":I
    .restart local p5    # "domain":Ljava/lang/String;
    .restart local p6    # "path":Ljava/lang/String;
    .restart local p7    # "mode":J
    .restart local p9    # "mtime":J
    :cond_15a
    sget-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 191
    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iget v0, v0, Lmiui/app/backup/BackupMeta;->feature:I

    invoke-virtual {v13, v0}, Lmiui/app/backup/FullBackupAgent;->checkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_172

    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-virtual {v13, v0}, Lmiui/app/backup/FullBackupAgent;->onRestoreEnd(Lmiui/app/backup/BackupMeta;)I

    move-result v16

    :cond_172
    move/from16 v0, v16

    .line 192
    .restart local v0    # "err":I
    if-eqz v0, :cond_191

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err when restore ending err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, v13, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v1, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V

    .line 196
    .end local v0    # "err":I
    :cond_191
    goto :goto_1a8

    .line 197
    :cond_192
    iget-object v2, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;
    :try_end_194
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_194} :catch_1ac

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-object v13, v11

    move-wide/from16 v11, p9

    :try_start_1a5
    invoke-virtual/range {v1 .. v12}, Lmiui/app/backup/FullBackupAgent;->onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1a8} :catch_1aa

    .line 202
    :goto_1a8
    nop

    .line 203
    return-void

    .line 199
    :catch_1aa
    move-exception v0

    goto :goto_1ae

    :catch_1ac
    move-exception v0

    move-object v13, v11

    .line 200
    .local v0, "e":Ljava/io/IOException;
    :goto_1ae
    const-string v1, "Exception when restore file"

    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    throw v0
.end method

.method public final whitelist onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .registers 10
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "destination"    # Ljava/io/File;
    .param p5, "type"    # I
    .param p6, "mode"    # J
    .param p8, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-super/range {p0 .. p9}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    .line 214
    return-void
.end method

.method protected whitelist tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/app/backup/FullBackupDataOutput;
    .param p3, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_bb

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 112
    .local v1, "ob":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 113
    new-instance v2, Ljava/io/File;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 115
    sget-object v5, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 115
    move-object v4, p1

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    goto/16 :goto_b8

    .line 118
    .end local v2    # "f":Ljava/io/File;
    :cond_33
    instance-of v2, v1, Landroid/util/Pair;

    if-eqz v2, :cond_b8

    .line 119
    move-object v2, v1

    check-cast v2, Landroid/util/Pair;

    .line 120
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 121
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v4, "f":Ljava/io/File;
    :try_start_48
    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 124
    invoke-static {v3, v4}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 125
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 126
    sget-object v7, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    .line 127
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 126
    move-object v6, p1

    move-object v11, p2

    invoke-static/range {v6 .. v11}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6e} :catch_79
    .catchall {:try_start_48 .. :try_end_6e} :catchall_77

    .line 132
    :cond_6e
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 133
    if-eqz v3, :cond_b9

    .line 134
    :goto_73
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_b9

    .line 132
    :catchall_77
    move-exception v0

    goto :goto_af

    .line 129
    :catch_79
    move-exception v5

    .line 130
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7a
    const-string v6, "Backup:FullBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when tar attaches for uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " skip!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_7a .. :try_end_a8} :catchall_77

    .line 132
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 133
    if-eqz v3, :cond_b9

    .line 134
    goto :goto_73

    .line 132
    :goto_af
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 133
    if-eqz v3, :cond_b7

    .line 134
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 136
    :cond_b7
    throw v0

    .line 118
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "f":Ljava/io/File;
    :cond_b8
    :goto_b8
    nop

    .line 138
    .end local v1    # "ob":Ljava/lang/Object;
    :cond_b9
    :goto_b9
    goto/16 :goto_8

    .line 140
    :cond_bb
    const/4 v0, 0x0

    return v0
.end method
