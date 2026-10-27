.class public Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;,
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field mBackupObserver:Landroid/app/backup/IBackupObserver;

.field mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field private final mBackupRunnerOpToken:I

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private volatile mIsDoingBackup:Z

.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field mUpdateSchedule:Z

.field private mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mUserId:I

.field mUserInitiated:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackupEligibilityRules(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMonitor(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Landroid/app/backup/IBackupManagerMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserBackupManagerService(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMonitor(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/app/backup/IBackupManagerMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 32
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p3, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p4, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p5, "whichPackages"    # [Ljava/lang/String;
    .param p6, "updateSchedule"    # Z
    .param p7, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p8, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p9, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p10, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p11, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p12, "userInitiated"    # Z
    .param p13, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 179
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    move-object/from16 v10, p4

    invoke-direct {v7, v10}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 180
    iput-object v8, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 181
    move-object/from16 v11, p2

    iput-object v11, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 182
    move-object/from16 v12, p3

    iput-object v12, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 183
    move/from16 v13, p6

    iput-boolean v13, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 184
    move-object/from16 v14, p8

    iput-object v14, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 185
    move-object/from16 v15, p7

    iput-object v15, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 187
    move-object/from16 v6, p9

    iput-object v6, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 188
    move-object/from16 v5, p10

    iput-object v5, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 189
    if-eqz p11, :cond_3d

    move-object/from16 v0, p11

    goto :goto_3f

    :cond_3d
    sget-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    :goto_3f
    iput-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 190
    move/from16 v4, p12

    iput-boolean v4, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 193
    nop

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 193
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 197
    move-object/from16 v3, p13

    iput-object v3, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    const-string v1, "PFTBT"

    if-eqz v0, :cond_7b

    .line 201
    const-string v0, "Skipping full backup. A backup is already in progress."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 204
    return-void

    .line 207
    :cond_7b
    array-length v2, v9

    const/4 v0, 0x0

    move v3, v0

    :goto_7e
    if-ge v3, v2, :cond_183

    move/from16 v16, v2

    aget-object v2, v9, v3

    .line 209
    .local v2, "pkg":Ljava/lang/String;
    :try_start_84
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 210
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v4, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    const/high16 v5, 0x8000000

    invoke-virtual {v0, v2, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 212
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iput-object v4, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 213
    iget-object v5, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object/from16 v17, v0

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .local v17, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 218
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_b8

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring ineligible package "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_b8
    iget-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v5, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v6, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-static {v0, v6, v5, v10, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 226
    iget-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v5, -0x7d1

    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 228
    goto/16 :goto_173

    .line 229
    :cond_cf
    iget-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_107

    .line 232
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_f1

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring full-data backup of key/value participant "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_f1
    iget-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v5, 0xa

    iget-object v6, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-static {v0, v5, v6, v10, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 241
    iget-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v5, -0x7d1

    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 243
    goto :goto_173

    .line 244
    :cond_107
    iget-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 248
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_12b

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring stopped package "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_12b
    iget-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v5, 0xb

    iget-object v6, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-static {v0, v5, v6, v10, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 256
    iget-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v5, -0x7d1

    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 258
    goto :goto_173

    .line 260
    :cond_141
    iget-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_146
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_84 .. :try_end_146} :catch_148

    .line 268
    nop

    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_173

    .line 261
    :catch_148
    move-exception v0

    .line 262
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found; ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v4, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v5, 0xc

    iget-object v6, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-static {v4, v5, v6, v10, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v4

    iput-object v4, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 207
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkg":Ljava/lang/String;
    :goto_173
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, p4

    move-object/from16 v9, p5

    move-object/from16 v6, p9

    move-object/from16 v5, p10

    move/from16 v4, p12

    move/from16 v2, v16

    goto/16 :goto_7e

    .line 271
    :cond_183
    iget-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-virtual {v8, v0}, Lcom/android/server/backup/UserBackupManagerService;->filterUserFacingPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 273
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 274
    .local v0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_195
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 275
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    goto :goto_195

    .line 278
    :cond_1a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupmanager pftbt token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget v2, v7, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object v4, v0

    move-object/from16 v5, p0

    invoke-interface/range {v1 .. v6}, Lcom/android/server/backup/OperationStorage;->registerOperationForPackages(IILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V

    .line 281
    return-void
.end method

.method static synthetic lambda$newWithCurrentTransport$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p2, "listenerCaller"    # Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method public static newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 30
    .param p0, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "whichPackages"    # [Ljava/lang/String;
    .param p4, "updateSchedule"    # Z
    .param p5, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p6, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p7, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p8, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p9, "userInitiated"    # Z
    .param p10, "caller"    # Ljava/lang/String;
    .param p11, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    .line 119
    .local v0, "transportManager":Lcom/android/server/backup/TransportManager;
    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v15

    .line 121
    .local v15, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    if-eqz v15, :cond_32

    .line 124
    new-instance v13, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;

    invoke-direct {v13, v0, v15}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 128
    .local v13, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    new-instance v16, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v15

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v14, p9

    move-object/from16 v17, v15

    .end local v15    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .local v17, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    move-object/from16 v15, p11

    invoke-direct/range {v2 .. v15}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-object v16

    .line 122
    .end local v13    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .end local v17    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .restart local v15    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    :cond_32
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No TransportConnection available"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .line 686
    if-eqz p1, :cond_29

    .line 687
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "Unable to close pipe!"

    const-string v3, "PFTBT"

    const/4 v4, 0x0

    if-eqz v1, :cond_18

    .line 688
    aget-object v1, p1, v0

    .line 689
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v0

    .line 691
    :try_start_10
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    .line 694
    goto :goto_18

    .line 692
    :catch_14
    move-exception v0

    .line 693
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_18
    :goto_18
    const/4 v0, 0x1

    aget-object v1, p1, v0

    if-eqz v1, :cond_29

    .line 697
    aget-object v1, p1, v0

    .line 698
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v0

    .line 700
    :try_start_21
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 703
    goto :goto_29

    .line 701
    :catch_25
    move-exception v0

    .line 702
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_29
    :goto_29
    return-void
.end method

.method public execute()V
    .registers 1

    .line 291
    return-void
.end method

.method public handleCancel(Z)V
    .registers 7
    .param p1, "cancelAll"    # Z

    .line 295
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    if-nez p1, :cond_c

    .line 302
    :try_start_5
    const-string v1, "PFTBT"

    const-string v2, "Expected cancelAll to be true."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_19

    .line 306
    const-string v1, "PFTBT"

    const-string v2, "Ignoring duplicate cancel call."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    monitor-exit v0

    return-void

    .line 310
    :cond_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 311
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    if-eqz v1, :cond_4c

    .line 312
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_4e

    .line 315
    :try_start_27
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v2, "PFTBT.handleCancel()"

    .line 316
    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->getConnectedTransport(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v1

    .line 317
    .local v1, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->cancelFullBackup()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_33
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_27 .. :try_end_32} :catch_33
    .catchall {:try_start_27 .. :try_end_32} :catchall_4e

    .line 321
    .end local v1    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_4c

    .line 318
    :catch_33
    move-exception v1

    .line 319
    .local v1, "e":Landroid/util/AndroidException;
    :try_start_34
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling cancelFullBackup() on transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v1    # "e":Landroid/util/AndroidException;
    :cond_4c
    :goto_4c
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "result"    # J

    .line 329
    return-void
.end method

.method public run()V
    .registers 37

    .line 335
    move-object/from16 v10, p0

    const/4 v1, 0x0

    .line 338
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 340
    .local v2, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v3, 0x0

    .line 341
    .local v3, "backoff":J
    const/4 v11, 0x0

    .line 344
    .local v11, "backupRunStatus":I
    const/4 v13, 0x0

    :try_start_8
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_75d

    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 345
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v5

    if-nez v5, :cond_1c

    move/from16 v27, v11

    goto/16 :goto_75f

    .line 368
    :cond_1c
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v6, "PFTBT.run()"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v5
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_82d
    .catchall {:try_start_8 .. :try_end_24} :catchall_827

    move-object v15, v5

    .line 369
    .local v15, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    const/4 v9, 0x1

    if-nez v15, :cond_b0

    .line 370
    :try_start_28
    const-string v5, "PFTBT"

    const-string v6, "Transport not present; full data backup not performed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/16 v11, -0x3e8

    .line 372
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0xf

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v5, v6, v7, v9, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_ac
    .catchall {:try_start_28 .. :try_end_3d} :catchall_8c4

    .line 648
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_45

    .line 649
    const/16 v11, -0x7d3

    move v5, v11

    goto :goto_46

    .line 648
    :cond_45
    move v5, v11

    .line 653
    .end local v11    # "backupRunStatus":I
    .local v5, "backupRunStatus":I
    :goto_46
    const-string v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup completed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v6, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 657
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 658
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 662
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v6, :cond_75

    .line 663
    iget v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 666
    :cond_75
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 667
    :try_start_7c
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v13}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 668
    monitor-exit v6
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_a8

    .line 670
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v7, "PFTBT.run()"

    invoke-interface {v6, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 672
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 676
    iget-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v6, :cond_97

    .line 677
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 680
    :cond_97
    const-string v6, "PFTBT"

    const-string v7, "Full data backup pass finished."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 376
    return-void

    .line 668
    :catchall_a8
    move-exception v0

    move-object v7, v0

    :try_start_aa
    monitor-exit v6
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a8

    throw v7

    .line 635
    .end local v5    # "backupRunStatus":I
    .end local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v11    # "backupRunStatus":I
    :catch_ac
    move-exception v0

    move-object v5, v0

    goto/16 :goto_831

    .line 380
    .restart local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :cond_b0
    :try_start_b0
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v8, v5

    .line 381
    .local v8, "N":I
    const/16 v5, 0x2000

    new-array v5, v5, [B
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_bb} :catch_82d
    .catchall {:try_start_b0 .. :try_end_bb} :catchall_827

    .line 382
    .local v5, "buffer":[B
    const/4 v6, 0x0

    move-wide/from16 v34, v3

    move v4, v6

    move-wide/from16 v6, v34

    .end local v3    # "backoff":J
    .local v4, "i":I
    .local v6, "backoff":J
    :goto_c1
    if-ge v4, v8, :cond_6d7

    .line 383
    :try_start_c3
    iput-object v13, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 384
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 385
    .local v3, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v12, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 387
    .local v12, "packageName":Ljava/lang/String;
    const-string v13, "PFTBT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Initiating full-data transport backup of "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " token: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/16 v9, 0xb18

    invoke-static {v9, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 392
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_fc} :catch_6cd
    .catchall {:try_start_c3 .. :try_end_fc} :catchall_6c3

    move-object v13, v9

    .line 395
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v13, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_fd
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    if-eqz v2, :cond_103

    const/4 v2, 0x1

    goto :goto_104

    :cond_103
    const/4 v2, 0x0

    :goto_104
    move v14, v2

    .line 397
    .local v14, "flags":I
    const-wide v17, 0x7fffffffffffffffL

    .line 398
    .local v17, "quota":J
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_10d} :catch_6b8
    .catchall {:try_start_fd .. :try_end_10d} :catchall_6ad

    .line 399
    :try_start_10d
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_10f
    .catchall {:try_start_10d .. :try_end_10f} :catchall_685

    if-eqz v2, :cond_12b

    .line 400
    :try_start_111
    monitor-exit v9
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_118

    move-wide/from16 v23, v6

    move/from16 v27, v11

    goto/16 :goto_6e2

    .line 420
    :catchall_118
    move-exception v0

    move-object v2, v0

    move/from16 v19, v4

    move-wide/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move/from16 v28, v14

    move-object v11, v15

    move-object v14, v5

    move-object v5, v3

    goto/16 :goto_696

    .line 402
    :cond_12b
    move/from16 v19, v4

    const/4 v2, 0x0

    .end local v4    # "i":I
    .local v19, "i":I
    :try_start_12e
    aget-object v4, v13, v2

    invoke-virtual {v15, v3, v4, v14}, Lcom/android/server/backup/transport/BackupTransportClient;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v2
    :try_end_134
    .catchall {:try_start_12e .. :try_end_134} :catchall_675

    move/from16 v20, v2

    .line 405
    .local v20, "backupPackageStatus":I
    if-nez v20, :cond_1cc

    .line 406
    :try_start_138
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v15, v2, v4}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v21
    :try_end_13f
    .catchall {:try_start_138 .. :try_end_13f} :catchall_1bb

    move-wide/from16 v23, v6

    .end local v6    # "backoff":J
    .local v23, "backoff":J
    move-wide/from16 v6, v21

    .line 409
    .end local v17    # "quota":J
    .local v6, "quota":J
    :try_start_143
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_147
    .catchall {:try_start_143 .. :try_end_147} :catchall_1aa

    move-object/from16 v17, v2

    .line 410
    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v17, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_149
    new-instance v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/16 v16, 0x1

    aget-object v18, v17, v16

    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 413
    invoke-virtual {v15}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    move-result v21
    :try_end_157
    .catchall {:try_start_149 .. :try_end_157} :catchall_197

    move/from16 v22, v1

    move-object v1, v4

    move-object/from16 v25, v2

    move-object/from16 v2, p0

    move-object/from16 v26, v3

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v26, "currentPackage":Landroid/content/pm/PackageInfo;
    move-object/from16 v3, v18

    move/from16 v27, v11

    move-object v11, v4

    .end local v11    # "backupRunStatus":I
    .local v27, "backupRunStatus":I
    move-object/from16 v4, v26

    move/from16 v28, v14

    move-object v14, v5

    .end local v5    # "buffer":[B
    .local v14, "buffer":[B
    .local v28, "flags":I
    move-object/from16 v5, v25

    move/from16 v25, v8

    .end local v8    # "N":I
    .local v25, "N":I
    move/from16 v8, v22

    move-object/from16 v22, v15

    move/from16 v15, v16

    move-object/from16 v16, v9

    .end local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v22, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    move/from16 v9, v21

    :try_start_178
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportConnection;JII)V

    iput-object v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 415
    aget-object v1, v17, v15

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 416
    const/4 v1, 0x0

    aput-object v1, v17, v15

    .line 418
    iput-boolean v15, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_187
    .catchall {:try_start_178 .. :try_end_187} :catchall_18b

    move-object/from16 v1, v17

    goto/16 :goto_1de

    .line 420
    .end local v20    # "backupPackageStatus":I
    :catchall_18b
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v17

    move-object/from16 v11, v22

    move-object/from16 v5, v26

    move-wide/from16 v17, v6

    goto/16 :goto_696

    .end local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .local v14, "flags":I
    .restart local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :catchall_197
    move-exception v0

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move/from16 v28, v14

    move-object v14, v5

    move-object v2, v0

    move-object v5, v3

    move-object v11, v15

    move-object/from16 v1, v17

    move-wide/from16 v17, v6

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v14, "buffer":[B
    .restart local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    goto/16 :goto_696

    .end local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .local v14, "flags":I
    .restart local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :catchall_1aa
    move-exception v0

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move/from16 v28, v14

    move-object v14, v5

    move-object v2, v0

    move-object v5, v3

    move-wide/from16 v17, v6

    move-object v11, v15

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v14, "buffer":[B
    .restart local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    goto/16 :goto_696

    .end local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v23    # "backoff":J
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .local v6, "backoff":J
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .local v14, "flags":I
    .restart local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v17, "quota":J
    :catchall_1bb
    move-exception v0

    move-wide/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move/from16 v28, v14

    move-object v14, v5

    move-object v2, v0

    move-object v5, v3

    move-object v11, v15

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v14, "buffer":[B
    .restart local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v23    # "backoff":J
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    goto/16 :goto_696

    .line 405
    .end local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v23    # "backoff":J
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v6    # "backoff":J
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .local v14, "flags":I
    .restart local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v20    # "backupPackageStatus":I
    :cond_1cc
    move-object/from16 v26, v3

    move-wide/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move/from16 v28, v14

    move-object/from16 v22, v15

    const/4 v15, 0x1

    move-object v14, v5

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v14, "buffer":[B
    .restart local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v23    # "backoff":J
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    move-wide/from16 v6, v17

    .line 420
    .end local v17    # "quota":J
    .local v6, "quota":J
    :goto_1de
    :try_start_1de
    monitor-exit v16
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_66b

    .line 421
    if-nez v20, :cond_415

    .line 425
    const/4 v3, 0x0

    :try_start_1e2
    aget-object v4, v13, v3

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 426
    const/4 v4, 0x0

    aput-object v4, v13, v3

    .line 430
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v5, "package-backup-bridge"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 435
    new-instance v3, Ljava/io/FileInputStream;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    .line 436
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 437
    .local v3, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    aget-object v5, v13, v15

    .line 438
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 439
    .local v4, "out":Ljava/io/FileOutputStream;
    const-wide/16 v8, 0x0

    .line 440
    .local v8, "totalRead":J
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v17

    move-wide/from16 v29, v17

    .line 442
    .local v29, "preflightResult":J
    const-wide/16 v17, 0x0

    move-object v11, v3

    move-wide/from16 v2, v29

    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v29    # "preflightResult":J
    .local v2, "preflightResult":J
    .local v11, "in":Ljava/io/FileInputStream;
    cmp-long v16, v2, v17

    if-gez v16, :cond_274

    .line 443
    sget-boolean v16, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_223} :catch_40a
    .catchall {:try_start_1e2 .. :try_end_223} :catchall_3ff

    if-eqz v16, :cond_250

    .line 444
    :try_start_225
    const-string v5, "PFTBT"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v29, v8

    .end local v8    # "totalRead":J
    .local v29, "totalRead":J
    const-string v8, "Backup error after preflight of package "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", not running backup."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24f
    .catch Ljava/lang/Exception; {:try_start_225 .. :try_end_24f} :catch_6a1
    .catchall {:try_start_225 .. :try_end_24f} :catchall_698

    goto :goto_252

    .line 443
    .end local v29    # "totalRead":J
    .restart local v8    # "totalRead":J
    :cond_250
    move-wide/from16 v29, v8

    .line 448
    .end local v8    # "totalRead":J
    .restart local v29    # "totalRead":J
    :goto_252
    :try_start_252
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v15, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

    .line 452
    const/4 v8, 0x0

    invoke-static {v8, v15, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v15
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_252 .. :try_end_25d} :catch_40a
    .catchall {:try_start_252 .. :try_end_25d} :catchall_3ff

    .line 448
    move-object/from16 v31, v1

    const/4 v1, 0x3

    const/16 v8, 0x10

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v31, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_262
    invoke-static {v5, v8, v9, v1, v15}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 455
    long-to-int v1, v2

    move-wide/from16 v32, v2

    move-object v15, v4

    move-wide/from16 v8, v29

    move-object/from16 v29, v11

    move-object/from16 v11, v22

    .end local v20    # "backupPackageStatus":I
    .local v1, "backupPackageStatus":I
    goto/16 :goto_347

    .line 457
    .end local v29    # "totalRead":J
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "totalRead":J
    .restart local v20    # "backupPackageStatus":I
    :cond_274
    move-object/from16 v31, v1

    move-wide/from16 v29, v8

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v8    # "totalRead":J
    .restart local v29    # "totalRead":J
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    move-wide/from16 v8, v29

    .line 459
    .end local v29    # "totalRead":J
    .local v1, "nRead":I
    .restart local v8    # "totalRead":J
    :goto_27b
    invoke-virtual {v11, v14}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v1, v5

    .line 460
    sget-boolean v5, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v5, :cond_2a0

    .line 461
    const-string v5, "PFTBT"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .local v29, "in":Ljava/io/FileInputStream;
    const-string/jumbo v11, "in.read(buffer) from app: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a2

    .line 460
    .end local v29    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :cond_2a0
    move-object/from16 v29, v11

    .line 463
    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v29    # "in":Ljava/io/FileInputStream;
    :goto_2a2
    if-lez v1, :cond_2e3

    .line 464
    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 465
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_2ab} :catch_3f4
    .catchall {:try_start_262 .. :try_end_2ab} :catchall_3e9

    .line 466
    :try_start_2ab
    iget-boolean v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_2ad
    .catchall {:try_start_2ab .. :try_end_2ad} :catchall_2d9

    if-nez v11, :cond_2bc

    .line 467
    move-object/from16 v11, v22

    .end local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v11, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :try_start_2b1
    invoke-virtual {v11, v1}, Lcom/android/server/backup/transport/BackupTransportClient;->sendBackupData(I)I

    move-result v15
    :try_end_2b5
    .catchall {:try_start_2b1 .. :try_end_2b5} :catchall_2b8

    move/from16 v20, v15

    .end local v20    # "backupPackageStatus":I
    .local v15, "backupPackageStatus":I
    goto :goto_2be

    .line 469
    .end local v15    # "backupPackageStatus":I
    .restart local v20    # "backupPackageStatus":I
    :catchall_2b8
    move-exception v0

    move-object v15, v4

    move-object v4, v0

    goto :goto_2de

    .line 466
    .end local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :cond_2bc
    move-object/from16 v11, v22

    .line 469
    .end local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :goto_2be
    :try_start_2be
    monitor-exit v5
    :try_end_2bf
    .catchall {:try_start_2be .. :try_end_2bf} :catchall_2d5

    .line 470
    move-object v15, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v15, "out":Ljava/io/FileOutputStream;
    int-to-long v4, v1

    add-long/2addr v8, v4

    .line 471
    :try_start_2c2
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v4, :cond_2d2

    cmp-long v5, v2, v17

    if-lez v5, :cond_2d2

    .line 472
    new-instance v5, Landroid/app/backup/BackupProgress;

    invoke-direct {v5, v2, v3, v8, v9}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 473
    invoke-static {v4, v12, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_2d2
    .catch Ljava/lang/Exception; {:try_start_2c2 .. :try_end_2d2} :catch_3f4
    .catchall {:try_start_2c2 .. :try_end_2d2} :catchall_3e9

    .line 477
    :cond_2d2
    move/from16 v4, v20

    goto :goto_2e8

    .line 469
    .end local v15    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_2d5
    move-exception v0

    move-object v15, v4

    move-object v4, v0

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "out":Ljava/io/FileOutputStream;
    goto :goto_2de

    .end local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v15    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :catchall_2d9
    move-exception v0

    move-object v15, v4

    move-object/from16 v11, v22

    move-object v4, v0

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v15    # "out":Ljava/io/FileOutputStream;
    :goto_2de
    :try_start_2de
    monitor-exit v5
    :try_end_2df
    .catchall {:try_start_2de .. :try_end_2df} :catchall_2e0

    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_start_2df
    throw v4

    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :catchall_2e0
    move-exception v0

    move-object v4, v0

    goto :goto_2de

    .line 463
    .end local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v15    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :cond_2e3
    move-object v15, v4

    move-object/from16 v11, v22

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v15    # "out":Ljava/io/FileOutputStream;
    move/from16 v4, v20

    .line 477
    .end local v20    # "backupPackageStatus":I
    .local v4, "backupPackageStatus":I
    :goto_2e8
    if-lez v1, :cond_2f5

    if-eqz v4, :cond_2ed

    goto :goto_2f5

    :cond_2ed
    move/from16 v20, v4

    move-object/from16 v22, v11

    move-object v4, v15

    move-object/from16 v11, v29

    goto :goto_27b

    .line 480
    :cond_2f5
    :goto_2f5
    const/16 v5, -0x3ed

    if-ne v4, v5, :cond_33f

    .line 481
    const-string v5, "PFTBT"

    move/from16 v17, v1

    .end local v1    # "nRead":I
    .local v17, "nRead":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v32, v2

    .end local v2    # "preflightResult":J
    .local v32, "preflightResult":J
    const-string v2, "Package hit quota limit in-flight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v2, 0x12

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move/from16 v18, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    .end local v4    # "backupPackageStatus":I
    .local v18, "backupPackageStatus":I
    invoke-static {v1, v2, v3, v5, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 488
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v1, v8, v9, v6, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V

    goto :goto_345

    .line 480
    .end local v17    # "nRead":I
    .end local v18    # "backupPackageStatus":I
    .end local v32    # "preflightResult":J
    .restart local v1    # "nRead":I
    .restart local v2    # "preflightResult":J
    .restart local v4    # "backupPackageStatus":I
    :cond_33f
    move/from16 v17, v1

    move-wide/from16 v32, v2

    move/from16 v18, v4

    .line 492
    .end local v1    # "nRead":I
    .end local v2    # "preflightResult":J
    .end local v4    # "backupPackageStatus":I
    .restart local v18    # "backupPackageStatus":I
    .restart local v32    # "preflightResult":J
    :goto_345
    move/from16 v1, v18

    .end local v18    # "backupPackageStatus":I
    .local v1, "backupPackageStatus":I
    :goto_347
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v2

    .line 494
    .local v2, "backupRunnerResult":I
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_350
    .catch Ljava/lang/Exception; {:try_start_2df .. :try_end_350} :catch_3f4
    .catchall {:try_start_2df .. :try_end_350} :catchall_3e9

    .line 495
    const/4 v4, 0x0

    :try_start_351
    iput-boolean v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 497
    iget-boolean v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_355
    .catchall {:try_start_351 .. :try_end_355} :catchall_3e0

    if-nez v4, :cond_36b

    .line 498
    if-nez v2, :cond_361

    .line 503
    :try_start_359
    invoke-virtual {v11}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result v4

    .line 504
    .local v4, "finishResult":I
    if-nez v1, :cond_360

    .line 505
    move v1, v4

    .line 507
    .end local v4    # "finishResult":I
    :cond_360
    goto :goto_36b

    .line 508
    :cond_361
    invoke-virtual {v11}, Lcom/android/server/backup/transport/BackupTransportClient;->cancelFullBackup()V
    :try_end_364
    .catchall {:try_start_359 .. :try_end_364} :catchall_365

    goto :goto_36b

    .line 511
    :catchall_365
    move-exception v0

    move/from16 v18, v2

    move-object v2, v0

    goto/16 :goto_3e4

    :cond_36b
    :goto_36b
    :try_start_36b
    monitor-exit v3
    :try_end_36c
    .catchall {:try_start_36b .. :try_end_36c} :catchall_3e0

    .line 522
    if-nez v1, :cond_372

    .line 524
    if-eqz v2, :cond_37d

    .line 527
    move v1, v2

    goto :goto_37d

    .line 530
    :cond_372
    :try_start_372
    sget-boolean v3, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v3, :cond_37d

    .line 531
    const-string v3, "PFTBT"

    const-string v4, "Transport-level failure; cancelling agent work"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_37d
    :goto_37d
    sget-boolean v3, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v3, :cond_399

    .line 536
    const-string v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Done delivering backup data: result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_399
    if-eqz v1, :cond_3bd

    .line 541
    const-string v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " backing up "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_3bd
    invoke-virtual {v11}, Lcom/android/server/backup/transport/BackupTransportClient;->requestFullBackupTime()J

    move-result-wide v3
    :try_end_3c1
    .catch Ljava/lang/Exception; {:try_start_372 .. :try_end_3c1} :catch_3f4
    .catchall {:try_start_372 .. :try_end_3c1} :catchall_3e9

    .line 549
    .end local v23    # "backoff":J
    .local v3, "backoff":J
    :try_start_3c1
    const-string v5, "PFTBT"

    move/from16 v17, v1

    .end local v1    # "backupPackageStatus":I
    .local v17, "backupPackageStatus":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v2

    .end local v2    # "backupRunnerResult":I
    .local v18, "backupRunnerResult":I
    const-string v2, "Transport suggested backoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3dd
    .catch Ljava/lang/Exception; {:try_start_3c1 .. :try_end_3dd} :catch_434
    .catchall {:try_start_3c1 .. :try_end_3dd} :catchall_42b

    move/from16 v1, v17

    goto :goto_41d

    .line 511
    .end local v3    # "backoff":J
    .end local v17    # "backupPackageStatus":I
    .end local v18    # "backupRunnerResult":I
    .restart local v1    # "backupPackageStatus":I
    .restart local v2    # "backupRunnerResult":I
    .restart local v23    # "backoff":J
    :catchall_3e0
    move-exception v0

    move/from16 v18, v2

    move-object v2, v0

    .end local v2    # "backupRunnerResult":I
    .restart local v18    # "backupRunnerResult":I
    :goto_3e4
    :try_start_3e4
    monitor-exit v3
    :try_end_3e5
    .catchall {:try_start_3e4 .. :try_end_3e5} :catchall_3e6

    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_start_3e5
    throw v2
    :try_end_3e6
    .catch Ljava/lang/Exception; {:try_start_3e5 .. :try_end_3e6} :catch_3f4
    .catchall {:try_start_3e5 .. :try_end_3e6} :catchall_3e9

    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :catchall_3e6
    move-exception v0

    move-object v2, v0

    goto :goto_3e4

    .line 648
    .end local v1    # "backupPackageStatus":I
    .end local v6    # "quota":J
    .end local v8    # "totalRead":J
    .end local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "buffer":[B
    .end local v15    # "out":Ljava/io/FileOutputStream;
    .end local v18    # "backupRunnerResult":I
    .end local v19    # "i":I
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v28    # "flags":I
    .end local v29    # "in":Ljava/io/FileInputStream;
    .end local v32    # "preflightResult":J
    :catchall_3e9
    move-exception v0

    move-object v5, v0

    move-object v2, v13

    move-wide/from16 v3, v23

    move/from16 v11, v27

    move-object/from16 v1, v31

    goto/16 :goto_8c6

    .line 635
    :catch_3f4
    move-exception v0

    move-object v5, v0

    move-object v2, v13

    move-wide/from16 v3, v23

    move/from16 v11, v27

    move-object/from16 v1, v31

    goto/16 :goto_831

    .line 648
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_3ff
    move-exception v0

    move-object/from16 v31, v1

    move-object v5, v0

    move-object v2, v13

    move-wide/from16 v3, v23

    move/from16 v11, v27

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_8c6

    .line 635
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catch_40a
    move-exception v0

    move-object/from16 v31, v1

    move-object v5, v0

    move-object v2, v13

    move-wide/from16 v3, v23

    move/from16 v11, v27

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_831

    .line 421
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "quota":J
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v14    # "buffer":[B
    .restart local v19    # "i":I
    .restart local v20    # "backupPackageStatus":I
    .restart local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "flags":I
    :cond_415
    move-object/from16 v31, v1

    move-object/from16 v11, v22

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    move/from16 v1, v20

    move-wide/from16 v3, v23

    .line 556
    .end local v20    # "backupPackageStatus":I
    .end local v23    # "backoff":J
    .local v1, "backupPackageStatus":I
    .restart local v3    # "backoff":J
    :goto_41d
    :try_start_41d
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_41f
    .catch Ljava/lang/Exception; {:try_start_41d .. :try_end_41f} :catch_661
    .catchall {:try_start_41d .. :try_end_41f} :catchall_657

    if-eqz v2, :cond_43d

    .line 557
    :try_start_421
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 557
    invoke-virtual {v2, v12, v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    goto :goto_43d

    .line 648
    .end local v1    # "backupPackageStatus":I
    .end local v6    # "quota":J
    .end local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "buffer":[B
    .end local v19    # "i":I
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v28    # "flags":I
    :catchall_42b
    move-exception v0

    move-object v5, v0

    move-object v2, v13

    move/from16 v11, v27

    move-object/from16 v1, v31

    goto/16 :goto_8c6

    .line 635
    :catch_434
    move-exception v0

    move-object v5, v0

    move-object v2, v13

    move/from16 v11, v27

    move-object/from16 v1, v31

    goto/16 :goto_831

    .line 561
    .restart local v1    # "backupPackageStatus":I
    .restart local v6    # "quota":J
    .restart local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v14    # "buffer":[B
    .restart local v19    # "i":I
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "flags":I
    :cond_43d
    :goto_43d
    const/16 v2, -0x3ea

    if-ne v1, v2, :cond_490

    .line 562
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 563
    invoke-static {v5, v12, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 566
    const-string v2, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transport rejected backup of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", skipping"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/16 v2, 0xb19

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v12, v5, v8

    const-string/jumbo v8, "transport rejected"

    const/4 v9, 0x1

    aput-object v8, v5, v9

    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 574
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    if-eqz v2, :cond_488

    .line 575
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-object/from16 v5, v26

    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    move/from16 v16, v1

    move-object/from16 v15, v31

    goto/16 :goto_609

    .line 574
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    :cond_488
    move-object/from16 v5, v26

    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    move/from16 v16, v1

    move-object/from16 v15, v31

    goto/16 :goto_609

    .line 579
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    :cond_490
    move-object/from16 v5, v26

    const/4 v9, 0x1

    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    const/16 v2, -0x3ed

    if-ne v1, v2, :cond_4c6

    .line 580
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 581
    invoke-static {v8, v12, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 584
    const-string v2, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Transport quota exceeded for package: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/16 v2, 0xb1d

    invoke-static {v2, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 588
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    move/from16 v16, v1

    move-object/from16 v15, v31

    goto/16 :goto_609

    .line 590
    :cond_4c6
    const/16 v2, -0x3eb

    if-ne v1, v2, :cond_4f9

    .line 591
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 592
    invoke-static {v8, v12, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 594
    const-string v2, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Application failure for package: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/16 v2, 0xb07

    invoke-static {v2, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 596
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    move/from16 v16, v1

    move-object/from16 v15, v31

    goto/16 :goto_609

    .line 598
    :cond_4f9
    const/16 v2, -0x7d3

    if-ne v1, v2, :cond_538

    .line 599
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 600
    invoke-static {v8, v12, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 602
    const-string v2, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Backup cancelled. package="

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ", cancelAll="

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v15, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/16 v2, 0xb1e

    invoke-static {v2, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 605
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_532
    .catch Ljava/lang/Exception; {:try_start_421 .. :try_end_532} :catch_434
    .catchall {:try_start_421 .. :try_end_532} :catchall_42b

    move/from16 v16, v1

    move-object/from16 v15, v31

    goto/16 :goto_609

    .line 607
    :cond_538
    if-eqz v1, :cond_5f5

    .line 608
    :try_start_53a
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v8, -0x3e8

    .line 609
    invoke-static {v2, v12, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 611
    const-string v2, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transport failed; aborting backup: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/16 v2, 0xb1a

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_561
    .catch Ljava/lang/Exception; {:try_start_53a .. :try_end_561} :catch_661
    .catchall {:try_start_53a .. :try_end_561} :catchall_657

    .line 614
    const/16 v2, -0x3e8

    .line 615
    .end local v27    # "backupRunStatus":I
    .local v2, "backupRunStatus":I
    :try_start_563
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_56a
    .catch Ljava/lang/Exception; {:try_start_563 .. :try_end_56a} :catch_5ec
    .catchall {:try_start_563 .. :try_end_56a} :catchall_5e3

    .line 648
    iget-boolean v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v8, :cond_572

    .line 649
    const/16 v2, -0x7d3

    move v8, v2

    goto :goto_573

    .line 648
    :cond_572
    move v8, v2

    .line 653
    .end local v2    # "backupRunStatus":I
    .local v8, "backupRunStatus":I
    :goto_573
    const-string v2, "PFTBT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Full backup completed with status: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v2, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 657
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 658
    move-object/from16 v15, v31

    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v15, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v10, v15}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 662
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v2, :cond_5a4

    .line 663
    iget v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v2, v9}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 666
    :cond_5a4
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 667
    :try_start_5ab
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_5ad
    .catchall {:try_start_5ab .. :try_end_5ad} :catchall_5dd

    move/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "backupPackageStatus":I
    .local v16, "backupPackageStatus":I
    :try_start_5b0
    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 668
    monitor-exit v9
    :try_end_5b4
    .catchall {:try_start_5b0 .. :try_end_5b4} :catchall_5da

    .line 670
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 672
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 676
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_5c9

    .line 677
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 680
    :cond_5c9
    const-string v1, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 616
    return-void

    .line 668
    :catchall_5da
    move-exception v0

    move-object v1, v0

    goto :goto_5e1

    .end local v16    # "backupPackageStatus":I
    .restart local v1    # "backupPackageStatus":I
    :catchall_5dd
    move-exception v0

    move/from16 v16, v1

    move-object v1, v0

    .end local v1    # "backupPackageStatus":I
    .restart local v16    # "backupPackageStatus":I
    :goto_5e1
    :try_start_5e1
    monitor-exit v9
    :try_end_5e2
    .catchall {:try_start_5e1 .. :try_end_5e2} :catchall_5da

    throw v1

    .line 648
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "quota":J
    .end local v8    # "backupRunStatus":I
    .end local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "buffer":[B
    .end local v15    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v16    # "backupPackageStatus":I
    .end local v19    # "i":I
    .end local v25    # "N":I
    .end local v28    # "flags":I
    .restart local v2    # "backupRunStatus":I
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_5e3
    move-exception v0

    move-object/from16 v15, v31

    move-object v5, v0

    move v11, v2

    move-object v2, v13

    move-object v1, v15

    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_8c6

    .line 635
    .end local v15    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catch_5ec
    move-exception v0

    move-object/from16 v15, v31

    move-object v5, v0

    move v11, v2

    move-object v2, v13

    move-object v1, v15

    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_831

    .line 619
    .end local v2    # "backupRunStatus":I
    .end local v15    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "backupPackageStatus":I
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v6    # "quota":J
    .restart local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v14    # "buffer":[B
    .restart local v19    # "i":I
    .restart local v25    # "N":I
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :cond_5f5
    move/from16 v16, v1

    move-object/from16 v15, v31

    .end local v1    # "backupPackageStatus":I
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "backupPackageStatus":I
    :try_start_5f9
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 620
    const/4 v2, 0x0

    invoke-static {v1, v12, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 622
    const/16 v1, 0xb1b

    invoke-static {v1, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 623
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    .line 625
    :goto_609
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 626
    invoke-virtual {v10, v15}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 627
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_638

    .line 628
    const-string v1, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unbinding agent in "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62b
    .catch Ljava/lang/Exception; {:try_start_5f9 .. :try_end_62b} :catch_64f
    .catchall {:try_start_5f9 .. :try_end_62b} :catchall_647

    .line 630
    :try_start_62b
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_636
    .catch Landroid/os/RemoteException; {:try_start_62b .. :try_end_636} :catch_637
    .catch Ljava/lang/Exception; {:try_start_62b .. :try_end_636} :catch_64f
    .catchall {:try_start_62b .. :try_end_636} :catchall_647

    goto :goto_638

    .line 632
    :catch_637
    move-exception v0

    .line 382
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "quota":J
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v16    # "backupPackageStatus":I
    .end local v28    # "flags":I
    :cond_638
    :goto_638
    add-int/lit8 v1, v19, 0x1

    move-wide v6, v3

    move-object v2, v13

    move-object v5, v14

    move/from16 v8, v25

    const/4 v13, 0x0

    move v4, v1

    move-object v1, v15

    move-object v15, v11

    move/from16 v11, v27

    .end local v19    # "i":I
    .local v1, "i":I
    goto/16 :goto_c1

    .line 648
    .end local v1    # "i":I
    .end local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v14    # "buffer":[B
    .end local v25    # "N":I
    :catchall_647
    move-exception v0

    move-object v5, v0

    move-object v2, v13

    move-object v1, v15

    move/from16 v11, v27

    goto/16 :goto_8c6

    .line 635
    :catch_64f
    move-exception v0

    move-object v5, v0

    move-object v2, v13

    move-object v1, v15

    move/from16 v11, v27

    goto/16 :goto_831

    .line 648
    .end local v15    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_657
    move-exception v0

    move-object/from16 v15, v31

    move-object v5, v0

    move-object v2, v13

    move-object v1, v15

    move/from16 v11, v27

    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_8c6

    .line 635
    .end local v15    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catch_661
    move-exception v0

    move-object/from16 v15, v31

    move-object v5, v0

    move-object v2, v13

    move-object v1, v15

    move/from16 v11, v27

    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_831

    .line 420
    .end local v3    # "backoff":J
    .end local v15    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "quota":J
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v14    # "buffer":[B
    .restart local v19    # "i":I
    .restart local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v23    # "backoff":J
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "flags":I
    :catchall_66b
    move-exception v0

    move-object v15, v1

    move-object/from16 v11, v22

    move-object/from16 v5, v26

    move-object v2, v0

    move-wide/from16 v17, v6

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v22    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v15    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto :goto_696

    .end local v23    # "backoff":J
    .end local v25    # "N":I
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v3, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v5, "buffer":[B
    .local v6, "backoff":J
    .local v8, "N":I
    .local v11, "backupRunStatus":I
    .local v14, "flags":I
    .local v15, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v17, "quota":J
    :catchall_675
    move-exception v0

    move-wide/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move/from16 v28, v14

    move-object v11, v15

    move-object v14, v5

    move-object v5, v3

    move-object v2, v0

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v11, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v14, "buffer":[B
    .restart local v23    # "backoff":J
    .restart local v25    # "N":I
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    goto :goto_696

    .end local v19    # "i":I
    .end local v23    # "backoff":J
    .end local v25    # "N":I
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v4, "i":I
    .local v5, "buffer":[B
    .restart local v6    # "backoff":J
    .restart local v8    # "N":I
    .local v11, "backupRunStatus":I
    .local v14, "flags":I
    .restart local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :catchall_685
    move-exception v0

    move/from16 v19, v4

    move-wide/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move/from16 v28, v14

    move-object v11, v15

    move-object v14, v5

    move-object v5, v3

    move-object v2, v0

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "i":I
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v11, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v14, "buffer":[B
    .restart local v19    # "i":I
    .restart local v23    # "backoff":J
    .restart local v25    # "N":I
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    :goto_696
    :try_start_696
    monitor-exit v16
    :try_end_697
    .catchall {:try_start_696 .. :try_end_697} :catchall_6aa

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_start_697
    throw v2
    :try_end_698
    .catch Ljava/lang/Exception; {:try_start_697 .. :try_end_698} :catch_6a1
    .catchall {:try_start_697 .. :try_end_698} :catchall_698

    .line 648
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "buffer":[B
    .end local v17    # "quota":J
    .end local v19    # "i":I
    .end local v25    # "N":I
    .end local v28    # "flags":I
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :catchall_698
    move-exception v0

    move-object v5, v0

    move-object v2, v13

    move-wide/from16 v3, v23

    move/from16 v11, v27

    goto/16 :goto_8c6

    .line 635
    :catch_6a1
    move-exception v0

    move-object v5, v0

    move-object v2, v13

    move-wide/from16 v3, v23

    move/from16 v11, v27

    goto/16 :goto_831

    .line 420
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v14    # "buffer":[B
    .restart local v17    # "quota":J
    .restart local v19    # "i":I
    .restart local v25    # "N":I
    .restart local v28    # "flags":I
    :catchall_6aa
    move-exception v0

    move-object v2, v0

    goto :goto_696

    .line 648
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "buffer":[B
    .end local v17    # "quota":J
    .end local v19    # "i":I
    .end local v23    # "backoff":J
    .end local v25    # "N":I
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v6    # "backoff":J
    .local v11, "backupRunStatus":I
    :catchall_6ad
    move-exception v0

    move-wide/from16 v23, v6

    move/from16 v27, v11

    move-object v5, v0

    move-object v2, v13

    move-wide/from16 v3, v23

    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    goto/16 :goto_8c6

    .line 635
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .restart local v6    # "backoff":J
    .restart local v11    # "backupRunStatus":I
    :catch_6b8
    move-exception v0

    move-wide/from16 v23, v6

    move/from16 v27, v11

    move-object v5, v0

    move-object v2, v13

    move-wide/from16 v3, v23

    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    goto/16 :goto_831

    .line 648
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .local v2, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "backoff":J
    .restart local v11    # "backupRunStatus":I
    :catchall_6c3
    move-exception v0

    move-wide/from16 v23, v6

    move/from16 v27, v11

    move-object v5, v0

    move-wide/from16 v3, v23

    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    goto/16 :goto_8c6

    .line 635
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .restart local v6    # "backoff":J
    .restart local v11    # "backupRunStatus":I
    :catch_6cd
    move-exception v0

    move-wide/from16 v23, v6

    move/from16 v27, v11

    move-object v5, v0

    move-wide/from16 v3, v23

    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    goto/16 :goto_831

    .line 382
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .restart local v4    # "i":I
    .local v5, "buffer":[B
    .restart local v6    # "backoff":J
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :cond_6d7
    move/from16 v19, v4

    move-object v14, v5

    move-wide/from16 v23, v6

    move/from16 v25, v8

    move/from16 v27, v11

    move-object v11, v15

    .end local v4    # "i":I
    .end local v5    # "buffer":[B
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v15    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v11, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v14    # "buffer":[B
    .restart local v19    # "i":I
    .restart local v23    # "backoff":J
    .restart local v25    # "N":I
    .restart local v27    # "backupRunStatus":I
    move-object v13, v2

    .line 648
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v11    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v14    # "buffer":[B
    .end local v19    # "i":I
    .end local v25    # "N":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :goto_6e2
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v2, :cond_6e9

    .line 649
    const/16 v11, -0x7d3

    .end local v27    # "backupRunStatus":I
    .local v11, "backupRunStatus":I
    goto :goto_6eb

    .line 648
    .end local v11    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    :cond_6e9
    move/from16 v11, v27

    .line 653
    .end local v27    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :goto_6eb
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full backup completed with status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v2, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 657
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 658
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 662
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v2, :cond_71a

    .line 663
    iget v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 666
    :cond_71a
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 667
    :try_start_721
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 668
    monitor-exit v5
    :try_end_728
    .catchall {:try_start_721 .. :try_end_728} :catchall_754

    .line 670
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v3, "PFTBT.run()"

    invoke-interface {v2, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 672
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 676
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v2, :cond_740

    .line 677
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-wide/from16 v6, v23

    .end local v23    # "backoff":J
    .restart local v6    # "backoff":J
    invoke-virtual {v2, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_742

    .line 676
    .end local v6    # "backoff":J
    .restart local v23    # "backoff":J
    :cond_740
    move-wide/from16 v6, v23

    .line 680
    .end local v23    # "backoff":J
    .restart local v6    # "backoff":J
    :goto_742
    const-string v2, "PFTBT"

    const-string v3, "Full data backup pass finished."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 682
    goto/16 :goto_8bf

    .line 668
    .end local v6    # "backoff":J
    .restart local v23    # "backoff":J
    :catchall_754
    move-exception v0

    move-wide/from16 v6, v23

    move-object v2, v0

    .end local v23    # "backoff":J
    .restart local v6    # "backoff":J
    :goto_758
    :try_start_758
    monitor-exit v5
    :try_end_759
    .catchall {:try_start_758 .. :try_end_759} :catchall_75a

    throw v2

    :catchall_75a
    move-exception v0

    move-object v2, v0

    goto :goto_758

    .line 344
    .end local v6    # "backoff":J
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v3, "backoff":J
    :cond_75d
    move/from16 v27, v11

    .line 348
    .end local v11    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    :goto_75f
    :try_start_75f
    const-string v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "full backup requested but enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 349
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " setupComplete="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 350
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 348
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v5

    if-eqz v5, :cond_79e

    .line 355
    const/16 v5, 0xd

    .local v5, "monitoringEvent":I
    goto :goto_7a0

    .line 357
    .end local v5    # "monitoringEvent":I
    :cond_79e
    const/16 v5, 0xe

    .line 359
    .restart local v5    # "monitoringEvent":I
    :goto_7a0
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 360
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v6, v5, v8, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 363
    const/4 v6, 0x0

    iput-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_7ad
    .catch Ljava/lang/Exception; {:try_start_75f .. :try_end_7ad} :catch_822
    .catchall {:try_start_75f .. :try_end_7ad} :catchall_81c

    .line 364
    const/16 v6, -0x7d1

    .line 648
    .end local v27    # "backupRunStatus":I
    .local v6, "backupRunStatus":I
    iget-boolean v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v7, :cond_7b5

    .line 649
    const/16 v6, -0x7d3

    .line 653
    :cond_7b5
    const-string v7, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Full backup completed with status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v7, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 657
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 658
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 662
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v7, :cond_7e4

    .line 663
    iget v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v7, v8}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 666
    :cond_7e4
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 667
    :try_start_7eb
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 668
    monitor-exit v7
    :try_end_7f2
    .catchall {:try_start_7eb .. :try_end_7f2} :catchall_818

    .line 670
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v8, "PFTBT.run()"

    invoke-interface {v7, v8}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 672
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 676
    iget-boolean v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v7, :cond_807

    .line 677
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 680
    :cond_807
    const-string v7, "PFTBT"

    const-string v8, "Full data backup pass finished."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 365
    return-void

    .line 668
    :catchall_818
    move-exception v0

    move-object v8, v0

    :try_start_81a
    monitor-exit v7
    :try_end_81b
    .catchall {:try_start_81a .. :try_end_81b} :catchall_818

    throw v8

    .line 648
    .end local v5    # "monitoringEvent":I
    .end local v6    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    :catchall_81c
    move-exception v0

    move-object v5, v0

    move/from16 v11, v27

    goto/16 :goto_8c6

    .line 635
    :catch_822
    move-exception v0

    move-object v5, v0

    move/from16 v11, v27

    goto :goto_831

    .line 648
    .end local v27    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :catchall_827
    move-exception v0

    move/from16 v27, v11

    move-object v5, v0

    .end local v11    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    goto/16 :goto_8c6

    .line 635
    .end local v27    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :catch_82d
    move-exception v0

    move/from16 v27, v11

    move-object v5, v0

    .line 636
    .local v5, "e":Ljava/lang/Exception;
    :goto_831
    const/16 v11, -0x3e8

    .line 637
    :try_start_833
    const-string v6, "PFTBT"

    const-string v7, "Exception trying full transport backup"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x13

    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v9, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    .line 644
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    .line 642
    const/4 v13, 0x0

    invoke-static {v13, v9, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 638
    const/4 v12, 0x3

    invoke-static {v6, v7, v8, v12, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_852
    .catchall {:try_start_833 .. :try_end_852} :catchall_8c4

    .line 648
    .end local v5    # "e":Ljava/lang/Exception;
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_859

    .line 649
    const/16 v5, -0x7d3

    .end local v11    # "backupRunStatus":I
    .local v5, "backupRunStatus":I
    goto :goto_85a

    .line 648
    .end local v5    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :cond_859
    move v5, v11

    .line 653
    .end local v11    # "backupRunStatus":I
    .restart local v5    # "backupRunStatus":I
    :goto_85a
    const-string v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup completed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v6, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 657
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 658
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 662
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v6, :cond_889

    .line 663
    iget v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 666
    :cond_889
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 667
    :try_start_890
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 668
    monitor-exit v6
    :try_end_897
    .catchall {:try_start_890 .. :try_end_897} :catchall_8c0

    .line 670
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v7, "PFTBT.run()"

    invoke-interface {v6, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 672
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 676
    iget-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v6, :cond_8ac

    .line 677
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 680
    :cond_8ac
    const-string v6, "PFTBT"

    const-string v7, "Full data backup pass finished."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 682
    move-object v13, v2

    move-wide v6, v3

    move v11, v5

    .line 683
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "backoff":J
    .end local v5    # "backupRunStatus":I
    .local v6, "backoff":J
    .restart local v11    # "backupRunStatus":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :goto_8bf
    return-void

    .line 668
    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "backoff":J
    .restart local v5    # "backupRunStatus":I
    :catchall_8c0
    move-exception v0

    move-object v7, v0

    :try_start_8c2
    monitor-exit v6
    :try_end_8c3
    .catchall {:try_start_8c2 .. :try_end_8c3} :catchall_8c0

    throw v7

    .line 648
    .end local v5    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :catchall_8c4
    move-exception v0

    move-object v5, v0

    :goto_8c6
    iget-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v6, :cond_8cc

    .line 649
    const/16 v11, -0x7d3

    .line 653
    :cond_8cc
    const-string v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup completed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v6, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 657
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 658
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 662
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v6, :cond_8fb

    .line 663
    iget v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 666
    :cond_8fb
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 667
    :try_start_902
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 668
    monitor-exit v6
    :try_end_909
    .catchall {:try_start_902 .. :try_end_909} :catchall_92f

    .line 670
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v7, "PFTBT.run()"

    invoke-interface {v6, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 672
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 676
    iget-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v6, :cond_91e

    .line 677
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 680
    :cond_91e
    const-string v6, "PFTBT"

    const-string v7, "Full data backup pass finished."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 682
    throw v5

    .line 668
    :catchall_92f
    move-exception v0

    move-object v5, v0

    :try_start_931
    monitor-exit v6
    :try_end_932
    .catchall {:try_start_931 .. :try_end_932} :catchall_92f

    throw v5
.end method

.method public unregisterTask()V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-interface {v0, v1}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    .line 286
    return-void
.end method
