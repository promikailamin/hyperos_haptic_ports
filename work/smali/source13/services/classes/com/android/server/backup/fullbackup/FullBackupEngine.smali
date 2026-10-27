.class public Lcom/android/server/backup/fullbackup/FullBackupEngine;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    }
.end annotation


# instance fields
.field private backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private mAgent:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field private mIncludeApks:Z

.field private final mOpToken:I

.field private mOutput:Ljava/io/OutputStream;

.field public mOutputFD:I

.field private mPkg:Landroid/content/pm/PackageInfo;

.field private mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

.field private final mQuota:J

.field private mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

.field private final mTransportFlags:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbackupManagerService(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuota(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeoutMonitor(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupRestoreTask;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransportFlags(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I
    .registers 1

    iget p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIILcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 14
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "preflightHook"    # Lcom/android/server/backup/fullbackup/FullBackupPreflight;
    .param p4, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p5, "alsoApks"    # Z
    .param p6, "timeoutMonitor"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p7, "quota"    # J
    .param p9, "opToken"    # I
    .param p10, "transportFlags"    # I
    .param p11, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 219
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 220
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    .line 221
    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 222
    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    .line 223
    iput-object p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    .line 224
    iput-wide p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    .line 225
    iput p9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    .line 226
    iput p10, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    .line 227
    nop

    .line 229
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 228
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 231
    iput-object p11, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 232
    return-void
.end method

.method private initializeAgent()Z
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    const/4 v1, 0x1

    if-nez v0, :cond_37

    .line 334
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_25

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to full backup agent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackupManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_25
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 340
    invoke-virtual {v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v3

    .line 338
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 342
    :cond_37
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    return v1
.end method

.method private tearDown()V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_b

    .line 347
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 349
    :cond_b
    return-void
.end method


# virtual methods
.method public backupOnePackage()I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    move-object/from16 v9, p0

    const-string v10, "Error bringing down backup stack"

    const/16 v11, -0x3eb

    .line 256
    .local v11, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    const-string v12, "BackupManagerService"

    if-eqz v0, :cond_152

    .line 258
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    iget v2, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutputFD:I

    const/4 v13, 0x0

    invoke-interface {v0, v1, v2, v13}, Lcom/android/server/backup/BackupManagerServiceStub;->linkToDeath(Landroid/app/IBackupAgent;ILandroid/os/ParcelFileDescriptor;)V

    .line 259
    const/4 v1, 0x0

    .line 261
    .local v1, "pipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v14, 0x0

    const/4 v15, 0x1

    :try_start_1d
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_d6
    .catchall {:try_start_1d .. :try_end_21} :catchall_d3

    move-object/from16 v16, v0

    .line 263
    .end local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .local v16, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_23
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;

    iget-object v3, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v5, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    aget-object v6, v16, v15

    iget v7, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    iget-boolean v8, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZ)V

    .line 271
    .local v0, "runner":Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    aget-object v1, v16, v15

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 272
    aput-object v13, v16, v15

    .line 273
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "app-data-runner"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 274
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 278
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v2

    aget-object v3, v16, v14

    iget-object v4, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    iget v5, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutputFD:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/backup/BackupManagerServiceStub;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;I)V

    .line 281
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    iget v4, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    invoke-interface {v2, v3, v4}, Lcom/android/server/backup/BackupManagerServiceStub;->needUpdateToken(Landroid/app/IBackupAgent;I)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v3, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    .line 282
    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v2

    if-nez v2, :cond_88

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup failed on package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 286
    :cond_88
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_a6

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full package backup success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_a6} :catch_cf
    .catchall {:try_start_23 .. :try_end_a6} :catchall_ca

    .line 289
    :cond_a6
    const/4 v11, 0x0

    .line 297
    .end local v0    # "runner":Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    .end local v1    # "t":Ljava/lang/Thread;
    :goto_a7
    :try_start_a7
    iget-object v0, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 298
    if-eqz v16, :cond_c0

    .line 299
    aget-object v0, v16, v14

    if-eqz v0, :cond_b7

    .line 300
    aget-object v0, v16, v14

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 302
    :cond_b7
    aget-object v0, v16, v15

    if-eqz v0, :cond_c0

    .line 303
    aget-object v0, v16, v15

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_c0} :catch_c2

    .line 309
    :cond_c0
    goto/16 :goto_127

    .line 306
    :catch_c2
    move-exception v0

    .line 307
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v12, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/16 v0, -0x3e8

    .line 310
    .end local v11    # "result":I
    .local v0, "result":I
    move v11, v0

    goto :goto_127

    .line 295
    .end local v0    # "result":I
    .restart local v11    # "result":I
    :catchall_ca
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v16

    goto :goto_131

    .line 291
    :catch_cf
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_d7

    .line 295
    .end local v16    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "pipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_d3
    move-exception v0

    move-object v2, v0

    goto :goto_131

    .line 291
    :catch_d6
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/IOException;
    :goto_d7
    :try_start_d7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error backing up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_d7 .. :try_end_ff} :catchall_d3

    .line 293
    const/16 v2, -0x3eb

    .line 297
    .end local v0    # "e":Ljava/io/IOException;
    .end local v11    # "result":I
    .local v2, "result":I
    :try_start_101
    iget-object v0, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 298
    if-eqz v1, :cond_11a

    .line 299
    aget-object v0, v1, v14

    if-eqz v0, :cond_111

    .line 300
    aget-object v0, v1, v14

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 302
    :cond_111
    aget-object v0, v1, v15

    if-eqz v0, :cond_11a

    .line 303
    aget-object v0, v1, v15

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_11a} :catch_11e

    .line 309
    :cond_11a
    move-object/from16 v16, v1

    move v11, v2

    goto :goto_127

    .line 306
    :catch_11e
    move-exception v0

    .line 307
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v12, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/16 v0, -0x3e8

    .line 310
    .end local v2    # "result":I
    .local v0, "result":I
    move v11, v0

    move-object/from16 v16, v1

    .line 312
    .end local v0    # "result":I
    .end local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v11    # "result":I
    .restart local v16    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :goto_127
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v0, v1}, Lcom/android/server/backup/BackupManagerServiceStub;->unlinkToDeath(Landroid/app/IBackupAgent;)V

    .line 313
    .end local v16    # "pipes":[Landroid/os/ParcelFileDescriptor;
    goto :goto_16c

    .line 297
    .restart local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :goto_131
    :try_start_131
    iget-object v0, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 298
    if-eqz v1, :cond_14a

    .line 299
    aget-object v0, v1, v14

    if-eqz v0, :cond_141

    .line 300
    aget-object v0, v1, v14

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 302
    :cond_141
    aget-object v0, v1, v15

    if-eqz v0, :cond_14a

    .line 303
    aget-object v0, v1, v15

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_14a} :catch_14b

    .line 309
    :cond_14a
    goto :goto_151

    .line 306
    :catch_14b
    move-exception v0

    .line 307
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v12, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/16 v11, -0x3e8

    .line 310
    .end local v0    # "e":Ljava/io/IOException;
    :goto_151
    throw v2

    .line 314
    .end local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to bind to full agent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_16c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->tearDown()V

    .line 317
    return v11
