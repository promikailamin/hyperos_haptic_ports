.class public Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAgent:Landroid/app/IBackupAgent;

.field public final mFilesDir:Ljava/io/File;

.field public final mIncludeApks:Z

.field public final mPackage:Landroid/content/pm/PackageInfo;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPipe:Landroid/os/ParcelFileDescriptor;

.field public final mToken:I

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZ)V
    .registers 9

    .line 96
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    .line 98
    invoke-static {p1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 99
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 100
    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    .line 101
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 102
    iput p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    .line 103
    iput-boolean p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mIncludeApks:Z

    .line 104
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final backupCrossPlatformManifest(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/ApplicationInfo;)V
    .registers 10

    .line 201
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmBackupEligibilityRules(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v1

    .line 205
    const-string v2, "ios"

    invoke-virtual {v1, p2, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getPlatformSpecificParams(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 202
    invoke-static {v0, v2, p2}, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->create(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/util/List;)Lcom/android/server/backup/crossplatform/CrossPlatformManifest;

    move-result-object p2

    .line 207
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    const-string v2, "_cross_platform_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 209
    :try_start_20
    invoke-virtual {p2}, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_44

    .line 210
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const-wide/16 v1, 0x0

    .line 216
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 218
    iget-object p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    .line 222
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p1

    .line 218
    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    return-void

    :catchall_44
    move-exception v0

    move-object p0, v0

    .line 208
    :try_start_46
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4f

    :catchall_4a
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4f
    throw p0
.end method

.method public run()V
    .registers 19

    move-object/from16 v1, p0

    .line 110
    const-string v2, "BackupManagerService"

    :try_start_4
    new-instance v0, Landroid/app/backup/FullBackupDataOutput;

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v4}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmTransportFlags(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v4

    const-wide/16 v5, -0x1

    invoke-direct {v0, v3, v5, v6, v4}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    .line 112
    new-instance v3, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v3, v0, v4}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;-><init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V

    .line 115
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 116
    const-string v5, "com.android.sharedstoragebackup"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 117
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mIncludeApks:Z

    .line 118
    invoke-virtual {v1, v6, v7, v5}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->shouldWriteApk(Landroid/content/pm/ApplicationInfo;ZZ)Z

    move-result v6

    if-nez v5, :cond_6b

    .line 125
    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    const-string v9, "_manifest"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3, v8, v7, v9, v6}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Z)V

    .line 128
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 131
    iget v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    .line 132
    invoke-static {v4, v7}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v7

    if-eqz v7, :cond_6b

    .line 133
    array-length v8, v7

    if-lez v8, :cond_6b

    .line 134
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    const-string v10, "_meta"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    iget-object v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3, v9, v8, v10, v7}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupWidget(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;[B)V

    .line 137
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_6b

    :catchall_62
    move-exception v0

    goto/16 :goto_126

    :catch_65
    move-exception v0

    goto/16 :goto_ee

    :catch_68
    move-exception v0

    goto/16 :goto_10c

    :cond_6b
    :goto_6b
    if-eqz v6, :cond_79

    .line 143
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v6}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupApk(Landroid/content/pm/PackageInfo;)V

    .line 144
    iget v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v6, v7}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupObb(ILandroid/content/pm/PackageInfo;)V

    .line 147
    :cond_79
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmTransportFlags(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_8a

    .line 150
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->backupCrossPlatformManifest(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/ApplicationInfo;)V

    .line 153
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling doFullBackup() on "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_ac

    .line 157
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v3

    :goto_aa
    move-wide v7, v3

    goto :goto_b7

    .line 158
    :cond_ac
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    goto :goto_aa

    .line 159
    :goto_b7
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v5

    iget v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmTimeoutMonitor(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupRestoreTask;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 164
    iget-object v11, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v12, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmQuota(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J

    move-result-wide v13

    iget v15, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v16

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmTransportFlags(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v17

    .line 164
    invoke-interface/range {v11 .. v17}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e8} :catch_68
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e8} :catch_65
    .catchall {:try_start_4 .. :try_end_e8} :catchall_62

    .line 179
    :try_start_e8
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_ed} :catch_125

    return-void

    .line 173
    :goto_ee
    :try_start_ee
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote agent vanished during full backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_106
    .catchall {:try_start_ee .. :try_end_106} :catchall_62

    .line 179
    :goto_106
    :try_start_106
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_10b} :catch_125

    goto :goto_125

    .line 171
    :goto_10c
    :try_start_10c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running full backup for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_124
    .catchall {:try_start_10c .. :try_end_124} :catchall_62

    goto :goto_106

    :catch_125
    :goto_125
    return-void

    .line 179
    :goto_126
    :try_start_126
    iget-object v1, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_12b} :catch_12b

    .line 182
    :catch_12b
    throw v0
.end method

.method public final shouldWriteApk(Landroid/content/pm/ApplicationInfo;ZZ)Z
    .registers 6

    .line 190
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    move p1, v1

    goto :goto_b

    :cond_a
    move p1, v0

    :goto_b
    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_11

    move p0, v1

    goto :goto_12

    :cond_11
    move p0, v0

    :goto_12
    if-eqz p2, :cond_1b

    if-nez p3, :cond_1b

    if-eqz p1, :cond_1a

    if-eqz p0, :cond_1b

    :cond_1a
    return v1

    :cond_1b
    return v0
.end method
