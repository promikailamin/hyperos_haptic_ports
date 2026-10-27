.class Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/fullbackup/FullBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupRunner"
.end annotation


# instance fields
.field private final mAgent:Landroid/app/IBackupAgent;

.field private final mFilesDir:Ljava/io/File;

.field private final mIncludeApks:Z

.field private final mPackage:Landroid/content/pm/PackageInfo;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPipe:Landroid/os/ParcelFileDescriptor;

.field private final mToken:I

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZ)V
    .registers 11
    .param p1, "this$0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .param p2, "userBackupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p4, "agent"    # Landroid/app/IBackupAgent;
    .param p5, "pipe"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "token"    # I
    .param p7, "includeApks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    .line 95
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v1

    iget v2, p1, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutputFD:I

    invoke-interface {v1, v2, v0}, Lcom/android/server/backup/BackupManagerServiceStub;->getAppUserId(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    .line 97
    invoke-static {p1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 98
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 99
    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    .line 100
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 101
    iput p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    .line 102
    iput-boolean p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mIncludeApks:Z

    .line 103
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    .line 104
    return-void
.end method

.method private shouldWriteApk(Landroid/content/pm/ApplicationInfo;ZZ)Z
    .registers 8
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "includeApks"    # Z
    .param p3, "isSharedStorage"    # Z

    .line 198
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 199
    .local v0, "isSystemApp":Z
    :goto_a
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 201
    .local v3, "isUpdatedSystemApp":Z
    :goto_13
    if-eqz p2, :cond_1c

    if-nez p3, :cond_1c

    if-eqz v0, :cond_1b

    if-eqz v3, :cond_1c

    :cond_1b
    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method


# virtual methods
.method public run()V
    .registers 27

    .line 109
    move-object/from16 v1, p0

    const-string v2, "BackupManagerService"

    :try_start_4
    new-instance v0, Landroid/app/backup/FullBackupDataOutput;

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    const-wide/16 v4, -0x1

    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v6}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmTransportFlags(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    move-object v3, v0

    .line 111
    .local v3, "output":Landroid/app/backup/FullBackupDataOutput;
    new-instance v0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v3, v4}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;-><init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V

    move-object v4, v0

    .line 114
    .local v4, "appMetadataBackupWriter":Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    .line 115
    .local v5, "packageName":Ljava/lang/String;
    const-string v0, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v6, v0

    .line 116
    .local v6, "isSharedStorage":Z
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mIncludeApks:Z

    .line 117
    invoke-direct {v1, v0, v7, v6}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->shouldWriteApk(Landroid/content/pm/ApplicationInfo;ZZ)Z

    move-result v0

    move v7, v0

    .line 119
    .local v7, "writeApk":Z
    if-nez v6, :cond_80

    .line 120
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_4f

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing manifest for "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_4f
    new-instance v0, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    const-string v9, "_manifest"

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .local v0, "manifestFile":Ljava/io/File;
    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    invoke-virtual {v4, v8, v0, v9, v7}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Z)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 130
    iget v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    .line 131
    invoke-static {v5, v8}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v8

    .line 132
    .local v8, "widgetData":[B
    if-eqz v8, :cond_80

    array-length v9, v8

    if-lez v9, :cond_80

    .line 133
    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    const-string v11, "_meta"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v9, "metadataFile":Ljava/io/File;
    iget-object v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    invoke-virtual {v4, v10, v9, v11, v8}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupWidget(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;[B)V

    .line 136
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 141
    .end local v0    # "manifestFile":Ljava/io/File;
    .end local v8    # "widgetData":[B
    .end local v9    # "metadataFile":Ljava/io/File;
    :cond_80
    if-eqz v7, :cond_8e

    .line 142
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupApk(Landroid/content/pm/PackageInfo;)V

    .line 143
    iget v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v0, v8}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupObb(ILandroid/content/pm/PackageInfo;)V

    .line 147
    :cond_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling doFullBackup() on "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-eqz v6, :cond_b2

    .line 152
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v8

    move-wide v13, v8

    goto :goto_bd

    .line 153
    :cond_b2
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v8

    move-wide v13, v8

    :goto_bd
    nop

    .line 167
    .local v13, "timeout":J
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v8, v0

    .line 168
    .local v8, "agentBinder":Landroid/os/IBinder;
    invoke-interface {v8}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_124

    invoke-interface {v8}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_d2

    goto :goto_124

    .line 172
    :cond_d2
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v10

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v11

    iget v12, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmTimeoutMonitor(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupRestoreTask;

    move-result-object v15

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget v0, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutputFD:I

    move/from16 v17, v0

    invoke-interface/range {v10 .. v17}, Lcom/android/server/backup/BackupManagerServiceStub;->prepareOperationTimeout(Lcom/android/server/backup/UserBackupManagerService;IJLcom/android/server/backup/BackupRestoreTask;II)V

    .line 175
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v17

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget-object v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v10}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmQuota(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J

    move-result-wide v20

    iget v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v11, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v11}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v11

    .line 176
    invoke-virtual {v11}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v23

    iget-object v11, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v11}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmTransportFlags(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v24

    iget-object v11, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget v11, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutputFD:I

    .line 175
    move-object/from16 v18, v0

    move-object/from16 v19, v9

    move/from16 v22, v10

    move/from16 v25, v11

    invoke-interface/range {v17 .. v25}, Lcom/android/server/backup/BackupManagerServiceStub;->doFullBackup(Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;II)V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11e} :catch_16a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11e} :catch_149
    .catchall {:try_start_4 .. :try_end_11e} :catchall_146

    .line 187
    .end local v3    # "output":Landroid/app/backup/FullBackupDataOutput;
    .end local v4    # "appMetadataBackupWriter":Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "isSharedStorage":Z
    .end local v7    # "writeApk":Z
    .end local v8    # "agentBinder":Landroid/os/IBinder;
    .end local v13    # "timeout":J
    :try_start_11e
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_123} :catch_18b

    goto :goto_18a

    .line 169
    .restart local v3    # "output":Landroid/app/backup/FullBackupDataOutput;
    .restart local v4    # "appMetadataBackupWriter":Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "isSharedStorage":Z
    .restart local v7    # "writeApk":Z
    .restart local v8    # "agentBinder":Landroid/os/IBinder;
    .restart local v13    # "timeout":J
    :cond_124
    :goto_124
    :try_start_124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The agentBinder has died, "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_13e} :catch_16a
    .catch Landroid/os/RemoteException; {:try_start_124 .. :try_end_13e} :catch_149
    .catchall {:try_start_124 .. :try_end_13e} :catchall_146

    .line 187
    :try_start_13e
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_143} :catch_144

    .line 189
    goto :goto_145

    .line 188
    :catch_144
    move-exception v0

    .line 170
    :goto_145
    return-void

    .line 186
    .end local v3    # "output":Landroid/app/backup/FullBackupDataOutput;
    .end local v4    # "appMetadataBackupWriter":Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "isSharedStorage":Z
    .end local v7    # "writeApk":Z
    .end local v8    # "agentBinder":Landroid/os/IBinder;
    .end local v13    # "timeout":J
    :catchall_146
    move-exception v0

    move-object v2, v0

    goto :goto_18e

    .line 180
    :catch_149
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_14a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote agent vanished during full backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_164
    .catchall {:try_start_14a .. :try_end_164} :catchall_146

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :try_start_164
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_169} :catch_18b

    goto :goto_18a

    .line 178
    :catch_16a
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    :try_start_16b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running full backup for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_185
    .catchall {:try_start_16b .. :try_end_185} :catchall_146

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_185
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_18a} :catch_18b

    .line 189
    :goto_18a
    goto :goto_18d

    .line 188
    :catch_18b
    move-exception v0

    .line 190
    nop

    .line 191
    :goto_18d
    return-void

    .line 187
    :goto_18e
    :try_start_18e
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_193} :catch_194

    .line 189
    goto :goto_195

    .line 188
    :catch_194
    move-exception v0

    .line 190
    :goto_195
    throw v2
.end method
