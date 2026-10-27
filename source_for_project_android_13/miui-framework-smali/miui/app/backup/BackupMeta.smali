.class public Lmiui/app/backup/BackupMeta;
.super Ljava/lang/Object;
.source "BackupMeta.java"


# static fields
.field private static final blacklist METAFILE_NAME:Ljava/lang/String; = "_tmp_meta"

.field public static final blacklist META_VERSION:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "Backup:BackupMeta"


# instance fields
.field public blacklist appVersionCode:I

.field public blacklist appVersionName:Ljava/lang/String;

.field public blacklist createTime:J

.field public blacklist deviceName:Ljava/lang/String;

.field public blacklist feature:I

.field public blacklist metaVersion:I

.field public blacklist miuiVersion:Ljava/lang/String;

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist version:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lmiui/app/backup/BackupMeta;->metaVersion:I

    return-void
.end method


# virtual methods
.method blacklist buildFrom(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;JIJJ)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "size"    # J
    .param p5, "type"    # I
    .param p6, "mode"    # J
    .param p8, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    move-object v1, p0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "_tmp_meta"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    .line 96
    .local v2, "tmpMeta":Ljava/io/File;
    const/4 v3, 0x0

    .line 98
    .local v3, "reader":Ljava/io/BufferedReader;
    move-object v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object v12, v2

    :try_start_18
    invoke-static/range {v4 .. v12}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 99
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v0

    .line 100
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lmiui/app/backup/BackupMeta;->metaVersion:I
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_8b

    .line 101
    const/4 v4, 0x1

    const-string v5, "Backup:BackupMeta"

    if-eq v0, v4, :cond_3b

    .line 102
    :try_start_35
    const-string v0, "version error"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 104
    :cond_3b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmiui/app/backup/BackupMeta;->packageName:Ljava/lang/String;

    .line 105
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lmiui/app/backup/BackupMeta;->appVersionCode:I

    .line 106
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmiui/app/backup/BackupMeta;->appVersionName:Ljava/lang/String;

    .line 107
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lmiui/app/backup/BackupMeta;->createTime:J

    .line 108
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lmiui/app/backup/BackupMeta;->version:I

    .line 109
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lmiui/app/backup/BackupMeta;->feature:I

    .line 110
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmiui/app/backup/BackupMeta;->deviceName:Ljava/lang/String;

    .line 111
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmiui/app/backup/BackupMeta;->miuiVersion:Ljava/lang/String;

    .line 112
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 113
    const-string v0, "Something wrong in meta file"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_35 .. :try_end_86} :catchall_8b

    .line 117
    :cond_86
    :goto_86
    nop

    .line 118
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 121
    return-void

    .line 117
    :catchall_8b
    move-exception v0

    if-eqz v3, :cond_91

    .line 118
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 120
    :cond_91
    throw v0
.end method

.method public whitelist getAppVersionCode()I
    .registers 2

    .line 132
    iget v0, p0, Lmiui/app/backup/BackupMeta;->appVersionCode:I

    return v0
.end method

.method public whitelist getAppVersionName()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCreateTime()J
    .registers 3

    .line 140
    iget-wide v0, p0, Lmiui/app/backup/BackupMeta;->createTime:J

    return-wide v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFeature()I
    .registers 2

    .line 148
    iget v0, p0, Lmiui/app/backup/BackupMeta;->feature:I

    return v0
.end method

.method public whitelist getMetaVersion()I
    .registers 2

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getMiuiVersion()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->miuiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 144
    iget v0, p0, Lmiui/app/backup/BackupMeta;->version:I

    return v0
.end method

.method public blacklist writeToTar(Landroid/content/Context;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "_tmp_meta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v0, "tmpMeta":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v1, "buf":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/app/backup/BackupMeta;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lmiui/app/backup/BackupMeta;->appVersionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/app/backup/BackupMeta;->appVersionName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lmiui/app/backup/BackupMeta;->createTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lmiui/app/backup/BackupMeta;->version:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lmiui/app/backup/BackupMeta;->feature:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/app/backup/BackupMeta;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/app/backup/BackupMeta;->miuiVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const/4 v2, 0x0

    .line 82
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_ec
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 84
    iget-object v4, p0, Lmiui/app/backup/BackupMeta;->packageName:Ljava/lang/String;

    sget-object v5, Lmiui/app/backup/BackupManager;->DOMAIN_META:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 84
    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    :try_end_112
    .catchall {:try_start_ec .. :try_end_112} :catchall_11b

    .line 87
    nop

    .line 88
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 91
    nop

    .line 92
    return-void

    .line 87
    :catchall_11b
    move-exception v3

    if-eqz v2, :cond_121

    .line 88
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 90
    :cond_121
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 91
    throw v3
.end method