.end method

.method synthetic lambda$sendQuotaExceeded$0$com-android-server-backup-fullbackup-FullBackupEngine(JJLandroid/app/backup/IBackupCallback;)V
    .registers 12
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J
    .param p5, "callback"    # Landroid/app/backup/IBackupCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method public preflightCheck()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    const-string v1, "BackupManagerService"

    if-nez v0, :cond_11

    .line 236
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_f

    .line 237
    const-string v0, "No preflight check"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 241
    :cond_11
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 242
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v0, v2, v3}, Lcom/android/server/backup/fullbackup/FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result v0

    .line 243
    .local v0, "result":I
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_3c

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preflight returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_3c
    return v0

    .line 248
    .end local v0    # "result":I
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to bind to full agent for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v0, -0x3eb

    return v0
.end method

.method public sendQuotaExceeded(JJ)V
    .registers 12
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J

    .line 321
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 323
    :try_start_6
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;JJ)V

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 325
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide v1

    .line 323
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/remote/RemoteCall;->execute(Lcom/android/server/backup/remote/RemoteCallable;J)Lcom/android/server/backup/remote/RemoteResult;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_19

    .line 328
    goto :goto_21

    .line 326
    :catch_19
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Remote exception while telling agent about quota exceeded"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    :goto_21
    return-void
.end method
